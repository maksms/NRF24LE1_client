// функции для настройки nRF24LE1
// Автор MaksMS 
// http://homes-smart.ru/index.php/oborudovanie/bez-provodov-2-4-ggts/opisanie-radiomodulya-nrf24l01

#define adr1 0xF0
#define adr2 0xF0
#define adr3 0xF0
#define adr4 0xF0


#define _BV(bit) (1 << (bit))

#define RF_DR_LOW   5
#define RF_DR_HIGH  3
#define RF_EN_CRC  3
#define RF_CRCO    2
#define PWR_UP	1
#define RF_PWR_LOW  1
#define RF_PWR_HIGH 2
#define RF_ERX_P0   0

void radiobegin() {
  
uint8_t setup;

rf_spi_configure_enable();

setup = 255; // setup_retr setRetries 15*16+15
rf_write_register(RF_SETUP_RETR, &setup, 1);

}


// ------------ setChannel ----------------
void setChannel(unsigned char channel){
rf_write_register(RF_RF_CH, &channel, 1);
}


// ------------ setDataRate ----------------
void setDataRate(unsigned char speed){
unsigned char buffer;
rf_read_register(RF_RF_SETUP,&buffer,1);

  buffer &= ~(_BV(RF_DR_LOW) | _BV(RF_DR_HIGH)) ;
  
  if( speed == 1 )	 buffer |= _BV(RF_DR_LOW);
  
  else if ( speed == 3 ) buffer |= _BV(RF_DR_HIGH);

rf_write_register(RF_RF_SETUP,&buffer,1 ) ;
}


//--------------setAutoAck------------
void setAutoAck(unsigned char enable)
{
unsigned char buffer; 
  
  if (enable==1) buffer=63;
  else        buffer=0;
  rf_write_register(RF_EN_AA, &buffer,1);
}


//--------------setCRCLength------------
void setCRCLength(unsigned char length)
{
unsigned char buffer;

rf_read_register(RF_CONFIG,&buffer,1);
	
buffer = buffer & ~( _BV(RF_CRCO) | _BV(RF_EN_CRC)) ;
  
  if (length==1) buffer |= _BV(RF_EN_CRC);
  else if (length==2) buffer |= _BV(RF_EN_CRC) | _BV( RF_CRCO );

buffer |=1<<PWR_UP;

rf_write_register(RF_CONFIG,&buffer,1 ) ;

}

void setPALevel(unsigned char level)
{
uint8_t setup;
 
rf_read_register(RF_RF_SETUP,&setup,1) ;
  
setup &= ~(_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH)) ;
setup  | (level&3)<<RF_PWR_LOW;

rf_write_register(RF_RF_SETUP,&setup,1);

}

//------------------------------------------------
// замена openWritingPipe и openReadingPipe:
#if 1

void openAllPipe()
{
unsigned char buffer[5];
uint8_t setup;

buffer[1]=adr1;
buffer[2]=adr2;
buffer[3]=adr3;
buffer[4]=adr4;

setup = 2; // en_rxaddr ,биты включения каналов B00000010 на прием
rf_write_register(RF_EN_RXADDR, &setup, 1);

// openWritingPipe - Открываем канал передачи
buffer[0]=0xD2;

rf_write_register(RF_RX_ADDR_P0,buffer,5);
rf_write_register(RF_TX_ADDR,buffer,5);


//openReadingPipe - Открываем канал приема
buffer[0]=0xE1;

rf_write_register(RF_RX_ADDR_P0+1,buffer,5);

setup=32; //
rf_write_register(RF_RX_PW_P0+1,&setup,1);

}
#endif
//------------------------------------------------

#if 0
void openWritingPipe(uint8_t value)
{
  uint8_t setup;
  unsigned char data[5];
  data[0]=value;
  data[1]=adr1;
  data[2]=adr2;
  data[3]=adr3;
  data[4]=adr4;
  
  
  rf_write_register(RF_RX_ADDR_P0, (uint8_t*)(&data), 5);
  rf_write_register(RF_TX_ADDR, (uint8_t*)(&data), 5);
  
  setup=32;
  rf_write_register(RF_RX_PW_P0,&setup,1);
}

void openReadingPipe(uint8_t child, uint8_t address)
{
uint8_t setup;
unsigned char data[5];


  
  // если openReadingPipe(0,хх) будет равно нулю,то включить:
 // if (child == 0) pipe0_reading_address = address;

  if (child <= 6)
  { 
    // For pipes 2-5, only write the LSB
    if ( child < 2 ) {
      
  data[0]=address;
  data[1]=adr1;
  data[2]=adr2;
  data[3]=adr3;
  data[4]=adr4;
  
      rf_write_register(RF_RX_ADDR_P0 + child, (const uint8_t*)(&data), 5);
    
    } else

      rf_write_register(RF_RX_ADDR_P0 + child, (const uint8_t*)(&address), 1);
      
    setup=32;
    rf_write_register(RF_RX_PW_P0+child,&setup,1);
    
// 
rf_read_register(RF_EN_RXADDR,&setup,1);

setup | _BV(RF_ERX_P0+child);

rf_write_register(RF_EN_RXADDR,&setup ,1);
  }
}
//

#endif