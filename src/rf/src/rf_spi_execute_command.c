/////////////////////////////////////////////////////////////////////////////
//
// File: rf_read_register.c
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
// unsigned char rf_spi_execute_command(unsigned char instruction, unsigned char * dataptr, unsigned int len, bool copydata)
//
// Description:
//  Executes a command over SPI
//
// Parameters:
//  unsigned char instruction - instruction number to send
//  unsigned char * dataptr - pointer to data to be sent and/or read
//  unsigned int len - number of bytes of data to be sent and/or read
//  bool copydata - true to copy data that is read into dataptr, false otherwise
//
// Return value:
//  Read value of the STATUS register
//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
unsigned char rf_spi_execute_command(unsigned char instruction, unsigned char * dataptr, unsigned int len, bool copydata)
{
	unsigned char status = instruction; //status writes the instruction, then reads the current STATUS value

	rf_clear_csn(); //Clear CSN to start the transaction

	//Send the instruction first (and receive the STATUS value) then send/receive the other data
	rf_spi_send_read(&status, 1, true);
	rf_spi_send_read(dataptr, len, copydata);

	rf_set_csn(); //Set CSN to end the transaction

	return status; //Return the value of STATUS
}
