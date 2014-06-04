/////////////////////////////////////////////////////////////////////////////
//
// File: uart.h
//
// Copyright S. Brennen Ball, 2010
//
// The author provides no guarantees, warantees, or promises, implied or
//  otherwise.  By using this software you agree to indemnify the author
//  of any damages incurred by using it.
//
/////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either
// version 2.1 of the License, or (at your option) any later version.
//
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
/////////////////////////////////////////////////////////////////////////////

#ifndef UART_H_
#define UART_H_

#include "reg24le1.h"
#include "gpio.h"


///////////////////////////////////////////
// Configuration defines
///////////////////////////////////////////
#define UART_CONFIG_OPTION_CLOCK_SHIFT						(1)											//Shift for clock option below (do not use this option)
#define UART_CONFIG_OPTION_CLOCK_MASK						(1 << UART_CONFIG_OPTION_CLOCK_SHIFT)		//Mask for clock option below (do not use this option)
#define UART_CONFIG_OPTION_CLOCK_FOR_MODES_1_3_USE_TMR1		(0 << UART_CONFIG_OPTION_CLOCK_SHIFT)		//Configure UART to use timer 1 for baud-rate generation in modes 1 and 3
#define UART_CONFIG_OPTION_CLOCK_FOR_MODES_1_3_USE_BR_GEN	(1 << UART_CONFIG_OPTION_CLOCK_SHIFT)		//Configure UART to use the built-in baud-rate generator in modes 1 and 3

#define UART_CONFIG_OPTION_BIT_SMOD_SHIFT					(2)											//Shift for SMOD option below (do not use this option)
#define UART_CONFIG_OPTION_BIT_SMOD_MASK					(1 << UART_CONFIG_OPTION_BIT_SMOD_SHIFT)	//Mask for SMOD option below (do not use this option)
#define UART_CONFIG_OPTION_BIT_SMOD_CLEAR					(0 << UART_CONFIG_OPTION_BIT_SMOD_SHIFT)	//Configure UART with SMOD cleared (not necessary if using uart_configure_auto_baud_calc())
#define UART_CONFIG_OPTION_BIT_SMOD_SET						(1 << UART_CONFIG_OPTION_BIT_SMOD_SHIFT)	//Configure UART with SMOD set (not necessary if using uart_configure_auto_baud_calc())

#define UART_CONFIG_OPTION_DISABLE_RX						(0)											//Configure UART with receiver disabled
#define UART_CONFIG_OPTION_ENABLE_RX						(S0CON_REN0)								//Configure UART with receiver enabled

#define UART_CONFIG_OPTION_MULTI_PROC_DISABLE				(0)											//Configure UART with multi-processor communications disabled
#define UART_CONFIG_OPTION_MULTI_PROC_ENABLE				(S0CON_SM20)								//Configure UART with multi-processor communications enabled

#define UART_CONFIG_OPTION_MODE_MASK						S0CON_MODE_FIELD							//Mask for Mode option below (do not use this option)
#define UART_CONFIG_OPTION_MODE_0_SHIFT_REG					(0x00 << S0CON_MODE_SHIFT)					//Configure UART in mode 0 (shift register)
#define UART_CONFIG_OPTION_MODE_1_UART_8_BIT				(0x01 << S0CON_MODE_SHIFT)					//Configure UART in mode 1 (8-bit UART)
#define UART_CONFIG_OPTION_MODE_2_UART_9_BIT_CCLK_DIV		(0x02 << S0CON_MODE_SHIFT)					//Configure UART in mode 2 (9-bit UART using CCLK_DIV as baud generation)
#define UART_CONFIG_OPTION_MODE_3_UART_9_BIT				(0x03 << S0CON_MODE_SHIFT)					//Configure UART in mode 3 (9-bit UART)


///////////////////////////////////////////
// Function macros
///////////////////////////////////////////
#define uart_send(tx_data)						(S0BUF = tx_data)			//Send tx_data over the UART
#define uart_send_wait_for_complete(tx_data)	uart_send(tx_data);\
												wait_for_bit_level_high(S0CON_SB_TI0);\
												interrupt_clear_uart_tx();	//Send tx_data over the UART and wait for the transmission to complete
#define uart_get()								(S0BUF)						//Get the last character recieved over the UART
#define uart_wait_for_rx_and_get(rx_data_p)		wait_for_bit_level_high(S0CON_SB_RI0);\
												interrupt_clear_uart_rx();\
												*(rx_data_p) = uart_get();	//Wait for a character to be received over the UART, then copy that value to the value to which rx_data_p points
#define uart_rx_data_ready()					(S0CON_SB_RI0)				//Returns true if the UART has received data, false otherwise
#define uart_rx_enable()						SBIT_SET(S0CON_SB_REN0)		//Enable the UART receiver
#define uart_rx_disable()						SBIT_CLEAR(S0CON_SB_REN0)	//Disable the UART receiver
#define uart_set_tx_bit_8()						SBIT_SET(S0CON_SB_TB80)		//Sets the ninth bit when using 9-bit communication
#define uart_clear_tx_bit_8()					SBIT_CLEAR(S0CON_SB_TB80)	//Clears the ninth bit when using 9-bit communication
#define uart_get_rx_bit_8()						(S0CON_SB_RB80)				//Gets the ninth bit of the last word recieved over the UART


///////////////////////////////////////////
// Function prototypes
///////////////////////////////////////////
void uart_configure_auto_baud_calc(unsigned char uart_config_options, unsigned long baud_rate);
void uart_configure_manual_baud_calc(unsigned char uart_config_options, unsigned int s0rel_val_if_br_gen_or_th1_val_if_tmr1);
unsigned int  uart_calc_s0rel_value(unsigned long desired_baud_rate, bool smod_bit_value);
unsigned long uart_calc_actual_baud_rate_from_s0rel(unsigned int s0rel_reg_value, bool smod_bit_value);
unsigned char uart_calc_th1_value(unsigned long desired_baud_rate, bool smod_bit_value);
unsigned long uart_calc_actual_baud_rate_from_th1(unsigned char th1_reg_value, bool smod_bit_value);


#endif /*UART_H_*/
