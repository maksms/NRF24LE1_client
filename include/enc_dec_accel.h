/////////////////////////////////////////////////////////////////////////////
//
// File: enc_dec_accel.h
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

#ifndef ENC_DEC_ACCEL_H_
#define ENC_DEC_ACCEL_H_


///////////////////////////////////////////
// Compilation defines
///////////////////////////////////////////
#define ENC_DEC_ACCEL_ALLOW_INLINING	1	//If non-zero, this allows the enc_dec_accel_galois_multiply() function to be inlined (requires compiler option --std-c99)

//If ENC_DEC_ACCEL_ALLOW_INLINING (see above) is non-zero, inline the enc_dec_accel_galois_multiply() function.
#if (ENC_DEC_ACCEL_ALLOW_INLINING != 0)
#define INLINE	inline
#else
#define INLINE
#endif


///////////////////////////////////////////
// Function prototypes
///////////////////////////////////////////
INLINE unsigned char enc_dec_accel_galois_multiply(unsigned char a, unsigned char b);


#endif /* ENC_DEC_ACCEL_H_ */
