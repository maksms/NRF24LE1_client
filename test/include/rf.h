/////////////////////////////////////////////////////////////////////////////
//
// File: rf.h
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

#ifndef RF_H_
#define RF_H_

#include <stddef.h>
#include "reg24le1.h"
#include "interrupt.h"
#include "delay.h"


////////////////////////////////////////////////////////////////////////////////////
// SPI commands
////////////////////////////////////////////////////////////////////////////////////
//SPI command defines
#define RF_R_REGISTER		0x00	//Read register command
#define RF_W_REGISTER		0x20	//Write register command
#define RF_R_RX_PAYLOAD		0x61	//Read RX payload command
#define RF_W_TX_PAYLOAD		0xA0	//Write TX payload command
#define RF_FLUSH_TX			0xE1	//Flush TX FIFO command
#define RF_FLUSH_RX			0xE2	//Flush RX FIFO command
#define RF_REUSE_TX_PL		0xE3	//Reuse last TX payload command
#define RF_NOP				0xFF	//No operation command

//SPI command data mask defines
#define RF_R_REGISTER_DATA	0x1F	//Mask for read register command data
#define RF_W_REGISTER_DATA	0x1F	//Mask for write register command data


////////////////////////////////////////////////////////////////////////////////////
// Register definitions
////////////////////////////////////////////////////////////////////////////////////
#define RF_CONFIG		0x00
#define RF_EN_AA		0x01
#define RF_EN_RXADDR	0x02
#define RF_SETUP_AW		0x03
#define RF_SETUP_RETR	0x04
#define RF_RF_CH		0x05
#define RF_RF_SETUP		0x06
#define RF_STATUS		0x07
#define RF_OBSERVE_TX	0x08
#define RF_CD			0x09
#define RF_RX_ADDR_P0	0x0A
#define RF_RX_ADDR_P1	0x0B
#define RF_RX_ADDR_P2	0x0C
#define RF_RX_ADDR_P3	0x0D
#define RF_RX_ADDR_P4	0x0E
#define RF_RX_ADDR_P5	0x0F
#define RF_TX_ADDR		0x10
#define RF_RX_PW_P0		0x11
#define RF_RX_PW_P1		0x12
#define RF_RX_PW_P2		0x13
#define RF_RX_PW_P3		0x14
#define RF_RX_PW_P4		0x15
#define RF_RX_PW_P5		0x16
#define RF_FIFO_STATUS	0x17


////////////////////////////////////////////////////////////////////////////////////
// Default register values
//
// Below are the defines for each register's default value in the RF section. Multi-byte
//   registers use notation _BX_, "X" is the byte number.
////////////////////////////////////////////////////////////////////////////////////
#define RF_CONFIG_DEFAULT_VAL			0x08
#define RF_EN_AA_DEFAULT_VAL			0x3F
#define RF_EN_RXADDR_DEFAULT_VAL		0x03
#define RF_SETUP_AW_DEFAULT_VAL			0x03
#define RF_SETUP_RETR_DEFAULT_VAL		0x03
#define RF_RF_CH_DEFAULT_VAL			0x02
#define RF_RF_SETUP_DEFAULT_VAL			0x0F
#define RF_STATUS_DEFAULT_VAL			0x0E
#define RF_OBSERVE_TX_DEFAULT_VAL		0x00
#define RF_CD_DEFAULT_VAL				0x00
#define RF_RX_ADDR_P0_B0_DEFAULT_VAL	0xE7
#define RF_RX_ADDR_P0_B1_DEFAULT_VAL	0xE7
#define RF_RX_ADDR_P0_B2_DEFAULT_VAL	0xE7
#define RF_RX_ADDR_P0_B3_DEFAULT_VAL	0xE7
#define RF_RX_ADDR_P0_B4_DEFAULT_VAL	0xE7
#define RF_RX_ADDR_P1_B0_DEFAULT_VAL	0xC2
#define RF_RX_ADDR_P1_B1_DEFAULT_VAL	0xC2
#define RF_RX_ADDR_P1_B2_DEFAULT_VAL	0xC2
#define RF_RX_ADDR_P1_B3_DEFAULT_VAL	0xC2
#define RF_RX_ADDR_P1_B4_DEFAULT_VAL	0xC2
#define RF_RX_ADDR_P2_DEFAULT_VAL		0xC3
#define RF_RX_ADDR_P3_DEFAULT_VAL		0xC4
#define RF_RX_ADDR_P4_DEFAULT_VAL		0xC5
#define RF_RX_ADDR_P5_DEFAULT_VAL		0xC6
#define RF_TX_ADDR_B0_DEFAULT_VAL		0xE7
#define RF_TX_ADDR_B1_DEFAULT_VAL		0xE7
#define RF_TX_ADDR_B2_DEFAULT_VAL		0xE7
#define RF_TX_ADDR_B3_DEFAULT_VAL		0xE7
#define RF_TX_ADDR_B4_DEFAULT_VAL		0xE7
#define RF_RX_PW_P0_DEFAULT_VAL			0x00
#define RF_RX_PW_P1_DEFAULT_VAL			0x00
#define RF_RX_PW_P2_DEFAULT_VAL			0x00
#define RF_RX_PW_P3_DEFAULT_VAL			0x00
#define RF_RX_PW_P4_DEFAULT_VAL			0x00
#define RF_RX_PW_P5_DEFAULT_VAL			0x00
#define RF_FIFO_STATUS_DEFAULT_VAL		0x11


