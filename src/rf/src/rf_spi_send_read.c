/////////////////////////////////////////////////////////////////////////////
//
// File: rf_spi_send_read.c
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
// void rf_spi_send_read(unsigned char * dataptr, unsigned int len, bool copydata)
//
// Description:
//  Sends/reads the requested number of bytes over SPI
//
// Parameters:
//  unsigned char * dataptr - pointer to data to be sent and/or read
//  unsigned int len - number of bytes of data to be sent and/or read
//  bool copydata - true to copy data that is read into dataptr, false otherwise
//
// Return value:
//  None
//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void rf_spi_send_read(unsigned char * dataptr, unsigned int len, bool copydata)
{
	unsigned int i;
	unsigned char tempbyte;

	//Loop through the values that are to be sent/read
	for(i = 0; i < len; i++)
	{
		tempbyte = rf_spi_send_read_byte(dataptr[i]); //Send the value, and then save the received value

		//If copying of received data is requested, do so
		if(copydata != false)
		{
			dataptr[i] = tempbyte;
		}
	}
}
