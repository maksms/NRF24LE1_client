/////////////////////////////////////////////////////////////////////////////
//
// File: rf_src.h
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

#ifndef RF_SRC_H_
#define RF_SRC_H_

#include "rf.h"


///////////////////////////////////////////
// Function macros
///////////////////////////////////////////
#define rf_clear_ce()	sbit_clear(RFCON_SB_RFCE)	//Clears the CE pin
#define rf_set_ce()		sbit_set(RFCON_SB_RFCE);\
						delay_us(4);				//Sets the CE pin, waits 4 us until we can use SPI again
#define rf_get_ce()		RFCON_SB_RFCE				//Gets the value of the CE pin
#define rf_clear_csn()	sbit_clear(RFCON_SB_RFCSN)	//Clears the CSN pin
#define rf_set_csn()	sbit_set(RFCON_SB_RFCSN)	//Sets the CSN pin
#define rf_get_csn()	RFCON_SB_RFCSN				//Gets the value of the CE pin


///////////////////////////////////////////
// Function prototypes
///////////////////////////////////////////
void rf_spi_send_read(unsigned char * dataptr, unsigned int len, bool copydata);
unsigned char rf_spi_send_read_byte(unsigned char byte);


#endif /* RF_SRC_H_ */
