#include <stdio.h>
#include <stdint.h>
//#include "../libs.h"

#include "../src/adc/src/adc_configure.c"
#include "../src/adc/src/adc_set_input_channel.c"
#include "../src/adc/src/adc_start_single_conversion.c"
#include "../src/adc/src/adc_start_single_conversion_get_value.c"


#include "../src/gpio/src/gpio_pin_configure.c"
#include "../src/gpio/src/gpio_pin_val_read.c"

#include "../src/gpio/src/gpio_pin_val_clear.c"
#include "../src/gpio/src/gpio_pin_val_set.c"
#include "../src/gpio/src/gpio_pin_val_write.c"

#include "../src/delay/src/delay_us.c"
#include "../src/delay/src/delay_s.c"
#include "../src/delay/src/delay_ms.c"


void main()
{
int i=1;
	gpio_pin_configure(GPIO_PIN_ID_P0_2, // укажем необходимые параметры
			GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT |
			GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_CLEAR |
			GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
	

adc_configure (ADC_CONFIG_OPTION_RESOLUTION_10_BITS);

	
		while(1)
	{
gpio_pin_val_set(GPIO_PIN_ID_P0_2); //установка 1
	 delay_ms(500*i); 
gpio_pin_val_clear(GPIO_PIN_ID_P0_2); //установка 0
	 delay_ms(5000); 
	 
	//i++; 
	 


	 
i=adc_start_single_conversion_get_value(ADC_CHANNEL_AIN0);
	 
}

}