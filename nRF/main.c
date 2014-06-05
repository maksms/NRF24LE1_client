// модификация 12.02.13

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



#define led_toggle()	gpio_pin_val_complement_sbit(P0_SB_D0)
#define led_on()		gpio_pin_val_set_sbit(P0_SB_D0)
#define led_off()		gpio_pin_val_clear_sbit(P0_SB_D0)

unsigned char datadht[5];

#define DHTPIN GPIO_PIN_ID_P1_4

uint8_t dhtread ()
{

unsigned char j = 0, i = 0;
    
datadht[0] = datadht[1] = datadht[2] = datadht[3] = datadht[4] = 0;  
   
 //pin as output and set 0
gpio_pin_configure(DHTPIN, GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT | GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_CLEAR | GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);

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



//====================main========================
unsigned char servernf[32];

void main()
{
int state=0;

unsigned int count; //counter for for loop
unsigned int crcdata;


  //CLKCTRL=0;
  
gpio_pin_configure(GPIO_PIN_ID_P0_0, GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT | GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_CLEAR | GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
gpio_pin_configure(GPIO_PIN_ID_P0_1, GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT | GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_CLEAR | GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
		


adc_configure (ADC_CONFIG_OPTION_RESOLUTION_10_BITS|ADC_CONFIG_OPTION_REF_SELECT_VDD |ADC_CONFIG_OPTION_RESULT_JUSTIFICATION_RIGHT);


pwm_configure(PWM_CONFIG_OPTION_PRESCALER_VAL_10 || PWM_CONFIG_OPTION_WIDTH_8_BITS);
	
			 led_on(); 
	 delay_ms(500); 
	 led_off();
	 delay_ms(500); 

	 
	 	radiobegin(); //
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
	  
// чтение сенсоров
dhtread ();

            
            crcdata= (datadht[0] + datadht[1] + datadht[2] + datadht[3]);
	   
	   if (datadht[0]==0 && datadht[1]==0 && datadht[2]==0 && datadht[3]==0) {
	     
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
	  

adc_power_up();	
clientnf.Analog=adc_start_single_conversion_get_value(ADC_CHANNEL_AIN4);


	  // ---
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
			  state=1;
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
		
		
if (servernf[0]==chclient){	
  
  
 if (servernf[1]==10) {
   gpio_pin_val_write(GPIO_PIN_ID_P0_0,servernf[3]); // -servernf[2]-1 ?

 }

if (servernf[1]==11) pwm_start(PWM_CHANNEL_0,servernf[3]); // +servernf[2]-1
 
}

//		rf_power_down();
		
		//delay_ms(100); 
		//PWRDWN=3;
//if (!state)		
		delay_ms(timesend);
		
#if 0
else {
	//	delay_ms(100);
		//PWRDWN=2;
		CLKCTRL=7;
		delay_ms(timesend/128);
		CLKCTRL=0;
		//PWRDWN=7;
}
		#endif
	  
	// clientnf.test_data = gpio_pin_val_read(DHTPIN);
	}
	
	
	
	
}