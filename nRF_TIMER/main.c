// модификация 13.02.14

#define chclient 1 // номер клиента 1...
#define timesend 300 // интервал отправки данных,для обычных датчиков можно установить время выше.
#define nofloat 0 // без float , данные передаются умноженные на 10.Очень экономит место.


#include "../libs.h"
#include "../nRFLE.c"

typedef struct{
  unsigned char identifier;// номер передатчика.МЕНЯТЬ НЕЛЬЗЯ

  int Analog;
  unsigned char test_data;
  int Error_Message; // счетчик ошибок
  long count;// счетчик передач для контроля качества канала
#if nofloat
int temperature_Sensor; //передаём температуру.
int Humidity_Sensor;// передаём влажность
#else
 float temperature_Sensor;// передаём температуру.
 float Humidity_Sensor;// передаём влажность
#endif
}
nf1;
nf1 clientnf; 

#include "../millisNrf/millisNrf.c"



#define led_toggle()	gpio_pin_val_complement_sbit(P0_SB_D0)
#define led_on()		gpio_pin_val_set_sbit(P0_SB_D0)
#define led_off()		gpio_pin_val_clear_sbit(P0_SB_D0)

#if 0
unsigned char datadht[5];

#define DHTPIN GPIO_PIN_ID_P1_4

uint8_t dhtread ()
{

unsigned char j = 0, i = 0;
    
datadht[0] = datadht[1] = datadht[2] = datadht[3] = datadht[4] = 0;  
   
 //pin as output and set 0
gpio_pin_configure(DHTPIN, GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);

delay_ms(18);

gpio_pin_val_set(DHTPIN); //set 1

//pin as input
gpio_pin_configure(DHTPIN,GPIO_PIN_CONFIG_OPTION_DIR_INPUT);

//=============check DHT response
delay_us(51);
if (gpio_pin_val_read(DHTPIN)) return 0;
delay_us(81);
if (!gpio_pin_val_read(DHTPIN)) return 0;

//===============receive 40 data bits

while (gpio_pin_val_read(DHTPIN));
for (j=0; j<5; j++)
    {
    datadht[j]=0;
    for(i=0; i<8; i++)
        {
        while (!gpio_pin_val_read(DHTPIN));	
        delay_us (30);
	  if (gpio_pin_val_read(DHTPIN)) 
            datadht[j]|=1<<(7-i); 
        while (gpio_pin_val_read(DHTPIN));
        }
    }
	
	return 1;
}
#else
// OneWire библиотеки-----------




#define DSPIN GPIO_PIN_ID_P1_4
#if 1

void OneWireReset() 
{
     gpio_pin_val_clear(DSPIN);
 gpio_pin_configure(DSPIN, GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);
     delay_us(500);
gpio_pin_configure(DSPIN, GPIO_PIN_CONFIG_OPTION_DIR_INPUT);
    
     delay_us(500);
}

void OneWireOutByte(uint8_t d) 
{
   uint8_t n;
interrupt_control_global_disable();
   
   for(n=8; n!=0; n--)
   {
      if ((d & 0x01) == 1) 
      {
	 gpio_pin_val_clear(DSPIN);
	 gpio_pin_configure(DSPIN, GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);
         delay_us(2); //5
	 gpio_pin_configure(DSPIN, GPIO_PIN_CONFIG_OPTION_DIR_INPUT);
         delay_us(60);
      }
      else
      {
	 gpio_pin_val_clear(DSPIN);
	 gpio_pin_configure(DSPIN, GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);
         delay_us(60);
	 gpio_pin_configure(DSPIN, GPIO_PIN_CONFIG_OPTION_DIR_INPUT);

      }
      d=d>>1; 
   }
   interrupt_control_global_enable();
}