////////////////////////////////////////////////////////////////////////////////////
// Register bitwise definitions
////////////////////////////////////////////////////////////////////////////////////
//CONFIG register bitwise definitions
#define RF_CONFIG_RESERVED		0x80
#define	RF_CONFIG_MASK_RX_DR	0x40
#define	RF_CONFIG_MASK_TX_DS	0x20
#define	RF_CONFIG_MASK_MAX_RT	0x10
#define	RF_CONFIG_EN_CRC		0x08
#define	RF_CONFIG_CRCO			0x04
#define	RF_CONFIG_PWR_UP		0x02
#define	RF_CONFIG_PRIM_RX		0x01

//EN_AA register bitwise definitions
#define RF_EN_AA_RESERVED		0xC0
#define RF_EN_AA_ENAA_ALL		0x3F
#define RF_EN_AA_ENAA_P5		0x20
#define RF_EN_AA_ENAA_P4		0x10
#define RF_EN_AA_ENAA_P3		0x08
#define RF_EN_AA_ENAA_P2		0x04
#define RF_EN_AA_ENAA_P1		0x02
#define RF_EN_AA_ENAA_P0		0x01
#define RF_EN_AA_ENAA_NONE		0x00

//EN_RXADDR register bitwise definitions
#define RF_EN_RXADDR_RESERVED	0xC0
#define RF_EN_RXADDR_ERX_ALL	0x3F
#define RF_EN_RXADDR_ERX_P5		0x20
#define RF_EN_RXADDR_ERX_P4		0x10
#define RF_EN_RXADDR_ERX_P3		0x08
#define RF_EN_RXADDR_ERX_P2		0x04
#define RF_EN_RXADDR_ERX_P1		0x02
#define RF_EN_RXADDR_ERX_P0		0x01
#define RF_EN_RXADDR_ERX_NONE	0x00

//SETUP_AW register bitwise definitions
#define RF_SETUP_AW_RESERVED	0xFC
#define RF_SETUP_AW				0x03
#define RF_SETUP_AW_5BYTES		0x03
#define RF_SETUP_AW_4BYTES		0x02
#define RF_SETUP_AW_3BYTES		0x01
#define RF_SETUP_AW_ILLEGAL		0x00

