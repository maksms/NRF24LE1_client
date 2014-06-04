#include <stdio.h>
#include "../libs.h"

// #include "src/pwm/src/pwm_configure.c"
// #include "src/pwm/src/pwm_start.c"

void main()
{
int i=0;
  // делитель на 10 , битность 8
  pwm_configure(PWM_CONFIG_OPTION_PRESCALER_VAL_10 || PWM_CONFIG_OPTION_WIDTH_8_BITS);
  
	//main program loop
	while(1)
	{

pwm_start(PWM_CHANNEL_0,i);

	  i++;

	 delay_ms(200);   

	 if (i>255) i=0;
	 
	 
	}
}

