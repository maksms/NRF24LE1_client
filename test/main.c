#include <stdio.h>
#include "reg24le1.h"
#include "uart.h"
#include "rf.h"
#include "../libs.h"




void initialize();
void putchar(char c);
char getchar();

#define led_toggle()	gpio_pin_val_complement_sbit(P0_SB_D0)
#define led_on()		gpio_pin_val_set_sbit(P0_SB_D0)
#define led_off()		gpio_pin_val_clear_sbit(P0_SB_D0)

void main()
{
	unsigned char datavar; //register to hold letter sent and received
	unsigned int count; //counter for for loop

	initialize(); //initialize IO, UART, set up nRF24L01 as TX

	//main program loop
	while(1)
	{
		datavar = getchar();

		rf_write_tx_payload(&datavar, 1, true); //transmit received char over RF

		//wait until the packet has been sent or the maximum number of retries has been reached
		while(!(rf_irq_pin_active() && rf_irq_tx_ds_active()));

		rf_irq_clear_all(); //clear all interrupts in the 24L01
		rf_set_as_rx(true); //change the device to an RX to get the character back from the other 24L01

		//wait a while to see if we get the data back (change the loop maximum and the lower if
		//  argument (should be loop maximum - 1) to lengthen or shorten this time frame
		for(count = 0; count < 25000; count++)
		{
			//check to see if the data has been received.  if so, get the data and exit the loop.
			//  if the loop is at its last count, assume the packet has been lost and set the data
			//  to go to the UART to "?".  If neither of these is true, keep looping.
			if((rf_irq_pin_active() && rf_irq_rx_dr_active()))
			{
				rf_read_rx_payload(&datavar, 1); //get the payload into data
				break;
			}

			//if loop is on its last iteration, assume packet has been lost.
			if(count == 24999)
				datavar = '?';
		}

		rf_irq_clear_all(); //clear interrupts again
		printf("%c", datavar); //print the received data (or ? if none) to the screen

		rf_set_as_tx(); //resume normal operation as a TX
		delay_us(130); //wait for remote unit to come from standby to RX

		led_toggle(); //toggle the on-board LED as visual indication that the loop has completed
	}
}

void initialize()
{
	//Set up LED pin
	gpio_pin_configure(GPIO_PIN_ID_P0_0,
					   GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT |
					   GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_CLEAR |
					   GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);

	//Set up UART pins
	gpio_pin_configure(GPIO_24P_PIN_ID_FUNC_RXD,
					   GPIO_PIN_CONFIG_OPTION_DIR_INPUT |
					   GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_NO_RESISTORS);

	gpio_pin_configure(GPIO_24P_PIN_ID_FUNC_TXD,
					   GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT |
					   GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET |
					   GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);

	//Set up UART for 38400 baud
	uart_configure_manual_baud_calc(UART_CONFIG_OPTION_ENABLE_RX |
									UART_CONFIG_OPTION_MODE_1_UART_8_BIT |
									UART_CONFIG_OPTION_CLOCK_FOR_MODES_1_3_USE_BR_GEN |
									UART_CONFIG_OPTION_BIT_SMOD_SET,
									1011);

	//Set up RF
	rf_configure_debug_lite(false, 1); //initialize the rf to the debug configuration as TX, 1 data bytes, and auto-ack disabled
	delay_us(130); //wait for remote unit to come from standby to RX
}

void putchar(char c)
{
	uart_send_wait_for_complete(c);
}

char getchar()
{
	unsigned char retchar;

	uart_wait_for_rx_and_get(&retchar);

	return retchar;
}
