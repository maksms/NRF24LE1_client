// описание библиотек для работы с модулем nRF24LE1
// http://homes-smart.ru/index.php/oborudovanie/bez-provodov-2-4-ggts/opisanie-radiomodulya-nrf24l01



#include <stdio.h>
#include <stdint.h>

#include "reg24le1.h"
#include "rf.h"
#include "delay.h"

#include "wiringLE.c"


// rf
#include "src/rf/src/rf_read_rx_payload.c"
#include "src/rf/src/rf_configure_debug_lite.c"
#include "src/rf/src/rf_write_register.c"
#include "src/rf/src/rf_spi_configure_enable.c"
#include "src/rf/src/rf_write_tx_payload.c"
#include "src/rf/src/rf_transmit.c"
#include "src/rf/src/rf_set_as_rx.c"
#include "src/rf/src/rf_irq_clear_all.c"
#include "src/rf/src/rf_set_as_tx.c"
#include "src/rf/src/rf_spi_execute_command.c"
#include "src/rf/src/rf_spi_send_read.c"
#include "src/rf/src/rf_power_up_param.c"
#include "src/rf/src/rf_read_register.c"
#include "src/rf/src/rf_spi_send_read_byte.c"
#include "src/rf/src/rf_set_rx_addr.c"
#include "src/rf/src/rf_power_down.c"
#include "src/rf/src/rf_power_up.c"

// gpio
#include "src/gpio/src/gpio_pin_configure.c"
#include "src/gpio/src/gpio_pin_val_read.c"
#include "src/gpio/src/gpio_pin_val_clear.c"
#include "src/gpio/src/gpio_pin_val_set.c"
#include "src/gpio/src/gpio_pin_val_write.c"

// delay
#include "src/delay/src/delay_us.c"
#include "src/delay/src/delay_s.c"
#include "src/delay/src/delay_ms.c"

// pwm (ШИМ)
#include "src/pwm/src/pwm_configure.c"
#include "src/pwm/src/pwm_start.c"

// управление питанием ,необходимо для watchdog
#include "src/pwr_clk_mgmt/src/pwr_clk_mgmt_clklf_configure.c"
#include "src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c"
#include "src/pwr_clk_mgmt/src/pwr_clk_mgmt_wakeup_configure.c"

// watchdog
#include "src/watchdog/src/watchdog_set_wdsv_count.c"
#include "src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c"


// прерывания
#include "src/interrupt/src/interrupt_configure_ifp.c"

// ADC (АЦП)
#include "src/adc/src/adc_configure.c"
#include "src/adc/src/adc_set_input_channel.c"
#include "src/adc/src/adc_start_single_conversion.c"
#include "src/adc/src/adc_start_single_conversion_get_value.c"

//таймеры
#include "src/timer0/src/timer0_configure.c"

#include "src/timer1/src/timer1_configure.c"

// uart
#if 1
#include "src/uart/src/uart_configure_manual_baud_calc.c"
#include "src/uart/src/uart_calc_actual_baud_rate_from_s0rel.c"
#include "src/uart/src/uart_calc_actual_baud_rate_from_th1.c"
#include "src/uart/src/uart_calc_s0rel_value.c"
#include "src/uart/src/uart_calc_th1_value.c"
#include "src/uart/src/uart_configure_auto_baud_calc.c"
#endif

// I2C
#if 0
#include "src/w2/src/w2_src.h"
#include "src/w2/src/w2_configure.c"
#include "src/w2/src/w2_master_cur_address_read.c"
#include "src/w2/src/w2_master_process_start_request.c"
#include "src/w2/src/w2_master_process_stop_request.c"
#include "src/w2/src/w2_master_random_address_read.c"
#include "src/w2/src/w2_master_rx_byte.c"
#include "src/w2/src/w2_master_software_reset.c"
#include "src/w2/src/w2_master_tx_byte.c"
#include "src/w2/src/w2_master_write_control_bytes.c"
#include "src/w2/src/w2_master_write_to.c"
#include "src/w2/src/w2_wait_for_byte_tx_or_rx.c"
#endif



#include "src/rtc2/src/rtc2_configure.c"
