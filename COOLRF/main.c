// модификация 4.06.14

#define chclient 1 // номер клиента 1...
#define timesend 300 // интервал отправки данных,для обычных датчиков можно установить время выше.
#define nofloat 0 // без float , данные передаются умноженные на 10.Очень экономит место.


#include "../libs.h"
#include "../nRFLE.c"

typedef struct{
  unsigned char identifier;// номер передатчика.МЕНЯТЬ НЕЛЬЗЯ

  int countPWM;
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

#define DIMMPIN GPIO_PIN_ID_P0_2 // пин, к которому подключен симистор
#define DIMMERSTEP 100 // количество шагов диммирования
#define DIMSTART 16000000/12/DIMMERSTEP
#if 0
// в будущем возможно будет задействовано для экономии ресурсов - чтобы не пересчитывать при каждом прерывании
uint16_t valuepwm=0;
void setdimmer(uint8_t value){
  valuepwm=65535-DIMSTART*(DIMMERSTEP-clientnf.countPWM);
if(value ==0) {
  interrupt_control_ifp_disable();
  gpio_pin_val_clear(DIMMPIN);
} else interrupt_control_ifp_enable();
}
#endif

uint8_t stdimm;

interrupt_isr_ifp()
{
timer1_stop();
  if(clientnf.countPWM !=0) {

timer1_set_t1_val(65535-DIMSTART*(DIMMERSTEP-clientnf.countPWM) );
//timer1_set_t1_val(valuepwm);
timer1_run();
  }
  else gpio_pin_val_clear(DIMMPIN);
 stdimm=1;
}


interrupt_isr_t1() {

if (stdimm) {
gpio_pin_val_set(DIMMPIN); 
timer1_set_t1_val(65535-100);
stdimm=0;
} else  
gpio_pin_val_clear(DIMMPIN);
}



unsigned char servernf[32];

//====================main========================


void main()
{
int state=0;

unsigned int count; //counter for for loop



gpio_pin_configure(DIMMPIN,GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);
	 gpio_pin_val_set(DIMMPIN);
	 delay_ms(500); 
	 gpio_pin_val_clear(DIMMPIN);
	 delay_ms(500); 

	 
	 	radiobegin(); //
		openAllPipe(); // открываем прием/передачу
		
		setChannel(100);
		setDataRate(2); // 1 - 250кб , 2 - 1 мб , 3 -2 мб.
		setAutoAck(false);
		setCRCLength(2); // 0 - crc off ,1 - 8bit ,2 - 16bit
		setPALevel(3) ; // мощность 0..3
		
		
		clientnf.identifier=chclient;
		clientnf.countPWM=10;

sti();
interrupt_configure_ifp(INTERRUPT_IFP_INPUT_GPINT0,INTERRUPT_IFP_CONFIG_OPTION_ENABLE | INTERRUPT_IFP_CONFIG_OPTION_TYPE_FALLING_EDGE);
interrupt_control_ifp_enable();

  interrupt_control_t1_enable()	;
  timer1_configure(TIMER1_CONFIG_OPTION_MODE_1_16_BIT_CTR_TMR,0);
  timer1_run();
		
	//main program loop
		

	while(1)
	{
	  



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
 //  gpio_pin_val_write(GPIO_PIN_ID_P0_0,servernf[3]); // -servernf[2]-1 ?

 }

if (servernf[1]==11) clientnf.countPWM=servernf[3];
 
}
	
		delay_ms(timesend);
		

	}
	
	
	
	
}