uint8_t OneWireInByte() 
{
    uint8_t d=0, n,b=0;
  interrupt_control_global_disable();

    for (n=0; n<8; n++)
    {
	gpio_pin_val_clear(DSPIN);
	gpio_pin_configure(DSPIN, GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);
        delay_us(2); // 5
	gpio_pin_configure(DSPIN, GPIO_PIN_CONFIG_OPTION_DIR_INPUT);
        delay_us(2); // 5
	b = gpio_pin_val_read(DSPIN);
        delay_us(50);
        d = (d >> 1) | (b<<7);
    }
    interrupt_control_global_enable();
    return(d);
}
#endif


#endif
//====================main========================


unsigned char servernf[32];

void main()
{
unsigned int count; //counter for for loop

int state=0;
unsigned long lostms1=0;
unsigned long lostms2=0;
#if 0
unsigned int crcdata;  
#else
// ds
uint8_t SignBit;
uint8_t DSdata[2];
int TReading;


#endif

millisbegin();

gpio_pin_val_clear(DSPIN);
gpio_pin_configure(DSPIN, GPIO_PIN_CONFIG_OPTION_DIR_INPUT);



  //CLKCTRL=0;
  
//gpio_pin_configure(GPIO_PIN_ID_P0_0, GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT | GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_CLEAR | GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
//gpio_pin_configure(GPIO_PIN_ID_P0_1, GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT | GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_CLEAR | GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
		


adc_configure (ADC_CONFIG_OPTION_RESOLUTION_10_BITS|ADC_CONFIG_OPTION_REF_SELECT_VDD |ADC_CONFIG_OPTION_RESULT_JUSTIFICATION_RIGHT);


pwm_configure(PWM_CONFIG_OPTION_PRESCALER_VAL_10 || PWM_CONFIG_OPTION_WIDTH_8_BITS);
	
			 led_on(); 
	 delay_ms(500); 
	 led_off();
	 delay_ms(500); 

	 
	 radiobegin(); //
		
	openAllPipe(); // открываем прием/передачу
	
	// или по ардуиновски:
	//openWritingPipe(0xD2); // канал передачи
	//openReadingPipe(1,0xE1); // Открываем канал приема
		
		
		setChannel(100);
		setDataRate(2); // 1 - 250кб , 2 - 1 мб , 3 -2 мб.
		setAutoAck(false);
		setCRCLength(2); // 0 - crc off ,1 - 8bit ,2 - 16bit
		setPALevel(3) ; // мощность 0..3
		
		
		clientnf.identifier=chclient;
		clientnf.Analog=130;


	//main program loop
		
	//watchdog_start_and_set_timeout_in_ms(3000);
	while(1)
	{


if (ofcount==1) { // переполнение счетчика
lostms1=0;
lostms2=0;
ofcount=0;
}
	  
// чтение сенсоров

if (millis()-lostms1>1000L*2){
#if 0
state=!state;	
if (state) gpio_pin_val_set(GPIO_PIN_ID_P0_0); 
else	 gpio_pin_val_clear(GPIO_PIN_ID_P0_0);
#endif

#if 0
dhtread ();


            crcdata= (datadht[0] + datadht[1] + datadht[2] + datadht[3]);
	   
	   if (datadht[0]==0 && datadht[1]==0 && datadht[2]==0 && datadht[3]==0) {
	     clientnf.temperature_Sensor=0;
	     clientnf.Humidity_Sensor=0;
	   //обработка ошибки:не подключен датчик !!
	        
	 } else if ( crcdata == datadht[4]) {
	  
#if nofloat
   	  if (datadht[1]==0 && datadht[3]==0) {
	    // dht11
	    clientnf.temperature_Sensor=datadht[2]*10; // умножение на 10,чтобы было однинаково как у dht22,можно убрать.
	    clientnf.Humidity_Sensor=datadht[0]*10;
	  
	  }else  { // dht22
	     
        clientnf.Humidity_Sensor = (datadht[0] * 256 + datadht[1]);
       clientnf.temperature_Sensor = ((datadht[2] & 0x7F)* 256 + datadht[3]);
       if (datadht[2] & 0x80)  clientnf.temperature_Sensor *= -1;

	}
#else
   	  if (datadht[1]==0 && datadht[3]==0) {
	    // dht11
	    clientnf.temperature_Sensor=datadht[2];
	    clientnf.Humidity_Sensor=datadht[0];
	  
	  }else  { // dht22
	     
        clientnf.Humidity_Sensor = (float)(datadht[0] * 256 + datadht[1])/10;
       clientnf.temperature_Sensor = (float)((datadht[2] & 0x7F)* 256 + datadht[3])/10;
       if (datadht[2] & 0x80)  clientnf.temperature_Sensor *= -1;

	}
#endif	
	 } else {/* обработка ошибки:ошибка CRC */}	  
	  

#else

#if 1
     OneWireReset();
     OneWireOutByte(0xcc);
     OneWireOutByte(0x44);
     //strong
     
       gpio_pin_val_set(DSPIN);
      gpio_pin_configure(DSPIN, GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);
       //delay_ms(1000);
       gpio_pin_configure(DSPIN, GPIO_PIN_CONFIG_OPTION_DIR_INPUT);
       gpio_pin_val_clear(DSPIN);
     
     OneWireReset();
     OneWireOutByte(0xcc);
     OneWireOutByte(0xbe);

     DSdata[0] = OneWireInByte(); 
     DSdata[1] = OneWireInByte();
#endif
     TReading = (int)(DSdata[1] << 8) + DSdata[0];
     SignBit = TReading & 0x8000; 
     if (SignBit) TReading = (TReading ^ 0xffff) + 1;


     clientnf.temperature_Sensor =(float)((6 * TReading) + TReading / 4)/100;
     
#endif

     
adc_power_up();	
clientnf.Analog=adc_start_single_conversion_get_value(4);

lostms1=millis();

} // end sensors

	  // ---

	   if (millis()-lostms2>=timesend){ 
	    
//rf_power_up(1);
	 	rf_write_tx_payload((const uint8_t*)&clientnf, 32, true); //transmit received char over RF

		//wait until the packet has been sent or the maximum number of retries has been reached
		while(!(rf_irq_pin_active() && rf_irq_tx_ds_active()));

		rf_irq_clear_all(); //clear all interrupts in the 24L01
		rf_set_as_rx(true); //change the device to an RX to get the character back from the other 24L01

		//wait a while to see if we get the data back (change the loop maximum and the lower if
		//  argument (should be loop maximum - 1) to lengthen or shorten this time frame
		for(count = 0; count < 25000; count++)
		{
		  
			if((rf_irq_pin_active() && rf_irq_rx_dr_active()))
			{
			//  state=1;
if (clientnf.count <= 2147483646) clientnf.count++;      /// счетчик передач для контроля качества канала
else clientnf.count = 0;

				rf_read_rx_payload((const uint8_t*)&servernf, 32); //get the payload into data
				break;
			
			}
			
		//if loop is on its last iteration, assume packet has been lost.
		if(count == 24999) clientnf.Error_Message++;
			
}


		

		rf_irq_clear_all(); //clear interrupts again

		rf_set_as_tx(); //resume normal operation as a TX
		
//		rf_power_down();

if (servernf[0]==chclient){	
  
  
 if (servernf[1]==10) {
 gpio_pin_configure(GPIO_PIN_ID_P0_0+servernf[2], GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);
 gpio_pin_val_write(GPIO_PIN_ID_P0_0+servernf[2],servernf[3]);
 
clientnf.test_data =servernf[2];
 }

if (servernf[1]==11) {
 pwm_start(PWM_CHANNEL_0+servernf[2],servernf[3]);
  
clientnf.test_data =servernf[3];
}

} 



		lostms2=millis();
		
		} // end radio

	} // end loop
	
	
	
	
}