//SETUP_RETR register bitwise definitions
#define RF_SETUP_RETR_ARD		0xF0
#define RF_SETUP_RETR_ARD_4000	0xF0
#define RF_SETUP_RETR_ARD_3750	0xE0
#define RF_SETUP_RETR_ARD_3500	0xD0
#define RF_SETUP_RETR_ARD_3250	0xC0
#define RF_SETUP_RETR_ARD_3000	0xB0
#define RF_SETUP_RETR_ARD_2750	0xA0
#define RF_SETUP_RETR_ARD_2500	0x90
#define RF_SETUP_RETR_ARD_2250	0x80
#define RF_SETUP_RETR_ARD_2000	0x70
#define RF_SETUP_RETR_ARD_1750	0x60
#define RF_SETUP_RETR_ARD_1500	0x50
#define RF_SETUP_RETR_ARD_1250	0x40
#define RF_SETUP_RETR_ARD_1000	0x30
#define RF_SETUP_RETR_ARD_750	0x20
#define RF_SETUP_RETR_ARD_500	0x10
#define RF_SETUP_RETR_ARD_250	0x00
#define RF_SETUP_RETR_ARC		0x0F
#define RF_SETUP_RETR_ARC_15	0x0F
#define RF_SETUP_RETR_ARC_14	0x0E
#define RF_SETUP_RETR_ARC_13	0x0D
#define RF_SETUP_RETR_ARC_12	0x0C
#define RF_SETUP_RETR_ARC_11	0x0B
#define RF_SETUP_RETR_ARC_10	0x0A
#define RF_SETUP_RETR_ARC_9		0x09
#define RF_SETUP_RETR_ARC_8		0x08
#define RF_SETUP_RETR_ARC_7		0x07
#define RF_SETUP_RETR_ARC_6		0x06
#define RF_SETUP_RETR_ARC_5		0x05
#define RF_SETUP_RETR_ARC_4		0x04
#define RF_SETUP_RETR_ARC_3		0x03
#define RF_SETUP_RETR_ARC_2		0x02
#define RF_SETUP_RETR_ARC_1		0x01
#define RF_SETUP_RETR_ARC_0		0x00

//RF_CH register bitwise definitions
#define RF_RF_CH_RESERVED	0x80

//RF_SETUP register bitwise definitions
#define RF_RF_SETUP_RESERVED	0xE0
#define RF_RF_SETUP_PLL_LOCK	0x10
#define RF_RF_SETUP_RF_DR		0x08
#define RF_RF_SETUP_RF_PWR		0x06
#define RF_RF_SETUP_RF_PWR_0	0x06
#define RF_RF_SETUP_RF_PWR_6 	0x04
#define RF_RF_SETUP_RF_PWR_12	0x02
#define RF_RF_SETUP_RF_PWR_18	0x00
#define RF_RF_SETUP_LNA_HCURR	0x01

//STATUS register bitwise definitions
#define RF_STATUS_RESERVED					0x80
#define RF_STATUS_RX_DR						0x40
#define RF_STATUS_TX_DS						0x20
#define RF_STATUS_MAX_RT					0x10
#define RF_STATUS_RX_P_NO					0x0E
#define RF_STATUS_RX_P_NO_RX_FIFO_EMPTY		0x0E
#define RF_STATUS_RX_P_NO_UNUSED			0x0C
#define RF_STATUS_RX_P_NO_5					0x0A
#define RF_STATUS_RX_P_NO_4					0x08
#define RF_STATUS_RX_P_NO_3					0x06
#define RF_STATUS_RX_P_NO_2					0x04
#define RF_STATUS_RX_P_NO_1					0x02
#define RF_STATUS_RX_P_NO_0					0x00
#define RF_STATUS_TX_FULL					0x01

//OBSERVE_TX register bitwise definitions
#define RF_OBSERVE_TX_PLOS_CNT	0xF0
#define RF_OBSERVE_TX_ARC_CNT	0x0F

//CD register bitwise definitions
#define RF_CD_RESERVED	0xFE
#define RF_CD_CD		0x01

//RX_PW_P0 register bitwise definitions
#define RF_RX_PW_P0_RESERVED	0xC0

//RX_PW_P0 register bitwise definitions
#define RF_RX_PW_P0_RESERVED	0xC0

//RX_PW_P1 register bitwise definitions
#define RF_RX_PW_P1_RESERVED	0xC0

//RX_PW_P2 register bitwise definitions
#define RF_RX_PW_P2_RESERVED	0xC0

//RX_PW_P3 register bitwise definitions
#define RF_RX_PW_P3_RESERVED	0xC0

