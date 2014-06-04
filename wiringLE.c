// arduino wiring mode for nRF24LE1

#define digitalWrite		gpio_pin_val_write
#define digitalRead		gpio_pin_val_read
#define pinMode			gpio_pin_configure
#define OUTPUT			GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT
#define INPUT			GPIO_PIN_CONFIG_OPTION_DIR_INPUT
#define LOW			0
#define HIGH 			1
#define delay			delay_ms
#define delayMicroseconds	delay_us
#define AnalogWrite		pwm_start
#define AnalogRead		adc_start_single_conversion_get_value 

#define sei()			interrupt_control_global_enable()
#define cli()			interrupt_control_global_disable()