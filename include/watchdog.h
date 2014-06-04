/////////////////////////////////////////////////////////////////////////////
//
// File: watchdog.h
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

#ifndef WATCHDOG_H_
#define WATCHDOG_H_


///////////////////////////////////////////
// Function macros
///////////////////////////////////////////
#define watchdog_set_start_value(wd_low_byte, wd_high_byte)	WDSV = (wd_low_byte);\
																	WDSV = (wd_high_byte)		//Set the start value of the watchdog
#define watchdog_get_start_value(wd_low_byte_p, wd_high_byte_p)		*(wd_low_byte_p) = WDSV;\
																	*(wd_high_byte_p) = WDSV	//Get the start value of the watchdog

///////////////////////////////////////////
// Function prototypes
///////////////////////////////////////////
void watchdog_set_start_value_in_ms(unsigned long milliseconds);


#endif /* WATCHDOG_H_ */
