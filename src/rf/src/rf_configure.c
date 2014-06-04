/////////////////////////////////////////////////////////////////////////////
//
// File: rf_configure.c
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

#include "rf.h"
#include "rf_src.h"


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// void rf_configure(unsigned char config,
//				  	 unsigned char opt_rx_active_mode,
//				  	 unsigned char en_aa,
//				  	 unsigned char en_rxaddr,
//				  	 unsigned char setup_aw,
//				  	 unsigned char setup_retr,
//				  	 unsigned char rf_ch,
//				  	 unsigned char rf_setup,
//				  	 unsigned char * rx_addr_p0,
//				  	 unsigned char * rx_addr_p1,
//				  	 unsigned char rx_addr_p2,
//				 	 unsigned char rx_addr_p3,
//					 unsigned char rx_addr_p4,
//					 unsigned char rx_addr_p5,
//					 unsigned char * tx_addr,
//					 unsigned char rx_pw_p0,
//					 unsigned char rx_pw_p1,
//					 unsigned char rx_pw_p2,
//					 unsigned char rx_pw_p3,
//					 unsigned char rx_pw_p4,
//					 unsigned char rx_pw_p5)
//
// Description:
//  Configures the RF block
//
// Parameters:
//  unsigned char config - value for CONFIG register
//  unsigned char opt_rx_active_mode - option to bring up device in active RX mode
//  unsigned char en_aa - value for EN_AA register
//  unsigned char en_rxaddr - value for EN_RXADDR register
//  unsigned char setup_aw - value for SETUP_AW register
//  unsigned char setup_retr - value for SETUP_RETR register
//  unsigned char rf_ch - value for RF_CH register
//  unsigned char rf_setup - value for RF_SETUP register
//  unsigned char * rx_addr_p0 - pointer to array for the RX address for pipe 0
//  unsigned char * rx_addr_p1 - pointer to array for the RX address for pipe 1
//  unsigned char rx_addr_p2 - value for RX_ADDR_P2 register
//  unsigned char rx_addr_p3 - value for RX_ADDR_P3 register
//  unsigned char rx_addr_p4 - value for RX_ADDR_P4 register
//  unsigned char rx_addr_p5 - value for RX_ADDR_P5 register
//  unsigned char * tx_addr - pointer to array for the TX address
//  unsigned char rx_pw_p0 - value for RX_PW_P0 register
//  unsigned char rx_pw_p1 - value for RX_PW_P1 register
//  unsigned char rx_pw_p2 - value for RX_PW_P2 register
//  unsigned char rx_pw_p3 - value for RX_PW_P3 register
//  unsigned char rx_pw_p4 - value for RX_PW_P4 register
//  unsigned char rx_pw_p5 - value for RX_PW_P5 register
//
// Return value:
//  None
//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
				  unsigned char rx_pw_p5)
{
	unsigned char buffer[5];

	//Enable RF SPI
	rf_spi_configure_enable();

	buffer[0] = en_aa;
	rf_write_register(RF_EN_AA, buffer, 1);

	buffer[0] = en_rxaddr;
	rf_write_register(RF_EN_RXADDR, buffer, 1);

	buffer[0] = setup_aw;
	rf_write_register(RF_SETUP_AW, buffer, 1);

	buffer[0] = setup_retr;
	rf_write_register(RF_SETUP_RETR, buffer, 1);

	buffer[0] = rf_ch;
	rf_write_register(RF_RF_CH, buffer, 1);

	buffer[0] = rf_setup;
	rf_write_register(RF_RF_SETUP, buffer, 1);

	//Set up the RX pipe 0 address if the passed in pointer is not NULL
	if(rx_addr_p0 != NULL)
	{
		rf_set_rx_addr(rx_addr_p0, 5, 0);
	}
	else
	{
		buffer[0] = RF_RX_ADDR_P0_B0_DEFAULT_VAL;
		buffer[1] = RF_RX_ADDR_P0_B1_DEFAULT_VAL;
		buffer[2] = RF_RX_ADDR_P0_B2_DEFAULT_VAL;
		buffer[3] = RF_RX_ADDR_P0_B3_DEFAULT_VAL;
		buffer[4] = RF_RX_ADDR_P0_B4_DEFAULT_VAL;

		rf_set_rx_addr(buffer, 5, 0);
	}

	//Set up the RX pipe 1 address if the passed in pointer is not NULL
	if(rx_addr_p1 != NULL)
	{
		rf_set_rx_addr(rx_addr_p1, 5, 1);
	}
	else
	{
		buffer[0] = RF_RX_ADDR_P1_B0_DEFAULT_VAL;
		buffer[1] = RF_RX_ADDR_P1_B1_DEFAULT_VAL;
		buffer[2] = RF_RX_ADDR_P1_B2_DEFAULT_VAL;
		buffer[3] = RF_RX_ADDR_P1_B3_DEFAULT_VAL;
		buffer[4] = RF_RX_ADDR_P1_B4_DEFAULT_VAL;

		rf_set_rx_addr(buffer, 5, 1);
	}

	buffer[0] = rx_addr_p2;
	rf_set_rx_addr(buffer, 1, 2);

	buffer[0] = rx_addr_p3;
	rf_set_rx_addr(buffer, 1, 3);

	buffer[0] = rx_addr_p4;
	rf_set_rx_addr(buffer, 1, 4);

	buffer[0] = rx_addr_p5;
	rf_set_rx_addr(buffer, 1, 5);

	//Set up the TX address if the passed in pointer is not NULL
	if(tx_addr != NULL)
	{
		rf_set_tx_addr(tx_addr, 5);
	}
	else
	{
		buffer[0] = RF_TX_ADDR_B0_DEFAULT_VAL;
		buffer[1] = RF_TX_ADDR_B1_DEFAULT_VAL;
		buffer[2] = RF_TX_ADDR_B2_DEFAULT_VAL;
		buffer[3] = RF_TX_ADDR_B3_DEFAULT_VAL;
		buffer[4] = RF_TX_ADDR_B4_DEFAULT_VAL;

		rf_set_tx_addr(buffer, 5);
	}

	buffer[0] = rx_pw_p0;
	rf_write_register(RF_RX_PW_P0, buffer, 1);

	buffer[0] = rx_pw_p1;
	rf_write_register(RF_RX_PW_P1, buffer, 1);

	buffer[0] = rx_pw_p2;
	rf_write_register(RF_RX_PW_P2, buffer, 1);

	buffer[0] = rx_pw_p3;
	rf_write_register(RF_RX_PW_P3, buffer, 1);

	buffer[0] = rx_pw_p4;
	rf_write_register(RF_RX_PW_P4, buffer, 1);

	buffer[0] = rx_pw_p5;
	rf_write_register(RF_RX_PW_P5, buffer, 1);

	//Set up the CONFIG register and power up/down as requested
	if((config & RF_CONFIG_PWR_UP) != 0)
	{
		rf_power_up_param(opt_rx_active_mode, config);
	}
	else
	{
		rf_power_down_param(config);
	}
}
