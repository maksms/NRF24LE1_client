/////////////////////////////////////////////////////////////////////////////
//
// File: adc_start_conversion.c
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

#include "adc.h"
#include "gpio.h"


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// void adc_start_conversion(adc_channel_t adc_channel)
//
// Description:
//  Starts an ADC conversion on the specified ADC channel
//
// Parameters:
//  adc_channel_t adc_channel - ADC channel with which to run the acquisition
//
// Return value:
//  None
//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void adc_start_conversion(adc_channel_t adc_channel)
{
	//Remove any unnecessary set bits from adc_channel
	adc_channel &= (ADCCON1_CHAN_SEL_MASK >> ADCCON1_CHAN_SEL_SHIFT);

	//Start the conversion on the specified channel
	ADCCON1 = (ADCCON1 & ~ADCCON1_CHAN_SEL_MASK) | ((adc_channel << ADCCON1_CHAN_SEL_SHIFT) | ADCCON1_POWER_UP);
	nop(); nop(); nop(); nop(); //4 clock cycles must elapse before busy flag is set (datasheet v1.3, p. 165)
}
