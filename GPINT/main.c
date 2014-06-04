


#include "../libs.h"
#include "../nRFLE.c"

#if 1
interrupt_isr_ifp()
{
gpio_pin_val_set(GPIO_PIN_ID_P0_2); //установка 1
delay_ms(500); 
gpio_pin_val_clear(GPIO_PIN_ID_P0_2); //установка 0
//delay_ms(500); 
}
#endif

void main()
{

gpio_pin_configure(GPIO_PIN_ID_P0_2,GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);

gpio_pin_val_set(GPIO_PIN_ID_P0_2); //установка 1
delay_ms(300); 
gpio_pin_val_clear(GPIO_PIN_ID_P0_2); //установка 0
delay_ms(300); 

sti();
interrupt_configure_ifp(INTERRUPT_IFP_INPUT_GPINT1,INTERRUPT_IFP_CONFIG_OPTION_ENABLE | INTERRUPT_IFP_CONFIG_OPTION_TYPE_FALLING_EDGE);
interrupt_control_ifp_enable();
	
	while(1)
	{



}

}