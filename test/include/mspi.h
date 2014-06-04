/////////////////////////////////////////////////////////////////////////////
//
// File: mspi.h
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

#ifndef MSPI_H_
#define MSPI_H_

#include "reg24le1.h"


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Configuration defines for use with mspi_configure() function...OR these together to form the mspi_config_options argument
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#define MSPI_CONFIG_OPTION_DISABLE								(0x00)								//Disables MSPI communication
#define MSPI_CONFIG_OPTION_ENABLE								(SPIMCON0_ENABLE)					//Enables MSPI communication

#define MSPI_CONFIG_OPTION_CPHA_SAMPLE_ON_MSCK_EDGE_LEADING		(0x00)								//Configures MSPI to sample on leading edge of MSCK, and shift on trailing edge
#define MSPI_CONFIG_OPTION_CPHA_SAMPLE_ON_MSCK_EDGE_TRAILING	(SPIMCON0_CPHA)						//Configures MSPI to sample on trailing edge of MSCK, and shift on leading edge

#define MSPI_CONFIG_OPTION_CPOL_MSCK_ACTIVE_HIGH				(0x00)								//Configures the clock polarity to be active high
#define MSPI_CONFIG_OPTION_CPOL_MSCK_ACTIVE_LOW					(SPIMCON0_CPOL)						//Configures the clock polarity to be active low

#define MSPI_CONFIG_OPTION_DATA_ORDER_MSB_FIRST					(0x00)								//Send data with MSb first
#define MSPI_CONFIG_OPTION_DATA_ORDER_LSB_FIRST					(SPIMCON0_DATA_ORDER)				//Send data with LSb first

#define	MSPI_CONFIG_OPTION_MCLK_FREQ_16_MHZ						(0x00 << SPIMCON0_CLK_DIV_SHIFT)	//Set the MCLK frequency to 16 MHz
#define	MSPI_CONFIG_OPTION_MCLK_FREQ_8_MHZ						(0x01 << SPIMCON0_CLK_DIV_SHIFT)	//Set the MCLK frequency to 8 MHz
#define	MSPI_CONFIG_OPTION_MCLK_FREQ_2_MHZ						(0x02 << SPIMCON0_CLK_DIV_SHIFT)	//Set the MCLK frequency to 2 MHz
#define	MSPI_CONFIG_OPTION_MCLK_FREQ_1_MHZ						(0x03 << SPIMCON0_CLK_DIV_SHIFT)	//Set the MCLK frequency to 1 MHz
#define	MSPI_CONFIG_OPTION_MCLK_FREQ_500_KHZ					(0x04 << SPIMCON0_CLK_DIV_SHIFT)	//Set the MCLK frequency to 500 kHz
#define	MSPI_CONFIG_OPTION_MCLK_FREQ_250_KHZ					(0x05 << SPIMCON0_CLK_DIV_SHIFT)	//Set the MCLK frequency to 250 kHz


///////////////////////////////////////////
// Function macros
///////////////////////////////////////////
#define	mspi_send(data_to_send)		(SPIMDAT = (data_to_send))										//Sends data_to_send over MSPI
#define	mspi_get()					(SPIMDAT)														//Returns last data received over MSPI
#define	mspi_is_rx_fifo_full()		((SPIMSTAT & SPIMSTAT_INT_RX_DATA_FULL_FLAG)  ? true : false)	//True if RX FIFO is full, false otherwise
#define	mspi_is_rx_data_ready()		((SPIMSTAT & SPIMSTAT_INT_RX_DATA_READY_FLAG) ? true : false)	//True if RX data is ready, false otherwise
#define	mspi_is_tx_fifo_empty()		((SPIMSTAT & SPIMSTAT_INT_TX_FIFO_EMPTY_FLAG) ? true : false)	//True if TX FIFO is empty, false otherwise
#define	mspi_is_tx_fifo_ready()		((SPIMSTAT & SPIMSTAT_INT_TX_FIFO_READY_FLAG) ? true : false)	//True if TX FIFO is ready, false otherwise


///////////////////////////////////////////
// Function prototypes
///////////////////////////////////////////
void mspi_configure(unsigned int mspi_config_options);
unsigned char mspi_read_write(unsigned char mspi_data);

#endif /*MSPI_H_*/
