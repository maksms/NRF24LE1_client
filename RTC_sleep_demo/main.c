


#include "../libs.h"
#include "../nRFLE.c"

#if 0
interrupt_isr_rtc2()
{
gpio_pin_val_set(GPIO_PIN_ID_P0_2); //установка 1
delay_ms(500); 
gpio_pin_val_clear(GPIO_PIN_ID_P0_2); //установка 0
}
#endif

void main()
{
unsigned int count; //counter for loop

CLKLFCTRL=1; // 0 -внешний кварц на P0.1 и P0.0. 1 - внутренний кварц.

gpio_pin_configure(GPIO_PIN_ID_P0_2,GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);


rtc2_configure(RTC2_CONFIG_OPTION_COMPARE_MODE_0_RESET_AT_IRQ ,65535); //65535=2 сек, 32767=1 сек
rtc2_run();

pwr_clk_mgmt_wakeup_configure(PWR_CLK_MGMT_WAKEUP_CONFIG_OPTION_WAKEUP_ON_RTC2_TICK_ALWAYS,0);
//pwr_clk_mgmt_wakeup_configure(PWR_CLK_MGMT_WAKEUP_CONFIG_OPTION_WAKEUP_ON_RTC2_TICK_NEVER,0);
//pwr_clk_mgmt_wakeup_configure(PWR_CLK_MGMT_WAKEUP_CONFIG_OPTION_WAKEUP_ON_RTC2_TICK_IF_INT_ENABLED,0);

//interrupt_control_rtc2_enable()	;
sti();
	//main program loop
	
	while(1)
	{

	  
count++;
if (count>5){
#if 1
gpio_pin_val_set(GPIO_PIN_ID_P0_2); //установка 1
	 delay_ms(500); 
gpio_pin_val_clear(GPIO_PIN_ID_P0_2); //установка 0
#endif
   
   

  count=0;

	} // end loop
	
//	adc_power_down();	
//	rf_power_down();

//   pwr_clk_mgmt_enter_pwr_mode_memory_ret_tmr_on(); // 1mkA
//   pwr_clk_mgmt_enter_pwr_mode_deep_sleep(); // 0mkA
//   pwr_clk_mgmt_enter_pwr_mode_standby(); // 1500 mkA
 pwr_clk_mgmt_enter_pwr_mode_register_ret(); // 450 mkA


}

}