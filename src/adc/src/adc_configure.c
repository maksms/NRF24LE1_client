/////////////////////////////////////////////////////////////////////////////
//
// File: adc_configure.c
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


///////////////////////////////////////////
// Internal defines
///////////////////////////////////////////
#define	ADC_CONFIG_OPTION_ADCCON1_WRITE_MASK	0x03	//Mask for the options used for ADCCON1
#define	ADC_CONFIG_OPTION_ADCCON2_WRITE_MASK	0xFF	//Mask for the options used for ADCCON2
#define	ADC_CONFIG_OPTION_ADCCON3_WRITE_MASK	0xE0	//Mask for the options used for ADCCON3


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// void adc_configure(unsigned int adc_config_options)
//
// Description:
//  Configures the ADC
//
// Parameters:
//  unsigned int adc_config_options - ADC configuration options
//
// Return value:
//  None
//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void adc_configure(unsigned int adc_config_options)
{
	//Set up the three ADC control registers from adc_config_options
	ADCCON1 = (adc_config_options >> 8) & ADC_CONFIG_OPTION_ADCCON1_WRITE_MASK;
	ADCCON2 = (adc_config_options)      & ADC_CONFIG_OPTION_ADCCON2_WRITE_MASK;
	ADCCON3 = (adc_config_options >> 8) & ADC_CONFIG_OPTION_ADCCON3_WRITE_MASK;
}

