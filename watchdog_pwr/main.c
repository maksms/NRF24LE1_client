#include <stdio.h>
#include <stdint.h>
//#include "../libs.h"


//#include "../src/timer0/src/timer0_configure.c"

#include "../src/gpio/src/gpio_pin_configure.c"
#include "../src/gpio/src/gpio_pin_val_read.c"

#include "../src/gpio/src/gpio_pin_val_clear.c"
#include "../src/gpio/src/gpio_pin_val_set.c"
#include "../src/gpio/src/gpio_pin_val_write.c"

#include "../src/delay/src/delay_us.c"
#include "../src/delay/src/delay_s.c"
#include "../src/delay/src/delay_ms.c"

//#include "../src/interrupt/src/interrupt_configure_ifp.c"

#include "../src/pwr_clk_mgmt/src/pwr_clk_mgmt_clklf_configure.c"
#include "../src/watchdog/src/watchdog_set_wdsv_count.c"
#include "../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c"

void main()
{
int i=1;
	gpio_pin_configure(GPIO_PIN_ID_P0_2, // укажем необходимые параметры
			GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT |
			GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_CLEAR |
			GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
	
//	watchdog_start_and_set_timeout_in_ms(10000);
	
		while(1)
	{
gpio_pin_val_set(GPIO_PIN_ID_P0_2); //установка 1
	 delay_ms(500*i); 
gpio_pin_val_clear(GPIO_PIN_ID_P0_2); //установка 0
	 delay_ms(500); 
	 
	//i++; 
	 
//PWRDWN=1;

}

}