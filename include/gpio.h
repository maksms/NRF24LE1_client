/////////////////////////////////////////////////////////////////////////////
//
// File: gpio.h
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

#ifndef GPIO_H_
#define GPIO_H_

#include "reg24le1.h"


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Configuration defines for use in gpio_pin_configure() function...OR these together to form the gpio_pin_config_options argument
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#define GPIO_PIN_CONFIG_OPTION_DIR_INPUT									(0 << 0)						//Set the GPIO as an input
#define GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT									(1 << 0)						//Set the GPIO as an output

#define GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_CLEAR								(0 << 1)						//If setting the GPIO as an output, clear its value
#define GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET								(1 << 1)						//If setting the GPIO as an output, set its value

#define GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_NO_RESISTORS		(0x00 << PXCON_PINMODE_SHIFT)	//If setting the GPIO as an input, turn on the buffer and turn off the pull up/down resistors
#define GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_PULL_DOWN_RESISTOR	(0x01 << PXCON_PINMODE_SHIFT)	//If setting the GPIO as an input, turn on the buffer and turn on the pull down resistor
#define GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_PULL_UP_RESISTOR	(0x02 << PXCON_PINMODE_SHIFT)	//If setting the GPIO as an input, turn on the buffer and turn on the pull up resistor
#define GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_OFF					(0x03 << PXCON_PINMODE_SHIFT)	//If setting the GPIO as an input, turn off the buffer and the pull up/down resistors

#define GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH	(0x00 << PXCON_PINMODE_SHIFT)	//If setting the GPIO as an output, set the output buffer to normal drive strength
#define GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_HIGH_DRIVE_STRENGTH	(0x03 << PXCON_PINMODE_SHIFT)	//If setting the GPIO as an output, set the output buffer to high drive strength


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// GPIO pin id defines for use in gpio_pin_configure() function - use only one member as the gpio_pin_id argument
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#if 0
typedef enum
{
	GPIO_PIN_ID_P0_0,
	GPIO_PIN_ID_P0_1,
	GPIO_PIN_ID_P0_2,
	GPIO_PIN_ID_P0_3,
	GPIO_PIN_ID_P0_4,
	GPIO_PIN_ID_P0_5,
	GPIO_PIN_ID_P0_6,
	GPIO_PIN_ID_P0_7,
	GPIO_PIN_ID_P1_0,
	GPIO_PIN_ID_P1_1,
	GPIO_PIN_ID_P1_2,
	GPIO_PIN_ID_P1_3,
	GPIO_PIN_ID_P1_4,
	GPIO_PIN_ID_P1_5,
	GPIO_PIN_ID_P1_6,
	GPIO_PIN_ID_P1_7,
	GPIO_PIN_ID_P2_0,
	GPIO_PIN_ID_P2_1,
	GPIO_PIN_ID_P2_2,
	GPIO_PIN_ID_P2_3,
	GPIO_PIN_ID_P2_4,
	GPIO_PIN_ID_P2_5,
	GPIO_PIN_ID_P2_6
} gpio_pin_id_t;
#endif

