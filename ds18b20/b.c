#define DDRP  P1DIR
#define PORTP  P1CON
#define PORTPT  P1
#define DS_BIT 4
#if 0

//#define reg_bits_set(reg, mask)			((reg) |= (mask))	//Set bit(s) in a register
//#define reg_bits_clear(reg, mask)		((reg) &= ~(mask))	//Clear bit(s) in a register

void OneWireReset() 
{

     PORTP &= ~_BV(DS_BIT);
     DDRP |= _BV(DS_BIT);
     //reg_bits_set (DDRP,DS_BIT);
     delay_us(500);
     DDRP &= ~_BV(DS_BIT);
     //reg_bits_clear (DDRP,DS_BIT);
     delay_us(500);
}

void OneWireOutByte(uint8_t d) 
{
   uint8_t n;

   for(n=8; n!=0; n--)
   {
      if ((d & 0x01) == 1) 
      {

	 PORTP &= ~_BV(DS_BIT);
	 DDRP |= _BV(DS_BIT);
         delay_us(2); //5
	 DDRP &= ~_BV(DS_BIT);
         delay_us(60);
      }
      else
      {
	 PORTP &= ~_BV(DS_BIT);
	 DDRP |= _BV(DS_BIT);
         delay_us(60);
	 DDRP &= ~_BV(DS_BIT);
      }
      d=d>>1; 
   }
}


uint8_t OneWireInByte() 
{
    uint8_t d=0, n,b=0;

    for (n=0; n<8; n++)
    {
	PORTP &= ~_BV(DS_BIT);
	DDRP |= _BV(DS_BIT);
        delay_us(2); //5
	DDRP &= ~_BV(DS_BIT);
        delay_us(2); //5
	b = PORTPT & (1 << (DS_BIT));
        delay_us(50);
        d = (d >> 1) | (b<<7);
    }
    return(d);
}
#endif

#if 0
     OneWireReset();
     OneWireOutByte(0xcc);
     OneWireOutByte(0x44);
     //strong
       PORTP |= _BV(DS_BIT);
       DDRP |= _BV(DS_BIT);
       //delay(1000);
       DDRP &= ~_BV(DS_BIT);
       PORTP &= ~_BV(DS_BIT);
     
     OneWireReset();
     OneWireOutByte(0xcc);
     OneWireOutByte(0xbe);
     DSdata[0] = OneWireInByte(); 
     DSdata[1] = OneWireInByte();
#endif