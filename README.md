NRF24LE1_client
===============


http://homes-smart.ru/index.php/oborudovanie/bez-provodov-2-4-ggts/opisanie-radiomodulya-nrf24l01


NRF24LE1 wireless client relay, humidity and temperature sensor

<B>demo code:</B><br>
ADC_demo - чтение АЦП входа.<br>
dht - чтение датчика DHT11,DHT22<br>
pwm_demo - pwm (ШИМ) пример<br>
RTC_sleep_demo - пример просыпания микроконтроллера по RTC часам через заданый промежуток времени<br>
<B>sdk code:</B><br>
include<br>
src

<B>code NRF24LE1:</B><br>
wiringLE.c<br>
nRFLE.c -функции настройки радиомодуля<br>
libs.h - объявление функций SDK<br>
millisNrf - Вариант реализации millis()


<B>wireless client relay, humidity and temperature sensor:</B><br>
nRF_TIMER - готовый рабочий пример беспроводного датчика и управления реле. Используется таймер на основе millis().<br>
nRF_RTC_sleep - готовый рабочий пример беспроводного датчика и управления реле. Используется спящий режим . Просыпается по RTC.<br>
COOLRF - в разработке проект диммера http://habrahabr.ru/company/coolrf/