//RX_PW_P4 register bitwise definitions
#define RF_RX_PW_P4_RESERVED	0xC0

//RX_PW_P5 register bitwise definitions
#define RF_RX_PW_P5_RESERVED	0xC0

//FIFO_STATUS register bitwise definitions
#define RF_FIFO_STATUS_RESERVED	0x8C
#define RF_FIFO_STATUS_TX_REUSE	0x40
#define RF_FIFO_STATUS_TX_FULL	0x20
#define RF_FIFO_STATUS_TX_EMPTY	0x10
#define RF_FIFO_STATUS_RX_FULL	0x02
#define RF_FIFO_STATUS_RX_EMPTY	0x01


////////////////////////////////////////////////////////////////////////////////////
// Function macros
////////////////////////////////////////////////////////////////////////////////////
#define rf_nop()				rf_spi_execute_command(RF_NOP, NULL, 0, true)			//nop command wrapper
#define rf_flush_tx()			rf_spi_execute_command(RF_FLUSH_TX, NULL, 0, true)		//flush tx command wrapper
#define rf_get_status()			rf_nop()												//get status register (wrapper of nop function)

#define rf_irq_tx_ds_active()	((rf_get_status() & RF_STATUS_TX_DS)  ? true : false)	//true if a payload has been sent from the TX FIFO
#define rf_irq_rx_dr_active()	((rf_get_status() & RF_STATUS_RX_DR)  ? true : false)	//true if the RX FIFO has received a payload
#define rf_irq_max_rt_active()	((rf_get_status() & RF_STATUS_MAX_RT) ? true : false)	//true if the maximum amount of TX retries has been reached
#define rf_irq_pin_active()		(IRCON_SB_RFIRQ)										//true if the IRQ pin from the 24L01 is active


////////////////////////////////////////////////////////////////////////////////////
// Function prototypes
////////////////////////////////////////////////////////////////////////////////////
void rf_configure(unsigned char config,
				  bool opt_rx_active_mode,
				  unsigned char en_aa,
				  unsigned char en_rxaddr,
				  unsigned char setup_aw,
				  unsigned char setup_retr,
				  unsigned char rf_ch,
				  unsigned char rf_setup,
				  unsigned char * rx_addr_p0,
				  unsigned char * rx_addr_p1,
				  unsigned char rx_addr_p2,
				  unsigned char rx_addr_p3,
				  unsigned char rx_addr_p4,
				  unsigned char rx_addr_p5,
				  unsigned char * tx_addr,
				  unsigned char rx_pw_p0,
				  unsigned char rx_pw_p1,
				  unsigned char rx_pw_p2,
				  unsigned char rx_pw_p3,
				  unsigned char rx_pw_p4,
				  unsigned char rx_pw_p5);
void rf_configure_debug(bool rx, unsigned char p0_payload_width, bool enable_auto_ack);
void rf_configure_debug_lite(bool rx, unsigned char p0_payload_width);

void rf_power_up(bool rx_active_mode);
void rf_power_up_param(bool rx_active_mode, unsigned char config);
void rf_power_down();
void rf_power_down_param(unsigned char config);

unsigned char rf_write_register(unsigned char regnumber, unsigned char * dataptr, unsigned int len);
unsigned char rf_read_register(unsigned char regnumber, unsigned char * dataptr, unsigned int len);

void rf_set_tx_addr(unsigned char * address, unsigned int len);
void rf_set_rx_addr(unsigned char * address, unsigned int len, unsigned char rxpipenum);

void rf_set_as_rx(bool rx_active_mode);
void rf_set_as_tx();

unsigned char rf_read_rx_payload(unsigned char * dataptr, unsigned int len);
unsigned char rf_write_tx_payload(unsigned char * dataptr, unsigned int len, bool transmit);

void rf_transmit();
void rf_get_all_registers(unsigned char * dataptr);
void rf_spi_configure_enable();
void rf_irq_clear_all();

unsigned char rf_spi_execute_command(unsigned char instruction, unsigned char * dataptr, unsigned int len, bool copydata);

#endif /*RF_H_*/