typedef enum
{
	GPIO_PIN_ID_P0_0,
	GPIO_PIN_ID_P0_1,
	GPIO_PIN_ID_P0_2,
	GPIO_PIN_ID_P0_3,
	GPIO_PIN_ID_P0_4,
	GPIO_PIN_ID_P0_5,
	GPIO_PIN_ID_P0_6,
	GPIO_PIN_ID_P0_7,
	GPIO_PIN_ID_P1_0,
	GPIO_PIN_ID_P1_1,
	GPIO_PIN_ID_P1_2,
	GPIO_PIN_ID_P1_3,
	GPIO_PIN_ID_P1_4,
	GPIO_PIN_ID_P1_5,
	GPIO_PIN_ID_P1_6,
	GPIO_PIN_ID_P1_7,
	GPIO_PIN_ID_P2_0,
	GPIO_PIN_ID_P2_1,
	GPIO_PIN_ID_P2_2,
	GPIO_PIN_ID_P2_3,
	GPIO_PIN_ID_P2_4,
	GPIO_PIN_ID_P2_5,
	GPIO_PIN_ID_P2_6,
	GPIO_PIN_ID_P2_7,
	GPIO_PIN_ID_P3_0,
	GPIO_PIN_ID_P3_1,
	GPIO_PIN_ID_P3_2,
	GPIO_PIN_ID_P3_3,
	GPIO_PIN_ID_P3_4,
	GPIO_PIN_ID_P3_5,
	GPIO_PIN_ID_P3_6,

	GPIO_PIN_ID_NUM,
	GPIO_PIN_ID_INVALID = 0xFF
} gpio_pin_id_t;



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// GPIO pin id function defines for 24-pin variety (these can be used in place of the GPIO_PIN_ID_* values above in gpio_pin_configure())
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#define GPIO_24P_PIN_ID_FUNC_GPINT0		GPIO_PIN_ID_P0_0
#define GPIO_24P_PIN_ID_FUNC_GPINT1		GPIO_PIN_ID_P0_2
#define GPIO_24P_PIN_ID_FUNC_TXD		GPIO_PIN_ID_P0_5
#define GPIO_24P_PIN_ID_FUNC_RXD		GPIO_PIN_ID_P0_6
#define GPIO_24P_PIN_ID_FUNC_CLKLF1		GPIO_PIN_ID_P0_0
#define GPIO_24P_PIN_ID_FUNC_CLKLF2		GPIO_PIN_ID_P0_1
#define GPIO_24P_PIN_ID_FUNC_MSCK		GPIO_PIN_ID_P0_2
#define GPIO_24P_PIN_ID_FUNC_MMOSI		GPIO_PIN_ID_P0_3
#define GPIO_24P_PIN_ID_FUNC_MMISO		GPIO_PIN_ID_P0_4
#define GPIO_24P_PIN_ID_FUNC_FSCK		GPIO_PIN_ID_P0_2
#define GPIO_24P_PIN_ID_FUNC_FMOSI		GPIO_PIN_ID_P0_3
#define GPIO_24P_PIN_ID_FUNC_FMISO		GPIO_PIN_ID_P0_4
#define GPIO_24P_PIN_ID_FUNC_FCSN		GPIO_PIN_ID_P0_5
#define GPIO_24P_PIN_ID_FUNC_SSCK		GPIO_PIN_ID_P0_2
#define GPIO_24P_PIN_ID_FUNC_SMOSI		GPIO_PIN_ID_P0_3
#define GPIO_24P_PIN_ID_FUNC_SMISO		GPIO_PIN_ID_P0_4
#define GPIO_24P_PIN_ID_FUNC_SCSN		GPIO_PIN_ID_P0_5
#define GPIO_24P_PIN_ID_FUNC_OCITCK		GPIO_PIN_ID_P0_2
#define GPIO_24P_PIN_ID_FUNC_OCITMS		GPIO_PIN_ID_P0_3
#define GPIO_24P_PIN_ID_FUNC_OCITDI		GPIO_PIN_ID_P0_4
#define GPIO_24P_PIN_ID_FUNC_OCITDO		GPIO_PIN_ID_P0_5
#define GPIO_24P_PIN_ID_FUNC_OCITO		GPIO_PIN_ID_P0_6
#define GPIO_24P_PIN_ID_FUNC_W2SCL		GPIO_PIN_ID_P0_5
#define GPIO_24P_PIN_ID_FUNC_W2SDA		GPIO_PIN_ID_P0_6
#define GPIO_24P_PIN_ID_FUNC_PWM0		GPIO_PIN_ID_P0_3
#define GPIO_24P_PIN_ID_FUNC_PWM1		GPIO_PIN_ID_P0_6
#define GPIO_24P_PIN_ID_FUNC_AIN0		GPIO_PIN_ID_P0_0
#define GPIO_24P_PIN_ID_FUNC_AIN1		GPIO_PIN_ID_P0_1
#define GPIO_24P_PIN_ID_FUNC_AIN2		GPIO_PIN_ID_P0_2
#define GPIO_24P_PIN_ID_FUNC_AIN3		GPIO_PIN_ID_P0_3
#define GPIO_24P_PIN_ID_FUNC_AIN4		GPIO_PIN_ID_P0_4
#define GPIO_24P_PIN_ID_FUNC_AIN5		GPIO_PIN_ID_P0_5
#define GPIO_24P_PIN_ID_FUNC_AIN6		GPIO_PIN_ID_P0_6

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// GPIO pin id function defines for 32-pin variety (these can be used in place of the GPIO_PIN_ID_* values above in gpio_pin_configure())
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#define GPIO_32P_PIN_ID_FUNC_GPINT0		GPIO_PIN_ID_P0_5
#define GPIO_32P_PIN_ID_FUNC_GPINT1		GPIO_PIN_ID_P0_6
#define GPIO_32P_PIN_ID_FUNC_TXD		GPIO_PIN_ID_P0_3
#define GPIO_32P_PIN_ID_FUNC_RXD		GPIO_PIN_ID_P0_4
#define GPIO_32P_PIN_ID_FUNC_CLKLF1		GPIO_PIN_ID_P0_0
#define GPIO_32P_PIN_ID_FUNC_CLKLF2		GPIO_PIN_ID_P0_1
#define GPIO_32P_PIN_ID_FUNC_MSCK		GPIO_PIN_ID_P1_4
#define GPIO_32P_PIN_ID_FUNC_MMOSI		GPIO_PIN_ID_P1_5
#define GPIO_32P_PIN_ID_FUNC_MMISO		GPIO_PIN_ID_P1_6
#define GPIO_32P_PIN_ID_FUNC_FSCK		GPIO_PIN_ID_P0_5
#define GPIO_32P_PIN_ID_FUNC_FMOSI		GPIO_PIN_ID_P0_7
#define GPIO_32P_PIN_ID_FUNC_FMISO		GPIO_PIN_ID_P1_0
#define GPIO_32P_PIN_ID_FUNC_FCSN		GPIO_PIN_ID_P1_1
#define GPIO_32P_PIN_ID_FUNC_SSCK		GPIO_PIN_ID_P0_5
#define GPIO_32P_PIN_ID_FUNC_SMOSI		GPIO_PIN_ID_P0_7
#define GPIO_32P_PIN_ID_FUNC_SMISO		GPIO_PIN_ID_P1_0
#define GPIO_32P_PIN_ID_FUNC_SCSN		GPIO_PIN_ID_P1_1
#define GPIO_32P_PIN_ID_FUNC_OCITCK		GPIO_PIN_ID_P0_7
#define GPIO_32P_PIN_ID_FUNC_OCITMS		GPIO_PIN_ID_P1_0
#define GPIO_32P_PIN_ID_FUNC_OCITDI		GPIO_PIN_ID_P1_1
#define GPIO_32P_PIN_ID_FUNC_OCITDO		GPIO_PIN_ID_P1_2
#define GPIO_32P_PIN_ID_FUNC_OCITO		GPIO_PIN_ID_P1_3
#define GPIO_32P_PIN_ID_FUNC_W2SCL		GPIO_PIN_ID_P0_4
#define GPIO_32P_PIN_ID_FUNC_W2SDA		GPIO_PIN_ID_P0_5
#define GPIO_32P_PIN_ID_FUNC_PWM0		GPIO_PIN_ID_P0_2
#define GPIO_32P_PIN_ID_FUNC_PWM1		GPIO_PIN_ID_P0_3
#define GPIO_32P_PIN_ID_FUNC_AIN0		GPIO_PIN_ID_P0_0
#define GPIO_32P_PIN_ID_FUNC_AIN1		GPIO_PIN_ID_P0_1
#define GPIO_32P_PIN_ID_FUNC_AIN2		GPIO_PIN_ID_P0_2
#define GPIO_32P_PIN_ID_FUNC_AIN3		GPIO_PIN_ID_P0_3
#define GPIO_32P_PIN_ID_FUNC_AIN4		GPIO_PIN_ID_P0_4
#define GPIO_32P_PIN_ID_FUNC_AIN5		GPIO_PIN_ID_P0_5
#define GPIO_32P_PIN_ID_FUNC_AIN6		GPIO_PIN_ID_P0_6
#define GPIO_32P_PIN_ID_FUNC_AIN7		GPIO_PIN_ID_P0_7
#define GPIO_32P_PIN_ID_FUNC_AIN8		GPIO_PIN_ID_P1_0
#define GPIO_32P_PIN_ID_FUNC_AIN9		GPIO_PIN_ID_P1_1
#define GPIO_32P_PIN_ID_FUNC_AIN10		GPIO_PIN_ID_P1_2

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// GPIO pin id function defines for 48-pin variety (these can be used in place of the GPIO_PIN_ID_* values above in gpio_pin_configure())
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#define GPIO_48P_PIN_ID_FUNC_GPINT0		GPIO_PIN_ID_P1_2
#define GPIO_48P_PIN_ID_FUNC_GPINT1		GPIO_PIN_ID_P1_3
#define GPIO_48P_PIN_ID_FUNC_GPINT2		GPIO_PIN_ID_P1_4
#define GPIO_48P_PIN_ID_FUNC_TXD		GPIO_PIN_ID_P1_0
#define GPIO_48P_PIN_ID_FUNC_RXD		GPIO_PIN_ID_P1_1
#define GPIO_48P_PIN_ID_FUNC_CLKLF1		GPIO_PIN_ID_P0_0
#define GPIO_48P_PIN_ID_FUNC_CLKLF2		GPIO_PIN_ID_P0_1
#define GPIO_48P_PIN_ID_FUNC_MSCK		GPIO_PIN_ID_P0_6
#define GPIO_48P_PIN_ID_FUNC_MMOSI		GPIO_PIN_ID_P0_7
#define GPIO_48P_PIN_ID_FUNC_MMISO		GPIO_PIN_ID_P1_0
#define GPIO_48P_PIN_ID_FUNC_FSCK		GPIO_PIN_ID_P1_2
#define GPIO_48P_PIN_ID_FUNC_FMOSI		GPIO_PIN_ID_P1_5
#define GPIO_48P_PIN_ID_FUNC_FMISO		GPIO_PIN_ID_P1_6
#define GPIO_48P_PIN_ID_FUNC_FCSN		GPIO_PIN_ID_P2_0
#define GPIO_48P_PIN_ID_FUNC_SSCK		GPIO_PIN_ID_P0_2
#define GPIO_48P_PIN_ID_FUNC_SMOSI		GPIO_PIN_ID_P0_3
#define GPIO_48P_PIN_ID_FUNC_SMISO		GPIO_PIN_ID_P0_4
#define GPIO_48P_PIN_ID_FUNC_SCSN		GPIO_PIN_ID_P0_5
#define GPIO_48P_PIN_ID_FUNC_OCITCK		GPIO_PIN_ID_P1_1
#define GPIO_48P_PIN_ID_FUNC_OCITMS		GPIO_PIN_ID_P1_2
#define GPIO_48P_PIN_ID_FUNC_OCITDI		GPIO_PIN_ID_P1_3
#define GPIO_48P_PIN_ID_FUNC_OCITDO		GPIO_PIN_ID_P1_4
#define GPIO_48P_PIN_ID_FUNC_OCITO		GPIO_PIN_ID_P1_5
#define GPIO_48P_PIN_ID_FUNC_W2SCL		GPIO_PIN_ID_P1_2
#define GPIO_48P_PIN_ID_FUNC_W2SDA		GPIO_PIN_ID_P1_3
#define GPIO_48P_PIN_ID_FUNC_PWM0		GPIO_PIN_ID_P0_7
#define GPIO_48P_PIN_ID_FUNC_PWM1		GPIO_PIN_ID_P0_6
#define GPIO_48P_PIN_ID_FUNC_AIN0		GPIO_PIN_ID_P0_0
#define GPIO_48P_PIN_ID_FUNC_AIN1		GPIO_PIN_ID_P0_1
#define GPIO_48P_PIN_ID_FUNC_AIN2		GPIO_PIN_ID_P0_2
#define GPIO_48P_PIN_ID_FUNC_AIN3		GPIO_PIN_ID_P0_3
#define GPIO_48P_PIN_ID_FUNC_AIN4		GPIO_PIN_ID_P0_4
#define GPIO_48P_PIN_ID_FUNC_AIN5		GPIO_PIN_ID_P0_5
#define GPIO_48P_PIN_ID_FUNC_AIN6		GPIO_PIN_ID_P0_6
#define GPIO_48P_PIN_ID_FUNC_AIN7		GPIO_PIN_ID_P0_7
#define GPIO_48P_PIN_ID_FUNC_AIN8		GPIO_PIN_ID_P1_0
#define GPIO_48P_PIN_ID_FUNC_AIN9		GPIO_PIN_ID_P1_1
#define GPIO_48P_PIN_ID_FUNC_AIN10		GPIO_PIN_ID_P1_2
#define GPIO_48P_PIN_ID_FUNC_AIN11		GPIO_PIN_ID_P1_3
#define GPIO_48P_PIN_ID_FUNC_AIN12		GPIO_PIN_ID_P1_4
#define GPIO_48P_PIN_ID_FUNC_AIN13		GPIO_PIN_ID_P1_5


