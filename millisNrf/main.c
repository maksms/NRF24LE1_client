// Пример millis для NRF24LE1
// http://homes-smart.ru/index.php/oborudovanie/bez-provodov-2-4-ggts/nrf24le1-nrf24l01-mikrokontroller
// Автор MaksMS 13.02.13
// Используется таймер № 0


#include <stdio.h>
#include <stdint.h>
//#include "../libs.h"


#include "../src/timer0/src/timer0_configure.c"

#include "../src/gpio/src/gpio_pin_configure.c"
#include "../src/gpio/src/gpio_pin_val_read.c"

#include "../src/gpio/src/gpio_pin_val_clear.c"
#include "../src/gpio/src/gpio_pin_val_set.c"
#include "../src/gpio/src/gpio_pin_val_write.c"

#include "../src/delay/src/delay_us.c"
#include "../src/delay/src/delay_s.c"
#include "../src/delay/src/delay_ms.c"

#include "../src/interrupt/src/interrupt_configure_ifp.c"

#include "millisNrf.c"


void main()
{
unsigned long lostms=0;
  int state=0;
  int t0_val=0;

millisbegin(); // иницилизация 

  
 // мигаем портом P0_0
	gpio_pin_configure(GPIO_PIN_ID_P0_0, // укажем необходимые параметры
			GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT |
			GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_CLEAR |
			GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
	
		while(1)
	{
if (ofcount==1) { // переполнение счетчика
lostms=0;

ofcount=0;
}
	 
	  
	  if (millis()-lostms>=(1000L*1)) // мигаем раз в секунду

	{
	  
state=!state;	
if (state) gpio_pin_val_set(GPIO_PIN_ID_P0_0); 
else	 gpio_pin_val_clear(GPIO_PIN_ID_P0_0);
 

lostms= millis();
	}

}

}