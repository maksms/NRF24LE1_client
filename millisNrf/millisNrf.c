// Аналог millis для NRF24LE1
// http://homes-smart.ru/index.php/oborudovanie/bez-provodov-2-4-ggts/nrf24le1-nrf24l01-mikrokontroller
// Автор MaksMS 13.02.13
// Используется таймер № 0

#define TLSTART 256-16000000/1000/12/6 // При 16мгц ровно 33.77(7)

unsigned long ml=0;
uint8_t mcs=0;
uint8_t ofcount=0;

interrupt_isr_t0() {

TL0 = TLSTART;
  
if (mcs>=6) {
  ml++;
  mcs=0;
  
#if 1
// защита от переполнения,если было переполнение,то ofcount устанавливается в 1
// флаг ofcount проверяется в основной программе и сбрасывает переменные.
  if (ml>4294967294) {
    ofcount=1;
    ml=0;
  }
#endif 
}
mcs++;

}

// иницилизация таймера и прерывания
void millisbegin()
{
  interrupt_control_global_enable();
  interrupt_control_t0_enable()	;
  timer0_configure(TIMER0_CONFIG_OPTION_MODE_3_TWO_8_BIT_CTRS_TMRS,TLSTART);
  timer0_run();

}

#if 0
unsigned long millis()
{
	unsigned long m;
	
interrupt_control_t0_disable()	;

	m = ml;
	
interrupt_control_t0_enable()	;

	return m;
} 
#else
#define millis() ml
#endif 