/////////////////////////////////////////////////////////////
// Pin direction macros
//////////////////////////////////////////////////////////////
#define gpio_pins_dir_input(gpio_reg, pins_mask)	reg_bits_set(gpio_reg, pins_mask)				//Configures pins whose bits are set in pins_mask on GPIO port gpio_reg to input(s)
#define gpio_pins_dir_output(gpio_reg, pins_mask)	reg_bits_clear(gpio_reg, pins_mask)				//Configures pins whose bits are set in pins_mask on GPIO port gpio_reg to output(s)

//////////////////////////////////////////////////////////////////
// Pin value macros for GPIO SBITs (can only modify one GPIO pin)
//////////////////////////////////////////////////////////////////
#define gpio_pin_val_set_sbit(sbit_pin_set)					sbit_set(sbit_pin_set)					//Sets the output value of a single SBIT pin (i.e., P0_SB_D0)
#define gpio_pin_val_clear_sbit(sbit_pin_clear)				sbit_clear(sbit_pin_clear)				//Clears the output value of a single SBIT pin (i.e., P0_SB_D0)
#define gpio_pin_val_complement_sbit(sbit_pin_complement)	sbit_complement(sbit_pin_complement)	//Complements the output value of a single SBIT pin (i.e., P0_SB_D0)

