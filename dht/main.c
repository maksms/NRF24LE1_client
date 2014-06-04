// Пример работы с датчиком DHT на радиомодуле nRF24LE1 . 
// http://homes-smart.ru/index.php/oborudovanie/datchiki/datchiki-vlazhnosti-dht11-i-dht22

#include "../libs.h" // в этом файле подключаются все библиотеки

unsigned char datadht[5];

#define DHTPIN GPIO_PIN_ID_P1_4  // номер пина

uint8_t dhtread ()
{

unsigned char j = 0, i = 0;
    
datadht[0] = datadht[1] = datadht[2] = datadht[3] = datadht[4] = 0;  
   
 //pin as output and set 0
gpio_pin_configure(DHTPIN, GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);

delay_ms(18);

gpio_pin_val_set(DHTPIN); //set 1

//pin as input
gpio_pin_configure(DHTPIN,GPIO_PIN_CONFIG_OPTION_DIR_INPUT);

//=============check DHT response
delay_us(51);
if (gpio_pin_val_read(DHTPIN)) return 0;
delay_us(81);
if (!gpio_pin_val_read(DHTPIN)) return 0;

//===============receive 40 data bits

while (gpio_pin_val_read(DHTPIN));
for (j=0; j<5; j++)
    {
    datadht[j]=0;
    for(i=0; i<8; i++)
        {
        while (!gpio_pin_val_read(DHTPIN));	
        delay_us (30);
	  if (gpio_pin_val_read(DHTPIN)) 
            datadht[j]|=1<<(7-i); 
        while (gpio_pin_val_read(DHTPIN));
        }
    }
	
	return 1;
}



//====================main========================

void main()
{
#if nofloat
int t,h;
#else
float t,h;
#endif
unsigned int crcdata;



while(1)
{
dhtread ();

            
            crcdata= (datadht[0] + datadht[1] + datadht[2] + datadht[3]);
	   
	   if (datadht[0]==0 && datadht[1]==0 && datadht[2]==0 && datadht[3]==0) {
	     
	   //обработка ошибки:не подключен датчик !!
	        
	 } else if ( crcdata == datadht[4]) {
	  
#if nofloat
   	  if (datadht[1]==0 && datadht[3]==0) {
	    // dht11
	    h=datadht[2]*10; // умножение на 10,чтобы было однинаково как у dht22,можно убрать.
	    t=datadht[0]*10;
	  
	  }else  { // dht22
	     
        h = (datadht[0] * 256 + datadht[1]);
       t = ((datadht[2] & 0x7F)* 256 + datadht[3]);
       if (datadht[2] & 0x80)  t *= -1;

	}
#else
   	  if (datadht[1]==0 && datadht[3]==0) {
	    // dht11
	    h=datadht[2];
	    t=datadht[0];
	  
	  }else  { // dht22
	     
        h = (float)(datadht[0] * 256 + datadht[1])/10;
       t = (float)((datadht[2] & 0x7F)* 256 + datadht[3])/10;
       if (datadht[2] & 0x80)  t *= -1;

	}
#endif	
	 } else {/* обработка ошибки:ошибка CRC */}	  
	  

	//  тут имеем переменные h и t,которые можно отправить по радиоканалу

		delay_ms(1000); //пауза 
	  

	}
	
	
	
	
}