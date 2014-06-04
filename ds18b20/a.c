#define digitalWrite gpio_pin_val_write
#define digitalRead gpio_pin_val_read
#define pinMode gpio_pin_configure
#define OUTPUT GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT
#define INPUT GPIO_PIN_CONFIG_OPTION_DIR_INPUT
#define LOW 0
#define HIGH 1
#define delayMicroseconds delay_us
#define AnalogWrite pwm_start
#define AnalogRead adc_start_single_conversion_get_value



#define _1W_Pin GPIO_PIN_ID_P1_4

#define step 3
void OneWireReset(int _1W_Pin) 
{
     digitalWrite(_1W_Pin, LOW);
     pinMode(_1W_Pin, OUTPUT);
     delayMicroseconds(500-step);
     pinMode(_1W_Pin, INPUT);
     delayMicroseconds(500-step);
}

void OneWireOutByte(int _1W_Pin, uint8_t d, uint8_t strong) 
{
   uint8_t n;

   for(n=8; n!=0; n--)
   {
      if ((d & 0x01) == 1) 
      {
         digitalWrite(_1W_Pin, LOW);
         pinMode(_1W_Pin, OUTPUT);
         delayMicroseconds(5-step);
         pinMode(_1W_Pin, INPUT);
         delayMicroseconds(60-step);
      }
      else
      {
         digitalWrite(_1W_Pin, LOW);
         pinMode(_1W_Pin, OUTPUT);
         delayMicroseconds(60-step);
         pinMode(_1W_Pin, INPUT);
      }

      d=d>>1; 
   }
   if(strong)
   {
       digitalWrite(_1W_Pin, HIGH); 
       pinMode(_1W_Pin, OUTPUT);
       //delay(1000);
       pinMode(_1W_Pin, INPUT);
       digitalWrite(_1W_Pin, LOW);
   }
}

uint8_t OneWireInByte(int _1W_Pin) 
{
    uint8_t d=0, n, b=0;

    for (n=0; n<8; n++)
    {
        digitalWrite(_1W_Pin, LOW);
        pinMode(_1W_Pin, OUTPUT);
        delayMicroseconds(5-step);
        pinMode(_1W_Pin, INPUT);
        delayMicroseconds(5-step);
        b = digitalRead(_1W_Pin);
        delayMicroseconds(50-step);
        d = (d >> 1) | (b<<7);
    }
    return(d);
}
// ---------
void main()
{
uint8_t LowByte,HighByte;
    digitalWrite(_1W_Pin, LOW);
    pinMode(_1W_Pin, INPUT);


     OneWireReset(_1W_Pin);
     OneWireOutByte(_1W_Pin, 0xcc, 0);
     OneWireOutByte(_1W_Pin, 0x44, 1); 

     OneWireReset(_1W_Pin);
     OneWireOutByte(_1W_Pin, 0xcc, 0);
     OneWireOutByte(_1W_Pin, 0xbe, 0);

     LowByte = OneWireInByte(_1W_Pin);
     HighByte = OneWireInByte(_1W_Pin);
     
     TReading = (HighByte << 8) + LowByte;
     SignBit = TReading & 0x8000;  
     if (SignBit) 
     {
         TReading = (TReading ^ 0xffff) + 1; 
     }
     
     clientnf.temperature_Sensor =(float)((6 * TReading) + TReading / 4)/100;
}