//////////////////////////////////////////////////////////////////////////////
// Pin value macros for GPIO registers (can modify all GPIOs in the register)
//////////////////////////////////////////////////////////////////////////////
#define gpio_pins_val_set(gpio_reg, pins_mask)			reg_bits_set(gpio_reg, pins_mask)			//Sets the output values of pins whose bits are set in pins_mask on GPIO port gpio_reg
#define gpio_pins_val_clear(gpio_reg, pins_mask)		reg_bits_clear(gpio_reg, pins_mask)			//Clears the output values of pins whose bits are set in pins_mask on GPIO port gpio_reg
#define gpio_pins_val_complement(gpio_reg, pins_mask)	reg_bits_complement(gpio_reg, pins_mask)	//Complements the output values of pins whose bits are set in pins_mask on GPIO port gpio_reg


///////////////////////////////////////////
// Function prototypes
///////////////////////////////////////////
void gpio_pin_configure(gpio_pin_id_t gpio_pin_id, unsigned char gpio_pin_config_options);

// дополнено из старой . MaksMS
#define gpio_pin_val_sbit_clear(sbit_pin_clear)				sbit_clear(sbit_pin_clear)
#define GPIO_PIN_REG_FUNC_W2SCL		P0
#define GPIO_PIN_REG_FUNC_W2SDA		P0
#define GPIO_PIN_MASK_FUNC_W2SCL	PX_D5
#define GPIO_PIN_MASK_FUNC_W2SDA	PX_D6
#define GPIO_PIN_SBIT_FUNC_W2SDA	P0_SB_D6
#define GPIO_PIN_SBIT_FUNC_PWM0		P0_SB_D3
#define GPIO_PIN_SBIT_FUNC_W2SCL	P0_SB_D4


#endif /*GPIO_H_*/
