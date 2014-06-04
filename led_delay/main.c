#include <stdint.h>
#include <stdio.h>

//подключение необходимых функций:

#include "src/gpio/src/gpio_pin_configure.c"
#include "src/gpio/src/gpio_pin_val_clear.c"
#include "src/gpio/src/gpio_pin_val_set.c"

#include "delay.h"
#include "src/delay/src/delay_us.c"
#include "src/delay/src/delay_s.c"
#include "src/delay/src/delay_ms.c"


void main()
{
 // мигаем портом P0_0
	gpio_pin_configure(GPIO_PIN_ID_P0_0, // укажем необходимые параметры
			GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT |
			GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_CLEAR |
			GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
	
		while(1)
	{
gpio_pin_val_set(GPIO_PIN_ID_P0_0); //установка 1
	 delay_ms(500); 
gpio_pin_val_clear(GPIO_PIN_ID_P0_0); //установка 0
	 delay_ms(500); 
	 
	}

}