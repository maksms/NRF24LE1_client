// модификация 15.06.14

#define chclient 1 // номер клиента 1...

#define nofloat 0 // без float , данные передаются умноженные на 10.Очень экономит место.

#define RTCDEC 8191 //65535=2 сек, 32767=1 сек,16383 = 0.250 сек ,8191 = 0.125 сек. Константы ниже используют это значение за такт:
#define TIMESEND 2 // интервал приема/отправки данных по радио.
#define TIMEKEY 4 // пауза кнопки для защиты от дребезга. (0.125*4=0.5с)
#define TIMELONGKEY 3 // долгое нажатие кнопки,вычисляется как TIMEKEY*TIMELONGKEY*0.125. 3*4*0.125=1.5с

#define BUTTONPIN 4 // пин, к которому подключена кнопка.
#define DIMMPIN GPIO_PIN_ID_P0_2 // пин, к которому подключен симистор.

#define stepdimm 10 // шаг управления яркостью используя кнопку
#define MAXSTEP 100 // количество шагов диммирования

#include "../libs.h"
#include "../nRFLE.c"

typedef struct{
  unsigned char identifier;// номер передатчика.МЕНЯТЬ НЕЛЬЗЯ

  int countPWM;
  unsigned char keymode;
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


#define DIMSTART 16000000/12/100/MAXSTEP
#if 1
// задействовано для экономии ресурсов - чтобы не пересчитывать при каждом прерывании
uint16_t valuepwm=0;
void setdimmer(uint8_t value){
  valuepwm=65535-DIMSTART*(MAXSTEP-value);
if(value ==0 | clientnf.keymode==0) {
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

//timer1_set_t1_val(65535-DIMSTART*(MAXSTEP-clientnf.countPWM) );
timer1_set_t1_val(valuepwm);
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

void dimmon(uint8_t mode) // функция управлением вкл/выкл
{
if (mode) interrupt_control_ifp_enable();
else {
interrupt_control_ifp_disable();
timer1_stop();
gpio_pin_val_clear(DIMMPIN);
}
clientnf.keymode=mode;
}  

unsigned long countrtc=0;
unsigned char servernf[32];


interrupt_isr_rtc2() // счетчик ртс импульсов используя прерывание.
{
countrtc++;
}

//====================main========================


void main()
{
int state=0;

unsigned int count=0; //counter for loop
uint8_t st=0,countpause=0,rewers=0; // for key
unsigned long statesend=0,radiosend=0;

// конфигурация RTC--> 
CLKLFCTRL=1; // 0 -внешний кварц на P0.1 и P0.0. 1 - внутренний генератор.
rtc2_configure(RTC2_CONFIG_OPTION_COMPARE_MODE_0_RESET_AT_IRQ ,RTCDEC);
rtc2_run();
pwr_clk_mgmt_wakeup_configure(PWR_CLK_MGMT_WAKEUP_CONFIG_OPTION_WAKEUP_ON_RTC2_TICK_IF_INT_ENABLED,0);
interrupt_control_rtc2_enable();
// <--конфигурация RTC 

interrupt_configure_ifp(INTERRUPT_IFP_INPUT_GPINT0,INTERRUPT_IFP_CONFIG_OPTION_ENABLE | INTERRUPT_IFP_CONFIG_OPTION_TYPE_FALLING_EDGE);
interrupt_control_ifp_enable();

interrupt_control_t1_enable()	;
timer1_configure(TIMER1_CONFIG_OPTION_MODE_1_16_BIT_CTR_TMR,0);
timer1_run();
  
sti();

gpio_pin_configure(BUTTONPIN,GPIO_PIN_CONFIG_OPTION_DIR_INPUT|GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_PULL_UP_RESISTOR); // для кнопки на вход и подтянуть резистором. 

gpio_pin_configure(DIMMPIN,GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);

// Тестовое мигание при запуске -->
#if 1
	 gpio_pin_val_set(DIMMPIN);
	 delay_ms(500); 
	 gpio_pin_val_clear(DIMMPIN);
	 delay_ms(500);
#endif
//<-- Тестовое мигание при запуске
	 
	 	radiobegin(); //
		openAllPipe(); // открываем прием/передачу, назначаем адреса.
		
		setChannel(100);
		setDataRate(2); // 1 - 250кб , 2 - 1 мб , 3 -2 мб.
		setAutoAck(false);
		setCRCLength(2); // 0 - crc off ,1 - 8bit ,2 - 16bit
		setPALevel(3) ; // мощность 0..3
		
		
		clientnf.identifier=chclient;
		clientnf.countPWM=30;




	//main program loop
		

	while(1)
	{

	  // ---
if (countrtc-radiosend >=TIMESEND) {
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
  
  
 if (servernf[1]==10) { // включение/выключение по радио
dimmon(servernf[3]);
 } else

if (servernf[1]==11) { // управление яркостью по радио
 clientnf.countPWM=servernf[3];
 setdimmer(clientnf.countPWM);
}

}
radiosend=countrtc;
}
//	delay_ms(TIMESEND);

#if 1
#define dimm clientnf.countPWM
#define keymode clientnf.keymode


if (digitalRead(BUTTONPIN)==0){
if (countrtc-statesend>=TIMEKEY) {
   
   if (st){
   st=0;
    keymode=!keymode;
    
    dimmon (keymode);
    
   } else 
if (countpause>=TIMELONGKEY){
 
if (!keymode) dimmon(1); // если было выключено,то включим
else {
  
if(rewers) {
if(dimm-stepdimm>=0)  dimm=dimm-stepdimm;
else rewers=0;
}else{
if(dimm+stepdimm<=MAXSTEP) dimm=dimm+stepdimm;
else rewers=1;
}
setdimmer(dimm);
 }
} else countpause++;
   statesend=countrtc;
}

} else {
st=1;
countpause=0;
rewers=!rewers;
}
#endif

// end loop
	}

}