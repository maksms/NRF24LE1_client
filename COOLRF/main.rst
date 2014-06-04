                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Wed Jun  4 11:56:29 2014
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _isr_t1
                             14 	.globl _isr_ifp
                             15 	.globl _openAllPipe
                             16 	.globl _setPALevel
                             17 	.globl _setCRCLength
                             18 	.globl _setAutoAck
                             19 	.globl _setDataRate
                             20 	.globl _setChannel
                             21 	.globl _radiobegin
                             22 	.globl _watchdog_start_and_set_timeout_in_ms
                             23 	.globl _watchdog_set_wdsv_count
                             24 	.globl _gpio_pin_val_write
                             25 	.globl _gpio_pin_val_set
                             26 	.globl _gpio_pin_val_clear
                             27 	.globl _gpio_pin_val_read
                             28 	.globl _FSR_SB_ENDBG
                             29 	.globl _FSR_SB_STP
                             30 	.globl _FSR_SB_WEN
                             31 	.globl _FSR_SB_RDYN
                             32 	.globl _FSR_SB_INFEN
                             33 	.globl _FSR_SB_RDISMB
                             34 	.globl _RFCON_SB_RFCKEN
                             35 	.globl _RFCON_SB_RFCSN
                             36 	.globl _RFCON_SB_RFCE
                             37 	.globl _ADCON_SB_BD
                             38 	.globl _PSW_SB_P
                             39 	.globl _PSW_SB_F1
                             40 	.globl _PSW_SB_OV
                             41 	.globl _PSW_SB_RS0
                             42 	.globl _PSW_SB_RS1
                             43 	.globl _PSW_SB_F0
                             44 	.globl _PSW_SB_AC
                             45 	.globl _PSW_SB_CY
                             46 	.globl _T2CON_SB_T2PS
                             47 	.globl _T2CON_SB_I3FR
                             48 	.globl _T2CON_SB_I2FR
                             49 	.globl _T2CON_SB_T2R1
                             50 	.globl _T2CON_SB_T2R0
                             51 	.globl _T2CON_SB_T2CM
                             52 	.globl _T2CON_SB_T2I1
                             53 	.globl _T2CON_SB_T2I0
                             54 	.globl _IRCON_SB_EXF2
                             55 	.globl _IRCON_SB_TF2
                             56 	.globl _IRCON_SB_TICK
                             57 	.globl _IRCON_SB_MISCIRQ
                             58 	.globl _IRCON_SB_WUOPIRQ
                             59 	.globl _IRCON_SB_SPI_2WIRE
                             60 	.globl _IRCON_SB_RFIRQ
                             61 	.globl _IRCON_SB_RFRDY
                             62 	.globl _IEN1_SB_T2EXTRLD
                             63 	.globl _IEN1_SB_TICK
                             64 	.globl _IEN1_SB_MISCIRQ
                             65 	.globl _IEN1_SB_WUOPIRQ
                             66 	.globl _IEN1_SB_SPI_2WIRE
                             67 	.globl _IEN1_SB_RFIRQ
                             68 	.globl _IEN1_SB_RFRDY
                             69 	.globl _P3_SB_D7
                             70 	.globl _P3_SB_D6
                             71 	.globl _P3_SB_D5
                             72 	.globl _P3_SB_D4
                             73 	.globl _P3_SB_D3
                             74 	.globl _P3_SB_D2
                             75 	.globl _P3_SB_D1
                             76 	.globl _P3_SB_D0
                             77 	.globl _IEN0_SB_GLOBAL
                             78 	.globl _IEN0_SB_T2
                             79 	.globl _IEN0_SB_UART
                             80 	.globl _IEN0_SB_T1
                             81 	.globl _IEN0_SB_POFIRQ
                             82 	.globl _IEN0_SB_T0
                             83 	.globl _IEN0_SB_IFP
                             84 	.globl _P2_SB_D7
                             85 	.globl _P2_SB_D6
                             86 	.globl _P2_SB_D5
                             87 	.globl _P2_SB_D4
                             88 	.globl _P2_SB_D3
                             89 	.globl _P2_SB_D2
                             90 	.globl _P2_SB_D1
                             91 	.globl _P2_SB_D0
                             92 	.globl _S0CON_SB_SM0
                             93 	.globl _S0CON_SB_SM1
                             94 	.globl _S0CON_SB_SM20
                             95 	.globl _S0CON_SB_REN0
                             96 	.globl _S0CON_SB_TB80
                             97 	.globl _S0CON_SB_RB80
                             98 	.globl _S0CON_SB_TI0
                             99 	.globl _S0CON_SB_RI0
                            100 	.globl _P1_SB_D7
                            101 	.globl _P1_SB_D6
                            102 	.globl _P1_SB_D5
                            103 	.globl _P1_SB_D4
                            104 	.globl _P1_SB_D3
                            105 	.globl _P1_SB_D2
                            106 	.globl _P1_SB_D1
                            107 	.globl _P1_SB_D0
                            108 	.globl _TCON_SB_TF1
                            109 	.globl _TCON_SB_TR1
                            110 	.globl _TCON_SB_TF0
                            111 	.globl _TCON_SB_TR0
                            112 	.globl _TCON_SB_IE1
                            113 	.globl _TCON_SB_IT1
                            114 	.globl _TCON_SB_IE0
                            115 	.globl _TCON_SB_IT0
                            116 	.globl _P0_SB_D7
                            117 	.globl _P0_SB_D6
                            118 	.globl _P0_SB_D5
                            119 	.globl _P0_SB_D4
                            120 	.globl _P0_SB_D3
                            121 	.globl _P0_SB_D2
                            122 	.globl _P0_SB_D1
                            123 	.globl _P0_SB_D0
                            124 	.globl _ADCDAT
                            125 	.globl _S0REL
                            126 	.globl _T2
                            127 	.globl _T1
                            128 	.globl _T0
                            129 	.globl _CRC
                            130 	.globl _CC3
                            131 	.globl _CC2
                            132 	.globl _CC1
                            133 	.globl _SPIMDAT
                            134 	.globl _SPIMSTAT
                            135 	.globl _SPIMCON1
                            136 	.globl _SPIMCON0
                            137 	.globl _FCR
                            138 	.globl _FPCR
                            139 	.globl _FSR
                            140 	.globl _B
                            141 	.globl _ARCON
                            142 	.globl _MD5
                            143 	.globl _MD4
                            144 	.globl _MD3
                            145 	.globl _MD2
                            146 	.globl _MD1
                            147 	.globl _MD0
                            148 	.globl _RFCON
                            149 	.globl _SPIRDAT
                            150 	.globl _SPIRSTAT
                            151 	.globl _SPIRCON1
                            152 	.globl _SPIRCON0
                            153 	.globl _W2CON0
                            154 	.globl _W2CON1
                            155 	.globl _ACC
                            156 	.globl _CCPDATO
                            157 	.globl _CCPDATIB
                            158 	.globl _CCPDATIA
                            159 	.globl _POFCON
                            160 	.globl _COMPCON
                            161 	.globl _W2DAT
                            162 	.globl _W2SADR
                            163 	.globl _ADCON
                            164 	.globl _RNGDAT
                            165 	.globl _RNGCTL
                            166 	.globl _ADCDATL
                            167 	.globl _ADCDATH
                            168 	.globl _ADCCON1
                            169 	.globl _ADCCON2
                            170 	.globl _ADCCON3
                            171 	.globl _PSW
                            172 	.globl _WUOPC0
                            173 	.globl _WUOPC1
                            174 	.globl _TH2
                            175 	.globl _TL2
                            176 	.globl _CRCH
                            177 	.globl _CRCL
                            178 	.globl __XPAGE
                            179 	.globl _MPAGE
                            180 	.globl _T2CON
                            181 	.globl _CCH3
                            182 	.globl _CCL3
                            183 	.globl _CCH2
                            184 	.globl _CCL2
                            185 	.globl _CCH1
                            186 	.globl _CCL1
                            187 	.globl _CCEN
                            188 	.globl _IRCON
                            189 	.globl _SPISDAT
                            190 	.globl _SPISSTAT
                            191 	.globl _SPISCON1
                            192 	.globl _SPISCON0
                            193 	.globl _S0RELH
                            194 	.globl _IP1
                            195 	.globl _IEN1
                            196 	.globl _SPISRDSZ
                            197 	.globl _RTC2CPT00
                            198 	.globl _RTC2CMP1
                            199 	.globl _RTC2CMP0
                            200 	.globl _RTC2CON
                            201 	.globl _PWMCON
                            202 	.globl _RSTREAS
                            203 	.globl _P3
                            204 	.globl _WDSV
                            205 	.globl _OPMCON
                            206 	.globl _CLKLFCTRL
                            207 	.globl _RTC2CPT10
                            208 	.globl _RTC2CPT01
                            209 	.globl _S0RELL
                            210 	.globl _IP0
                            211 	.globl _IEN0
                            212 	.globl _MEMCON
                            213 	.globl _INTEXP
                            214 	.globl _WUCON
                            215 	.globl _PWRDWN
                            216 	.globl _CLKCTRL
                            217 	.globl _PWMDC1
                            218 	.globl _PWMDC0
                            219 	.globl _P2
                            220 	.globl _P1CON
                            221 	.globl _P0CON
                            222 	.globl _S0BUF
                            223 	.globl _S0CON
                            224 	.globl _P2CON
                            225 	.globl _P3DIR
                            226 	.globl _P2DIR
                            227 	.globl _P1DIR
                            228 	.globl _P0DIR
                            229 	.globl _DPS
                            230 	.globl _P1
                            231 	.globl _P3CON
                            232 	.globl _TH1
                            233 	.globl _TH0
                            234 	.globl _TL1
                            235 	.globl _TL0
                            236 	.globl _TMOD
                            237 	.globl _TCON
                            238 	.globl _PCON
                            239 	.globl _DPH1
                            240 	.globl _DPL1
                            241 	.globl _DPH
                            242 	.globl _DPL
                            243 	.globl _SP
                            244 	.globl _P0
                            245 	.globl _servernf
                            246 	.globl _stdimm
                            247 	.globl _clientnf
                            248 	.globl _uart_configure_auto_baud_calc_PARM_2
                            249 	.globl _uart_calc_th1_value_PARM_2
                            250 	.globl _uart_calc_s0rel_value_PARM_2
                            251 	.globl _uart_calc_actual_baud_rate_from_th1_PARM_2
                            252 	.globl _uart_calc_actual_baud_rate_from_s0rel_PARM_2
                            253 	.globl _uart_configure_manual_baud_calc_PARM_2
                            254 	.globl _timer1_configure_PARM_2
                            255 	.globl _timer0_configure_PARM_2
                            256 	.globl _interrupt_configure_ifp_PARM_2
                            257 	.globl _pwm_start_PARM_2
                            258 	.globl _gpio_pin_val_write_PARM_2
                            259 	.globl _gpio_pin_configure_PARM_2
                            260 	.globl _rf_set_rx_addr_PARM_3
                            261 	.globl _rf_set_rx_addr_PARM_2
                            262 	.globl _rf_read_register_PARM_3
                            263 	.globl _rf_read_register_PARM_2
                            264 	.globl _rf_power_up_param_PARM_2
                            265 	.globl _rf_spi_send_read_PARM_3
                            266 	.globl _rf_spi_send_read_PARM_2
                            267 	.globl _rf_spi_execute_command_PARM_4
                            268 	.globl _rf_spi_execute_command_PARM_3
                            269 	.globl _rf_spi_execute_command_PARM_2
                            270 	.globl _rf_write_tx_payload_PARM_3
                            271 	.globl _rf_write_tx_payload_PARM_2
                            272 	.globl _rf_write_register_PARM_3
                            273 	.globl _rf_write_register_PARM_2
                            274 	.globl _rf_configure_debug_lite_PARM_2
                            275 	.globl _rf_read_rx_payload_PARM_2
                            276 	.globl _rf_read_rx_payload
                            277 	.globl _rf_configure_debug_lite
                            278 	.globl _rf_write_register
                            279 	.globl _rf_spi_configure_enable
                            280 	.globl _rf_write_tx_payload
                            281 	.globl _rf_transmit
                            282 	.globl _rf_set_as_rx
                            283 	.globl _rf_irq_clear_all
                            284 	.globl _rf_set_as_tx
                            285 	.globl _rf_spi_execute_command
                            286 	.globl _rf_spi_send_read
                            287 	.globl _rf_power_up_param
                            288 	.globl _rf_read_register
                            289 	.globl _rf_spi_send_read_byte
                            290 	.globl _rf_set_rx_addr
                            291 	.globl _rf_power_down
                            292 	.globl _rf_power_up
                            293 	.globl _gpio_pin_configure
                            294 	.globl _delay_us
                            295 	.globl _delay_s
                            296 	.globl _delay_ms
                            297 	.globl _pwm_configure
                            298 	.globl _pwm_start
                            299 	.globl _pwr_clk_mgmt_clklf_configure
                            300 	.globl _pwr_clk_mgmt_get_cclk_freq_in_hz
                            301 	.globl _interrupt_configure_ifp
                            302 	.globl _adc_configure
                            303 	.globl _adc_set_input_channel
                            304 	.globl _adc_start_single_conversion
                            305 	.globl _adc_start_single_conversion_get_value
                            306 	.globl _timer0_configure
                            307 	.globl _timer1_configure
                            308 	.globl _uart_configure_manual_baud_calc
                            309 	.globl _uart_calc_actual_baud_rate_from_s0rel
                            310 	.globl _uart_calc_actual_baud_rate_from_th1
                            311 	.globl _uart_calc_s0rel_value
                            312 	.globl _uart_calc_th1_value
                            313 	.globl _uart_configure_auto_baud_calc
                            314 ;--------------------------------------------------------
                            315 ; special function registers
                            316 ;--------------------------------------------------------
                            317 	.area RSEG    (ABS,DATA)
   0000                     318 	.org 0x0000
                     0080   319 _P0	=	0x0080
                     0081   320 _SP	=	0x0081
                     0082   321 _DPL	=	0x0082
                     0083   322 _DPH	=	0x0083
                     0084   323 _DPL1	=	0x0084
                     0085   324 _DPH1	=	0x0085
                     0087   325 _PCON	=	0x0087
                     0088   326 _TCON	=	0x0088
                     0089   327 _TMOD	=	0x0089
                     008A   328 _TL0	=	0x008a
                     008B   329 _TL1	=	0x008b
                     008C   330 _TH0	=	0x008c
                     008D   331 _TH1	=	0x008d
                     008F   332 _P3CON	=	0x008f
                     0090   333 _P1	=	0x0090
                     0092   334 _DPS	=	0x0092
                     0093   335 _P0DIR	=	0x0093
                     0094   336 _P1DIR	=	0x0094
                     0095   337 _P2DIR	=	0x0095
                     0096   338 _P3DIR	=	0x0096
                     0097   339 _P2CON	=	0x0097
                     0098   340 _S0CON	=	0x0098
                     0099   341 _S0BUF	=	0x0099
                     009E   342 _P0CON	=	0x009e
                     009F   343 _P1CON	=	0x009f
                     00A0   344 _P2	=	0x00a0
                     00A1   345 _PWMDC0	=	0x00a1
                     00A2   346 _PWMDC1	=	0x00a2
                     00A3   347 _CLKCTRL	=	0x00a3
                     00A4   348 _PWRDWN	=	0x00a4
                     00A5   349 _WUCON	=	0x00a5
                     00A6   350 _INTEXP	=	0x00a6
                     00A7   351 _MEMCON	=	0x00a7
                     00A8   352 _IEN0	=	0x00a8
                     00A9   353 _IP0	=	0x00a9
                     00AA   354 _S0RELL	=	0x00aa
                     00AB   355 _RTC2CPT01	=	0x00ab
                     00AC   356 _RTC2CPT10	=	0x00ac
                     00AD   357 _CLKLFCTRL	=	0x00ad
                     00AE   358 _OPMCON	=	0x00ae
                     00AF   359 _WDSV	=	0x00af
                     00B0   360 _P3	=	0x00b0
                     00B1   361 _RSTREAS	=	0x00b1
                     00B2   362 _PWMCON	=	0x00b2
                     00B3   363 _RTC2CON	=	0x00b3
                     00B4   364 _RTC2CMP0	=	0x00b4
                     00B5   365 _RTC2CMP1	=	0x00b5
                     00B6   366 _RTC2CPT00	=	0x00b6
                     00B7   367 _SPISRDSZ	=	0x00b7
                     00B8   368 _IEN1	=	0x00b8
                     00B9   369 _IP1	=	0x00b9
                     00BA   370 _S0RELH	=	0x00ba
                     00BC   371 _SPISCON0	=	0x00bc
                     00BD   372 _SPISCON1	=	0x00bd
                     00BE   373 _SPISSTAT	=	0x00be
                     00BF   374 _SPISDAT	=	0x00bf
                     00C0   375 _IRCON	=	0x00c0
                     00C1   376 _CCEN	=	0x00c1
                     00C2   377 _CCL1	=	0x00c2
                     00C3   378 _CCH1	=	0x00c3
                     00C4   379 _CCL2	=	0x00c4
                     00C5   380 _CCH2	=	0x00c5
                     00C6   381 _CCL3	=	0x00c6
                     00C7   382 _CCH3	=	0x00c7
                     00C8   383 _T2CON	=	0x00c8
                     00C9   384 _MPAGE	=	0x00c9
                     00C9   385 __XPAGE	=	0x00c9
                     00CA   386 _CRCL	=	0x00ca
                     00CB   387 _CRCH	=	0x00cb
                     00CC   388 _TL2	=	0x00cc
                     00CD   389 _TH2	=	0x00cd
                     00CE   390 _WUOPC1	=	0x00ce
                     00CF   391 _WUOPC0	=	0x00cf
                     00D0   392 _PSW	=	0x00d0
                     00D1   393 _ADCCON3	=	0x00d1
                     00D2   394 _ADCCON2	=	0x00d2
                     00D3   395 _ADCCON1	=	0x00d3
                     00D4   396 _ADCDATH	=	0x00d4
                     00D5   397 _ADCDATL	=	0x00d5
                     00D6   398 _RNGCTL	=	0x00d6
                     00D7   399 _RNGDAT	=	0x00d7
                     00D8   400 _ADCON	=	0x00d8
                     00D9   401 _W2SADR	=	0x00d9
                     00DA   402 _W2DAT	=	0x00da
                     00DB   403 _COMPCON	=	0x00db
                     00DC   404 _POFCON	=	0x00dc
                     00DD   405 _CCPDATIA	=	0x00dd
                     00DE   406 _CCPDATIB	=	0x00de
                     00DF   407 _CCPDATO	=	0x00df
                     00E0   408 _ACC	=	0x00e0
                     00E1   409 _W2CON1	=	0x00e1
                     00E2   410 _W2CON0	=	0x00e2
                     00E4   411 _SPIRCON0	=	0x00e4
                     00E5   412 _SPIRCON1	=	0x00e5
                     00E6   413 _SPIRSTAT	=	0x00e6
                     00E7   414 _SPIRDAT	=	0x00e7
                     00E8   415 _RFCON	=	0x00e8
                     00E9   416 _MD0	=	0x00e9
                     00EA   417 _MD1	=	0x00ea
                     00EB   418 _MD2	=	0x00eb
                     00EC   419 _MD3	=	0x00ec
                     00ED   420 _MD4	=	0x00ed
                     00EE   421 _MD5	=	0x00ee
                     00EF   422 _ARCON	=	0x00ef
                     00F0   423 _B	=	0x00f0
                     00F8   424 _FSR	=	0x00f8
                     00F9   425 _FPCR	=	0x00f9
                     00FA   426 _FCR	=	0x00fa
                     00FC   427 _SPIMCON0	=	0x00fc
                     00FD   428 _SPIMCON1	=	0x00fd
                     00FE   429 _SPIMSTAT	=	0x00fe
                     00FF   430 _SPIMDAT	=	0x00ff
                     C3C2   431 _CC1	=	0xc3c2
                     C5C4   432 _CC2	=	0xc5c4
                     C7C6   433 _CC3	=	0xc7c6
                     CBCA   434 _CRC	=	0xcbca
                     8C8A   435 _T0	=	0x8c8a
                     8D8B   436 _T1	=	0x8d8b
                     CDCC   437 _T2	=	0xcdcc
                     BAAA   438 _S0REL	=	0xbaaa
                     D4D5   439 _ADCDAT	=	0xd4d5
                            440 ;--------------------------------------------------------
                            441 ; special function bits
                            442 ;--------------------------------------------------------
                            443 	.area RSEG    (ABS,DATA)
   0000                     444 	.org 0x0000
                     0080   445 _P0_SB_D0	=	0x0080
                     0081   446 _P0_SB_D1	=	0x0081
                     0082   447 _P0_SB_D2	=	0x0082
                     0083   448 _P0_SB_D3	=	0x0083
                     0084   449 _P0_SB_D4	=	0x0084
                     0085   450 _P0_SB_D5	=	0x0085
                     0086   451 _P0_SB_D6	=	0x0086
                     0087   452 _P0_SB_D7	=	0x0087
                     0088   453 _TCON_SB_IT0	=	0x0088
                     0089   454 _TCON_SB_IE0	=	0x0089
                     008A   455 _TCON_SB_IT1	=	0x008a
                     008B   456 _TCON_SB_IE1	=	0x008b
                     008C   457 _TCON_SB_TR0	=	0x008c
                     008D   458 _TCON_SB_TF0	=	0x008d
                     008E   459 _TCON_SB_TR1	=	0x008e
                     008F   460 _TCON_SB_TF1	=	0x008f
                     0090   461 _P1_SB_D0	=	0x0090
                     0091   462 _P1_SB_D1	=	0x0091
                     0092   463 _P1_SB_D2	=	0x0092
                     0093   464 _P1_SB_D3	=	0x0093
                     0094   465 _P1_SB_D4	=	0x0094
                     0095   466 _P1_SB_D5	=	0x0095
                     0096   467 _P1_SB_D6	=	0x0096
                     0097   468 _P1_SB_D7	=	0x0097
                     0098   469 _S0CON_SB_RI0	=	0x0098
                     0099   470 _S0CON_SB_TI0	=	0x0099
                     009A   471 _S0CON_SB_RB80	=	0x009a
                     009B   472 _S0CON_SB_TB80	=	0x009b
                     009C   473 _S0CON_SB_REN0	=	0x009c
                     009D   474 _S0CON_SB_SM20	=	0x009d
                     009E   475 _S0CON_SB_SM1	=	0x009e
                     009F   476 _S0CON_SB_SM0	=	0x009f
                     00A0   477 _P2_SB_D0	=	0x00a0
                     00A1   478 _P2_SB_D1	=	0x00a1
                     00A2   479 _P2_SB_D2	=	0x00a2
                     00A3   480 _P2_SB_D3	=	0x00a3
                     00A4   481 _P2_SB_D4	=	0x00a4
                     00A5   482 _P2_SB_D5	=	0x00a5
                     00A6   483 _P2_SB_D6	=	0x00a6
                     00A7   484 _P2_SB_D7	=	0x00a7
                     00A8   485 _IEN0_SB_IFP	=	0x00a8
                     00A9   486 _IEN0_SB_T0	=	0x00a9
                     00AA   487 _IEN0_SB_POFIRQ	=	0x00aa
                     00AB   488 _IEN0_SB_T1	=	0x00ab
                     00AC   489 _IEN0_SB_UART	=	0x00ac
                     00AD   490 _IEN0_SB_T2	=	0x00ad
                     00AF   491 _IEN0_SB_GLOBAL	=	0x00af
                     00B0   492 _P3_SB_D0	=	0x00b0
                     00B1   493 _P3_SB_D1	=	0x00b1
                     00B2   494 _P3_SB_D2	=	0x00b2
                     00B3   495 _P3_SB_D3	=	0x00b3
                     00B4   496 _P3_SB_D4	=	0x00b4
                     00B5   497 _P3_SB_D5	=	0x00b5
                     00B6   498 _P3_SB_D6	=	0x00b6
                     00B7   499 _P3_SB_D7	=	0x00b7
                     00B8   500 _IEN1_SB_RFRDY	=	0x00b8
                     00B9   501 _IEN1_SB_RFIRQ	=	0x00b9
                     00BA   502 _IEN1_SB_SPI_2WIRE	=	0x00ba
                     00BB   503 _IEN1_SB_WUOPIRQ	=	0x00bb
                     00BC   504 _IEN1_SB_MISCIRQ	=	0x00bc
                     00BD   505 _IEN1_SB_TICK	=	0x00bd
                     00BF   506 _IEN1_SB_T2EXTRLD	=	0x00bf
                     00C0   507 _IRCON_SB_RFRDY	=	0x00c0
                     00C1   508 _IRCON_SB_RFIRQ	=	0x00c1
                     00C2   509 _IRCON_SB_SPI_2WIRE	=	0x00c2
                     00C3   510 _IRCON_SB_WUOPIRQ	=	0x00c3
                     00C4   511 _IRCON_SB_MISCIRQ	=	0x00c4
                     00C5   512 _IRCON_SB_TICK	=	0x00c5
                     00C6   513 _IRCON_SB_TF2	=	0x00c6
                     00C7   514 _IRCON_SB_EXF2	=	0x00c7
                     00C8   515 _T2CON_SB_T2I0	=	0x00c8
                     00C9   516 _T2CON_SB_T2I1	=	0x00c9
                     00CA   517 _T2CON_SB_T2CM	=	0x00ca
                     00CB   518 _T2CON_SB_T2R0	=	0x00cb
                     00CC   519 _T2CON_SB_T2R1	=	0x00cc
                     00CD   520 _T2CON_SB_I2FR	=	0x00cd
                     00CE   521 _T2CON_SB_I3FR	=	0x00ce
                     00CF   522 _T2CON_SB_T2PS	=	0x00cf
                     00D7   523 _PSW_SB_CY	=	0x00d7
                     00D6   524 _PSW_SB_AC	=	0x00d6
                     00D5   525 _PSW_SB_F0	=	0x00d5
                     00D4   526 _PSW_SB_RS1	=	0x00d4
                     00D3   527 _PSW_SB_RS0	=	0x00d3
                     00D2   528 _PSW_SB_OV	=	0x00d2
                     00D1   529 _PSW_SB_F1	=	0x00d1
                     00D0   530 _PSW_SB_P	=	0x00d0
                     00DF   531 _ADCON_SB_BD	=	0x00df
                     00E8   532 _RFCON_SB_RFCE	=	0x00e8
                     00E9   533 _RFCON_SB_RFCSN	=	0x00e9
                     00EA   534 _RFCON_SB_RFCKEN	=	0x00ea
                     00FA   535 _FSR_SB_RDISMB	=	0x00fa
                     00FB   536 _FSR_SB_INFEN	=	0x00fb
                     00FC   537 _FSR_SB_RDYN	=	0x00fc
                     00FD   538 _FSR_SB_WEN	=	0x00fd
                     00FE   539 _FSR_SB_STP	=	0x00fe
                     00FF   540 _FSR_SB_ENDBG	=	0x00ff
                            541 ;--------------------------------------------------------
                            542 ; overlayable register banks
                            543 ;--------------------------------------------------------
                            544 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     545 	.ds 8
                            546 ;--------------------------------------------------------
                            547 ; overlayable bit register bank
                            548 ;--------------------------------------------------------
                            549 	.area BIT_BANK	(REL,OVR,DATA)
   0021                     550 bits:
   0021                     551 	.ds 1
                     8000   552 	b0 = bits[0]
                     8100   553 	b1 = bits[1]
                     8200   554 	b2 = bits[2]
                     8300   555 	b3 = bits[3]
                     8400   556 	b4 = bits[4]
                     8500   557 	b5 = bits[5]
                     8600   558 	b6 = bits[6]
                     8700   559 	b7 = bits[7]
                            560 ;--------------------------------------------------------
                            561 ; internal ram data
                            562 ;--------------------------------------------------------
                            563 	.area DSEG    (DATA)
   0008                     564 _rf_spi_send_read_sloc0_1_0:
   0008                     565 	.ds 3
   000B                     566 _rf_spi_send_read_sloc1_1_0:
   000B                     567 	.ds 1
   000C                     568 _uart_configure_auto_baud_calc_sloc0_1_0:
   000C                     569 	.ds 2
   000E                     570 _uart_configure_auto_baud_calc_sloc1_1_0:
   000E                     571 	.ds 4
   0012                     572 _uart_configure_auto_baud_calc_sloc2_1_0:
   0012                     573 	.ds 4
   0016                     574 _uart_configure_auto_baud_calc_sloc3_1_0:
   0016                     575 	.ds 4
                            576 ;--------------------------------------------------------
                            577 ; overlayable items in internal ram 
                            578 ;--------------------------------------------------------
                            579 ;--------------------------------------------------------
                            580 ; Stack segment in internal ram 
                            581 ;--------------------------------------------------------
                            582 	.area	SSEG	(DATA)
   0022                     583 __start__stack:
   0022                     584 	.ds	1
                            585 
                            586 ;--------------------------------------------------------
                            587 ; indirectly addressable internal ram data
                            588 ;--------------------------------------------------------
                            589 	.area ISEG    (DATA)
                            590 ;--------------------------------------------------------
                            591 ; absolute internal ram data
                            592 ;--------------------------------------------------------
                            593 	.area IABS    (ABS,DATA)
                            594 	.area IABS    (ABS,DATA)
                            595 ;--------------------------------------------------------
                            596 ; bit data
                            597 ;--------------------------------------------------------
                            598 	.area BSEG    (BIT)
                            599 ;--------------------------------------------------------
                            600 ; paged external ram data
                            601 ;--------------------------------------------------------
                            602 	.area PSEG    (PAG,XDATA)
                            603 ;--------------------------------------------------------
                            604 ; external ram data
                            605 ;--------------------------------------------------------
                            606 	.area XSEG    (XDATA)
   0000                     607 _rf_read_rx_payload_PARM_2:
   0000                     608 	.ds 2
   0002                     609 _rf_read_rx_payload_dataptr_1_37:
   0002                     610 	.ds 3
   0005                     611 _rf_configure_debug_lite_PARM_2:
   0005                     612 	.ds 1
   0006                     613 _rf_configure_debug_lite_rx_1_39:
   0006                     614 	.ds 1
   0007                     615 _rf_configure_debug_lite_config_1_40:
   0007                     616 	.ds 1
   0008                     617 _rf_write_register_PARM_2:
   0008                     618 	.ds 3
   000B                     619 _rf_write_register_PARM_3:
   000B                     620 	.ds 2
   000D                     621 _rf_write_register_regnumber_1_42:
   000D                     622 	.ds 1
   000E                     623 _rf_write_tx_payload_PARM_2:
   000E                     624 	.ds 2
   0010                     625 _rf_write_tx_payload_PARM_3:
   0010                     626 	.ds 1
   0011                     627 _rf_write_tx_payload_dataptr_1_45:
   0011                     628 	.ds 3
   0014                     629 _rf_set_as_rx_rx_active_mode_1_49:
   0014                     630 	.ds 1
   0015                     631 _rf_set_as_rx_config_1_50:
   0015                     632 	.ds 1
   0016                     633 _rf_irq_clear_all_dataptr_1_54:
   0016                     634 	.ds 1
   0017                     635 _rf_set_as_tx_config_1_55:
   0017                     636 	.ds 1
   0018                     637 _rf_spi_execute_command_PARM_2:
   0018                     638 	.ds 3
   001B                     639 _rf_spi_execute_command_PARM_3:
   001B                     640 	.ds 2
   001D                     641 _rf_spi_execute_command_PARM_4:
   001D                     642 	.ds 1
   001E                     643 _rf_spi_execute_command_instruction_1_57:
   001E                     644 	.ds 1
   001F                     645 _rf_spi_execute_command_status_1_58:
   001F                     646 	.ds 1
   0020                     647 _rf_spi_send_read_PARM_2:
   0020                     648 	.ds 2
   0022                     649 _rf_spi_send_read_PARM_3:
   0022                     650 	.ds 1
   0023                     651 _rf_spi_send_read_dataptr_1_59:
   0023                     652 	.ds 3
   0026                     653 _rf_power_up_param_PARM_2:
   0026                     654 	.ds 1
   0027                     655 _rf_power_up_param_rx_active_mode_1_63:
   0027                     656 	.ds 1
   0028                     657 _rf_read_register_PARM_2:
   0028                     658 	.ds 3
   002B                     659 _rf_read_register_PARM_3:
   002B                     660 	.ds 2
   002D                     661 _rf_read_register_regnumber_1_69:
   002D                     662 	.ds 1
   002E                     663 _rf_spi_send_read_byte_byte_1_71:
   002E                     664 	.ds 1
   002F                     665 _rf_set_rx_addr_PARM_2:
   002F                     666 	.ds 2
   0031                     667 _rf_set_rx_addr_PARM_3:
   0031                     668 	.ds 1
   0032                     669 _rf_set_rx_addr_address_1_73:
   0032                     670 	.ds 3
   0035                     671 _rf_power_down_config_1_76:
   0035                     672 	.ds 1
   0036                     673 _rf_power_up_rx_active_mode_1_78:
   0036                     674 	.ds 1
   0037                     675 _rf_power_up_config_1_79:
   0037                     676 	.ds 1
   0038                     677 _gpio_pin_configure_PARM_2:
   0038                     678 	.ds 1
   0039                     679 _gpio_pin_configure_gpio_pin_id_1_86:
   0039                     680 	.ds 1
   003A                     681 _gpio_pin_val_read_gpio_pin_id_1_108:
   003A                     682 	.ds 1
   003B                     683 _gpio_pin_val_read_value_1_109:
   003B                     684 	.ds 1
   003C                     685 _gpio_pin_val_clear_gpio_pin_id_1_116:
   003C                     686 	.ds 1
   003D                     687 _gpio_pin_val_set_gpio_pin_id_1_122:
   003D                     688 	.ds 1
   003E                     689 _gpio_pin_val_write_PARM_2:
   003E                     690 	.ds 1
   003F                     691 _gpio_pin_val_write_gpio_pin_id_1_128:
   003F                     692 	.ds 1
   0040                     693 _delay_us_microseconds_1_132:
   0040                     694 	.ds 2
   0042                     695 _delay_s_seconds_1_135:
   0042                     696 	.ds 2
   0044                     697 _delay_ms_milliseconds_1_138:
   0044                     698 	.ds 2
   0046                     699 _pwm_configure_pwm_config_options_1_143:
   0046                     700 	.ds 1
   0047                     701 _pwm_start_PARM_2:
   0047                     702 	.ds 1
   0048                     703 _pwm_start_pwm_channel_1_145:
   0048                     704 	.ds 1
   0049                     705 _pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154:
   0049                     706 	.ds 1
   004A                     707 _pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156:
   004A                     708 	.ds 4
   004E                     709 _watchdog_set_wdsv_count_wdsv_value_1_159:
   004E                     710 	.ds 2
   0050                     711 _watchdog_start_and_set_timeout_in_ms_milliseconds_1_161:
   0050                     712 	.ds 4
   0054                     713 _watchdog_start_and_set_timeout_in_ms_wd_value_1_162:
   0054                     714 	.ds 2
   0056                     715 _interrupt_configure_ifp_PARM_2:
   0056                     716 	.ds 1
   0057                     717 _interrupt_configure_ifp_interrupt_ifp_input_1_165:
   0057                     718 	.ds 1
   0058                     719 _adc_configure_adc_config_options_1_179:
   0058                     720 	.ds 2
   005A                     721 _adc_set_input_channel_adc_channel_1_181:
   005A                     722 	.ds 1
   005B                     723 _adc_start_single_conversion_adc_channel_1_183:
   005B                     724 	.ds 1
   005C                     725 _adc_start_single_conversion_get_value_adc_channel_1_185:
   005C                     726 	.ds 1
   005D                     727 _timer0_configure_PARM_2:
   005D                     728 	.ds 2
   005F                     729 _timer0_configure_timer0_config_options_1_188:
   005F                     730 	.ds 1
   0060                     731 _timer1_configure_PARM_2:
   0060                     732 	.ds 2
   0062                     733 _timer1_configure_timer1_config_options_1_193:
   0062                     734 	.ds 1
   0063                     735 _uart_configure_manual_baud_calc_PARM_2:
   0063                     736 	.ds 2
   0065                     737 _uart_configure_manual_baud_calc_uart_config_options_1_203:
   0065                     738 	.ds 1
   0066                     739 _uart_calc_actual_baud_rate_from_s0rel_PARM_2:
   0066                     740 	.ds 1
   0067                     741 _uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_210:
   0067                     742 	.ds 2
   0069                     743 _uart_calc_actual_baud_rate_from_th1_PARM_2:
   0069                     744 	.ds 1
   006A                     745 _uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_212:
   006A                     746 	.ds 1
   006B                     747 _uart_calc_s0rel_value_PARM_2:
   006B                     748 	.ds 1
   006C                     749 _uart_calc_s0rel_value_desired_baud_rate_1_214:
   006C                     750 	.ds 4
   0070                     751 _uart_calc_th1_value_PARM_2:
   0070                     752 	.ds 1
   0071                     753 _uart_calc_th1_value_desired_baud_rate_1_216:
   0071                     754 	.ds 4
   0075                     755 _uart_configure_auto_baud_calc_PARM_2:
   0075                     756 	.ds 4
   0079                     757 _uart_configure_auto_baud_calc_uart_config_options_1_218:
   0079                     758 	.ds 1
   007A                     759 _radiobegin_setup_1_227:
   007A                     760 	.ds 1
   007B                     761 _setChannel_channel_1_228:
   007B                     762 	.ds 1
   007C                     763 _setDataRate_speed_1_230:
   007C                     764 	.ds 1
   007D                     765 _setDataRate_buffer_1_231:
   007D                     766 	.ds 1
   007E                     767 _setAutoAck_enable_1_232:
   007E                     768 	.ds 1
   007F                     769 _setAutoAck_buffer_1_233:
   007F                     770 	.ds 1
   0080                     771 _setCRCLength_length_1_234:
   0080                     772 	.ds 1
   0081                     773 _setCRCLength_buffer_1_235:
   0081                     774 	.ds 1
   0082                     775 _setPALevel_setup_1_237:
   0082                     776 	.ds 1
   0083                     777 _openAllPipe_buffer_1_238:
   0083                     778 	.ds 5
   0088                     779 _openAllPipe_setup_1_238:
   0088                     780 	.ds 1
   0089                     781 _clientnf::
   0089                     782 	.ds 18
   009B                     783 _stdimm::
   009B                     784 	.ds 1
   009C                     785 _servernf::
   009C                     786 	.ds 32
                            787 ;--------------------------------------------------------
                            788 ; absolute external ram data
                            789 ;--------------------------------------------------------
                            790 	.area XABS    (ABS,XDATA)
                            791 ;--------------------------------------------------------
                            792 ; external initialized ram data
                            793 ;--------------------------------------------------------
                            794 	.area XISEG   (XDATA)
                            795 	.area HOME    (CODE)
                            796 	.area GSINIT0 (CODE)
                            797 	.area GSINIT1 (CODE)
                            798 	.area GSINIT2 (CODE)
                            799 	.area GSINIT3 (CODE)
                            800 	.area GSINIT4 (CODE)
                            801 	.area GSINIT5 (CODE)
                            802 	.area GSINIT  (CODE)
                            803 	.area GSFINAL (CODE)
                            804 	.area CSEG    (CODE)
                            805 ;--------------------------------------------------------
                            806 ; interrupt vector 
                            807 ;--------------------------------------------------------
                            808 	.area HOME    (CODE)
   0000                     809 __interrupt_vect:
   0000 02 00 21      [24]  810 	ljmp	__sdcc_gsinit_startup
   0003 02 14 BD      [24]  811 	ljmp	_isr_ifp
   0006                     812 	.ds	5
   000B 32            [24]  813 	reti
   000C                     814 	.ds	7
   0013 32            [24]  815 	reti
   0014                     816 	.ds	7
   001B 02 15 51      [24]  817 	ljmp	_isr_t1
                            818 ;--------------------------------------------------------
                            819 ; global & static initialisations
                            820 ;--------------------------------------------------------
                            821 	.area HOME    (CODE)
                            822 	.area GSINIT  (CODE)
                            823 	.area GSFINAL (CODE)
                            824 	.area GSINIT  (CODE)
                            825 	.globl __sdcc_gsinit_startup
                            826 	.globl __sdcc_program_startup
                            827 	.globl __start__stack
                            828 	.globl __mcs51_genXINIT
                            829 	.globl __mcs51_genXRAMCLEAR
                            830 	.globl __mcs51_genRAMCLEAR
                            831 	.area GSFINAL (CODE)
   007A 02 00 1E      [24]  832 	ljmp	__sdcc_program_startup
                            833 ;--------------------------------------------------------
                            834 ; Home
                            835 ;--------------------------------------------------------
                            836 	.area HOME    (CODE)
                            837 	.area HOME    (CODE)
   001E                     838 __sdcc_program_startup:
   001E 02 15 AD      [24]  839 	ljmp	_main
                            840 ;	return from main will return to caller
                            841 ;--------------------------------------------------------
                            842 ; code
                            843 ;--------------------------------------------------------
                            844 	.area CSEG    (CODE)
                            845 ;------------------------------------------------------------
                            846 ;Allocation info for local variables in function 'rf_read_rx_payload'
                            847 ;------------------------------------------------------------
                            848 ;len                       Allocated with name '_rf_read_rx_payload_PARM_2'
                            849 ;dataptr                   Allocated with name '_rf_read_rx_payload_dataptr_1_37'
                            850 ;status                    Allocated with name '_rf_read_rx_payload_status_1_38'
                            851 ;------------------------------------------------------------
                            852 ;	../src/rf/src/rf_read_rx_payload.c:48: unsigned char rf_read_rx_payload(unsigned char * dataptr, unsigned int len)
                            853 ;	-----------------------------------------
                            854 ;	 function rf_read_rx_payload
                            855 ;	-----------------------------------------
   007D                     856 _rf_read_rx_payload:
                     0007   857 	ar7 = 0x07
                     0006   858 	ar6 = 0x06
                     0005   859 	ar5 = 0x05
                     0004   860 	ar4 = 0x04
                     0003   861 	ar3 = 0x03
                     0002   862 	ar2 = 0x02
                     0001   863 	ar1 = 0x01
                     0000   864 	ar0 = 0x00
   007D AF F0         [24]  865 	mov	r7,b
   007F AE 83         [24]  866 	mov	r6,dph
   0081 E5 82         [12]  867 	mov	a,dpl
   0083 90 00 02      [24]  868 	mov	dptr,#_rf_read_rx_payload_dataptr_1_37
   0086 F0            [24]  869 	movx	@dptr,a
   0087 EE            [12]  870 	mov	a,r6
   0088 A3            [24]  871 	inc	dptr
   0089 F0            [24]  872 	movx	@dptr,a
   008A EF            [12]  873 	mov	a,r7
   008B A3            [24]  874 	inc	dptr
   008C F0            [24]  875 	movx	@dptr,a
                            876 ;	../src/rf/src/rf_read_rx_payload.c:53: rf_clear_ce();
   008D C2 E8         [12]  877 	clr _RFCON_SB_RFCE 
                            878 ;	../src/rf/src/rf_read_rx_payload.c:54: status = rf_spi_execute_command(RF_R_RX_PAYLOAD, dataptr, len, true);
   008F 90 00 02      [24]  879 	mov	dptr,#_rf_read_rx_payload_dataptr_1_37
   0092 E0            [24]  880 	movx	a,@dptr
   0093 FD            [12]  881 	mov	r5,a
   0094 A3            [24]  882 	inc	dptr
   0095 E0            [24]  883 	movx	a,@dptr
   0096 FE            [12]  884 	mov	r6,a
   0097 A3            [24]  885 	inc	dptr
   0098 E0            [24]  886 	movx	a,@dptr
   0099 FF            [12]  887 	mov	r7,a
   009A 90 00 00      [24]  888 	mov	dptr,#_rf_read_rx_payload_PARM_2
   009D E0            [24]  889 	movx	a,@dptr
   009E FB            [12]  890 	mov	r3,a
   009F A3            [24]  891 	inc	dptr
   00A0 E0            [24]  892 	movx	a,@dptr
   00A1 FC            [12]  893 	mov	r4,a
   00A2 90 00 18      [24]  894 	mov	dptr,#_rf_spi_execute_command_PARM_2
   00A5 ED            [12]  895 	mov	a,r5
   00A6 F0            [24]  896 	movx	@dptr,a
   00A7 EE            [12]  897 	mov	a,r6
   00A8 A3            [24]  898 	inc	dptr
   00A9 F0            [24]  899 	movx	@dptr,a
   00AA EF            [12]  900 	mov	a,r7
   00AB A3            [24]  901 	inc	dptr
   00AC F0            [24]  902 	movx	@dptr,a
   00AD 90 00 1B      [24]  903 	mov	dptr,#_rf_spi_execute_command_PARM_3
   00B0 EB            [12]  904 	mov	a,r3
   00B1 F0            [24]  905 	movx	@dptr,a
   00B2 EC            [12]  906 	mov	a,r4
   00B3 A3            [24]  907 	inc	dptr
   00B4 F0            [24]  908 	movx	@dptr,a
   00B5 90 00 1D      [24]  909 	mov	dptr,#_rf_spi_execute_command_PARM_4
   00B8 74 01         [12]  910 	mov	a,#0x01
   00BA F0            [24]  911 	movx	@dptr,a
   00BB 75 82 61      [24]  912 	mov	dpl,#0x61
   00BE 12 02 B2      [24]  913 	lcall	_rf_spi_execute_command
   00C1 AF 82         [24]  914 	mov	r7,dpl
                            915 ;	../src/rf/src/rf_read_rx_payload.c:55: rf_set_ce();
   00C3 D2 E8         [12]  916 	setb _RFCON_SB_RFCE 
   00C5 90 00 04      [24]  917 	mov	dptr,#0x0004
   00C8 C0 07         [24]  918 	push	ar7
   00CA 12 08 BF      [24]  919 	lcall	_delay_us
   00CD D0 07         [24]  920 	pop	ar7
                            921 ;	../src/rf/src/rf_read_rx_payload.c:57: return status; //Return the STATUS register value
   00CF 8F 82         [24]  922 	mov	dpl,r7
   00D1 22            [24]  923 	ret
                            924 ;------------------------------------------------------------
                            925 ;Allocation info for local variables in function 'rf_configure_debug_lite'
                            926 ;------------------------------------------------------------
                            927 ;p0_payload_width          Allocated with name '_rf_configure_debug_lite_PARM_2'
                            928 ;rx                        Allocated with name '_rf_configure_debug_lite_rx_1_39'
                            929 ;config                    Allocated with name '_rf_configure_debug_lite_config_1_40'
                            930 ;------------------------------------------------------------
                            931 ;	../src/rf/src/rf_configure_debug_lite.c:48: void rf_configure_debug_lite(bool rx, unsigned char p0_payload_width)
                            932 ;	-----------------------------------------
                            933 ;	 function rf_configure_debug_lite
                            934 ;	-----------------------------------------
   00D2                     935 _rf_configure_debug_lite:
   00D2 E5 82         [12]  936 	mov	a,dpl
   00D4 90 00 06      [24]  937 	mov	dptr,#_rf_configure_debug_lite_rx_1_39
   00D7 F0            [24]  938 	movx	@dptr,a
                            939 ;	../src/rf/src/rf_configure_debug_lite.c:52: rf_spi_configure_enable(); //Enable RF SPI
   00D8 12 01 76      [24]  940 	lcall	_rf_spi_configure_enable
                            941 ;	../src/rf/src/rf_configure_debug_lite.c:55: config = 0;
   00DB 90 00 07      [24]  942 	mov	dptr,#_rf_configure_debug_lite_config_1_40
   00DE E4            [12]  943 	clr	a
   00DF F0            [24]  944 	movx	@dptr,a
                            945 ;	../src/rf/src/rf_configure_debug_lite.c:56: rf_write_register(RF_EN_AA, &config, 1); //Turn auto-acknowledge off
   00E0 90 00 08      [24]  946 	mov	dptr,#_rf_write_register_PARM_2
   00E3 74 07         [12]  947 	mov	a,#_rf_configure_debug_lite_config_1_40
   00E5 F0            [24]  948 	movx	@dptr,a
   00E6 74 00         [12]  949 	mov	a,#(_rf_configure_debug_lite_config_1_40 >> 8)
   00E8 A3            [24]  950 	inc	dptr
   00E9 F0            [24]  951 	movx	@dptr,a
   00EA E4            [12]  952 	clr	a
   00EB A3            [24]  953 	inc	dptr
   00EC F0            [24]  954 	movx	@dptr,a
   00ED 90 00 0B      [24]  955 	mov	dptr,#_rf_write_register_PARM_3
   00F0 74 01         [12]  956 	mov	a,#0x01
   00F2 F0            [24]  957 	movx	@dptr,a
   00F3 E4            [12]  958 	clr	a
   00F4 A3            [24]  959 	inc	dptr
   00F5 F0            [24]  960 	movx	@dptr,a
   00F6 75 82 01      [24]  961 	mov	dpl,#0x01
   00F9 12 01 39      [24]  962 	lcall	_rf_write_register
                            963 ;	../src/rf/src/rf_configure_debug_lite.c:59: config = RF_CONFIG_DEFAULT_VAL; //Set config to the default value of the CONFIG register
   00FC 90 00 07      [24]  964 	mov	dptr,#_rf_configure_debug_lite_config_1_40
   00FF 74 08         [12]  965 	mov	a,#0x08
   0101 F0            [24]  966 	movx	@dptr,a
                            967 ;	../src/rf/src/rf_configure_debug_lite.c:62: rf_write_register(RF_RX_PW_P0, &p0_payload_width, 1);
   0102 90 00 08      [24]  968 	mov	dptr,#_rf_write_register_PARM_2
   0105 74 05         [12]  969 	mov	a,#_rf_configure_debug_lite_PARM_2
   0107 F0            [24]  970 	movx	@dptr,a
   0108 74 00         [12]  971 	mov	a,#(_rf_configure_debug_lite_PARM_2 >> 8)
   010A A3            [24]  972 	inc	dptr
   010B F0            [24]  973 	movx	@dptr,a
   010C E4            [12]  974 	clr	a
   010D A3            [24]  975 	inc	dptr
   010E F0            [24]  976 	movx	@dptr,a
   010F 90 00 0B      [24]  977 	mov	dptr,#_rf_write_register_PARM_3
   0112 74 01         [12]  978 	mov	a,#0x01
   0114 F0            [24]  979 	movx	@dptr,a
   0115 E4            [12]  980 	clr	a
   0116 A3            [24]  981 	inc	dptr
   0117 F0            [24]  982 	movx	@dptr,a
   0118 75 82 11      [24]  983 	mov	dpl,#0x11
   011B 12 01 39      [24]  984 	lcall	_rf_write_register
                            985 ;	../src/rf/src/rf_configure_debug_lite.c:65: if(rx != false)
   011E 90 00 06      [24]  986 	mov	dptr,#_rf_configure_debug_lite_rx_1_39
   0121 E0            [24]  987 	movx	a,@dptr
   0122 FF            [12]  988 	mov	r7,a
   0123 60 06         [24]  989 	jz	00102$
                            990 ;	../src/rf/src/rf_configure_debug_lite.c:67: config |= RF_CONFIG_PRIM_RX;
   0125 90 00 07      [24]  991 	mov	dptr,#_rf_configure_debug_lite_config_1_40
   0128 74 09         [12]  992 	mov	a,#0x09
   012A F0            [24]  993 	movx	@dptr,a
   012B                     994 00102$:
                            995 ;	../src/rf/src/rf_configure_debug_lite.c:70: rf_power_up_param(true, config);
   012B 90 00 07      [24]  996 	mov	dptr,#_rf_configure_debug_lite_config_1_40
   012E E0            [24]  997 	movx	a,@dptr
   012F 90 00 26      [24]  998 	mov	dptr,#_rf_power_up_param_PARM_2
   0132 F0            [24]  999 	movx	@dptr,a
   0133 75 82 01      [24] 1000 	mov	dpl,#0x01
   0136 02 03 A1      [24] 1001 	ljmp	_rf_power_up_param
                           1002 ;------------------------------------------------------------
                           1003 ;Allocation info for local variables in function 'rf_write_register'
                           1004 ;------------------------------------------------------------
                           1005 ;dataptr                   Allocated with name '_rf_write_register_PARM_2'
                           1006 ;len                       Allocated with name '_rf_write_register_PARM_3'
                           1007 ;regnumber                 Allocated with name '_rf_write_register_regnumber_1_42'
                           1008 ;------------------------------------------------------------
                           1009 ;	../src/rf/src/rf_write_register.c:49: unsigned char rf_write_register(unsigned char regnumber, unsigned char * dataptr, unsigned int len)
                           1010 ;	-----------------------------------------
                           1011 ;	 function rf_write_register
                           1012 ;	-----------------------------------------
   0139                    1013 _rf_write_register:
   0139 E5 82         [12] 1014 	mov	a,dpl
                           1015 ;	../src/rf/src/rf_write_register.c:52: return rf_spi_execute_command(RF_W_REGISTER | (regnumber & RF_W_REGISTER_DATA), dataptr, len, false);
   013B 90 00 0D      [24] 1016 	mov	dptr,#_rf_write_register_regnumber_1_42
   013E F0            [24] 1017 	movx	@dptr,a
   013F FF            [12] 1018 	mov	r7,a
   0140 74 1F         [12] 1019 	mov	a,#0x1F
   0142 5F            [12] 1020 	anl	a,r7
   0143 44 20         [12] 1021 	orl	a,#0x20
   0145 FF            [12] 1022 	mov	r7,a
   0146 90 00 08      [24] 1023 	mov	dptr,#_rf_write_register_PARM_2
   0149 E0            [24] 1024 	movx	a,@dptr
   014A FC            [12] 1025 	mov	r4,a
   014B A3            [24] 1026 	inc	dptr
   014C E0            [24] 1027 	movx	a,@dptr
   014D FD            [12] 1028 	mov	r5,a
   014E A3            [24] 1029 	inc	dptr
   014F E0            [24] 1030 	movx	a,@dptr
   0150 FE            [12] 1031 	mov	r6,a
   0151 90 00 0B      [24] 1032 	mov	dptr,#_rf_write_register_PARM_3
   0154 E0            [24] 1033 	movx	a,@dptr
   0155 FA            [12] 1034 	mov	r2,a
   0156 A3            [24] 1035 	inc	dptr
   0157 E0            [24] 1036 	movx	a,@dptr
   0158 FB            [12] 1037 	mov	r3,a
   0159 90 00 18      [24] 1038 	mov	dptr,#_rf_spi_execute_command_PARM_2
   015C EC            [12] 1039 	mov	a,r4
   015D F0            [24] 1040 	movx	@dptr,a
   015E ED            [12] 1041 	mov	a,r5
   015F A3            [24] 1042 	inc	dptr
   0160 F0            [24] 1043 	movx	@dptr,a
   0161 EE            [12] 1044 	mov	a,r6
   0162 A3            [24] 1045 	inc	dptr
   0163 F0            [24] 1046 	movx	@dptr,a
   0164 90 00 1B      [24] 1047 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0167 EA            [12] 1048 	mov	a,r2
   0168 F0            [24] 1049 	movx	@dptr,a
   0169 EB            [12] 1050 	mov	a,r3
   016A A3            [24] 1051 	inc	dptr
   016B F0            [24] 1052 	movx	@dptr,a
   016C 90 00 1D      [24] 1053 	mov	dptr,#_rf_spi_execute_command_PARM_4
   016F E4            [12] 1054 	clr	a
   0170 F0            [24] 1055 	movx	@dptr,a
   0171 8F 82         [24] 1056 	mov	dpl,r7
   0173 02 02 B2      [24] 1057 	ljmp	_rf_spi_execute_command
                           1058 ;------------------------------------------------------------
                           1059 ;Allocation info for local variables in function 'rf_spi_configure_enable'
                           1060 ;------------------------------------------------------------
                           1061 ;	../src/rf/src/rf_spi_configure_enable.c:47: void rf_spi_configure_enable()
                           1062 ;	-----------------------------------------
                           1063 ;	 function rf_spi_configure_enable
                           1064 ;	-----------------------------------------
   0176                    1065 _rf_spi_configure_enable:
                           1066 ;	../src/rf/src/rf_spi_configure_enable.c:50: RFCON = 0x02;
   0176 75 E8 02      [24] 1067 	mov	_RFCON,#0x02
                           1068 ;	../src/rf/src/rf_spi_configure_enable.c:51: RFCON = RFCON_RFCKEN;
   0179 75 E8 04      [24] 1069 	mov	_RFCON,#0x04
   017C 22            [24] 1070 	ret
                           1071 ;------------------------------------------------------------
                           1072 ;Allocation info for local variables in function 'rf_write_tx_payload'
                           1073 ;------------------------------------------------------------
                           1074 ;len                       Allocated with name '_rf_write_tx_payload_PARM_2'
                           1075 ;transmit                  Allocated with name '_rf_write_tx_payload_PARM_3'
                           1076 ;dataptr                   Allocated with name '_rf_write_tx_payload_dataptr_1_45'
                           1077 ;status                    Allocated with name '_rf_write_tx_payload_status_1_46'
                           1078 ;------------------------------------------------------------
                           1079 ;	../src/rf/src/rf_write_tx_payload.c:49: unsigned char rf_write_tx_payload(unsigned char * dataptr, unsigned int len, bool transmit)
                           1080 ;	-----------------------------------------
                           1081 ;	 function rf_write_tx_payload
                           1082 ;	-----------------------------------------
   017D                    1083 _rf_write_tx_payload:
   017D AF F0         [24] 1084 	mov	r7,b
   017F AE 83         [24] 1085 	mov	r6,dph
   0181 E5 82         [12] 1086 	mov	a,dpl
   0183 90 00 11      [24] 1087 	mov	dptr,#_rf_write_tx_payload_dataptr_1_45
   0186 F0            [24] 1088 	movx	@dptr,a
   0187 EE            [12] 1089 	mov	a,r6
   0188 A3            [24] 1090 	inc	dptr
   0189 F0            [24] 1091 	movx	@dptr,a
   018A EF            [12] 1092 	mov	a,r7
   018B A3            [24] 1093 	inc	dptr
   018C F0            [24] 1094 	movx	@dptr,a
                           1095 ;	../src/rf/src/rf_write_tx_payload.c:53: status = rf_spi_execute_command(RF_W_TX_PAYLOAD, dataptr, len, false); //Write the payload
   018D 90 00 11      [24] 1096 	mov	dptr,#_rf_write_tx_payload_dataptr_1_45
   0190 E0            [24] 1097 	movx	a,@dptr
   0191 FD            [12] 1098 	mov	r5,a
   0192 A3            [24] 1099 	inc	dptr
   0193 E0            [24] 1100 	movx	a,@dptr
   0194 FE            [12] 1101 	mov	r6,a
   0195 A3            [24] 1102 	inc	dptr
   0196 E0            [24] 1103 	movx	a,@dptr
   0197 FF            [12] 1104 	mov	r7,a
   0198 90 00 0E      [24] 1105 	mov	dptr,#_rf_write_tx_payload_PARM_2
   019B E0            [24] 1106 	movx	a,@dptr
   019C FB            [12] 1107 	mov	r3,a
   019D A3            [24] 1108 	inc	dptr
   019E E0            [24] 1109 	movx	a,@dptr
   019F FC            [12] 1110 	mov	r4,a
   01A0 90 00 18      [24] 1111 	mov	dptr,#_rf_spi_execute_command_PARM_2
   01A3 ED            [12] 1112 	mov	a,r5
   01A4 F0            [24] 1113 	movx	@dptr,a
   01A5 EE            [12] 1114 	mov	a,r6
   01A6 A3            [24] 1115 	inc	dptr
   01A7 F0            [24] 1116 	movx	@dptr,a
   01A8 EF            [12] 1117 	mov	a,r7
   01A9 A3            [24] 1118 	inc	dptr
   01AA F0            [24] 1119 	movx	@dptr,a
   01AB 90 00 1B      [24] 1120 	mov	dptr,#_rf_spi_execute_command_PARM_3
   01AE EB            [12] 1121 	mov	a,r3
   01AF F0            [24] 1122 	movx	@dptr,a
   01B0 EC            [12] 1123 	mov	a,r4
   01B1 A3            [24] 1124 	inc	dptr
   01B2 F0            [24] 1125 	movx	@dptr,a
   01B3 90 00 1D      [24] 1126 	mov	dptr,#_rf_spi_execute_command_PARM_4
   01B6 E4            [12] 1127 	clr	a
   01B7 F0            [24] 1128 	movx	@dptr,a
   01B8 75 82 A0      [24] 1129 	mov	dpl,#0xA0
   01BB 12 02 B2      [24] 1130 	lcall	_rf_spi_execute_command
   01BE AF 82         [24] 1131 	mov	r7,dpl
                           1132 ;	../src/rf/src/rf_write_tx_payload.c:56: if(transmit == true)
   01C0 90 00 10      [24] 1133 	mov	dptr,#_rf_write_tx_payload_PARM_3
   01C3 E0            [24] 1134 	movx	a,@dptr
   01C4 FE            [12] 1135 	mov	r6,a
   01C5 BE 01 07      [24] 1136 	cjne	r6,#0x01,00102$
                           1137 ;	../src/rf/src/rf_write_tx_payload.c:58: rf_transmit();
   01C8 C0 07         [24] 1138 	push	ar7
   01CA 12 01 D2      [24] 1139 	lcall	_rf_transmit
   01CD D0 07         [24] 1140 	pop	ar7
   01CF                    1141 00102$:
                           1142 ;	../src/rf/src/rf_write_tx_payload.c:61: return status; //Return the value of STATUS
   01CF 8F 82         [24] 1143 	mov	dpl,r7
   01D1 22            [24] 1144 	ret
                           1145 ;------------------------------------------------------------
                           1146 ;Allocation info for local variables in function 'rf_transmit'
                           1147 ;------------------------------------------------------------
                           1148 ;	../src/rf/src/rf_transmit.c:47: void rf_transmit()
                           1149 ;	-----------------------------------------
                           1150 ;	 function rf_transmit
                           1151 ;	-----------------------------------------
   01D2                    1152 _rf_transmit:
                           1153 ;	../src/rf/src/rf_transmit.c:50: rf_set_ce();
   01D2 D2 E8         [12] 1154 	setb _RFCON_SB_RFCE 
   01D4 90 00 04      [24] 1155 	mov	dptr,#0x0004
   01D7 12 08 BF      [24] 1156 	lcall	_delay_us
                           1157 ;	../src/rf/src/rf_transmit.c:51: delay_us(10);
   01DA 90 00 0A      [24] 1158 	mov	dptr,#0x000A
   01DD 12 08 BF      [24] 1159 	lcall	_delay_us
                           1160 ;	../src/rf/src/rf_transmit.c:52: rf_clear_ce();
   01E0 C2 E8         [12] 1161 	clr _RFCON_SB_RFCE 
   01E2 22            [24] 1162 	ret
                           1163 ;------------------------------------------------------------
                           1164 ;Allocation info for local variables in function 'rf_set_as_rx'
                           1165 ;------------------------------------------------------------
                           1166 ;rx_active_mode            Allocated with name '_rf_set_as_rx_rx_active_mode_1_49'
                           1167 ;config                    Allocated with name '_rf_set_as_rx_config_1_50'
                           1168 ;------------------------------------------------------------
                           1169 ;	../src/rf/src/rf_set_as_rx.c:47: void rf_set_as_rx(bool rx_active_mode)
                           1170 ;	-----------------------------------------
                           1171 ;	 function rf_set_as_rx
                           1172 ;	-----------------------------------------
   01E3                    1173 _rf_set_as_rx:
   01E3 E5 82         [12] 1174 	mov	a,dpl
   01E5 90 00 14      [24] 1175 	mov	dptr,#_rf_set_as_rx_rx_active_mode_1_49
   01E8 F0            [24] 1176 	movx	@dptr,a
                           1177 ;	../src/rf/src/rf_set_as_rx.c:51: rf_read_register(RF_CONFIG, &config, 1); //Read the current CONFIG value
   01E9 90 00 28      [24] 1178 	mov	dptr,#_rf_read_register_PARM_2
   01EC 74 15         [12] 1179 	mov	a,#_rf_set_as_rx_config_1_50
   01EE F0            [24] 1180 	movx	@dptr,a
   01EF 74 00         [12] 1181 	mov	a,#(_rf_set_as_rx_config_1_50 >> 8)
   01F1 A3            [24] 1182 	inc	dptr
   01F2 F0            [24] 1183 	movx	@dptr,a
   01F3 E4            [12] 1184 	clr	a
   01F4 A3            [24] 1185 	inc	dptr
   01F5 F0            [24] 1186 	movx	@dptr,a
   01F6 90 00 2B      [24] 1187 	mov	dptr,#_rf_read_register_PARM_3
   01F9 74 01         [12] 1188 	mov	a,#0x01
   01FB F0            [24] 1189 	movx	@dptr,a
   01FC E4            [12] 1190 	clr	a
   01FD A3            [24] 1191 	inc	dptr
   01FE F0            [24] 1192 	movx	@dptr,a
   01FF 75 82 00      [24] 1193 	mov	dpl,#0x00
   0202 12 03 ED      [24] 1194 	lcall	_rf_read_register
                           1195 ;	../src/rf/src/rf_set_as_rx.c:54: if((config & RF_CONFIG_PRIM_RX) != 0)
   0205 90 00 15      [24] 1196 	mov	dptr,#_rf_set_as_rx_config_1_50
   0208 E0            [24] 1197 	movx	a,@dptr
   0209 FF            [12] 1198 	mov	r7,a
   020A 30 E0 01      [24] 1199 	jnb	acc.0,00102$
                           1200 ;	../src/rf/src/rf_set_as_rx.c:56: return;
   020D 22            [24] 1201 	ret
   020E                    1202 00102$:
                           1203 ;	../src/rf/src/rf_set_as_rx.c:60: config |= RF_CONFIG_PRIM_RX;
   020E 90 00 15      [24] 1204 	mov	dptr,#_rf_set_as_rx_config_1_50
   0211 74 01         [12] 1205 	mov	a,#0x01
   0213 4F            [12] 1206 	orl	a,r7
   0214 F0            [24] 1207 	movx	@dptr,a
                           1208 ;	../src/rf/src/rf_set_as_rx.c:61: rf_write_register(RF_CONFIG, &config, 1);
   0215 90 00 08      [24] 1209 	mov	dptr,#_rf_write_register_PARM_2
   0218 74 15         [12] 1210 	mov	a,#_rf_set_as_rx_config_1_50
   021A F0            [24] 1211 	movx	@dptr,a
   021B 74 00         [12] 1212 	mov	a,#(_rf_set_as_rx_config_1_50 >> 8)
   021D A3            [24] 1213 	inc	dptr
   021E F0            [24] 1214 	movx	@dptr,a
   021F E4            [12] 1215 	clr	a
   0220 A3            [24] 1216 	inc	dptr
   0221 F0            [24] 1217 	movx	@dptr,a
   0222 90 00 0B      [24] 1218 	mov	dptr,#_rf_write_register_PARM_3
   0225 74 01         [12] 1219 	mov	a,#0x01
   0227 F0            [24] 1220 	movx	@dptr,a
   0228 E4            [12] 1221 	clr	a
   0229 A3            [24] 1222 	inc	dptr
   022A F0            [24] 1223 	movx	@dptr,a
   022B 75 82 00      [24] 1224 	mov	dpl,#0x00
   022E 12 01 39      [24] 1225 	lcall	_rf_write_register
                           1226 ;	../src/rf/src/rf_set_as_rx.c:64: if(rx_active_mode != false)
   0231 90 00 14      [24] 1227 	mov	dptr,#_rf_set_as_rx_rx_active_mode_1_49
   0234 E0            [24] 1228 	movx	a,@dptr
   0235 FF            [12] 1229 	mov	r7,a
   0236 60 08         [24] 1230 	jz	00104$
                           1231 ;	../src/rf/src/rf_set_as_rx.c:66: rf_set_ce();
   0238 D2 E8         [12] 1232 	setb _RFCON_SB_RFCE 
   023A 90 00 04      [24] 1233 	mov	dptr,#0x0004
   023D 02 08 BF      [24] 1234 	ljmp	_delay_us
   0240                    1235 00104$:
                           1236 ;	../src/rf/src/rf_set_as_rx.c:70: rf_clear_ce();
   0240 C2 E8         [12] 1237 	clr _RFCON_SB_RFCE 
   0242 22            [24] 1238 	ret
                           1239 ;------------------------------------------------------------
                           1240 ;Allocation info for local variables in function 'rf_irq_clear_all'
                           1241 ;------------------------------------------------------------
                           1242 ;dataptr                   Allocated with name '_rf_irq_clear_all_dataptr_1_54'
                           1243 ;------------------------------------------------------------
                           1244 ;	../src/rf/src/rf_irq_clear_all.c:47: void rf_irq_clear_all()
                           1245 ;	-----------------------------------------
                           1246 ;	 function rf_irq_clear_all
                           1247 ;	-----------------------------------------
   0243                    1248 _rf_irq_clear_all:
                           1249 ;	../src/rf/src/rf_irq_clear_all.c:50: unsigned char dataptr = RF_STATUS_RX_DR | RF_STATUS_TX_DS | RF_STATUS_MAX_RT;
   0243 90 00 16      [24] 1250 	mov	dptr,#_rf_irq_clear_all_dataptr_1_54
   0246 74 70         [12] 1251 	mov	a,#0x70
   0248 F0            [24] 1252 	movx	@dptr,a
                           1253 ;	../src/rf/src/rf_irq_clear_all.c:52: rf_write_register(RF_STATUS, &dataptr, 1);
   0249 90 00 08      [24] 1254 	mov	dptr,#_rf_write_register_PARM_2
   024C 74 16         [12] 1255 	mov	a,#_rf_irq_clear_all_dataptr_1_54
   024E F0            [24] 1256 	movx	@dptr,a
   024F 74 00         [12] 1257 	mov	a,#(_rf_irq_clear_all_dataptr_1_54 >> 8)
   0251 A3            [24] 1258 	inc	dptr
   0252 F0            [24] 1259 	movx	@dptr,a
   0253 E4            [12] 1260 	clr	a
   0254 A3            [24] 1261 	inc	dptr
   0255 F0            [24] 1262 	movx	@dptr,a
   0256 90 00 0B      [24] 1263 	mov	dptr,#_rf_write_register_PARM_3
   0259 74 01         [12] 1264 	mov	a,#0x01
   025B F0            [24] 1265 	movx	@dptr,a
   025C E4            [12] 1266 	clr	a
   025D A3            [24] 1267 	inc	dptr
   025E F0            [24] 1268 	movx	@dptr,a
   025F 75 82 07      [24] 1269 	mov	dpl,#0x07
   0262 12 01 39      [24] 1270 	lcall	_rf_write_register
                           1271 ;	../src/rf/src/rf_irq_clear_all.c:54: sbit_clear(IRCON_SB_RFIRQ); //Clear the master interrupt
   0265 C2 C1         [12] 1272 	clr _IRCON_SB_RFIRQ 
   0267 22            [24] 1273 	ret
                           1274 ;------------------------------------------------------------
                           1275 ;Allocation info for local variables in function 'rf_set_as_tx'
                           1276 ;------------------------------------------------------------
                           1277 ;config                    Allocated with name '_rf_set_as_tx_config_1_55'
                           1278 ;------------------------------------------------------------
                           1279 ;	../src/rf/src/rf_set_as_tx.c:47: void rf_set_as_tx()
                           1280 ;	-----------------------------------------
                           1281 ;	 function rf_set_as_tx
                           1282 ;	-----------------------------------------
   0268                    1283 _rf_set_as_tx:
                           1284 ;	../src/rf/src/rf_set_as_tx.c:51: rf_read_register(RF_CONFIG, &config, 1); //Read the current CONFIG value
   0268 90 00 28      [24] 1285 	mov	dptr,#_rf_read_register_PARM_2
   026B 74 17         [12] 1286 	mov	a,#_rf_set_as_tx_config_1_55
   026D F0            [24] 1287 	movx	@dptr,a
   026E 74 00         [12] 1288 	mov	a,#(_rf_set_as_tx_config_1_55 >> 8)
   0270 A3            [24] 1289 	inc	dptr
   0271 F0            [24] 1290 	movx	@dptr,a
   0272 E4            [12] 1291 	clr	a
   0273 A3            [24] 1292 	inc	dptr
   0274 F0            [24] 1293 	movx	@dptr,a
   0275 90 00 2B      [24] 1294 	mov	dptr,#_rf_read_register_PARM_3
   0278 74 01         [12] 1295 	mov	a,#0x01
   027A F0            [24] 1296 	movx	@dptr,a
   027B E4            [12] 1297 	clr	a
   027C A3            [24] 1298 	inc	dptr
   027D F0            [24] 1299 	movx	@dptr,a
   027E 75 82 00      [24] 1300 	mov	dpl,#0x00
   0281 12 03 ED      [24] 1301 	lcall	_rf_read_register
                           1302 ;	../src/rf/src/rf_set_as_tx.c:54: if((config & RF_CONFIG_PRIM_RX) == 0)
   0284 90 00 17      [24] 1303 	mov	dptr,#_rf_set_as_tx_config_1_55
   0287 E0            [24] 1304 	movx	a,@dptr
   0288 FF            [12] 1305 	mov	r7,a
   0289 20 E0 01      [24] 1306 	jb	acc.0,00102$
                           1307 ;	../src/rf/src/rf_set_as_tx.c:56: return;
   028C 22            [24] 1308 	ret
   028D                    1309 00102$:
                           1310 ;	../src/rf/src/rf_set_as_tx.c:59: rf_clear_ce(); //Clear the CE pin
   028D C2 E8         [12] 1311 	clr _RFCON_SB_RFCE 
                           1312 ;	../src/rf/src/rf_set_as_tx.c:62: config &= (~RF_CONFIG_PRIM_RX);
   028F 90 00 17      [24] 1313 	mov	dptr,#_rf_set_as_tx_config_1_55
   0292 74 FE         [12] 1314 	mov	a,#0xFE
   0294 5F            [12] 1315 	anl	a,r7
   0295 F0            [24] 1316 	movx	@dptr,a
                           1317 ;	../src/rf/src/rf_set_as_tx.c:63: rf_write_register(RF_CONFIG, &config, 1);
   0296 90 00 08      [24] 1318 	mov	dptr,#_rf_write_register_PARM_2
   0299 74 17         [12] 1319 	mov	a,#_rf_set_as_tx_config_1_55
   029B F0            [24] 1320 	movx	@dptr,a
   029C 74 00         [12] 1321 	mov	a,#(_rf_set_as_tx_config_1_55 >> 8)
   029E A3            [24] 1322 	inc	dptr
   029F F0            [24] 1323 	movx	@dptr,a
   02A0 E4            [12] 1324 	clr	a
   02A1 A3            [24] 1325 	inc	dptr
   02A2 F0            [24] 1326 	movx	@dptr,a
   02A3 90 00 0B      [24] 1327 	mov	dptr,#_rf_write_register_PARM_3
   02A6 74 01         [12] 1328 	mov	a,#0x01
   02A8 F0            [24] 1329 	movx	@dptr,a
   02A9 E4            [12] 1330 	clr	a
   02AA A3            [24] 1331 	inc	dptr
   02AB F0            [24] 1332 	movx	@dptr,a
   02AC 75 82 00      [24] 1333 	mov	dpl,#0x00
   02AF 02 01 39      [24] 1334 	ljmp	_rf_write_register
                           1335 ;------------------------------------------------------------
                           1336 ;Allocation info for local variables in function 'rf_spi_execute_command'
                           1337 ;------------------------------------------------------------
                           1338 ;dataptr                   Allocated with name '_rf_spi_execute_command_PARM_2'
                           1339 ;len                       Allocated with name '_rf_spi_execute_command_PARM_3'
                           1340 ;copydata                  Allocated with name '_rf_spi_execute_command_PARM_4'
                           1341 ;instruction               Allocated with name '_rf_spi_execute_command_instruction_1_57'
                           1342 ;status                    Allocated with name '_rf_spi_execute_command_status_1_58'
                           1343 ;------------------------------------------------------------
                           1344 ;	../src/rf/src/rf_spi_execute_command.c:50: unsigned char rf_spi_execute_command(unsigned char instruction, unsigned char * dataptr, unsigned int len, bool copydata)
                           1345 ;	-----------------------------------------
                           1346 ;	 function rf_spi_execute_command
                           1347 ;	-----------------------------------------
   02B2                    1348 _rf_spi_execute_command:
   02B2 E5 82         [12] 1349 	mov	a,dpl
                           1350 ;	../src/rf/src/rf_spi_execute_command.c:52: unsigned char status = instruction; //status writes the instruction, then reads the current STATUS value
   02B4 90 00 1E      [24] 1351 	mov	dptr,#_rf_spi_execute_command_instruction_1_57
   02B7 F0            [24] 1352 	movx	@dptr,a
   02B8 FF            [12] 1353 	mov	r7,a
   02B9 90 00 1F      [24] 1354 	mov	dptr,#_rf_spi_execute_command_status_1_58
   02BC F0            [24] 1355 	movx	@dptr,a
                           1356 ;	../src/rf/src/rf_spi_execute_command.c:54: rf_clear_csn(); //Clear CSN to start the transaction
   02BD C2 E9         [12] 1357 	clr _RFCON_SB_RFCSN 
                           1358 ;	../src/rf/src/rf_spi_execute_command.c:57: rf_spi_send_read(&status, 1, true);
   02BF 90 00 20      [24] 1359 	mov	dptr,#_rf_spi_send_read_PARM_2
   02C2 74 01         [12] 1360 	mov	a,#0x01
   02C4 F0            [24] 1361 	movx	@dptr,a
   02C5 E4            [12] 1362 	clr	a
   02C6 A3            [24] 1363 	inc	dptr
   02C7 F0            [24] 1364 	movx	@dptr,a
   02C8 90 00 22      [24] 1365 	mov	dptr,#_rf_spi_send_read_PARM_3
   02CB 74 01         [12] 1366 	mov	a,#0x01
   02CD F0            [24] 1367 	movx	@dptr,a
   02CE 90 00 1F      [24] 1368 	mov	dptr,#_rf_spi_execute_command_status_1_58
   02D1 75 F0 00      [24] 1369 	mov	b,#0x00
   02D4 12 03 0E      [24] 1370 	lcall	_rf_spi_send_read
                           1371 ;	../src/rf/src/rf_spi_execute_command.c:58: rf_spi_send_read(dataptr, len, copydata);
   02D7 90 00 18      [24] 1372 	mov	dptr,#_rf_spi_execute_command_PARM_2
   02DA E0            [24] 1373 	movx	a,@dptr
   02DB FD            [12] 1374 	mov	r5,a
   02DC A3            [24] 1375 	inc	dptr
   02DD E0            [24] 1376 	movx	a,@dptr
   02DE FE            [12] 1377 	mov	r6,a
   02DF A3            [24] 1378 	inc	dptr
   02E0 E0            [24] 1379 	movx	a,@dptr
   02E1 FF            [12] 1380 	mov	r7,a
   02E2 90 00 1B      [24] 1381 	mov	dptr,#_rf_spi_execute_command_PARM_3
   02E5 E0            [24] 1382 	movx	a,@dptr
   02E6 FB            [12] 1383 	mov	r3,a
   02E7 A3            [24] 1384 	inc	dptr
   02E8 E0            [24] 1385 	movx	a,@dptr
   02E9 FC            [12] 1386 	mov	r4,a
   02EA 90 00 1D      [24] 1387 	mov	dptr,#_rf_spi_execute_command_PARM_4
   02ED E0            [24] 1388 	movx	a,@dptr
   02EE FA            [12] 1389 	mov	r2,a
   02EF 90 00 20      [24] 1390 	mov	dptr,#_rf_spi_send_read_PARM_2
   02F2 EB            [12] 1391 	mov	a,r3
   02F3 F0            [24] 1392 	movx	@dptr,a
   02F4 EC            [12] 1393 	mov	a,r4
   02F5 A3            [24] 1394 	inc	dptr
   02F6 F0            [24] 1395 	movx	@dptr,a
   02F7 90 00 22      [24] 1396 	mov	dptr,#_rf_spi_send_read_PARM_3
   02FA EA            [12] 1397 	mov	a,r2
   02FB F0            [24] 1398 	movx	@dptr,a
   02FC 8D 82         [24] 1399 	mov	dpl,r5
   02FE 8E 83         [24] 1400 	mov	dph,r6
   0300 8F F0         [24] 1401 	mov	b,r7
   0302 12 03 0E      [24] 1402 	lcall	_rf_spi_send_read
                           1403 ;	../src/rf/src/rf_spi_execute_command.c:60: rf_set_csn(); //Set CSN to end the transaction
   0305 D2 E9         [12] 1404 	setb _RFCON_SB_RFCSN 
                           1405 ;	../src/rf/src/rf_spi_execute_command.c:62: return status; //Return the value of STATUS
   0307 90 00 1F      [24] 1406 	mov	dptr,#_rf_spi_execute_command_status_1_58
   030A E0            [24] 1407 	movx	a,@dptr
   030B F5 82         [12] 1408 	mov	dpl,a
   030D 22            [24] 1409 	ret
                           1410 ;------------------------------------------------------------
                           1411 ;Allocation info for local variables in function 'rf_spi_send_read'
                           1412 ;------------------------------------------------------------
                           1413 ;sloc0                     Allocated with name '_rf_spi_send_read_sloc0_1_0'
                           1414 ;sloc1                     Allocated with name '_rf_spi_send_read_sloc1_1_0'
                           1415 ;len                       Allocated with name '_rf_spi_send_read_PARM_2'
                           1416 ;copydata                  Allocated with name '_rf_spi_send_read_PARM_3'
                           1417 ;dataptr                   Allocated with name '_rf_spi_send_read_dataptr_1_59'
                           1418 ;i                         Allocated with name '_rf_spi_send_read_i_1_60'
                           1419 ;tempbyte                  Allocated with name '_rf_spi_send_read_tempbyte_1_60'
                           1420 ;------------------------------------------------------------
                           1421 ;	../src/rf/src/rf_spi_send_read.c:49: void rf_spi_send_read(unsigned char * dataptr, unsigned int len, bool copydata)
                           1422 ;	-----------------------------------------
                           1423 ;	 function rf_spi_send_read
                           1424 ;	-----------------------------------------
   030E                    1425 _rf_spi_send_read:
   030E AF F0         [24] 1426 	mov	r7,b
   0310 AE 83         [24] 1427 	mov	r6,dph
   0312 E5 82         [12] 1428 	mov	a,dpl
   0314 90 00 23      [24] 1429 	mov	dptr,#_rf_spi_send_read_dataptr_1_59
   0317 F0            [24] 1430 	movx	@dptr,a
   0318 EE            [12] 1431 	mov	a,r6
   0319 A3            [24] 1432 	inc	dptr
   031A F0            [24] 1433 	movx	@dptr,a
   031B EF            [12] 1434 	mov	a,r7
   031C A3            [24] 1435 	inc	dptr
   031D F0            [24] 1436 	movx	@dptr,a
                           1437 ;	../src/rf/src/rf_spi_send_read.c:55: for(i = 0; i < len; i++)
   031E 90 00 23      [24] 1438 	mov	dptr,#_rf_spi_send_read_dataptr_1_59
   0321 E0            [24] 1439 	movx	a,@dptr
   0322 FD            [12] 1440 	mov	r5,a
   0323 A3            [24] 1441 	inc	dptr
   0324 E0            [24] 1442 	movx	a,@dptr
   0325 FE            [12] 1443 	mov	r6,a
   0326 A3            [24] 1444 	inc	dptr
   0327 E0            [24] 1445 	movx	a,@dptr
   0328 FF            [12] 1446 	mov	r7,a
   0329 90 00 22      [24] 1447 	mov	dptr,#_rf_spi_send_read_PARM_3
   032C E0            [24] 1448 	movx	a,@dptr
   032D FC            [12] 1449 	mov	r4,a
   032E 90 00 20      [24] 1450 	mov	dptr,#_rf_spi_send_read_PARM_2
   0331 E0            [24] 1451 	movx	a,@dptr
   0332 FA            [12] 1452 	mov	r2,a
   0333 A3            [24] 1453 	inc	dptr
   0334 E0            [24] 1454 	movx	a,@dptr
   0335 FB            [12] 1455 	mov	r3,a
   0336 78 00         [12] 1456 	mov	r0,#0x00
   0338 79 00         [12] 1457 	mov	r1,#0x00
   033A                    1458 00105$:
   033A C3            [12] 1459 	clr	c
   033B E8            [12] 1460 	mov	a,r0
   033C 9A            [12] 1461 	subb	a,r2
   033D E9            [12] 1462 	mov	a,r1
   033E 9B            [12] 1463 	subb	a,r3
   033F 50 5F         [24] 1464 	jnc	00107$
                           1465 ;	../src/rf/src/rf_spi_send_read.c:57: tempbyte = rf_spi_send_read_byte(dataptr[i]); //Send the value, and then save the received value
   0341 C0 02         [24] 1466 	push	ar2
   0343 C0 03         [24] 1467 	push	ar3
   0345 E8            [12] 1468 	mov	a,r0
   0346 2D            [12] 1469 	add	a,r5
   0347 F5 08         [12] 1470 	mov	_rf_spi_send_read_sloc0_1_0,a
   0349 E9            [12] 1471 	mov	a,r1
   034A 3E            [12] 1472 	addc	a,r6
   034B F5 09         [12] 1473 	mov	(_rf_spi_send_read_sloc0_1_0 + 1),a
   034D 8F 0A         [24] 1474 	mov	(_rf_spi_send_read_sloc0_1_0 + 2),r7
   034F 85 08 82      [24] 1475 	mov	dpl,_rf_spi_send_read_sloc0_1_0
   0352 85 09 83      [24] 1476 	mov	dph,(_rf_spi_send_read_sloc0_1_0 + 1)
   0355 85 0A F0      [24] 1477 	mov	b,(_rf_spi_send_read_sloc0_1_0 + 2)
   0358 12 19 1B      [24] 1478 	lcall	__gptrget
   035B FB            [12] 1479 	mov	r3,a
   035C F5 82         [12] 1480 	mov	dpl,a
   035E C0 07         [24] 1481 	push	ar7
   0360 C0 06         [24] 1482 	push	ar6
   0362 C0 05         [24] 1483 	push	ar5
   0364 C0 04         [24] 1484 	push	ar4
   0366 C0 03         [24] 1485 	push	ar3
   0368 C0 02         [24] 1486 	push	ar2
   036A C0 01         [24] 1487 	push	ar1
   036C C0 00         [24] 1488 	push	ar0
   036E 12 04 28      [24] 1489 	lcall	_rf_spi_send_read_byte
   0371 85 82 0B      [24] 1490 	mov	_rf_spi_send_read_sloc1_1_0,dpl
   0374 D0 00         [24] 1491 	pop	ar0
   0376 D0 01         [24] 1492 	pop	ar1
   0378 D0 02         [24] 1493 	pop	ar2
   037A D0 03         [24] 1494 	pop	ar3
   037C D0 04         [24] 1495 	pop	ar4
   037E D0 05         [24] 1496 	pop	ar5
   0380 D0 06         [24] 1497 	pop	ar6
   0382 D0 07         [24] 1498 	pop	ar7
                           1499 ;	../src/rf/src/rf_spi_send_read.c:60: if(copydata != false)
   0384 D0 03         [24] 1500 	pop	ar3
   0386 D0 02         [24] 1501 	pop	ar2
   0388 EC            [12] 1502 	mov	a,r4
   0389 60 0E         [24] 1503 	jz	00106$
                           1504 ;	../src/rf/src/rf_spi_send_read.c:62: dataptr[i] = tempbyte;
   038B 85 08 82      [24] 1505 	mov	dpl,_rf_spi_send_read_sloc0_1_0
   038E 85 09 83      [24] 1506 	mov	dph,(_rf_spi_send_read_sloc0_1_0 + 1)
   0391 85 0A F0      [24] 1507 	mov	b,(_rf_spi_send_read_sloc0_1_0 + 2)
   0394 E5 0B         [12] 1508 	mov	a,_rf_spi_send_read_sloc1_1_0
   0396 12 18 74      [24] 1509 	lcall	__gptrput
   0399                    1510 00106$:
                           1511 ;	../src/rf/src/rf_spi_send_read.c:55: for(i = 0; i < len; i++)
   0399 08            [12] 1512 	inc	r0
   039A B8 00 9D      [24] 1513 	cjne	r0,#0x00,00105$
   039D 09            [12] 1514 	inc	r1
   039E 80 9A         [24] 1515 	sjmp	00105$
   03A0                    1516 00107$:
   03A0 22            [24] 1517 	ret
                           1518 ;------------------------------------------------------------
                           1519 ;Allocation info for local variables in function 'rf_power_up_param'
                           1520 ;------------------------------------------------------------
                           1521 ;config                    Allocated with name '_rf_power_up_param_PARM_2'
                           1522 ;rx_active_mode            Allocated with name '_rf_power_up_param_rx_active_mode_1_63'
                           1523 ;------------------------------------------------------------
                           1524 ;	../src/rf/src/rf_power_up_param.c:49: void rf_power_up_param(bool rx_active_mode, unsigned char config)
                           1525 ;	-----------------------------------------
                           1526 ;	 function rf_power_up_param
                           1527 ;	-----------------------------------------
   03A1                    1528 _rf_power_up_param:
   03A1 E5 82         [12] 1529 	mov	a,dpl
   03A3 90 00 27      [24] 1530 	mov	dptr,#_rf_power_up_param_rx_active_mode_1_63
   03A6 F0            [24] 1531 	movx	@dptr,a
                           1532 ;	../src/rf/src/rf_power_up_param.c:52: config |= RF_CONFIG_PWR_UP;
   03A7 90 00 26      [24] 1533 	mov	dptr,#_rf_power_up_param_PARM_2
   03AA E0            [24] 1534 	movx	a,@dptr
   03AB 44 02         [12] 1535 	orl	a,#0x02
   03AD F0            [24] 1536 	movx	@dptr,a
                           1537 ;	../src/rf/src/rf_power_up_param.c:53: rf_write_register(RF_CONFIG, &config, 1);
   03AE 90 00 08      [24] 1538 	mov	dptr,#_rf_write_register_PARM_2
   03B1 74 26         [12] 1539 	mov	a,#_rf_power_up_param_PARM_2
   03B3 F0            [24] 1540 	movx	@dptr,a
   03B4 74 00         [12] 1541 	mov	a,#(_rf_power_up_param_PARM_2 >> 8)
   03B6 A3            [24] 1542 	inc	dptr
   03B7 F0            [24] 1543 	movx	@dptr,a
   03B8 E4            [12] 1544 	clr	a
   03B9 A3            [24] 1545 	inc	dptr
   03BA F0            [24] 1546 	movx	@dptr,a
   03BB 90 00 0B      [24] 1547 	mov	dptr,#_rf_write_register_PARM_3
   03BE 74 01         [12] 1548 	mov	a,#0x01
   03C0 F0            [24] 1549 	movx	@dptr,a
   03C1 E4            [12] 1550 	clr	a
   03C2 A3            [24] 1551 	inc	dptr
   03C3 F0            [24] 1552 	movx	@dptr,a
   03C4 75 82 00      [24] 1553 	mov	dpl,#0x00
   03C7 12 01 39      [24] 1554 	lcall	_rf_write_register
                           1555 ;	../src/rf/src/rf_power_up_param.c:55: delay_us(1); //Delay for power up
   03CA 90 00 01      [24] 1556 	mov	dptr,#0x0001
   03CD 12 08 BF      [24] 1557 	lcall	_delay_us
                           1558 ;	../src/rf/src/rf_power_up_param.c:58: if((config & RF_CONFIG_PRIM_RX) == 0)
   03D0 90 00 26      [24] 1559 	mov	dptr,#_rf_power_up_param_PARM_2
   03D3 E0            [24] 1560 	movx	a,@dptr
   03D4 FF            [12] 1561 	mov	r7,a
   03D5 20 E0 03      [24] 1562 	jb	acc.0,00105$
                           1563 ;	../src/rf/src/rf_power_up_param.c:60: rf_clear_ce(); //Clear CE for TX mode
   03D8 C2 E8         [12] 1564 	clr _RFCON_SB_RFCE 
   03DA 22            [24] 1565 	ret
   03DB                    1566 00105$:
                           1567 ;	../src/rf/src/rf_power_up_param.c:65: if(rx_active_mode != false)
   03DB 90 00 27      [24] 1568 	mov	dptr,#_rf_power_up_param_rx_active_mode_1_63
   03DE E0            [24] 1569 	movx	a,@dptr
   03DF FF            [12] 1570 	mov	r7,a
   03E0 60 08         [24] 1571 	jz	00102$
                           1572 ;	../src/rf/src/rf_power_up_param.c:67: rf_set_ce();
   03E2 D2 E8         [12] 1573 	setb _RFCON_SB_RFCE 
   03E4 90 00 04      [24] 1574 	mov	dptr,#0x0004
   03E7 02 08 BF      [24] 1575 	ljmp	_delay_us
   03EA                    1576 00102$:
                           1577 ;	../src/rf/src/rf_power_up_param.c:71: rf_clear_ce();
   03EA C2 E8         [12] 1578 	clr _RFCON_SB_RFCE 
   03EC 22            [24] 1579 	ret
                           1580 ;------------------------------------------------------------
                           1581 ;Allocation info for local variables in function 'rf_read_register'
                           1582 ;------------------------------------------------------------
                           1583 ;dataptr                   Allocated with name '_rf_read_register_PARM_2'
                           1584 ;len                       Allocated with name '_rf_read_register_PARM_3'
                           1585 ;regnumber                 Allocated with name '_rf_read_register_regnumber_1_69'
                           1586 ;------------------------------------------------------------
                           1587 ;	../src/rf/src/rf_read_register.c:49: unsigned char rf_read_register(unsigned char regnumber, unsigned char * dataptr, unsigned int len)
                           1588 ;	-----------------------------------------
                           1589 ;	 function rf_read_register
                           1590 ;	-----------------------------------------
   03ED                    1591 _rf_read_register:
   03ED E5 82         [12] 1592 	mov	a,dpl
                           1593 ;	../src/rf/src/rf_read_register.c:52: return rf_spi_execute_command(regnumber & RF_R_REGISTER_DATA, dataptr, len, true);
   03EF 90 00 2D      [24] 1594 	mov	dptr,#_rf_read_register_regnumber_1_69
   03F2 F0            [24] 1595 	movx	@dptr,a
   03F3 FF            [12] 1596 	mov	r7,a
   03F4 53 07 1F      [24] 1597 	anl	ar7,#0x1F
   03F7 90 00 28      [24] 1598 	mov	dptr,#_rf_read_register_PARM_2
   03FA E0            [24] 1599 	movx	a,@dptr
   03FB FC            [12] 1600 	mov	r4,a
   03FC A3            [24] 1601 	inc	dptr
   03FD E0            [24] 1602 	movx	a,@dptr
   03FE FD            [12] 1603 	mov	r5,a
   03FF A3            [24] 1604 	inc	dptr
   0400 E0            [24] 1605 	movx	a,@dptr
   0401 FE            [12] 1606 	mov	r6,a
   0402 90 00 2B      [24] 1607 	mov	dptr,#_rf_read_register_PARM_3
   0405 E0            [24] 1608 	movx	a,@dptr
   0406 FA            [12] 1609 	mov	r2,a
   0407 A3            [24] 1610 	inc	dptr
   0408 E0            [24] 1611 	movx	a,@dptr
   0409 FB            [12] 1612 	mov	r3,a
   040A 90 00 18      [24] 1613 	mov	dptr,#_rf_spi_execute_command_PARM_2
   040D EC            [12] 1614 	mov	a,r4
   040E F0            [24] 1615 	movx	@dptr,a
   040F ED            [12] 1616 	mov	a,r5
   0410 A3            [24] 1617 	inc	dptr
   0411 F0            [24] 1618 	movx	@dptr,a
   0412 EE            [12] 1619 	mov	a,r6
   0413 A3            [24] 1620 	inc	dptr
   0414 F0            [24] 1621 	movx	@dptr,a
   0415 90 00 1B      [24] 1622 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0418 EA            [12] 1623 	mov	a,r2
   0419 F0            [24] 1624 	movx	@dptr,a
   041A EB            [12] 1625 	mov	a,r3
   041B A3            [24] 1626 	inc	dptr
   041C F0            [24] 1627 	movx	@dptr,a
   041D 90 00 1D      [24] 1628 	mov	dptr,#_rf_spi_execute_command_PARM_4
   0420 74 01         [12] 1629 	mov	a,#0x01
   0422 F0            [24] 1630 	movx	@dptr,a
   0423 8F 82         [24] 1631 	mov	dpl,r7
   0425 02 02 B2      [24] 1632 	ljmp	_rf_spi_execute_command
                           1633 ;------------------------------------------------------------
                           1634 ;Allocation info for local variables in function 'rf_spi_send_read_byte'
                           1635 ;------------------------------------------------------------
                           1636 ;byte                      Allocated with name '_rf_spi_send_read_byte_byte_1_71'
                           1637 ;------------------------------------------------------------
                           1638 ;	../src/rf/src/rf_spi_send_read_byte.c:47: unsigned char rf_spi_send_read_byte(unsigned char byte)
                           1639 ;	-----------------------------------------
                           1640 ;	 function rf_spi_send_read_byte
                           1641 ;	-----------------------------------------
   0428                    1642 _rf_spi_send_read_byte:
   0428 E5 82         [12] 1643 	mov	a,dpl
                           1644 ;	../src/rf/src/rf_spi_send_read_byte.c:49: SPIRDAT = byte; //Send byte over SPI
   042A 90 00 2E      [24] 1645 	mov	dptr,#_rf_spi_send_read_byte_byte_1_71
   042D F0            [24] 1646 	movx	@dptr,a
   042E F5 E7         [12] 1647 	mov	_SPIRDAT,a
                           1648 ;	../src/rf/src/rf_spi_send_read_byte.c:51: while(!(SPIRSTAT & SPIRSTAT_IRQ_RX_FIFO_READY)); //Wait for the transaction to finish
   0430                    1649 00101$:
   0430 E5 E6         [12] 1650 	mov	a,_SPIRSTAT
   0432 30 E2 FB      [24] 1651 	jnb	acc.2,00101$
                           1652 ;	../src/rf/src/rf_spi_send_read_byte.c:53: IRCON_SB_RFRDY = BIT_FALSE; //Clear the IRQ bit
   0435 C2 C0         [12] 1653 	clr	_IRCON_SB_RFRDY
                           1654 ;	../src/rf/src/rf_spi_send_read_byte.c:55: return SPIRDAT; //Return the received value
   0437 85 E7 82      [24] 1655 	mov	dpl,_SPIRDAT
   043A 22            [24] 1656 	ret
                           1657 ;------------------------------------------------------------
                           1658 ;Allocation info for local variables in function 'rf_set_rx_addr'
                           1659 ;------------------------------------------------------------
                           1660 ;len                       Allocated with name '_rf_set_rx_addr_PARM_2'
                           1661 ;rxpipenum                 Allocated with name '_rf_set_rx_addr_PARM_3'
                           1662 ;address                   Allocated with name '_rf_set_rx_addr_address_1_73'
                           1663 ;------------------------------------------------------------
                           1664 ;	../src/rf/src/rf_set_rx_addr.c:49: void rf_set_rx_addr(unsigned char * address, unsigned int len, unsigned char rxpipenum)
                           1665 ;	-----------------------------------------
                           1666 ;	 function rf_set_rx_addr
                           1667 ;	-----------------------------------------
   043B                    1668 _rf_set_rx_addr:
   043B AF F0         [24] 1669 	mov	r7,b
   043D AE 83         [24] 1670 	mov	r6,dph
   043F E5 82         [12] 1671 	mov	a,dpl
   0441 90 00 32      [24] 1672 	mov	dptr,#_rf_set_rx_addr_address_1_73
   0444 F0            [24] 1673 	movx	@dptr,a
   0445 EE            [12] 1674 	mov	a,r6
   0446 A3            [24] 1675 	inc	dptr
   0447 F0            [24] 1676 	movx	@dptr,a
   0448 EF            [12] 1677 	mov	a,r7
   0449 A3            [24] 1678 	inc	dptr
   044A F0            [24] 1679 	movx	@dptr,a
                           1680 ;	../src/rf/src/rf_set_rx_addr.c:52: if(rxpipenum > 5)
   044B 90 00 31      [24] 1681 	mov	dptr,#_rf_set_rx_addr_PARM_3
   044E E0            [24] 1682 	movx	a,@dptr
   044F FF            [12] 1683 	mov  r7,a
   0450 24 FA         [12] 1684 	add	a,#0xff - 0x05
   0452 50 01         [24] 1685 	jnc	00102$
                           1686 ;	../src/rf/src/rf_set_rx_addr.c:54: return;
   0454 22            [24] 1687 	ret
   0455                    1688 00102$:
                           1689 ;	../src/rf/src/rf_set_rx_addr.c:57: rf_write_register(RF_RX_ADDR_P0 + rxpipenum, address, len); //Write the requested address to the requested RX pipe
   0455 74 0A         [12] 1690 	mov	a,#0x0A
   0457 2F            [12] 1691 	add	a,r7
   0458 FF            [12] 1692 	mov	r7,a
   0459 90 00 32      [24] 1693 	mov	dptr,#_rf_set_rx_addr_address_1_73
   045C E0            [24] 1694 	movx	a,@dptr
   045D FC            [12] 1695 	mov	r4,a
   045E A3            [24] 1696 	inc	dptr
   045F E0            [24] 1697 	movx	a,@dptr
   0460 FD            [12] 1698 	mov	r5,a
   0461 A3            [24] 1699 	inc	dptr
   0462 E0            [24] 1700 	movx	a,@dptr
   0463 FE            [12] 1701 	mov	r6,a
   0464 90 00 2F      [24] 1702 	mov	dptr,#_rf_set_rx_addr_PARM_2
   0467 E0            [24] 1703 	movx	a,@dptr
   0468 FA            [12] 1704 	mov	r2,a
   0469 A3            [24] 1705 	inc	dptr
   046A E0            [24] 1706 	movx	a,@dptr
   046B FB            [12] 1707 	mov	r3,a
   046C 90 00 08      [24] 1708 	mov	dptr,#_rf_write_register_PARM_2
   046F EC            [12] 1709 	mov	a,r4
   0470 F0            [24] 1710 	movx	@dptr,a
   0471 ED            [12] 1711 	mov	a,r5
   0472 A3            [24] 1712 	inc	dptr
   0473 F0            [24] 1713 	movx	@dptr,a
   0474 EE            [12] 1714 	mov	a,r6
   0475 A3            [24] 1715 	inc	dptr
   0476 F0            [24] 1716 	movx	@dptr,a
   0477 90 00 0B      [24] 1717 	mov	dptr,#_rf_write_register_PARM_3
   047A EA            [12] 1718 	mov	a,r2
   047B F0            [24] 1719 	movx	@dptr,a
   047C EB            [12] 1720 	mov	a,r3
   047D A3            [24] 1721 	inc	dptr
   047E F0            [24] 1722 	movx	@dptr,a
   047F 8F 82         [24] 1723 	mov	dpl,r7
   0481 02 01 39      [24] 1724 	ljmp	_rf_write_register
                           1725 ;------------------------------------------------------------
                           1726 ;Allocation info for local variables in function 'rf_power_down'
                           1727 ;------------------------------------------------------------
                           1728 ;config                    Allocated with name '_rf_power_down_config_1_76'
                           1729 ;------------------------------------------------------------
                           1730 ;	../src/rf/src/rf_power_down.c:47: void rf_power_down()
                           1731 ;	-----------------------------------------
                           1732 ;	 function rf_power_down
                           1733 ;	-----------------------------------------
   0484                    1734 _rf_power_down:
                           1735 ;	../src/rf/src/rf_power_down.c:51: rf_clear_ce(); //Clear the CE pin
   0484 C2 E8         [12] 1736 	clr _RFCON_SB_RFCE 
                           1737 ;	../src/rf/src/rf_power_down.c:53: rf_read_register(RF_CONFIG, &config, 1); //Read the current value of the CONFIG register
   0486 90 00 28      [24] 1738 	mov	dptr,#_rf_read_register_PARM_2
   0489 74 35         [12] 1739 	mov	a,#_rf_power_down_config_1_76
   048B F0            [24] 1740 	movx	@dptr,a
   048C 74 00         [12] 1741 	mov	a,#(_rf_power_down_config_1_76 >> 8)
   048E A3            [24] 1742 	inc	dptr
   048F F0            [24] 1743 	movx	@dptr,a
   0490 E4            [12] 1744 	clr	a
   0491 A3            [24] 1745 	inc	dptr
   0492 F0            [24] 1746 	movx	@dptr,a
   0493 90 00 2B      [24] 1747 	mov	dptr,#_rf_read_register_PARM_3
   0496 74 01         [12] 1748 	mov	a,#0x01
   0498 F0            [24] 1749 	movx	@dptr,a
   0499 E4            [12] 1750 	clr	a
   049A A3            [24] 1751 	inc	dptr
   049B F0            [24] 1752 	movx	@dptr,a
   049C 75 82 00      [24] 1753 	mov	dpl,#0x00
   049F 12 03 ED      [24] 1754 	lcall	_rf_read_register
                           1755 ;	../src/rf/src/rf_power_down.c:56: if((config & RF_CONFIG_PWR_UP) == 0)
   04A2 90 00 35      [24] 1756 	mov	dptr,#_rf_power_down_config_1_76
   04A5 E0            [24] 1757 	movx	a,@dptr
   04A6 FF            [12] 1758 	mov	r7,a
   04A7 20 E1 01      [24] 1759 	jb	acc.1,00102$
                           1760 ;	../src/rf/src/rf_power_down.c:58: return;
   04AA 22            [24] 1761 	ret
   04AB                    1762 00102$:
                           1763 ;	../src/rf/src/rf_power_down.c:62: config &= (~RF_CONFIG_PWR_UP);
   04AB 90 00 35      [24] 1764 	mov	dptr,#_rf_power_down_config_1_76
   04AE 74 FD         [12] 1765 	mov	a,#0xFD
   04B0 5F            [12] 1766 	anl	a,r7
   04B1 F0            [24] 1767 	movx	@dptr,a
                           1768 ;	../src/rf/src/rf_power_down.c:63: rf_write_register(RF_CONFIG, &config, 1);
   04B2 90 00 08      [24] 1769 	mov	dptr,#_rf_write_register_PARM_2
   04B5 74 35         [12] 1770 	mov	a,#_rf_power_down_config_1_76
   04B7 F0            [24] 1771 	movx	@dptr,a
   04B8 74 00         [12] 1772 	mov	a,#(_rf_power_down_config_1_76 >> 8)
   04BA A3            [24] 1773 	inc	dptr
   04BB F0            [24] 1774 	movx	@dptr,a
   04BC E4            [12] 1775 	clr	a
   04BD A3            [24] 1776 	inc	dptr
   04BE F0            [24] 1777 	movx	@dptr,a
   04BF 90 00 0B      [24] 1778 	mov	dptr,#_rf_write_register_PARM_3
   04C2 74 01         [12] 1779 	mov	a,#0x01
   04C4 F0            [24] 1780 	movx	@dptr,a
   04C5 E4            [12] 1781 	clr	a
   04C6 A3            [24] 1782 	inc	dptr
   04C7 F0            [24] 1783 	movx	@dptr,a
   04C8 75 82 00      [24] 1784 	mov	dpl,#0x00
   04CB 02 01 39      [24] 1785 	ljmp	_rf_write_register
                           1786 ;------------------------------------------------------------
                           1787 ;Allocation info for local variables in function 'rf_power_up'
                           1788 ;------------------------------------------------------------
                           1789 ;rx_active_mode            Allocated with name '_rf_power_up_rx_active_mode_1_78'
                           1790 ;config                    Allocated with name '_rf_power_up_config_1_79'
                           1791 ;------------------------------------------------------------
                           1792 ;	../src/rf/src/rf_power_up.c:47: void rf_power_up(bool rx_active_mode)
                           1793 ;	-----------------------------------------
                           1794 ;	 function rf_power_up
                           1795 ;	-----------------------------------------
   04CE                    1796 _rf_power_up:
   04CE E5 82         [12] 1797 	mov	a,dpl
   04D0 90 00 36      [24] 1798 	mov	dptr,#_rf_power_up_rx_active_mode_1_78
   04D3 F0            [24] 1799 	movx	@dptr,a
                           1800 ;	../src/rf/src/rf_power_up.c:51: rf_read_register(RF_CONFIG, &config, 1); //Get the current value of the CONFIG register
   04D4 90 00 28      [24] 1801 	mov	dptr,#_rf_read_register_PARM_2
   04D7 74 37         [12] 1802 	mov	a,#_rf_power_up_config_1_79
   04D9 F0            [24] 1803 	movx	@dptr,a
   04DA 74 00         [12] 1804 	mov	a,#(_rf_power_up_config_1_79 >> 8)
   04DC A3            [24] 1805 	inc	dptr
   04DD F0            [24] 1806 	movx	@dptr,a
   04DE E4            [12] 1807 	clr	a
   04DF A3            [24] 1808 	inc	dptr
   04E0 F0            [24] 1809 	movx	@dptr,a
   04E1 90 00 2B      [24] 1810 	mov	dptr,#_rf_read_register_PARM_3
   04E4 74 01         [12] 1811 	mov	a,#0x01
   04E6 F0            [24] 1812 	movx	@dptr,a
   04E7 E4            [12] 1813 	clr	a
   04E8 A3            [24] 1814 	inc	dptr
   04E9 F0            [24] 1815 	movx	@dptr,a
   04EA 75 82 00      [24] 1816 	mov	dpl,#0x00
   04ED 12 03 ED      [24] 1817 	lcall	_rf_read_register
                           1818 ;	../src/rf/src/rf_power_up.c:54: if((config & RF_CONFIG_PWR_UP) != 0)
   04F0 90 00 37      [24] 1819 	mov	dptr,#_rf_power_up_config_1_79
   04F3 E0            [24] 1820 	movx	a,@dptr
   04F4 FF            [12] 1821 	mov	r7,a
   04F5 30 E1 01      [24] 1822 	jnb	acc.1,00102$
                           1823 ;	../src/rf/src/rf_power_up.c:56: return;
   04F8 22            [24] 1824 	ret
   04F9                    1825 00102$:
                           1826 ;	../src/rf/src/rf_power_up.c:60: config |= RF_CONFIG_PWR_UP;
   04F9 90 00 37      [24] 1827 	mov	dptr,#_rf_power_up_config_1_79
   04FC 74 02         [12] 1828 	mov	a,#0x02
   04FE 4F            [12] 1829 	orl	a,r7
   04FF F0            [24] 1830 	movx	@dptr,a
                           1831 ;	../src/rf/src/rf_power_up.c:61: rf_write_register(RF_CONFIG, &config, 1);
   0500 90 00 08      [24] 1832 	mov	dptr,#_rf_write_register_PARM_2
   0503 74 37         [12] 1833 	mov	a,#_rf_power_up_config_1_79
   0505 F0            [24] 1834 	movx	@dptr,a
   0506 74 00         [12] 1835 	mov	a,#(_rf_power_up_config_1_79 >> 8)
   0508 A3            [24] 1836 	inc	dptr
   0509 F0            [24] 1837 	movx	@dptr,a
   050A E4            [12] 1838 	clr	a
   050B A3            [24] 1839 	inc	dptr
   050C F0            [24] 1840 	movx	@dptr,a
   050D 90 00 0B      [24] 1841 	mov	dptr,#_rf_write_register_PARM_3
   0510 74 01         [12] 1842 	mov	a,#0x01
   0512 F0            [24] 1843 	movx	@dptr,a
   0513 E4            [12] 1844 	clr	a
   0514 A3            [24] 1845 	inc	dptr
   0515 F0            [24] 1846 	movx	@dptr,a
   0516 75 82 00      [24] 1847 	mov	dpl,#0x00
   0519 12 01 39      [24] 1848 	lcall	_rf_write_register
                           1849 ;	../src/rf/src/rf_power_up.c:63: delay_us(1); //Delay for power up
   051C 90 00 01      [24] 1850 	mov	dptr,#0x0001
   051F 12 08 BF      [24] 1851 	lcall	_delay_us
                           1852 ;	../src/rf/src/rf_power_up.c:66: if((config & RF_CONFIG_PRIM_RX) == 0)
   0522 90 00 37      [24] 1853 	mov	dptr,#_rf_power_up_config_1_79
   0525 E0            [24] 1854 	movx	a,@dptr
   0526 FF            [12] 1855 	mov	r7,a
   0527 20 E0 03      [24] 1856 	jb	acc.0,00107$
                           1857 ;	../src/rf/src/rf_power_up.c:68: rf_clear_ce(); //Clear CE for TX mode
   052A C2 E8         [12] 1858 	clr _RFCON_SB_RFCE 
   052C 22            [24] 1859 	ret
   052D                    1860 00107$:
                           1861 ;	../src/rf/src/rf_power_up.c:73: if(rx_active_mode != false)
   052D 90 00 36      [24] 1862 	mov	dptr,#_rf_power_up_rx_active_mode_1_78
   0530 E0            [24] 1863 	movx	a,@dptr
   0531 FF            [12] 1864 	mov	r7,a
   0532 60 08         [24] 1865 	jz	00104$
                           1866 ;	../src/rf/src/rf_power_up.c:75: rf_set_ce();
   0534 D2 E8         [12] 1867 	setb _RFCON_SB_RFCE 
   0536 90 00 04      [24] 1868 	mov	dptr,#0x0004
   0539 02 08 BF      [24] 1869 	ljmp	_delay_us
   053C                    1870 00104$:
                           1871 ;	../src/rf/src/rf_power_up.c:79: rf_clear_ce();
   053C C2 E8         [12] 1872 	clr _RFCON_SB_RFCE 
   053E 22            [24] 1873 	ret
                           1874 ;------------------------------------------------------------
                           1875 ;Allocation info for local variables in function 'gpio_pin_configure'
                           1876 ;------------------------------------------------------------
                           1877 ;gpio_pin_config_options   Allocated with name '_gpio_pin_configure_PARM_2'
                           1878 ;gpio_pin_id               Allocated with name '_gpio_pin_configure_gpio_pin_id_1_86'
                           1879 ;------------------------------------------------------------
                           1880 ;	../src/gpio/src/gpio_pin_configure.c:47: void gpio_pin_configure(gpio_pin_id_t gpio_pin_id, uint8_t gpio_pin_config_options)
                           1881 ;	-----------------------------------------
                           1882 ;	 function gpio_pin_configure
                           1883 ;	-----------------------------------------
   053F                    1884 _gpio_pin_configure:
   053F E5 82         [12] 1885 	mov	a,dpl
                           1886 ;	../src/gpio/src/gpio_pin_configure.c:50: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   0541 90 00 39      [24] 1887 	mov	dptr,#_gpio_pin_configure_gpio_pin_id_1_86
   0544 F0            [24] 1888 	movx	@dptr,a
   0545 FF            [12] 1889 	mov  r7,a
   0546 24 F8         [12] 1890 	add	a,#0xff - 0x07
   0548 50 03         [24] 1891 	jnc	00174$
   054A 02 05 C3      [24] 1892 	ljmp	00134$
   054D                    1893 00174$:
                           1894 ;	../src/gpio/src/gpio_pin_configure.c:53: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   054D 90 00 38      [24] 1895 	mov	dptr,#_gpio_pin_configure_PARM_2
   0550 E0            [24] 1896 	movx	a,@dptr
   0551 FE            [12] 1897 	mov	r6,a
   0552 FD            [12] 1898 	mov	r5,a
   0553 ED            [12] 1899 	mov	a,r5
   0554 30 E0 4C      [24] 1900 	jnb	acc.0,00105$
                           1901 ;	../src/gpio/src/gpio_pin_configure.c:56: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   0557 EE            [12] 1902 	mov	a,r6
   0558 30 E1 15      [24] 1903 	jnb	acc.1,00102$
                           1904 ;	../src/gpio/src/gpio_pin_configure.c:58: gpio_pins_val_set(P0, (1 << (gpio_pin_id % 8)));
   055B 74 07         [12] 1905 	mov	a,#0x07
   055D 5F            [12] 1906 	anl	a,r7
   055E F5 F0         [12] 1907 	mov	b,a
   0560 05 F0         [12] 1908 	inc	b
   0562 74 01         [12] 1909 	mov	a,#0x01
   0564 80 02         [24] 1910 	sjmp	00179$
   0566                    1911 00177$:
   0566 25 E0         [12] 1912 	add	a,acc
   0568                    1913 00179$:
   0568 D5 F0 FB      [24] 1914 	djnz	b,00177$
   056B FD            [12] 1915 	mov	r5,a
   056C 42 80         [12] 1916 	orl	_P0,a
   056E 80 14         [24] 1917 	sjmp	00103$
   0570                    1918 00102$:
                           1919 ;	../src/gpio/src/gpio_pin_configure.c:62: gpio_pins_val_clear(P0, (1 << (gpio_pin_id % 8)));
   0570 74 07         [12] 1920 	mov	a,#0x07
   0572 5F            [12] 1921 	anl	a,r7
   0573 F5 F0         [12] 1922 	mov	b,a
   0575 05 F0         [12] 1923 	inc	b
   0577 74 01         [12] 1924 	mov	a,#0x01
   0579 80 02         [24] 1925 	sjmp	00182$
   057B                    1926 00180$:
   057B 25 E0         [12] 1927 	add	a,acc
   057D                    1928 00182$:
   057D D5 F0 FB      [24] 1929 	djnz	b,00180$
   0580 F4            [12] 1930 	cpl	a
   0581 FD            [12] 1931 	mov	r5,a
   0582 52 80         [12] 1932 	anl	_P0,a
   0584                    1933 00103$:
                           1934 ;	../src/gpio/src/gpio_pin_configure.c:66: P0CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   0584 74 07         [12] 1935 	mov	a,#0x07
   0586 5F            [12] 1936 	anl	a,r7
   0587 FD            [12] 1937 	mov	r5,a
   0588 74 07         [12] 1938 	mov	a,#0x07
   058A 5D            [12] 1939 	anl	a,r5
   058B FC            [12] 1940 	mov	r4,a
                           1941 ;	../src/gpio/src/gpio_pin_configure.c:67: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   058C 74 E0         [12] 1942 	mov	a,#0xE0
   058E 5E            [12] 1943 	anl	a,r6
   058F 4C            [12] 1944 	orl	a,r4
   0590 F5 9E         [12] 1945 	mov	_P0CON,a
                           1946 ;	../src/gpio/src/gpio_pin_configure.c:70: gpio_pins_dir_output(P0DIR, (1 << (gpio_pin_id % 8)));
   0592 8D F0         [24] 1947 	mov	b,r5
   0594 05 F0         [12] 1948 	inc	b
   0596 74 01         [12] 1949 	mov	a,#0x01
   0598 80 02         [24] 1950 	sjmp	00185$
   059A                    1951 00183$:
   059A 25 E0         [12] 1952 	add	a,acc
   059C                    1953 00185$:
   059C D5 F0 FB      [24] 1954 	djnz	b,00183$
   059F F4            [12] 1955 	cpl	a
   05A0 52 93         [12] 1956 	anl	_P0DIR,a
   05A2 22            [24] 1957 	ret
   05A3                    1958 00105$:
                           1959 ;	../src/gpio/src/gpio_pin_configure.c:75: P0CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   05A3 74 07         [12] 1960 	mov	a,#0x07
   05A5 5F            [12] 1961 	anl	a,r7
   05A6 FD            [12] 1962 	mov	r5,a
   05A7 74 07         [12] 1963 	mov	a,#0x07
   05A9 5D            [12] 1964 	anl	a,r5
   05AA 44 10         [12] 1965 	orl	a,#0x10
   05AC FC            [12] 1966 	mov	r4,a
                           1967 ;	../src/gpio/src/gpio_pin_configure.c:77: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   05AD 74 E0         [12] 1968 	mov	a,#0xE0
   05AF 5E            [12] 1969 	anl	a,r6
   05B0 4C            [12] 1970 	orl	a,r4
   05B1 F5 9E         [12] 1971 	mov	_P0CON,a
                           1972 ;	../src/gpio/src/gpio_pin_configure.c:80: gpio_pins_dir_input(P0DIR, (1 << (gpio_pin_id % 8)));
   05B3 8D F0         [24] 1973 	mov	b,r5
   05B5 05 F0         [12] 1974 	inc	b
   05B7 74 01         [12] 1975 	mov	a,#0x01
   05B9 80 02         [24] 1976 	sjmp	00188$
   05BB                    1977 00186$:
   05BB 25 E0         [12] 1978 	add	a,acc
   05BD                    1979 00188$:
   05BD D5 F0 FB      [24] 1980 	djnz	b,00186$
   05C0 42 93         [12] 1981 	orl	_P0DIR,a
   05C2 22            [24] 1982 	ret
   05C3                    1983 00134$:
                           1984 ;	../src/gpio/src/gpio_pin_configure.c:83: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   05C3 EF            [12] 1985 	mov	a,r7
   05C4 24 F0         [12] 1986 	add	a,#0xff - 0x0F
   05C6 50 03         [24] 1987 	jnc	00189$
   05C8 02 06 41      [24] 1988 	ljmp	00131$
   05CB                    1989 00189$:
                           1990 ;	../src/gpio/src/gpio_pin_configure.c:86: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   05CB 90 00 38      [24] 1991 	mov	dptr,#_gpio_pin_configure_PARM_2
   05CE E0            [24] 1992 	movx	a,@dptr
   05CF FE            [12] 1993 	mov	r6,a
   05D0 FD            [12] 1994 	mov	r5,a
   05D1 ED            [12] 1995 	mov	a,r5
   05D2 30 E0 4C      [24] 1996 	jnb	acc.0,00111$
                           1997 ;	../src/gpio/src/gpio_pin_configure.c:89: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   05D5 EE            [12] 1998 	mov	a,r6
   05D6 30 E1 15      [24] 1999 	jnb	acc.1,00108$
                           2000 ;	../src/gpio/src/gpio_pin_configure.c:91: gpio_pins_val_set(P1, (1 << (gpio_pin_id % 8)));
   05D9 74 07         [12] 2001 	mov	a,#0x07
   05DB 5F            [12] 2002 	anl	a,r7
   05DC F5 F0         [12] 2003 	mov	b,a
   05DE 05 F0         [12] 2004 	inc	b
   05E0 74 01         [12] 2005 	mov	a,#0x01
   05E2 80 02         [24] 2006 	sjmp	00194$
   05E4                    2007 00192$:
   05E4 25 E0         [12] 2008 	add	a,acc
   05E6                    2009 00194$:
   05E6 D5 F0 FB      [24] 2010 	djnz	b,00192$
   05E9 FD            [12] 2011 	mov	r5,a
   05EA 42 90         [12] 2012 	orl	_P1,a
   05EC 80 14         [24] 2013 	sjmp	00109$
   05EE                    2014 00108$:
                           2015 ;	../src/gpio/src/gpio_pin_configure.c:95: gpio_pins_val_clear(P1, (1 << (gpio_pin_id % 8)));
   05EE 74 07         [12] 2016 	mov	a,#0x07
   05F0 5F            [12] 2017 	anl	a,r7
   05F1 F5 F0         [12] 2018 	mov	b,a
   05F3 05 F0         [12] 2019 	inc	b
   05F5 74 01         [12] 2020 	mov	a,#0x01
   05F7 80 02         [24] 2021 	sjmp	00197$
   05F9                    2022 00195$:
   05F9 25 E0         [12] 2023 	add	a,acc
   05FB                    2024 00197$:
   05FB D5 F0 FB      [24] 2025 	djnz	b,00195$
   05FE F4            [12] 2026 	cpl	a
   05FF FD            [12] 2027 	mov	r5,a
   0600 52 90         [12] 2028 	anl	_P1,a
   0602                    2029 00109$:
                           2030 ;	../src/gpio/src/gpio_pin_configure.c:99: P1CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   0602 74 07         [12] 2031 	mov	a,#0x07
   0604 5F            [12] 2032 	anl	a,r7
   0605 FD            [12] 2033 	mov	r5,a
   0606 74 07         [12] 2034 	mov	a,#0x07
   0608 5D            [12] 2035 	anl	a,r5
   0609 FC            [12] 2036 	mov	r4,a
                           2037 ;	../src/gpio/src/gpio_pin_configure.c:100: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   060A 74 E0         [12] 2038 	mov	a,#0xE0
   060C 5E            [12] 2039 	anl	a,r6
   060D 4C            [12] 2040 	orl	a,r4
   060E F5 9F         [12] 2041 	mov	_P1CON,a
                           2042 ;	../src/gpio/src/gpio_pin_configure.c:103: gpio_pins_dir_output(P1DIR, (1 << (gpio_pin_id % 8)));
   0610 8D F0         [24] 2043 	mov	b,r5
   0612 05 F0         [12] 2044 	inc	b
   0614 74 01         [12] 2045 	mov	a,#0x01
   0616 80 02         [24] 2046 	sjmp	00200$
   0618                    2047 00198$:
   0618 25 E0         [12] 2048 	add	a,acc
   061A                    2049 00200$:
   061A D5 F0 FB      [24] 2050 	djnz	b,00198$
   061D F4            [12] 2051 	cpl	a
   061E 52 94         [12] 2052 	anl	_P1DIR,a
   0620 22            [24] 2053 	ret
   0621                    2054 00111$:
                           2055 ;	../src/gpio/src/gpio_pin_configure.c:108: P1CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   0621 74 07         [12] 2056 	mov	a,#0x07
   0623 5F            [12] 2057 	anl	a,r7
   0624 FD            [12] 2058 	mov	r5,a
   0625 74 07         [12] 2059 	mov	a,#0x07
   0627 5D            [12] 2060 	anl	a,r5
   0628 44 10         [12] 2061 	orl	a,#0x10
   062A FC            [12] 2062 	mov	r4,a
                           2063 ;	../src/gpio/src/gpio_pin_configure.c:110: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   062B 74 E0         [12] 2064 	mov	a,#0xE0
   062D 5E            [12] 2065 	anl	a,r6
   062E 4C            [12] 2066 	orl	a,r4
   062F F5 9F         [12] 2067 	mov	_P1CON,a
                           2068 ;	../src/gpio/src/gpio_pin_configure.c:113: gpio_pins_dir_input(P1DIR, (1 << (gpio_pin_id % 8)));
   0631 8D F0         [24] 2069 	mov	b,r5
   0633 05 F0         [12] 2070 	inc	b
   0635 74 01         [12] 2071 	mov	a,#0x01
   0637 80 02         [24] 2072 	sjmp	00203$
   0639                    2073 00201$:
   0639 25 E0         [12] 2074 	add	a,acc
   063B                    2075 00203$:
   063B D5 F0 FB      [24] 2076 	djnz	b,00201$
   063E 42 94         [12] 2077 	orl	_P1DIR,a
   0640 22            [24] 2078 	ret
   0641                    2079 00131$:
                           2080 ;	../src/gpio/src/gpio_pin_configure.c:116: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   0641 EF            [12] 2081 	mov	a,r7
   0642 24 E8         [12] 2082 	add	a,#0xff - 0x17
   0644 50 03         [24] 2083 	jnc	00204$
   0646 02 06 BF      [24] 2084 	ljmp	00128$
   0649                    2085 00204$:
                           2086 ;	../src/gpio/src/gpio_pin_configure.c:119: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   0649 90 00 38      [24] 2087 	mov	dptr,#_gpio_pin_configure_PARM_2
   064C E0            [24] 2088 	movx	a,@dptr
   064D FE            [12] 2089 	mov	r6,a
   064E FD            [12] 2090 	mov	r5,a
   064F ED            [12] 2091 	mov	a,r5
   0650 30 E0 4C      [24] 2092 	jnb	acc.0,00117$
                           2093 ;	../src/gpio/src/gpio_pin_configure.c:122: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   0653 EE            [12] 2094 	mov	a,r6
   0654 30 E1 15      [24] 2095 	jnb	acc.1,00114$
                           2096 ;	../src/gpio/src/gpio_pin_configure.c:124: gpio_pins_val_set(P2, (1 << (gpio_pin_id % 8)));
   0657 74 07         [12] 2097 	mov	a,#0x07
   0659 5F            [12] 2098 	anl	a,r7
   065A F5 F0         [12] 2099 	mov	b,a
   065C 05 F0         [12] 2100 	inc	b
   065E 74 01         [12] 2101 	mov	a,#0x01
   0660 80 02         [24] 2102 	sjmp	00209$
   0662                    2103 00207$:
   0662 25 E0         [12] 2104 	add	a,acc
   0664                    2105 00209$:
   0664 D5 F0 FB      [24] 2106 	djnz	b,00207$
   0667 FD            [12] 2107 	mov	r5,a
   0668 42 A0         [12] 2108 	orl	_P2,a
   066A 80 14         [24] 2109 	sjmp	00115$
   066C                    2110 00114$:
                           2111 ;	../src/gpio/src/gpio_pin_configure.c:128: gpio_pins_val_clear(P2, (1 << (gpio_pin_id % 8)));
   066C 74 07         [12] 2112 	mov	a,#0x07
   066E 5F            [12] 2113 	anl	a,r7
   066F F5 F0         [12] 2114 	mov	b,a
   0671 05 F0         [12] 2115 	inc	b
   0673 74 01         [12] 2116 	mov	a,#0x01
   0675 80 02         [24] 2117 	sjmp	00212$
   0677                    2118 00210$:
   0677 25 E0         [12] 2119 	add	a,acc
   0679                    2120 00212$:
   0679 D5 F0 FB      [24] 2121 	djnz	b,00210$
   067C F4            [12] 2122 	cpl	a
   067D FD            [12] 2123 	mov	r5,a
   067E 52 A0         [12] 2124 	anl	_P2,a
   0680                    2125 00115$:
                           2126 ;	../src/gpio/src/gpio_pin_configure.c:132: P2CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   0680 74 07         [12] 2127 	mov	a,#0x07
   0682 5F            [12] 2128 	anl	a,r7
   0683 FD            [12] 2129 	mov	r5,a
   0684 74 07         [12] 2130 	mov	a,#0x07
   0686 5D            [12] 2131 	anl	a,r5
   0687 FC            [12] 2132 	mov	r4,a
                           2133 ;	../src/gpio/src/gpio_pin_configure.c:133: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   0688 74 E0         [12] 2134 	mov	a,#0xE0
   068A 5E            [12] 2135 	anl	a,r6
   068B 4C            [12] 2136 	orl	a,r4
   068C F5 97         [12] 2137 	mov	_P2CON,a
                           2138 ;	../src/gpio/src/gpio_pin_configure.c:136: gpio_pins_dir_output(P2DIR, (1 << (gpio_pin_id % 8)));
   068E 8D F0         [24] 2139 	mov	b,r5
   0690 05 F0         [12] 2140 	inc	b
   0692 74 01         [12] 2141 	mov	a,#0x01
   0694 80 02         [24] 2142 	sjmp	00215$
   0696                    2143 00213$:
   0696 25 E0         [12] 2144 	add	a,acc
   0698                    2145 00215$:
   0698 D5 F0 FB      [24] 2146 	djnz	b,00213$
   069B F4            [12] 2147 	cpl	a
   069C 52 95         [12] 2148 	anl	_P2DIR,a
   069E 22            [24] 2149 	ret
   069F                    2150 00117$:
                           2151 ;	../src/gpio/src/gpio_pin_configure.c:141: P2CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   069F 74 07         [12] 2152 	mov	a,#0x07
   06A1 5F            [12] 2153 	anl	a,r7
   06A2 FD            [12] 2154 	mov	r5,a
   06A3 74 07         [12] 2155 	mov	a,#0x07
   06A5 5D            [12] 2156 	anl	a,r5
   06A6 44 10         [12] 2157 	orl	a,#0x10
   06A8 FC            [12] 2158 	mov	r4,a
                           2159 ;	../src/gpio/src/gpio_pin_configure.c:143: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   06A9 74 E0         [12] 2160 	mov	a,#0xE0
   06AB 5E            [12] 2161 	anl	a,r6
   06AC 4C            [12] 2162 	orl	a,r4
   06AD F5 97         [12] 2163 	mov	_P2CON,a
                           2164 ;	../src/gpio/src/gpio_pin_configure.c:146: gpio_pins_dir_input(P2DIR, (1 << (gpio_pin_id % 8)));
   06AF 8D F0         [24] 2165 	mov	b,r5
   06B1 05 F0         [12] 2166 	inc	b
   06B3 74 01         [12] 2167 	mov	a,#0x01
   06B5 80 02         [24] 2168 	sjmp	00218$
   06B7                    2169 00216$:
   06B7 25 E0         [12] 2170 	add	a,acc
   06B9                    2171 00218$:
   06B9 D5 F0 FB      [24] 2172 	djnz	b,00216$
   06BC 42 95         [12] 2173 	orl	_P2DIR,a
   06BE 22            [24] 2174 	ret
   06BF                    2175 00128$:
                           2176 ;	../src/gpio/src/gpio_pin_configure.c:149: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   06BF EF            [12] 2177 	mov	a,r7
   06C0 24 E1         [12] 2178 	add	a,#0xff - 0x1E
   06C2 40 75         [24] 2179 	jc	00136$
                           2180 ;	../src/gpio/src/gpio_pin_configure.c:152: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   06C4 90 00 38      [24] 2181 	mov	dptr,#_gpio_pin_configure_PARM_2
   06C7 E0            [24] 2182 	movx	a,@dptr
   06C8 FE            [12] 2183 	mov	r6,a
   06C9 FD            [12] 2184 	mov	r5,a
   06CA ED            [12] 2185 	mov	a,r5
   06CB 30 E0 4C      [24] 2186 	jnb	acc.0,00123$
                           2187 ;	../src/gpio/src/gpio_pin_configure.c:155: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   06CE EE            [12] 2188 	mov	a,r6
   06CF 30 E1 15      [24] 2189 	jnb	acc.1,00120$
                           2190 ;	../src/gpio/src/gpio_pin_configure.c:157: gpio_pins_val_set(P3, (1 << (gpio_pin_id % 8)));
   06D2 74 07         [12] 2191 	mov	a,#0x07
   06D4 5F            [12] 2192 	anl	a,r7
   06D5 F5 F0         [12] 2193 	mov	b,a
   06D7 05 F0         [12] 2194 	inc	b
   06D9 74 01         [12] 2195 	mov	a,#0x01
   06DB 80 02         [24] 2196 	sjmp	00224$
   06DD                    2197 00222$:
   06DD 25 E0         [12] 2198 	add	a,acc
   06DF                    2199 00224$:
   06DF D5 F0 FB      [24] 2200 	djnz	b,00222$
   06E2 FD            [12] 2201 	mov	r5,a
   06E3 42 B0         [12] 2202 	orl	_P3,a
   06E5 80 14         [24] 2203 	sjmp	00121$
   06E7                    2204 00120$:
                           2205 ;	../src/gpio/src/gpio_pin_configure.c:161: gpio_pins_val_clear(P3, (1 << (gpio_pin_id % 8)));
   06E7 74 07         [12] 2206 	mov	a,#0x07
   06E9 5F            [12] 2207 	anl	a,r7
   06EA F5 F0         [12] 2208 	mov	b,a
   06EC 05 F0         [12] 2209 	inc	b
   06EE 74 01         [12] 2210 	mov	a,#0x01
   06F0 80 02         [24] 2211 	sjmp	00227$
   06F2                    2212 00225$:
   06F2 25 E0         [12] 2213 	add	a,acc
   06F4                    2214 00227$:
   06F4 D5 F0 FB      [24] 2215 	djnz	b,00225$
   06F7 F4            [12] 2216 	cpl	a
   06F8 FD            [12] 2217 	mov	r5,a
   06F9 52 B0         [12] 2218 	anl	_P3,a
   06FB                    2219 00121$:
                           2220 ;	../src/gpio/src/gpio_pin_configure.c:165: P3CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   06FB 74 07         [12] 2221 	mov	a,#0x07
   06FD 5F            [12] 2222 	anl	a,r7
   06FE FD            [12] 2223 	mov	r5,a
   06FF 74 07         [12] 2224 	mov	a,#0x07
   0701 5D            [12] 2225 	anl	a,r5
   0702 FC            [12] 2226 	mov	r4,a
                           2227 ;	../src/gpio/src/gpio_pin_configure.c:166: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   0703 74 E0         [12] 2228 	mov	a,#0xE0
   0705 5E            [12] 2229 	anl	a,r6
   0706 4C            [12] 2230 	orl	a,r4
   0707 F5 8F         [12] 2231 	mov	_P3CON,a
                           2232 ;	../src/gpio/src/gpio_pin_configure.c:169: gpio_pins_dir_output(P3DIR, (1 << (gpio_pin_id % 8)));
   0709 8D F0         [24] 2233 	mov	b,r5
   070B 05 F0         [12] 2234 	inc	b
   070D 74 01         [12] 2235 	mov	a,#0x01
   070F 80 02         [24] 2236 	sjmp	00230$
   0711                    2237 00228$:
   0711 25 E0         [12] 2238 	add	a,acc
   0713                    2239 00230$:
   0713 D5 F0 FB      [24] 2240 	djnz	b,00228$
   0716 F4            [12] 2241 	cpl	a
   0717 52 96         [12] 2242 	anl	_P3DIR,a
   0719 22            [24] 2243 	ret
   071A                    2244 00123$:
                           2245 ;	../src/gpio/src/gpio_pin_configure.c:174: P3CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   071A 53 07 07      [24] 2246 	anl	ar7,#0x07
   071D 74 07         [12] 2247 	mov	a,#0x07
   071F 5F            [12] 2248 	anl	a,r7
   0720 44 10         [12] 2249 	orl	a,#0x10
   0722 FD            [12] 2250 	mov	r5,a
                           2251 ;	../src/gpio/src/gpio_pin_configure.c:176: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   0723 74 E0         [12] 2252 	mov	a,#0xE0
   0725 5E            [12] 2253 	anl	a,r6
   0726 4D            [12] 2254 	orl	a,r5
   0727 F5 8F         [12] 2255 	mov	_P3CON,a
                           2256 ;	../src/gpio/src/gpio_pin_configure.c:179: gpio_pins_dir_input(P3DIR, (1 << (gpio_pin_id % 8)));
   0729 8F F0         [24] 2257 	mov	b,r7
   072B 05 F0         [12] 2258 	inc	b
   072D 74 01         [12] 2259 	mov	a,#0x01
   072F 80 02         [24] 2260 	sjmp	00233$
   0731                    2261 00231$:
   0731 25 E0         [12] 2262 	add	a,acc
   0733                    2263 00233$:
   0733 D5 F0 FB      [24] 2264 	djnz	b,00231$
   0736 FF            [12] 2265 	mov	r7,a
   0737 42 96         [12] 2266 	orl	_P3DIR,a
   0739                    2267 00136$:
   0739 22            [24] 2268 	ret
                           2269 ;------------------------------------------------------------
                           2270 ;Allocation info for local variables in function 'gpio_pin_val_read'
                           2271 ;------------------------------------------------------------
                           2272 ;gpio_pin_id               Allocated with name '_gpio_pin_val_read_gpio_pin_id_1_108'
                           2273 ;value                     Allocated with name '_gpio_pin_val_read_value_1_109'
                           2274 ;------------------------------------------------------------
                           2275 ;	../src/gpio/src/gpio_pin_val_read.c:46: bool gpio_pin_val_read(gpio_pin_id_t gpio_pin_id)
                           2276 ;	-----------------------------------------
                           2277 ;	 function gpio_pin_val_read
                           2278 ;	-----------------------------------------
   073A                    2279 _gpio_pin_val_read:
   073A E5 82         [12] 2280 	mov	a,dpl
   073C 90 00 3A      [24] 2281 	mov	dptr,#_gpio_pin_val_read_gpio_pin_id_1_108
   073F F0            [24] 2282 	movx	@dptr,a
                           2283 ;	../src/gpio/src/gpio_pin_val_read.c:48: bool value = false;
   0740 90 00 3B      [24] 2284 	mov	dptr,#_gpio_pin_val_read_value_1_109
   0743 E4            [12] 2285 	clr	a
   0744 F0            [24] 2286 	movx	@dptr,a
                           2287 ;	../src/gpio/src/gpio_pin_val_read.c:51: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   0745 90 00 3A      [24] 2288 	mov	dptr,#_gpio_pin_val_read_gpio_pin_id_1_108
   0748 E0            [24] 2289 	movx	a,@dptr
   0749 FF            [12] 2290 	mov  r7,a
   074A 24 F8         [12] 2291 	add	a,#0xff - 0x07
   074C 40 19         [24] 2292 	jc	00110$
                           2293 ;	../src/gpio/src/gpio_pin_val_read.c:53: value = P0 & (1 << (gpio_pin_id % 8));
   074E 74 07         [12] 2294 	mov	a,#0x07
   0750 5F            [12] 2295 	anl	a,r7
   0751 F5 F0         [12] 2296 	mov	b,a
   0753 05 F0         [12] 2297 	inc	b
   0755 74 01         [12] 2298 	mov	a,#0x01
   0757 80 02         [24] 2299 	sjmp	00135$
   0759                    2300 00133$:
   0759 25 E0         [12] 2301 	add	a,acc
   075B                    2302 00135$:
   075B D5 F0 FB      [24] 2303 	djnz	b,00133$
   075E FE            [12] 2304 	mov	r6,a
   075F 90 00 3B      [24] 2305 	mov	dptr,#_gpio_pin_val_read_value_1_109
   0762 55 80         [12] 2306 	anl	a,_P0
   0764 F0            [24] 2307 	movx	@dptr,a
   0765 80 58         [24] 2308 	sjmp	00111$
   0767                    2309 00110$:
                           2310 ;	../src/gpio/src/gpio_pin_val_read.c:55: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   0767 EF            [12] 2311 	mov	a,r7
   0768 24 F0         [12] 2312 	add	a,#0xff - 0x0F
   076A 40 19         [24] 2313 	jc	00107$
                           2314 ;	../src/gpio/src/gpio_pin_val_read.c:57: value = P1 & (1 << (gpio_pin_id % 8));
   076C 74 07         [12] 2315 	mov	a,#0x07
   076E 5F            [12] 2316 	anl	a,r7
   076F F5 F0         [12] 2317 	mov	b,a
   0771 05 F0         [12] 2318 	inc	b
   0773 74 01         [12] 2319 	mov	a,#0x01
   0775 80 02         [24] 2320 	sjmp	00139$
   0777                    2321 00137$:
   0777 25 E0         [12] 2322 	add	a,acc
   0779                    2323 00139$:
   0779 D5 F0 FB      [24] 2324 	djnz	b,00137$
   077C FE            [12] 2325 	mov	r6,a
   077D 90 00 3B      [24] 2326 	mov	dptr,#_gpio_pin_val_read_value_1_109
   0780 55 90         [12] 2327 	anl	a,_P1
   0782 F0            [24] 2328 	movx	@dptr,a
   0783 80 3A         [24] 2329 	sjmp	00111$
   0785                    2330 00107$:
                           2331 ;	../src/gpio/src/gpio_pin_val_read.c:59: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   0785 EF            [12] 2332 	mov	a,r7
   0786 24 E8         [12] 2333 	add	a,#0xff - 0x17
   0788 40 19         [24] 2334 	jc	00104$
                           2335 ;	../src/gpio/src/gpio_pin_val_read.c:61: value = P2 & (1 << (gpio_pin_id % 8));
   078A 74 07         [12] 2336 	mov	a,#0x07
   078C 5F            [12] 2337 	anl	a,r7
   078D F5 F0         [12] 2338 	mov	b,a
   078F 05 F0         [12] 2339 	inc	b
   0791 74 01         [12] 2340 	mov	a,#0x01
   0793 80 02         [24] 2341 	sjmp	00143$
   0795                    2342 00141$:
   0795 25 E0         [12] 2343 	add	a,acc
   0797                    2344 00143$:
   0797 D5 F0 FB      [24] 2345 	djnz	b,00141$
   079A FE            [12] 2346 	mov	r6,a
   079B 90 00 3B      [24] 2347 	mov	dptr,#_gpio_pin_val_read_value_1_109
   079E 55 A0         [12] 2348 	anl	a,_P2
   07A0 F0            [24] 2349 	movx	@dptr,a
   07A1 80 1C         [24] 2350 	sjmp	00111$
   07A3                    2351 00104$:
                           2352 ;	../src/gpio/src/gpio_pin_val_read.c:63: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   07A3 EF            [12] 2353 	mov	a,r7
   07A4 24 E1         [12] 2354 	add	a,#0xff - 0x1E
   07A6 40 17         [24] 2355 	jc	00111$
                           2356 ;	../src/gpio/src/gpio_pin_val_read.c:65: value = P3 & (1 << (gpio_pin_id % 8));
   07A8 74 07         [12] 2357 	mov	a,#0x07
   07AA 5F            [12] 2358 	anl	a,r7
   07AB F5 F0         [12] 2359 	mov	b,a
   07AD 05 F0         [12] 2360 	inc	b
   07AF 74 01         [12] 2361 	mov	a,#0x01
   07B1 80 02         [24] 2362 	sjmp	00147$
   07B3                    2363 00145$:
   07B3 25 E0         [12] 2364 	add	a,acc
   07B5                    2365 00147$:
   07B5 D5 F0 FB      [24] 2366 	djnz	b,00145$
   07B8 FF            [12] 2367 	mov	r7,a
   07B9 90 00 3B      [24] 2368 	mov	dptr,#_gpio_pin_val_read_value_1_109
   07BC 55 B0         [12] 2369 	anl	a,_P3
   07BE F0            [24] 2370 	movx	@dptr,a
   07BF                    2371 00111$:
                           2372 ;	../src/gpio/src/gpio_pin_val_read.c:68: if(value)
   07BF 90 00 3B      [24] 2373 	mov	dptr,#_gpio_pin_val_read_value_1_109
   07C2 E0            [24] 2374 	movx	a,@dptr
   07C3 FF            [12] 2375 	mov	r7,a
   07C4 60 04         [24] 2376 	jz	00113$
                           2377 ;	../src/gpio/src/gpio_pin_val_read.c:70: return true;
   07C6 75 82 01      [24] 2378 	mov	dpl,#0x01
   07C9 22            [24] 2379 	ret
   07CA                    2380 00113$:
                           2381 ;	../src/gpio/src/gpio_pin_val_read.c:74: return false;
   07CA 75 82 00      [24] 2382 	mov	dpl,#0x00
   07CD 22            [24] 2383 	ret
                           2384 ;------------------------------------------------------------
                           2385 ;Allocation info for local variables in function 'gpio_pin_val_clear'
                           2386 ;------------------------------------------------------------
                           2387 ;gpio_pin_id               Allocated with name '_gpio_pin_val_clear_gpio_pin_id_1_116'
                           2388 ;------------------------------------------------------------
                           2389 ;	../src/gpio/src/gpio_pin_val_clear.c:46: void gpio_pin_val_clear(gpio_pin_id_t gpio_pin_id)
                           2390 ;	-----------------------------------------
                           2391 ;	 function gpio_pin_val_clear
                           2392 ;	-----------------------------------------
   07CE                    2393 _gpio_pin_val_clear:
   07CE E5 82         [12] 2394 	mov	a,dpl
                           2395 ;	../src/gpio/src/gpio_pin_val_clear.c:49: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   07D0 90 00 3C      [24] 2396 	mov	dptr,#_gpio_pin_val_clear_gpio_pin_id_1_116
   07D3 F0            [24] 2397 	movx	@dptr,a
   07D4 FF            [12] 2398 	mov  r7,a
   07D5 24 F8         [12] 2399 	add	a,#0xff - 0x07
   07D7 40 14         [24] 2400 	jc	00110$
                           2401 ;	../src/gpio/src/gpio_pin_val_clear.c:51: gpio_pins_val_clear(P0, (1 << (gpio_pin_id % 8)));
   07D9 74 07         [12] 2402 	mov	a,#0x07
   07DB 5F            [12] 2403 	anl	a,r7
   07DC F5 F0         [12] 2404 	mov	b,a
   07DE 05 F0         [12] 2405 	inc	b
   07E0 74 01         [12] 2406 	mov	a,#0x01
   07E2 80 02         [24] 2407 	sjmp	00129$
   07E4                    2408 00127$:
   07E4 25 E0         [12] 2409 	add	a,acc
   07E6                    2410 00129$:
   07E6 D5 F0 FB      [24] 2411 	djnz	b,00127$
   07E9 F4            [12] 2412 	cpl	a
   07EA 52 80         [12] 2413 	anl	_P0,a
   07EC 22            [24] 2414 	ret
   07ED                    2415 00110$:
                           2416 ;	../src/gpio/src/gpio_pin_val_clear.c:53: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   07ED EF            [12] 2417 	mov	a,r7
   07EE 24 F0         [12] 2418 	add	a,#0xff - 0x0F
   07F0 40 14         [24] 2419 	jc	00107$
                           2420 ;	../src/gpio/src/gpio_pin_val_clear.c:55: gpio_pins_val_clear(P1, (1 << (gpio_pin_id % 8)));
   07F2 74 07         [12] 2421 	mov	a,#0x07
   07F4 5F            [12] 2422 	anl	a,r7
   07F5 F5 F0         [12] 2423 	mov	b,a
   07F7 05 F0         [12] 2424 	inc	b
   07F9 74 01         [12] 2425 	mov	a,#0x01
   07FB 80 02         [24] 2426 	sjmp	00133$
   07FD                    2427 00131$:
   07FD 25 E0         [12] 2428 	add	a,acc
   07FF                    2429 00133$:
   07FF D5 F0 FB      [24] 2430 	djnz	b,00131$
   0802 F4            [12] 2431 	cpl	a
   0803 52 90         [12] 2432 	anl	_P1,a
   0805 22            [24] 2433 	ret
   0806                    2434 00107$:
                           2435 ;	../src/gpio/src/gpio_pin_val_clear.c:57: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   0806 EF            [12] 2436 	mov	a,r7
   0807 24 E8         [12] 2437 	add	a,#0xff - 0x17
   0809 40 14         [24] 2438 	jc	00104$
                           2439 ;	../src/gpio/src/gpio_pin_val_clear.c:59: gpio_pins_val_clear(P2, (1 << (gpio_pin_id % 8)));
   080B 74 07         [12] 2440 	mov	a,#0x07
   080D 5F            [12] 2441 	anl	a,r7
   080E F5 F0         [12] 2442 	mov	b,a
   0810 05 F0         [12] 2443 	inc	b
   0812 74 01         [12] 2444 	mov	a,#0x01
   0814 80 02         [24] 2445 	sjmp	00137$
   0816                    2446 00135$:
   0816 25 E0         [12] 2447 	add	a,acc
   0818                    2448 00137$:
   0818 D5 F0 FB      [24] 2449 	djnz	b,00135$
   081B F4            [12] 2450 	cpl	a
   081C 52 A0         [12] 2451 	anl	_P2,a
   081E 22            [24] 2452 	ret
   081F                    2453 00104$:
                           2454 ;	../src/gpio/src/gpio_pin_val_clear.c:61: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   081F EF            [12] 2455 	mov	a,r7
   0820 24 E1         [12] 2456 	add	a,#0xff - 0x1E
   0822 40 14         [24] 2457 	jc	00112$
                           2458 ;	../src/gpio/src/gpio_pin_val_clear.c:63: gpio_pins_val_clear(P3, (1 << (gpio_pin_id % 8)));
   0824 74 07         [12] 2459 	mov	a,#0x07
   0826 5F            [12] 2460 	anl	a,r7
   0827 F5 F0         [12] 2461 	mov	b,a
   0829 05 F0         [12] 2462 	inc	b
   082B 74 01         [12] 2463 	mov	a,#0x01
   082D 80 02         [24] 2464 	sjmp	00141$
   082F                    2465 00139$:
   082F 25 E0         [12] 2466 	add	a,acc
   0831                    2467 00141$:
   0831 D5 F0 FB      [24] 2468 	djnz	b,00139$
   0834 F4            [12] 2469 	cpl	a
   0835 FF            [12] 2470 	mov	r7,a
   0836 52 B0         [12] 2471 	anl	_P3,a
   0838                    2472 00112$:
   0838 22            [24] 2473 	ret
                           2474 ;------------------------------------------------------------
                           2475 ;Allocation info for local variables in function 'gpio_pin_val_set'
                           2476 ;------------------------------------------------------------
                           2477 ;gpio_pin_id               Allocated with name '_gpio_pin_val_set_gpio_pin_id_1_122'
                           2478 ;------------------------------------------------------------
                           2479 ;	../src/gpio/src/gpio_pin_val_set.c:46: void gpio_pin_val_set(gpio_pin_id_t gpio_pin_id)
                           2480 ;	-----------------------------------------
                           2481 ;	 function gpio_pin_val_set
                           2482 ;	-----------------------------------------
   0839                    2483 _gpio_pin_val_set:
   0839 E5 82         [12] 2484 	mov	a,dpl
                           2485 ;	../src/gpio/src/gpio_pin_val_set.c:49: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   083B 90 00 3D      [24] 2486 	mov	dptr,#_gpio_pin_val_set_gpio_pin_id_1_122
   083E F0            [24] 2487 	movx	@dptr,a
   083F FF            [12] 2488 	mov  r7,a
   0840 24 F8         [12] 2489 	add	a,#0xff - 0x07
   0842 40 13         [24] 2490 	jc	00110$
                           2491 ;	../src/gpio/src/gpio_pin_val_set.c:51: gpio_pins_val_set(P0, (1 << (gpio_pin_id % 8)));
   0844 74 07         [12] 2492 	mov	a,#0x07
   0846 5F            [12] 2493 	anl	a,r7
   0847 F5 F0         [12] 2494 	mov	b,a
   0849 05 F0         [12] 2495 	inc	b
   084B 74 01         [12] 2496 	mov	a,#0x01
   084D 80 02         [24] 2497 	sjmp	00129$
   084F                    2498 00127$:
   084F 25 E0         [12] 2499 	add	a,acc
   0851                    2500 00129$:
   0851 D5 F0 FB      [24] 2501 	djnz	b,00127$
   0854 42 80         [12] 2502 	orl	_P0,a
   0856 22            [24] 2503 	ret
   0857                    2504 00110$:
                           2505 ;	../src/gpio/src/gpio_pin_val_set.c:53: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   0857 EF            [12] 2506 	mov	a,r7
   0858 24 F0         [12] 2507 	add	a,#0xff - 0x0F
   085A 40 13         [24] 2508 	jc	00107$
                           2509 ;	../src/gpio/src/gpio_pin_val_set.c:55: gpio_pins_val_set(P1, (1 << (gpio_pin_id % 8)));
   085C 74 07         [12] 2510 	mov	a,#0x07
   085E 5F            [12] 2511 	anl	a,r7
   085F F5 F0         [12] 2512 	mov	b,a
   0861 05 F0         [12] 2513 	inc	b
   0863 74 01         [12] 2514 	mov	a,#0x01
   0865 80 02         [24] 2515 	sjmp	00133$
   0867                    2516 00131$:
   0867 25 E0         [12] 2517 	add	a,acc
   0869                    2518 00133$:
   0869 D5 F0 FB      [24] 2519 	djnz	b,00131$
   086C 42 90         [12] 2520 	orl	_P1,a
   086E 22            [24] 2521 	ret
   086F                    2522 00107$:
                           2523 ;	../src/gpio/src/gpio_pin_val_set.c:57: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   086F EF            [12] 2524 	mov	a,r7
   0870 24 E8         [12] 2525 	add	a,#0xff - 0x17
   0872 40 13         [24] 2526 	jc	00104$
                           2527 ;	../src/gpio/src/gpio_pin_val_set.c:59: gpio_pins_val_set(P2, (1 << (gpio_pin_id % 8)));
   0874 74 07         [12] 2528 	mov	a,#0x07
   0876 5F            [12] 2529 	anl	a,r7
   0877 F5 F0         [12] 2530 	mov	b,a
   0879 05 F0         [12] 2531 	inc	b
   087B 74 01         [12] 2532 	mov	a,#0x01
   087D 80 02         [24] 2533 	sjmp	00137$
   087F                    2534 00135$:
   087F 25 E0         [12] 2535 	add	a,acc
   0881                    2536 00137$:
   0881 D5 F0 FB      [24] 2537 	djnz	b,00135$
   0884 42 A0         [12] 2538 	orl	_P2,a
   0886 22            [24] 2539 	ret
   0887                    2540 00104$:
                           2541 ;	../src/gpio/src/gpio_pin_val_set.c:61: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   0887 EF            [12] 2542 	mov	a,r7
   0888 24 E1         [12] 2543 	add	a,#0xff - 0x1E
   088A 40 13         [24] 2544 	jc	00112$
                           2545 ;	../src/gpio/src/gpio_pin_val_set.c:63: gpio_pins_val_set(P3, (1 << (gpio_pin_id % 8)));
   088C 74 07         [12] 2546 	mov	a,#0x07
   088E 5F            [12] 2547 	anl	a,r7
   088F F5 F0         [12] 2548 	mov	b,a
   0891 05 F0         [12] 2549 	inc	b
   0893 74 01         [12] 2550 	mov	a,#0x01
   0895 80 02         [24] 2551 	sjmp	00141$
   0897                    2552 00139$:
   0897 25 E0         [12] 2553 	add	a,acc
   0899                    2554 00141$:
   0899 D5 F0 FB      [24] 2555 	djnz	b,00139$
   089C FF            [12] 2556 	mov	r7,a
   089D 42 B0         [12] 2557 	orl	_P3,a
   089F                    2558 00112$:
   089F 22            [24] 2559 	ret
                           2560 ;------------------------------------------------------------
                           2561 ;Allocation info for local variables in function 'gpio_pin_val_write'
                           2562 ;------------------------------------------------------------
                           2563 ;value                     Allocated with name '_gpio_pin_val_write_PARM_2'
                           2564 ;gpio_pin_id               Allocated with name '_gpio_pin_val_write_gpio_pin_id_1_128'
                           2565 ;------------------------------------------------------------
                           2566 ;	../src/gpio/src/gpio_pin_val_write.c:47: void gpio_pin_val_write(gpio_pin_id_t gpio_pin_id, bool value)
                           2567 ;	-----------------------------------------
                           2568 ;	 function gpio_pin_val_write
                           2569 ;	-----------------------------------------
   08A0                    2570 _gpio_pin_val_write:
   08A0 E5 82         [12] 2571 	mov	a,dpl
   08A2 90 00 3F      [24] 2572 	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_128
   08A5 F0            [24] 2573 	movx	@dptr,a
                           2574 ;	../src/gpio/src/gpio_pin_val_write.c:50: if(value)
   08A6 90 00 3E      [24] 2575 	mov	dptr,#_gpio_pin_val_write_PARM_2
   08A9 E0            [24] 2576 	movx	a,@dptr
   08AA FF            [12] 2577 	mov	r7,a
   08AB 60 09         [24] 2578 	jz	00102$
                           2579 ;	../src/gpio/src/gpio_pin_val_write.c:52: gpio_pin_val_set(gpio_pin_id);
   08AD 90 00 3F      [24] 2580 	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_128
   08B0 E0            [24] 2581 	movx	a,@dptr
   08B1 F5 82         [12] 2582 	mov	dpl,a
   08B3 02 08 39      [24] 2583 	ljmp	_gpio_pin_val_set
   08B6                    2584 00102$:
                           2585 ;	../src/gpio/src/gpio_pin_val_write.c:56: gpio_pin_val_clear(gpio_pin_id);
   08B6 90 00 3F      [24] 2586 	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_128
   08B9 E0            [24] 2587 	movx	a,@dptr
   08BA F5 82         [12] 2588 	mov	dpl,a
   08BC 02 07 CE      [24] 2589 	ljmp	_gpio_pin_val_clear
                           2590 ;------------------------------------------------------------
                           2591 ;Allocation info for local variables in function 'delay_us'
                           2592 ;------------------------------------------------------------
                           2593 ;microseconds              Allocated with name '_delay_us_microseconds_1_132'
                           2594 ;count                     Allocated with name '_delay_us_count_1_133'
                           2595 ;------------------------------------------------------------
                           2596 ;	../src/delay/src/delay_us.c:46: void delay_us(uint16_t microseconds)
                           2597 ;	-----------------------------------------
                           2598 ;	 function delay_us
                           2599 ;	-----------------------------------------
   08BF                    2600 _delay_us:
   08BF AF 83         [24] 2601 	mov	r7,dph
   08C1 E5 82         [12] 2602 	mov	a,dpl
   08C3 90 00 40      [24] 2603 	mov	dptr,#_delay_us_microseconds_1_132
   08C6 F0            [24] 2604 	movx	@dptr,a
   08C7 EF            [12] 2605 	mov	a,r7
   08C8 A3            [24] 2606 	inc	dptr
   08C9 F0            [24] 2607 	movx	@dptr,a
                           2608 ;	../src/delay/src/delay_us.c:51: if(microseconds == 0)
   08CA 90 00 40      [24] 2609 	mov	dptr,#_delay_us_microseconds_1_132
   08CD E0            [24] 2610 	movx	a,@dptr
   08CE FE            [12] 2611 	mov	r6,a
   08CF A3            [24] 2612 	inc	dptr
   08D0 E0            [24] 2613 	movx	a,@dptr
   08D1 FF            [12] 2614 	mov	r7,a
   08D2 4E            [12] 2615 	orl	a,r6
   08D3 70 01         [24] 2616 	jnz	00102$
                           2617 ;	../src/delay/src/delay_us.c:52: return;
   08D5 22            [24] 2618 	ret
   08D6                    2619 00102$:
                           2620 ;	../src/delay/src/delay_us.c:54: microseconds -= 1;
   08D6 1E            [12] 2621 	dec	r6
   08D7 BE FF 01      [24] 2622 	cjne	r6,#0xFF,00121$
   08DA 1F            [12] 2623 	dec	r7
   08DB                    2624 00121$:
   08DB 90 00 40      [24] 2625 	mov	dptr,#_delay_us_microseconds_1_132
   08DE EE            [12] 2626 	mov	a,r6
   08DF F0            [24] 2627 	movx	@dptr,a
   08E0 EF            [12] 2628 	mov	a,r7
   08E1 A3            [24] 2629 	inc	dptr
   08E2 F0            [24] 2630 	movx	@dptr,a
                           2631 ;	../src/delay/src/delay_us.c:56: for(count = 0; count < microseconds; count++)
   08E3 90 00 40      [24] 2632 	mov	dptr,#_delay_us_microseconds_1_132
   08E6 E0            [24] 2633 	movx	a,@dptr
   08E7 FE            [12] 2634 	mov	r6,a
   08E8 A3            [24] 2635 	inc	dptr
   08E9 E0            [24] 2636 	movx	a,@dptr
   08EA FF            [12] 2637 	mov	r7,a
   08EB 7C 00         [12] 2638 	mov	r4,#0x00
   08ED 7D 00         [12] 2639 	mov	r5,#0x00
   08EF                    2640 00106$:
   08EF C3            [12] 2641 	clr	c
   08F0 EC            [12] 2642 	mov	a,r4
   08F1 9E            [12] 2643 	subb	a,r6
   08F2 ED            [12] 2644 	mov	a,r5
   08F3 9F            [12] 2645 	subb	a,r7
   08F4 50 09         [24] 2646 	jnc	00108$
                           2647 ;	../src/delay/src/delay_us.c:58: nop();
   08F6 00            [12] 2648 	nop 
                           2649 ;	../src/delay/src/delay_us.c:59: nop();
   08F7 00            [12] 2650 	nop 
                           2651 ;	../src/delay/src/delay_us.c:56: for(count = 0; count < microseconds; count++)
   08F8 0C            [12] 2652 	inc	r4
   08F9 BC 00 F3      [24] 2653 	cjne	r4,#0x00,00106$
   08FC 0D            [12] 2654 	inc	r5
   08FD 80 F0         [24] 2655 	sjmp	00106$
   08FF                    2656 00108$:
   08FF 22            [24] 2657 	ret
                           2658 ;------------------------------------------------------------
                           2659 ;Allocation info for local variables in function 'delay_s'
                           2660 ;------------------------------------------------------------
                           2661 ;seconds                   Allocated with name '_delay_s_seconds_1_135'
                           2662 ;count                     Allocated with name '_delay_s_count_1_136'
                           2663 ;------------------------------------------------------------
                           2664 ;	../src/delay/src/delay_s.c:46: void delay_s(uint16_t seconds)
                           2665 ;	-----------------------------------------
                           2666 ;	 function delay_s
                           2667 ;	-----------------------------------------
   0900                    2668 _delay_s:
   0900 AF 83         [24] 2669 	mov	r7,dph
   0902 E5 82         [12] 2670 	mov	a,dpl
   0904 90 00 42      [24] 2671 	mov	dptr,#_delay_s_seconds_1_135
   0907 F0            [24] 2672 	movx	@dptr,a
   0908 EF            [12] 2673 	mov	a,r7
   0909 A3            [24] 2674 	inc	dptr
   090A F0            [24] 2675 	movx	@dptr,a
                           2676 ;	../src/delay/src/delay_s.c:51: for(count = 0; count < seconds; count++)
   090B 90 00 42      [24] 2677 	mov	dptr,#_delay_s_seconds_1_135
   090E E0            [24] 2678 	movx	a,@dptr
   090F FE            [12] 2679 	mov	r6,a
   0910 A3            [24] 2680 	inc	dptr
   0911 E0            [24] 2681 	movx	a,@dptr
   0912 FF            [12] 2682 	mov	r7,a
   0913 7C 00         [12] 2683 	mov	r4,#0x00
   0915 7D 00         [12] 2684 	mov	r5,#0x00
   0917                    2685 00103$:
   0917 C3            [12] 2686 	clr	c
   0918 EC            [12] 2687 	mov	a,r4
   0919 9E            [12] 2688 	subb	a,r6
   091A ED            [12] 2689 	mov	a,r5
   091B 9F            [12] 2690 	subb	a,r7
   091C 50 1D         [24] 2691 	jnc	00105$
                           2692 ;	../src/delay/src/delay_s.c:53: delay_ms(1000);
   091E 90 03 E8      [24] 2693 	mov	dptr,#0x03E8
   0921 C0 07         [24] 2694 	push	ar7
   0923 C0 06         [24] 2695 	push	ar6
   0925 C0 05         [24] 2696 	push	ar5
   0927 C0 04         [24] 2697 	push	ar4
   0929 12 09 3C      [24] 2698 	lcall	_delay_ms
   092C D0 04         [24] 2699 	pop	ar4
   092E D0 05         [24] 2700 	pop	ar5
   0930 D0 06         [24] 2701 	pop	ar6
   0932 D0 07         [24] 2702 	pop	ar7
                           2703 ;	../src/delay/src/delay_s.c:51: for(count = 0; count < seconds; count++)
   0934 0C            [12] 2704 	inc	r4
   0935 BC 00 DF      [24] 2705 	cjne	r4,#0x00,00103$
   0938 0D            [12] 2706 	inc	r5
   0939 80 DC         [24] 2707 	sjmp	00103$
   093B                    2708 00105$:
   093B 22            [24] 2709 	ret
                           2710 ;------------------------------------------------------------
                           2711 ;Allocation info for local variables in function 'delay_ms'
                           2712 ;------------------------------------------------------------
                           2713 ;milliseconds              Allocated with name '_delay_ms_milliseconds_1_138'
                           2714 ;count                     Allocated with name '_delay_ms_count_1_139'
                           2715 ;------------------------------------------------------------
                           2716 ;	../src/delay/src/delay_ms.c:46: void delay_ms(uint16_t milliseconds)
                           2717 ;	-----------------------------------------
                           2718 ;	 function delay_ms
                           2719 ;	-----------------------------------------
   093C                    2720 _delay_ms:
   093C AF 83         [24] 2721 	mov	r7,dph
   093E E5 82         [12] 2722 	mov	a,dpl
   0940 90 00 44      [24] 2723 	mov	dptr,#_delay_ms_milliseconds_1_138
   0943 F0            [24] 2724 	movx	@dptr,a
   0944 EF            [12] 2725 	mov	a,r7
   0945 A3            [24] 2726 	inc	dptr
   0946 F0            [24] 2727 	movx	@dptr,a
                           2728 ;	../src/delay/src/delay_ms.c:51: for(count = 0; count < milliseconds; count++)
   0947 90 00 44      [24] 2729 	mov	dptr,#_delay_ms_milliseconds_1_138
   094A E0            [24] 2730 	movx	a,@dptr
   094B FE            [12] 2731 	mov	r6,a
   094C A3            [24] 2732 	inc	dptr
   094D E0            [24] 2733 	movx	a,@dptr
   094E FF            [12] 2734 	mov	r7,a
   094F 7C 00         [12] 2735 	mov	r4,#0x00
   0951 7D 00         [12] 2736 	mov	r5,#0x00
   0953                    2737 00103$:
   0953 C3            [12] 2738 	clr	c
   0954 EC            [12] 2739 	mov	a,r4
   0955 9E            [12] 2740 	subb	a,r6
   0956 ED            [12] 2741 	mov	a,r5
   0957 9F            [12] 2742 	subb	a,r7
   0958 50 1D         [24] 2743 	jnc	00105$
                           2744 ;	../src/delay/src/delay_ms.c:53: delay_us(1000);
   095A 90 03 E8      [24] 2745 	mov	dptr,#0x03E8
   095D C0 07         [24] 2746 	push	ar7
   095F C0 06         [24] 2747 	push	ar6
   0961 C0 05         [24] 2748 	push	ar5
   0963 C0 04         [24] 2749 	push	ar4
   0965 12 08 BF      [24] 2750 	lcall	_delay_us
   0968 D0 04         [24] 2751 	pop	ar4
   096A D0 05         [24] 2752 	pop	ar5
   096C D0 06         [24] 2753 	pop	ar6
   096E D0 07         [24] 2754 	pop	ar7
                           2755 ;	../src/delay/src/delay_ms.c:51: for(count = 0; count < milliseconds; count++)
   0970 0C            [12] 2756 	inc	r4
   0971 BC 00 DF      [24] 2757 	cjne	r4,#0x00,00103$
   0974 0D            [12] 2758 	inc	r5
   0975 80 DC         [24] 2759 	sjmp	00103$
   0977                    2760 00105$:
   0977 22            [24] 2761 	ret
                           2762 ;------------------------------------------------------------
                           2763 ;Allocation info for local variables in function 'pwm_configure'
                           2764 ;------------------------------------------------------------
                           2765 ;pwm_config_options        Allocated with name '_pwm_configure_pwm_config_options_1_143'
                           2766 ;------------------------------------------------------------
                           2767 ;	../src/pwm/src/pwm_configure.c:52: void pwm_configure(uint8_t pwm_config_options)
                           2768 ;	-----------------------------------------
                           2769 ;	 function pwm_configure
                           2770 ;	-----------------------------------------
   0978                    2771 _pwm_configure:
   0978 E5 82         [12] 2772 	mov	a,dpl
   097A 90 00 46      [24] 2773 	mov	dptr,#_pwm_configure_pwm_config_options_1_143
   097D F0            [24] 2774 	movx	@dptr,a
                           2775 ;	../src/pwm/src/pwm_configure.c:55: PWMCON = (PWMCON & ~PWM_CONFIG_OPTION_PWMCON_MASK) | (pwm_config_options & PWM_CONFIG_OPTION_PWMCON_MASK);
   097E AF B2         [24] 2776 	mov	r7,_PWMCON
   0980 53 07 03      [24] 2777 	anl	ar7,#0x03
   0983 90 00 46      [24] 2778 	mov	dptr,#_pwm_configure_pwm_config_options_1_143
   0986 E0            [24] 2779 	movx	a,@dptr
   0987 54 FC         [12] 2780 	anl	a,#0xFC
   0989 4F            [12] 2781 	orl	a,r7
   098A F5 B2         [12] 2782 	mov	_PWMCON,a
   098C 22            [24] 2783 	ret
                           2784 ;------------------------------------------------------------
                           2785 ;Allocation info for local variables in function 'pwm_start'
                           2786 ;------------------------------------------------------------
                           2787 ;pwm_duty_cycle            Allocated with name '_pwm_start_PARM_2'
                           2788 ;pwm_channel               Allocated with name '_pwm_start_pwm_channel_1_145'
                           2789 ;------------------------------------------------------------
                           2790 ;	../src/pwm/src/pwm_start.c:47: void pwm_start(pwm_channel_t pwm_channel, uint8_t pwm_duty_cycle)
                           2791 ;	-----------------------------------------
                           2792 ;	 function pwm_start
                           2793 ;	-----------------------------------------
   098D                    2794 _pwm_start:
   098D E5 82         [12] 2795 	mov	a,dpl
                           2796 ;	../src/pwm/src/pwm_start.c:50: if(pwm_channel == PWM_CHANNEL_0)
   098F 90 00 48      [24] 2797 	mov	dptr,#_pwm_start_pwm_channel_1_145
   0992 F0            [24] 2798 	movx	@dptr,a
   0993 FF            [12] 2799 	mov	r7,a
   0994 70 0A         [24] 2800 	jnz	00102$
                           2801 ;	../src/pwm/src/pwm_start.c:52: PWMDC0 = pwm_duty_cycle;
   0996 90 00 47      [24] 2802 	mov	dptr,#_pwm_start_PARM_2
   0999 E0            [24] 2803 	movx	a,@dptr
   099A F5 A1         [12] 2804 	mov	_PWMDC0,a
                           2805 ;	../src/pwm/src/pwm_start.c:53: reg_bits_set(PWMCON, PWMCON_PWM0_ENABLE);
   099C 43 B2 01      [24] 2806 	orl	_PWMCON,#0x01
   099F 22            [24] 2807 	ret
   09A0                    2808 00102$:
                           2809 ;	../src/pwm/src/pwm_start.c:57: PWMDC1 = pwm_duty_cycle;
   09A0 90 00 47      [24] 2810 	mov	dptr,#_pwm_start_PARM_2
   09A3 E0            [24] 2811 	movx	a,@dptr
   09A4 F5 A2         [12] 2812 	mov	_PWMDC1,a
                           2813 ;	../src/pwm/src/pwm_start.c:58: reg_bits_set(PWMCON, PWMCON_PWM1_ENABLE);
   09A6 43 B2 02      [24] 2814 	orl	_PWMCON,#0x02
   09A9 22            [24] 2815 	ret
                           2816 ;------------------------------------------------------------
                           2817 ;Allocation info for local variables in function 'pwr_clk_mgmt_clklf_configure'
                           2818 ;------------------------------------------------------------
                           2819 ;clklf_config_options      Allocated with name '_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154'
                           2820 ;------------------------------------------------------------
                           2821 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_clklf_configure.c:52: void pwr_clk_mgmt_clklf_configure(uint8_t clklf_config_options)
                           2822 ;	-----------------------------------------
                           2823 ;	 function pwr_clk_mgmt_clklf_configure
                           2824 ;	-----------------------------------------
   09AA                    2825 _pwr_clk_mgmt_clklf_configure:
   09AA E5 82         [12] 2826 	mov	a,dpl
   09AC 90 00 49      [24] 2827 	mov	dptr,#_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154
   09AF F0            [24] 2828 	movx	@dptr,a
                           2829 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_clklf_configure.c:55: CLKLFCTRL = (CLKLFCTRL & ~PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLKLFCTRL_MASK) | (clklf_config_options & PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLKLFCTRL_MASK);
   09B0 AF AD         [24] 2830 	mov	r7,_CLKLFCTRL
   09B2 53 07 F8      [24] 2831 	anl	ar7,#0xF8
   09B5 90 00 49      [24] 2832 	mov	dptr,#_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154
   09B8 E0            [24] 2833 	movx	a,@dptr
   09B9 54 07         [12] 2834 	anl	a,#0x07
   09BB 4F            [12] 2835 	orl	a,r7
   09BC F5 AD         [12] 2836 	mov	_CLKLFCTRL,a
   09BE 22            [24] 2837 	ret
                           2838 ;------------------------------------------------------------
                           2839 ;Allocation info for local variables in function 'pwr_clk_mgmt_get_cclk_freq_in_hz'
                           2840 ;------------------------------------------------------------
                           2841 ;divider                   Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_divider_1_156'
                           2842 ;i                         Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_i_1_156'
                           2843 ;cclk_freq_hz              Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156'
                           2844 ;------------------------------------------------------------
                           2845 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:46: uint32_t pwr_clk_mgmt_get_cclk_freq_in_hz()
                           2846 ;	-----------------------------------------
                           2847 ;	 function pwr_clk_mgmt_get_cclk_freq_in_hz
                           2848 ;	-----------------------------------------
   09BF                    2849 _pwr_clk_mgmt_get_cclk_freq_in_hz:
                           2850 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:48: uint8_t divider = (CLKCTRL & CLKCTRL_CLK_FREQ_MASK) >> CLKCTRL_CLK_FREQ_SHIFT;
   09BF 74 07         [12] 2851 	mov	a,#0x07
   09C1 55 A3         [12] 2852 	anl	a,_CLKCTRL
   09C3 FF            [12] 2853 	mov	r7,a
                           2854 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:50: uint32_t cclk_freq_hz = CCLK_MAX_FREQ_HZ;
   09C4 90 00 4A      [24] 2855 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
   09C7 E4            [12] 2856 	clr	a
   09C8 F0            [24] 2857 	movx	@dptr,a
   09C9 74 24         [12] 2858 	mov	a,#0x24
   09CB A3            [24] 2859 	inc	dptr
   09CC F0            [24] 2860 	movx	@dptr,a
   09CD 74 F4         [12] 2861 	mov	a,#0xF4
   09CF A3            [24] 2862 	inc	dptr
   09D0 F0            [24] 2863 	movx	@dptr,a
   09D1 E4            [12] 2864 	clr	a
   09D2 A3            [24] 2865 	inc	dptr
   09D3 F0            [24] 2866 	movx	@dptr,a
                           2867 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:52: for(i = 0; i < divider; i++)
   09D4 7E 00         [12] 2868 	mov	r6,#0x00
   09D6                    2869 00103$:
   09D6 C3            [12] 2870 	clr	c
   09D7 EE            [12] 2871 	mov	a,r6
   09D8 9F            [12] 2872 	subb	a,r7
   09D9 50 29         [24] 2873 	jnc	00101$
                           2874 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:54: cclk_freq_hz /= 2;
   09DB 90 00 4A      [24] 2875 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
   09DE E0            [24] 2876 	movx	a,@dptr
   09DF FA            [12] 2877 	mov	r2,a
   09E0 A3            [24] 2878 	inc	dptr
   09E1 E0            [24] 2879 	movx	a,@dptr
   09E2 FB            [12] 2880 	mov	r3,a
   09E3 A3            [24] 2881 	inc	dptr
   09E4 E0            [24] 2882 	movx	a,@dptr
   09E5 FC            [12] 2883 	mov	r4,a
   09E6 A3            [24] 2884 	inc	dptr
   09E7 E0            [24] 2885 	movx	a,@dptr
   09E8 C3            [12] 2886 	clr	c
   09E9 13            [12] 2887 	rrc	a
   09EA FD            [12] 2888 	mov	r5,a
   09EB EC            [12] 2889 	mov	a,r4
   09EC 13            [12] 2890 	rrc	a
   09ED FC            [12] 2891 	mov	r4,a
   09EE EB            [12] 2892 	mov	a,r3
   09EF 13            [12] 2893 	rrc	a
   09F0 FB            [12] 2894 	mov	r3,a
   09F1 EA            [12] 2895 	mov	a,r2
   09F2 13            [12] 2896 	rrc	a
   09F3 FA            [12] 2897 	mov	r2,a
   09F4 90 00 4A      [24] 2898 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
   09F7 F0            [24] 2899 	movx	@dptr,a
   09F8 EB            [12] 2900 	mov	a,r3
   09F9 A3            [24] 2901 	inc	dptr
   09FA F0            [24] 2902 	movx	@dptr,a
   09FB EC            [12] 2903 	mov	a,r4
   09FC A3            [24] 2904 	inc	dptr
   09FD F0            [24] 2905 	movx	@dptr,a
   09FE ED            [12] 2906 	mov	a,r5
   09FF A3            [24] 2907 	inc	dptr
   0A00 F0            [24] 2908 	movx	@dptr,a
                           2909 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:52: for(i = 0; i < divider; i++)
   0A01 0E            [12] 2910 	inc	r6
   0A02 80 D2         [24] 2911 	sjmp	00103$
   0A04                    2912 00101$:
                           2913 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:57: return cclk_freq_hz;
   0A04 90 00 4A      [24] 2914 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
   0A07 E0            [24] 2915 	movx	a,@dptr
   0A08 FC            [12] 2916 	mov	r4,a
   0A09 A3            [24] 2917 	inc	dptr
   0A0A E0            [24] 2918 	movx	a,@dptr
   0A0B FD            [12] 2919 	mov	r5,a
   0A0C A3            [24] 2920 	inc	dptr
   0A0D E0            [24] 2921 	movx	a,@dptr
   0A0E FE            [12] 2922 	mov	r6,a
   0A0F A3            [24] 2923 	inc	dptr
   0A10 E0            [24] 2924 	movx	a,@dptr
   0A11 8C 82         [24] 2925 	mov	dpl,r4
   0A13 8D 83         [24] 2926 	mov	dph,r5
   0A15 8E F0         [24] 2927 	mov	b,r6
   0A17 22            [24] 2928 	ret
                           2929 ;------------------------------------------------------------
                           2930 ;Allocation info for local variables in function 'watchdog_set_wdsv_count'
                           2931 ;------------------------------------------------------------
                           2932 ;wdsv_value                Allocated with name '_watchdog_set_wdsv_count_wdsv_value_1_159'
                           2933 ;------------------------------------------------------------
                           2934 ;	../src/watchdog/src/watchdog_set_wdsv_count.c:46: void watchdog_set_wdsv_count(uint16_t wdsv_value)
                           2935 ;	-----------------------------------------
                           2936 ;	 function watchdog_set_wdsv_count
                           2937 ;	-----------------------------------------
   0A18                    2938 _watchdog_set_wdsv_count:
   0A18 AF 83         [24] 2939 	mov	r7,dph
   0A1A E5 82         [12] 2940 	mov	a,dpl
   0A1C 90 00 4E      [24] 2941 	mov	dptr,#_watchdog_set_wdsv_count_wdsv_value_1_159
   0A1F F0            [24] 2942 	movx	@dptr,a
   0A20 EF            [12] 2943 	mov	a,r7
   0A21 A3            [24] 2944 	inc	dptr
   0A22 F0            [24] 2945 	movx	@dptr,a
                           2946 ;	../src/watchdog/src/watchdog_set_wdsv_count.c:49: WDSV = (uint8_t)wdsv_value;
   0A23 90 00 4E      [24] 2947 	mov	dptr,#_watchdog_set_wdsv_count_wdsv_value_1_159
   0A26 E0            [24] 2948 	movx	a,@dptr
   0A27 FE            [12] 2949 	mov	r6,a
   0A28 A3            [24] 2950 	inc	dptr
   0A29 E0            [24] 2951 	movx	a,@dptr
   0A2A FF            [12] 2952 	mov	r7,a
   0A2B 8E AF         [24] 2953 	mov	_WDSV,r6
                           2954 ;	../src/watchdog/src/watchdog_set_wdsv_count.c:50: WDSV = (uint8_t)(wdsv_value >> 8);
   0A2D 8F AF         [24] 2955 	mov	_WDSV,r7
   0A2F 22            [24] 2956 	ret
                           2957 ;------------------------------------------------------------
                           2958 ;Allocation info for local variables in function 'watchdog_start_and_set_timeout_in_ms'
                           2959 ;------------------------------------------------------------
                           2960 ;milliseconds              Allocated with name '_watchdog_start_and_set_timeout_in_ms_milliseconds_1_161'
                           2961 ;wd_value                  Allocated with name '_watchdog_start_and_set_timeout_in_ms_wd_value_1_162'
                           2962 ;------------------------------------------------------------
                           2963 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:50: uint16_t watchdog_start_and_set_timeout_in_ms(uint32_t milliseconds)
                           2964 ;	-----------------------------------------
                           2965 ;	 function watchdog_start_and_set_timeout_in_ms
                           2966 ;	-----------------------------------------
   0A30                    2967 _watchdog_start_and_set_timeout_in_ms:
   0A30 AF 82         [24] 2968 	mov	r7,dpl
   0A32 AE 83         [24] 2969 	mov	r6,dph
   0A34 AD F0         [24] 2970 	mov	r5,b
   0A36 FC            [12] 2971 	mov	r4,a
   0A37 90 00 50      [24] 2972 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_milliseconds_1_161
   0A3A EF            [12] 2973 	mov	a,r7
   0A3B F0            [24] 2974 	movx	@dptr,a
   0A3C EE            [12] 2975 	mov	a,r6
   0A3D A3            [24] 2976 	inc	dptr
   0A3E F0            [24] 2977 	movx	@dptr,a
   0A3F ED            [12] 2978 	mov	a,r5
   0A40 A3            [24] 2979 	inc	dptr
   0A41 F0            [24] 2980 	movx	@dptr,a
   0A42 EC            [12] 2981 	mov	a,r4
   0A43 A3            [24] 2982 	inc	dptr
   0A44 F0            [24] 2983 	movx	@dptr,a
                           2984 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:52: uint16_t wd_value = 0;
   0A45 90 00 54      [24] 2985 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_162
   0A48 E4            [12] 2986 	clr	a
   0A49 F0            [24] 2987 	movx	@dptr,a
   0A4A E4            [12] 2988 	clr	a
   0A4B A3            [24] 2989 	inc	dptr
   0A4C F0            [24] 2990 	movx	@dptr,a
                           2991 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:55: if(!pwr_clk_mgmt_is_clklf_enabled())
   0A4D 74 07         [12] 2992 	mov	a,#0x07
   0A4F 55 AD         [12] 2993 	anl	a,_CLKLFCTRL
   0A51 FF            [12] 2994 	mov	r7,a
   0A52 BF 07 0B      [24] 2995 	cjne	r7,#0x07,00105$
                           2996 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:58: pwr_clk_mgmt_clklf_configure(PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLK_SRC_XOSC16M);
   0A55 75 82 02      [24] 2997 	mov	dpl,#0x02
   0A58 12 09 AA      [24] 2998 	lcall	_pwr_clk_mgmt_clklf_configure
                           2999 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:59: pwr_clk_mgmt_wait_until_clklf_is_ready();
   0A5B                    3000 00101$:
   0A5B E5 AD         [12] 3001 	mov	a,_CLKLFCTRL
   0A5D 30 E6 FB      [24] 3002 	jnb	acc.6,00101$
   0A60                    3003 00105$:
                           3004 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:63: if(milliseconds < 511992)
   0A60 90 00 50      [24] 3005 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_milliseconds_1_161
   0A63 E0            [24] 3006 	movx	a,@dptr
   0A64 FC            [12] 3007 	mov	r4,a
   0A65 A3            [24] 3008 	inc	dptr
   0A66 E0            [24] 3009 	movx	a,@dptr
   0A67 FD            [12] 3010 	mov	r5,a
   0A68 A3            [24] 3011 	inc	dptr
   0A69 E0            [24] 3012 	movx	a,@dptr
   0A6A FE            [12] 3013 	mov	r6,a
   0A6B A3            [24] 3014 	inc	dptr
   0A6C E0            [24] 3015 	movx	a,@dptr
   0A6D FF            [12] 3016 	mov	r7,a
   0A6E C3            [12] 3017 	clr	c
   0A6F EC            [12] 3018 	mov	a,r4
   0A70 94 F8         [12] 3019 	subb	a,#0xF8
   0A72 ED            [12] 3020 	mov	a,r5
   0A73 94 CF         [12] 3021 	subb	a,#0xCF
   0A75 EE            [12] 3022 	mov	a,r6
   0A76 94 07         [12] 3023 	subb	a,#0x07
   0A78 EF            [12] 3024 	mov	a,r7
   0A79 94 00         [12] 3025 	subb	a,#0x00
   0A7B 50 52         [24] 3026 	jnc	00107$
                           3027 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:90: wd_value = (uint16_t)(((uint32_t)(milliseconds * ((uint32_t)128)) + (uint32_t)500) / ((uint32_t)1000));
   0A7D EF            [12] 3028 	mov	a,r7
   0A7E 54 01         [12] 3029 	anl	a,#0x01
   0A80 A2 E0         [12] 3030 	mov	c,acc.0
   0A82 CE            [12] 3031 	xch	a,r6
   0A83 13            [12] 3032 	rrc	a
   0A84 CE            [12] 3033 	xch	a,r6
   0A85 13            [12] 3034 	rrc	a
   0A86 CE            [12] 3035 	xch	a,r6
   0A87 FF            [12] 3036 	mov	r7,a
   0A88 ED            [12] 3037 	mov	a,r5
   0A89 C3            [12] 3038 	clr	c
   0A8A 13            [12] 3039 	rrc	a
   0A8B 4E            [12] 3040 	orl	a,r6
   0A8C FE            [12] 3041 	mov	r6,a
   0A8D ED            [12] 3042 	mov	a,r5
   0A8E 54 01         [12] 3043 	anl	a,#0x01
   0A90 A2 E0         [12] 3044 	mov	c,acc.0
   0A92 CC            [12] 3045 	xch	a,r4
   0A93 13            [12] 3046 	rrc	a
   0A94 CC            [12] 3047 	xch	a,r4
   0A95 13            [12] 3048 	rrc	a
   0A96 CC            [12] 3049 	xch	a,r4
   0A97 FD            [12] 3050 	mov	r5,a
   0A98 74 F4         [12] 3051 	mov	a,#0xF4
   0A9A 2C            [12] 3052 	add	a,r4
   0A9B FC            [12] 3053 	mov	r4,a
   0A9C 74 01         [12] 3054 	mov	a,#0x01
   0A9E 3D            [12] 3055 	addc	a,r5
   0A9F FD            [12] 3056 	mov	r5,a
   0AA0 E4            [12] 3057 	clr	a
   0AA1 3E            [12] 3058 	addc	a,r6
   0AA2 FE            [12] 3059 	mov	r6,a
   0AA3 E4            [12] 3060 	clr	a
   0AA4 3F            [12] 3061 	addc	a,r7
   0AA5 FF            [12] 3062 	mov	r7,a
   0AA6 90 00 BC      [24] 3063 	mov	dptr,#__divulong_PARM_2
   0AA9 74 E8         [12] 3064 	mov	a,#0xE8
   0AAB F0            [24] 3065 	movx	@dptr,a
   0AAC 74 03         [12] 3066 	mov	a,#0x03
   0AAE A3            [24] 3067 	inc	dptr
   0AAF F0            [24] 3068 	movx	@dptr,a
   0AB0 E4            [12] 3069 	clr	a
   0AB1 A3            [24] 3070 	inc	dptr
   0AB2 F0            [24] 3071 	movx	@dptr,a
   0AB3 E4            [12] 3072 	clr	a
   0AB4 A3            [24] 3073 	inc	dptr
   0AB5 F0            [24] 3074 	movx	@dptr,a
   0AB6 8C 82         [24] 3075 	mov	dpl,r4
   0AB8 8D 83         [24] 3076 	mov	dph,r5
   0ABA 8E F0         [24] 3077 	mov	b,r6
   0ABC EF            [12] 3078 	mov	a,r7
   0ABD 12 17 66      [24] 3079 	lcall	__divulong
   0AC0 AC 82         [24] 3080 	mov	r4,dpl
   0AC2 AD 83         [24] 3081 	mov	r5,dph
   0AC4 AE F0         [24] 3082 	mov	r6,b
   0AC6 FF            [12] 3083 	mov	r7,a
   0AC7 90 00 54      [24] 3084 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_162
   0ACA EC            [12] 3085 	mov	a,r4
   0ACB F0            [24] 3086 	movx	@dptr,a
   0ACC ED            [12] 3087 	mov	a,r5
   0ACD A3            [24] 3088 	inc	dptr
   0ACE F0            [24] 3089 	movx	@dptr,a
   0ACF                    3090 00107$:
                           3091 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:93: watchdog_set_wdsv_count(wd_value);
   0ACF 90 00 54      [24] 3092 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_162
   0AD2 E0            [24] 3093 	movx	a,@dptr
   0AD3 FE            [12] 3094 	mov	r6,a
   0AD4 A3            [24] 3095 	inc	dptr
   0AD5 E0            [24] 3096 	movx	a,@dptr
   0AD6 FF            [12] 3097 	mov	r7,a
   0AD7 8E 82         [24] 3098 	mov	dpl,r6
   0AD9 8F 83         [24] 3099 	mov	dph,r7
   0ADB C0 07         [24] 3100 	push	ar7
   0ADD C0 06         [24] 3101 	push	ar6
   0ADF 12 0A 18      [24] 3102 	lcall	_watchdog_set_wdsv_count
   0AE2 D0 06         [24] 3103 	pop	ar6
   0AE4 D0 07         [24] 3104 	pop	ar7
                           3105 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:95: return wd_value;
   0AE6 8E 82         [24] 3106 	mov	dpl,r6
   0AE8 8F 83         [24] 3107 	mov	dph,r7
   0AEA 22            [24] 3108 	ret
                           3109 ;------------------------------------------------------------
                           3110 ;Allocation info for local variables in function 'interrupt_configure_ifp'
                           3111 ;------------------------------------------------------------
                           3112 ;ifp_int_config_options    Allocated with name '_interrupt_configure_ifp_PARM_2'
                           3113 ;interrupt_ifp_input       Allocated with name '_interrupt_configure_ifp_interrupt_ifp_input_1_165'
                           3114 ;------------------------------------------------------------
                           3115 ;	../src/interrupt/src/interrupt_configure_ifp.c:57: bool interrupt_configure_ifp(interrupt_ifp_input_t interrupt_ifp_input, uint8_t ifp_int_config_options)
                           3116 ;	-----------------------------------------
                           3117 ;	 function interrupt_configure_ifp
                           3118 ;	-----------------------------------------
   0AEB                    3119 _interrupt_configure_ifp:
   0AEB E5 82         [12] 3120 	mov	a,dpl
   0AED 90 00 57      [24] 3121 	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_165
   0AF0 F0            [24] 3122 	movx	@dptr,a
                           3123 ;	../src/interrupt/src/interrupt_configure_ifp.c:60: if(ifp_int_config_options & INTERRUPT_IFP_CONFIG_OPTION_ENABLE)
   0AF1 90 00 56      [24] 3124 	mov	dptr,#_interrupt_configure_ifp_PARM_2
   0AF4 E0            [24] 3125 	movx	a,@dptr
   0AF5 FF            [12] 3126 	mov	r7,a
   0AF6 30 E7 41      [24] 3127 	jnb	acc.7,00116$
                           3128 ;	../src/interrupt/src/interrupt_configure_ifp.c:63: if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT0)
   0AF9 90 00 57      [24] 3129 	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_165
   0AFC E0            [24] 3130 	movx	a,@dptr
   0AFD FE            [12] 3131 	mov	r6,a
   0AFE BE 08 0B      [24] 3132 	cjne	r6,#0x08,00108$
                           3133 ;	../src/interrupt/src/interrupt_configure_ifp.c:65: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT0;
   0B01 AD A6         [24] 3134 	mov	r5,_INTEXP
   0B03 74 C7         [12] 3135 	mov	a,#0xC7
   0B05 5D            [12] 3136 	anl	a,r5
   0B06 44 08         [12] 3137 	orl	a,#0x08
   0B08 F5 A6         [12] 3138 	mov	_INTEXP,a
   0B0A 80 20         [24] 3139 	sjmp	00109$
   0B0C                    3140 00108$:
                           3141 ;	../src/interrupt/src/interrupt_configure_ifp.c:67: else if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT1)
   0B0C BE 10 0B      [24] 3142 	cjne	r6,#0x10,00105$
                           3143 ;	../src/interrupt/src/interrupt_configure_ifp.c:69: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT1;
   0B0F AD A6         [24] 3144 	mov	r5,_INTEXP
   0B11 74 C7         [12] 3145 	mov	a,#0xC7
   0B13 5D            [12] 3146 	anl	a,r5
   0B14 44 10         [12] 3147 	orl	a,#0x10
   0B16 F5 A6         [12] 3148 	mov	_INTEXP,a
   0B18 80 12         [24] 3149 	sjmp	00109$
   0B1A                    3150 00105$:
                           3151 ;	../src/interrupt/src/interrupt_configure_ifp.c:71: else if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT2)
   0B1A BE 20 0B      [24] 3152 	cjne	r6,#0x20,00102$
                           3153 ;	../src/interrupt/src/interrupt_configure_ifp.c:73: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT2;
   0B1D AE A6         [24] 3154 	mov	r6,_INTEXP
   0B1F 74 C7         [12] 3155 	mov	a,#0xC7
   0B21 5E            [12] 3156 	anl	a,r6
   0B22 44 20         [12] 3157 	orl	a,#0x20
   0B24 F5 A6         [12] 3158 	mov	_INTEXP,a
   0B26 80 04         [24] 3159 	sjmp	00109$
   0B28                    3160 00102$:
                           3161 ;	../src/interrupt/src/interrupt_configure_ifp.c:78: return false;
   0B28 75 82 00      [24] 3162 	mov	dpl,#0x00
   0B2B 22            [24] 3163 	ret
   0B2C                    3164 00109$:
                           3165 ;	../src/interrupt/src/interrupt_configure_ifp.c:82: TCON = (TCON & ~INTERRUPT_IFP_CONFIG_TCON_MASK) | (ifp_int_config_options & INTERRUPT_IFP_CONFIG_TCON_MASK);
   0B2C AE 88         [24] 3166 	mov	r6,_TCON
   0B2E 53 06 FE      [24] 3167 	anl	ar6,#0xFE
   0B31 53 07 01      [24] 3168 	anl	ar7,#0x01
   0B34 EF            [12] 3169 	mov	a,r7
   0B35 4E            [12] 3170 	orl	a,r6
   0B36 F5 88         [12] 3171 	mov	_TCON,a
   0B38 80 1F         [24] 3172 	sjmp	00117$
   0B3A                    3173 00116$:
                           3174 ;	../src/interrupt/src/interrupt_configure_ifp.c:87: if((interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT0) || (interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT1) || (interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT2))
   0B3A 90 00 57      [24] 3175 	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_165
   0B3D E0            [24] 3176 	movx	a,@dptr
   0B3E FF            [12] 3177 	mov	r7,a
   0B3F BF 08 02      [24] 3178 	cjne	r7,#0x08,00145$
   0B42 80 08         [24] 3179 	sjmp	00110$
   0B44                    3180 00145$:
   0B44 BF 10 02      [24] 3181 	cjne	r7,#0x10,00146$
   0B47 80 03         [24] 3182 	sjmp	00110$
   0B49                    3183 00146$:
   0B49 BF 20 09      [24] 3184 	cjne	r7,#0x20,00111$
   0B4C                    3185 00110$:
                           3186 ;	../src/interrupt/src/interrupt_configure_ifp.c:89: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK);
   0B4C AF A6         [24] 3187 	mov	r7,_INTEXP
   0B4E 74 C7         [12] 3188 	mov	a,#0xC7
   0B50 5F            [12] 3189 	anl	a,r7
   0B51 F5 A6         [12] 3190 	mov	_INTEXP,a
   0B53 80 04         [24] 3191 	sjmp	00117$
   0B55                    3192 00111$:
                           3193 ;	../src/interrupt/src/interrupt_configure_ifp.c:94: return false;
   0B55 75 82 00      [24] 3194 	mov	dpl,#0x00
   0B58 22            [24] 3195 	ret
   0B59                    3196 00117$:
                           3197 ;	../src/interrupt/src/interrupt_configure_ifp.c:98: return true;
   0B59 75 82 01      [24] 3198 	mov	dpl,#0x01
   0B5C 22            [24] 3199 	ret
                           3200 ;------------------------------------------------------------
                           3201 ;Allocation info for local variables in function 'adc_configure'
                           3202 ;------------------------------------------------------------
                           3203 ;adc_config_options        Allocated with name '_adc_configure_adc_config_options_1_179'
                           3204 ;------------------------------------------------------------
                           3205 ;	../src/adc/src/adc_configure.c:54: void adc_configure(unsigned int adc_config_options)
                           3206 ;	-----------------------------------------
                           3207 ;	 function adc_configure
                           3208 ;	-----------------------------------------
   0B5D                    3209 _adc_configure:
   0B5D AF 83         [24] 3210 	mov	r7,dph
   0B5F E5 82         [12] 3211 	mov	a,dpl
   0B61 90 00 58      [24] 3212 	mov	dptr,#_adc_configure_adc_config_options_1_179
   0B64 F0            [24] 3213 	movx	@dptr,a
   0B65 EF            [12] 3214 	mov	a,r7
   0B66 A3            [24] 3215 	inc	dptr
   0B67 F0            [24] 3216 	movx	@dptr,a
                           3217 ;	../src/adc/src/adc_configure.c:57: ADCCON1 = (adc_config_options >> 8) & ADC_CONFIG_OPTION_ADCCON1_WRITE_MASK;
   0B68 90 00 58      [24] 3218 	mov	dptr,#_adc_configure_adc_config_options_1_179
   0B6B E0            [24] 3219 	movx	a,@dptr
   0B6C FE            [12] 3220 	mov	r6,a
   0B6D A3            [24] 3221 	inc	dptr
   0B6E E0            [24] 3222 	movx	a,@dptr
   0B6F FD            [12] 3223 	mov	r5,a
   0B70 74 03         [12] 3224 	mov	a,#0x03
   0B72 5D            [12] 3225 	anl	a,r5
   0B73 F5 D3         [12] 3226 	mov	_ADCCON1,a
                           3227 ;	../src/adc/src/adc_configure.c:58: ADCCON2 = (adc_config_options)      & ADC_CONFIG_OPTION_ADCCON2_WRITE_MASK;
   0B75 8E D2         [24] 3228 	mov	_ADCCON2,r6
                           3229 ;	../src/adc/src/adc_configure.c:59: ADCCON3 = (adc_config_options >> 8) & ADC_CONFIG_OPTION_ADCCON3_WRITE_MASK;
   0B77 74 E0         [12] 3230 	mov	a,#0xE0
   0B79 5D            [12] 3231 	anl	a,r5
   0B7A F5 D1         [12] 3232 	mov	_ADCCON3,a
   0B7C 22            [24] 3233 	ret
                           3234 ;------------------------------------------------------------
                           3235 ;Allocation info for local variables in function 'adc_set_input_channel'
                           3236 ;------------------------------------------------------------
                           3237 ;adc_channel               Allocated with name '_adc_set_input_channel_adc_channel_1_181'
                           3238 ;------------------------------------------------------------
                           3239 ;	../src/adc/src/adc_set_input_channel.c:46: void adc_set_input_channel(adc_channel_t adc_channel)
                           3240 ;	-----------------------------------------
                           3241 ;	 function adc_set_input_channel
                           3242 ;	-----------------------------------------
   0B7D                    3243 _adc_set_input_channel:
   0B7D E5 82         [12] 3244 	mov	a,dpl
                           3245 ;	../src/adc/src/adc_set_input_channel.c:49: adc_channel &= (ADCCON1_CHAN_SEL_MASK >> ADCCON1_CHAN_SEL_SHIFT);
   0B7F 90 00 5A      [24] 3246 	mov	dptr,#_adc_set_input_channel_adc_channel_1_181
   0B82 F0            [24] 3247 	movx	@dptr,a
   0B83 FF            [12] 3248 	mov	r7,a
   0B84 90 00 5A      [24] 3249 	mov	dptr,#_adc_set_input_channel_adc_channel_1_181
   0B87 74 0F         [12] 3250 	mov	a,#0x0F
   0B89 5F            [12] 3251 	anl	a,r7
   0B8A F0            [24] 3252 	movx	@dptr,a
                           3253 ;	../src/adc/src/adc_set_input_channel.c:52: ADCCON1 = (ADCCON1 & ~ADCCON1_CHAN_SEL_MASK) | (adc_channel << ADCCON1_CHAN_SEL_SHIFT);
   0B8B AF D3         [24] 3254 	mov	r7,_ADCCON1
   0B8D 53 07 C3      [24] 3255 	anl	ar7,#0xC3
   0B90 90 00 5A      [24] 3256 	mov	dptr,#_adc_set_input_channel_adc_channel_1_181
   0B93 E0            [24] 3257 	movx	a,@dptr
   0B94 25 E0         [12] 3258 	add	a,acc
   0B96 25 E0         [12] 3259 	add	a,acc
   0B98 4F            [12] 3260 	orl	a,r7
   0B99 F5 D3         [12] 3261 	mov	_ADCCON1,a
   0B9B 22            [24] 3262 	ret
                           3263 ;------------------------------------------------------------
                           3264 ;Allocation info for local variables in function 'adc_start_single_conversion'
                           3265 ;------------------------------------------------------------
                           3266 ;adc_channel               Allocated with name '_adc_start_single_conversion_adc_channel_1_183'
                           3267 ;------------------------------------------------------------
                           3268 ;	../src/adc/src/adc_start_single_conversion.c:47: void adc_start_single_conversion(adc_channel_t adc_channel)
                           3269 ;	-----------------------------------------
                           3270 ;	 function adc_start_single_conversion
                           3271 ;	-----------------------------------------
   0B9C                    3272 _adc_start_single_conversion:
   0B9C E5 82         [12] 3273 	mov	a,dpl
                           3274 ;	../src/adc/src/adc_start_single_conversion.c:49: adc_set_input_channel(adc_channel);
   0B9E 90 00 5B      [24] 3275 	mov	dptr,#_adc_start_single_conversion_adc_channel_1_183
   0BA1 F0            [24] 3276 	movx	@dptr,a
   0BA2 F5 82         [12] 3277 	mov	dpl,a
   0BA4 12 0B 7D      [24] 3278 	lcall	_adc_set_input_channel
                           3279 ;	../src/adc/src/adc_start_single_conversion.c:52: adc_power_up();
   0BA7 43 D3 80      [24] 3280 	orl	_ADCCON1,#0x80
                           3281 ;	../src/adc/src/adc_start_single_conversion.c:53: nop(); nop(); nop(); nop(); //4 clock cycles must elapse before busy flag is set (datasheet v1.3, p. 165)
   0BAA 00            [12] 3282 	nop 
   0BAB 00            [12] 3283 	nop 
   0BAC 00            [12] 3284 	nop 
   0BAD 00            [12] 3285 	nop 
   0BAE 22            [24] 3286 	ret
                           3287 ;------------------------------------------------------------
                           3288 ;Allocation info for local variables in function 'adc_start_single_conversion_get_value'
                           3289 ;------------------------------------------------------------
                           3290 ;adc_channel               Allocated with name '_adc_start_single_conversion_get_value_adc_channel_1_185'
                           3291 ;------------------------------------------------------------
                           3292 ;	../src/adc/src/adc_start_single_conversion_get_value.c:48: uint16_t adc_start_single_conversion_get_value(adc_channel_t adc_channel)
                           3293 ;	-----------------------------------------
                           3294 ;	 function adc_start_single_conversion_get_value
                           3295 ;	-----------------------------------------
   0BAF                    3296 _adc_start_single_conversion_get_value:
   0BAF E5 82         [12] 3297 	mov	a,dpl
                           3298 ;	../src/adc/src/adc_start_single_conversion_get_value.c:50: adc_start_single_conversion(adc_channel);
   0BB1 90 00 5C      [24] 3299 	mov	dptr,#_adc_start_single_conversion_get_value_adc_channel_1_185
   0BB4 F0            [24] 3300 	movx	@dptr,a
   0BB5 F5 82         [12] 3301 	mov	dpl,a
   0BB7 12 0B 9C      [24] 3302 	lcall	_adc_start_single_conversion
                           3303 ;	../src/adc/src/adc_start_single_conversion_get_value.c:52: while(adc_is_conversion_in_progress());
   0BBA                    3304 00101$:
   0BBA 74 40         [12] 3305 	mov	a,#0x40
   0BBC 55 D3         [12] 3306 	anl	a,_ADCCON1
   0BBE FF            [12] 3307 	mov	r7,a
   0BBF BF 40 02      [24] 3308 	cjne	r7,#0x40,00112$
   0BC2 80 F6         [24] 3309 	sjmp	00101$
   0BC4                    3310 00112$:
                           3311 ;	../src/adc/src/adc_start_single_conversion_get_value.c:54: return adc_get_result();
   0BC4 85 D5 82      [24] 3312 	mov	dpl,((_ADCDAT >> 0) & 0xFF)
   0BC7 85 D4 83      [24] 3313 	mov	dph,((_ADCDAT >> 8) & 0xFF)
   0BCA 22            [24] 3314 	ret
                           3315 ;------------------------------------------------------------
                           3316 ;Allocation info for local variables in function 'timer0_configure'
                           3317 ;------------------------------------------------------------
                           3318 ;t0_val                    Allocated with name '_timer0_configure_PARM_2'
                           3319 ;timer0_config_options     Allocated with name '_timer0_configure_timer0_config_options_1_188'
                           3320 ;------------------------------------------------------------
                           3321 ;	../src/timer0/src/timer0_configure.c:53: void timer0_configure(uint8_t timer0_config_options, uint16_t t0_val)
                           3322 ;	-----------------------------------------
                           3323 ;	 function timer0_configure
                           3324 ;	-----------------------------------------
   0BCB                    3325 _timer0_configure:
   0BCB E5 82         [12] 3326 	mov	a,dpl
                           3327 ;	../src/timer0/src/timer0_configure.c:56: if((timer0_config_options & TMOD_MODE0_MASK) == TIMER0_CONFIG_OPTION_MODE_2_8_BIT_AUTO_RLD_TMR)
   0BCD 90 00 5F      [24] 3328 	mov	dptr,#_timer0_configure_timer0_config_options_1_188
   0BD0 F0            [24] 3329 	movx	@dptr,a
   0BD1 FF            [12] 3330 	mov	r7,a
   0BD2 74 03         [12] 3331 	mov	a,#0x03
   0BD4 5F            [12] 3332 	anl	a,r7
   0BD5 FE            [12] 3333 	mov	r6,a
   0BD6 BE 02 0E      [24] 3334 	cjne	r6,#0x02,00102$
                           3335 ;	../src/timer0/src/timer0_configure.c:58: TH0 = (uint8_t)t0_val;
   0BD9 90 00 5D      [24] 3336 	mov	dptr,#_timer0_configure_PARM_2
   0BDC E0            [24] 3337 	movx	a,@dptr
   0BDD FD            [12] 3338 	mov	r5,a
   0BDE A3            [24] 3339 	inc	dptr
   0BDF E0            [24] 3340 	movx	a,@dptr
   0BE0 FE            [12] 3341 	mov	r6,a
   0BE1 8D 8C         [24] 3342 	mov	_TH0,r5
                           3343 ;	../src/timer0/src/timer0_configure.c:59: TL0 = (uint8_t)t0_val;
   0BE3 8D 8A         [24] 3344 	mov	_TL0,r5
   0BE5 80 0A         [24] 3345 	sjmp	00103$
   0BE7                    3346 00102$:
                           3347 ;	../src/timer0/src/timer0_configure.c:63: timer0_set_t0_val(t0_val);
   0BE7 90 00 5D      [24] 3348 	mov	dptr,#_timer0_configure_PARM_2
   0BEA E0            [24] 3349 	movx	a,@dptr
   0BEB F5 8A         [12] 3350 	mov	((_T0 >> 0) & 0xFF),a
   0BED A3            [24] 3351 	inc	dptr
   0BEE E0            [24] 3352 	movx	a,@dptr
   0BEF F5 8C         [12] 3353 	mov	((_T0 >> 8) & 0xFF),a
   0BF1                    3354 00103$:
                           3355 ;	../src/timer0/src/timer0_configure.c:67: TMOD = (TMOD & ~TIMER0_CONFIG_OPTION_TMOD_MASK) | (timer0_config_options & TIMER0_CONFIG_OPTION_TMOD_MASK);
   0BF1 AE 89         [24] 3356 	mov	r6,_TMOD
   0BF3 53 06 F0      [24] 3357 	anl	ar6,#0xF0
   0BF6 53 07 0F      [24] 3358 	anl	ar7,#0x0F
   0BF9 EF            [12] 3359 	mov	a,r7
   0BFA 4E            [12] 3360 	orl	a,r6
   0BFB F5 89         [12] 3361 	mov	_TMOD,a
   0BFD 22            [24] 3362 	ret
                           3363 ;------------------------------------------------------------
                           3364 ;Allocation info for local variables in function 'timer1_configure'
                           3365 ;------------------------------------------------------------
                           3366 ;t1_val                    Allocated with name '_timer1_configure_PARM_2'
                           3367 ;timer1_config_options     Allocated with name '_timer1_configure_timer1_config_options_1_193'
                           3368 ;------------------------------------------------------------
                           3369 ;	../src/timer1/src/timer1_configure.c:53: void timer1_configure(uint8_t timer1_config_options, uint16_t t1_val)
                           3370 ;	-----------------------------------------
                           3371 ;	 function timer1_configure
                           3372 ;	-----------------------------------------
   0BFE                    3373 _timer1_configure:
   0BFE E5 82         [12] 3374 	mov	a,dpl
                           3375 ;	../src/timer1/src/timer1_configure.c:56: if((timer1_config_options & TMOD_MODE1_MASK) == TIMER1_CONFIG_OPTION_MODE_2_8_BIT_AUTO_RLD_TMR)
   0C00 90 00 62      [24] 3376 	mov	dptr,#_timer1_configure_timer1_config_options_1_193
   0C03 F0            [24] 3377 	movx	@dptr,a
   0C04 FF            [12] 3378 	mov	r7,a
   0C05 74 30         [12] 3379 	mov	a,#0x30
   0C07 5F            [12] 3380 	anl	a,r7
   0C08 FE            [12] 3381 	mov	r6,a
   0C09 BE 20 0E      [24] 3382 	cjne	r6,#0x20,00102$
                           3383 ;	../src/timer1/src/timer1_configure.c:58: TH1 = (uint8_t)t1_val;
   0C0C 90 00 60      [24] 3384 	mov	dptr,#_timer1_configure_PARM_2
   0C0F E0            [24] 3385 	movx	a,@dptr
   0C10 FD            [12] 3386 	mov	r5,a
   0C11 A3            [24] 3387 	inc	dptr
   0C12 E0            [24] 3388 	movx	a,@dptr
   0C13 FE            [12] 3389 	mov	r6,a
   0C14 8D 8D         [24] 3390 	mov	_TH1,r5
                           3391 ;	../src/timer1/src/timer1_configure.c:59: TL1 = (uint8_t)t1_val;
   0C16 8D 8B         [24] 3392 	mov	_TL1,r5
   0C18 80 0A         [24] 3393 	sjmp	00103$
   0C1A                    3394 00102$:
                           3395 ;	../src/timer1/src/timer1_configure.c:63: timer1_set_t1_val(t1_val);
   0C1A 90 00 60      [24] 3396 	mov	dptr,#_timer1_configure_PARM_2
   0C1D E0            [24] 3397 	movx	a,@dptr
   0C1E F5 8B         [12] 3398 	mov	((_T1 >> 0) & 0xFF),a
   0C20 A3            [24] 3399 	inc	dptr
   0C21 E0            [24] 3400 	movx	a,@dptr
   0C22 F5 8D         [12] 3401 	mov	((_T1 >> 8) & 0xFF),a
   0C24                    3402 00103$:
                           3403 ;	../src/timer1/src/timer1_configure.c:67: TMOD = (TMOD & ~TIMER1_CONFIG_OPTION_TMOD_MASK) | (timer1_config_options & TIMER1_CONFIG_OPTION_TMOD_MASK);
   0C24 AE 89         [24] 3404 	mov	r6,_TMOD
   0C26 53 06 0F      [24] 3405 	anl	ar6,#0x0F
   0C29 53 07 F0      [24] 3406 	anl	ar7,#0xF0
   0C2C EF            [12] 3407 	mov	a,r7
   0C2D 4E            [12] 3408 	orl	a,r6
   0C2E F5 89         [12] 3409 	mov	_TMOD,a
   0C30 22            [24] 3410 	ret
                           3411 ;------------------------------------------------------------
                           3412 ;Allocation info for local variables in function 'uart_configure_manual_baud_calc'
                           3413 ;------------------------------------------------------------
                           3414 ;s0rel_val_if_br_gen_or_th1_val_if_tmr1 Allocated with name '_uart_configure_manual_baud_calc_PARM_2'
                           3415 ;uart_config_options       Allocated with name '_uart_configure_manual_baud_calc_uart_config_options_1_203'
                           3416 ;------------------------------------------------------------
                           3417 ;	../src/uart/src/uart_configure_manual_baud_calc.c:55: void uart_configure_manual_baud_calc(uint8_t uart_config_options, uint16_t s0rel_val_if_br_gen_or_th1_val_if_tmr1)
                           3418 ;	-----------------------------------------
                           3419 ;	 function uart_configure_manual_baud_calc
                           3420 ;	-----------------------------------------
   0C31                    3421 _uart_configure_manual_baud_calc:
   0C31 E5 82         [12] 3422 	mov	a,dpl
                           3423 ;	../src/uart/src/uart_configure_manual_baud_calc.c:58: if(uart_config_options & UART_CONFIG_OPTION_BIT_SMOD_SET)
   0C33 90 00 65      [24] 3424 	mov	dptr,#_uart_configure_manual_baud_calc_uart_config_options_1_203
   0C36 F0            [24] 3425 	movx	@dptr,a
   0C37 FF            [12] 3426 	mov	r7,a
   0C38 30 E2 05      [24] 3427 	jnb	acc.2,00102$
                           3428 ;	../src/uart/src/uart_configure_manual_baud_calc.c:60: reg_bits_set(PCON, PCON_SMOD);
   0C3B 43 87 80      [24] 3429 	orl	_PCON,#0x80
   0C3E 80 07         [24] 3430 	sjmp	00103$
   0C40                    3431 00102$:
                           3432 ;	../src/uart/src/uart_configure_manual_baud_calc.c:64: reg_bits_clear(PCON, PCON_SMOD);
   0C40 AE 87         [24] 3433 	mov	r6,_PCON
   0C42 74 7F         [12] 3434 	mov	a,#0x7F
   0C44 5E            [12] 3435 	anl	a,r6
   0C45 F5 87         [12] 3436 	mov	_PCON,a
   0C47                    3437 00103$:
                           3438 ;	../src/uart/src/uart_configure_manual_baud_calc.c:68: if(((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_1_UART_8_BIT) ||
   0C47 74 C0         [12] 3439 	mov	a,#0xC0
   0C49 5F            [12] 3440 	anl	a,r7
   0C4A FE            [12] 3441 	mov	r6,a
   0C4B BE 40 02      [24] 3442 	cjne	r6,#0x40,00122$
   0C4E 80 07         [24] 3443 	sjmp	00107$
   0C50                    3444 00122$:
                           3445 ;	../src/uart/src/uart_configure_manual_baud_calc.c:69: ((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_3_UART_9_BIT))
   0C50 74 C0         [12] 3446 	mov	a,#0xC0
   0C52 5F            [12] 3447 	anl	a,r7
   0C53 FE            [12] 3448 	mov	r6,a
   0C54 BE C0 32      [24] 3449 	cjne	r6,#0xC0,00108$
   0C57                    3450 00107$:
                           3451 ;	../src/uart/src/uart_configure_manual_baud_calc.c:72: if((uart_config_options & UART_CONFIG_OPTION_CLOCK_MASK) == UART_CONFIG_OPTION_CLOCK_FOR_MODES_1_3_USE_BR_GEN)
   0C57 74 02         [12] 3452 	mov	a,#0x02
   0C59 5F            [12] 3453 	anl	a,r7
   0C5A FE            [12] 3454 	mov	r6,a
   0C5B BE 02 0E      [24] 3455 	cjne	r6,#0x02,00105$
                           3456 ;	../src/uart/src/uart_configure_manual_baud_calc.c:74: S0REL = s0rel_val_if_br_gen_or_th1_val_if_tmr1; //set S0REL to the value requested
   0C5E 90 00 63      [24] 3457 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   0C61 E0            [24] 3458 	movx	a,@dptr
   0C62 F5 AA         [12] 3459 	mov	((_S0REL >> 0) & 0xFF),a
   0C64 A3            [24] 3460 	inc	dptr
   0C65 E0            [24] 3461 	movx	a,@dptr
   0C66 F5 BA         [12] 3462 	mov	((_S0REL >> 8) & 0xFF),a
                           3463 ;	../src/uart/src/uart_configure_manual_baud_calc.c:75: sbit_set(ADCON_SB_BD); //enable BR generator
   0C68 D2 DF         [12] 3464 	setb _ADCON_SB_BD 
   0C6A 80 1D         [24] 3465 	sjmp	00108$
   0C6C                    3466 00105$:
                           3467 ;	../src/uart/src/uart_configure_manual_baud_calc.c:79: sbit_clear(ADCON_SB_BD); //disable BR generator and use TMR1 overflow
   0C6C C2 DF         [12] 3468 	clr _ADCON_SB_BD 
                           3469 ;	../src/uart/src/uart_configure_manual_baud_calc.c:85: (uint8_t)s0rel_val_if_br_gen_or_th1_val_if_tmr1);
   0C6E 90 00 63      [24] 3470 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   0C71 E0            [24] 3471 	movx	a,@dptr
   0C72 FD            [12] 3472 	mov	r5,a
   0C73 A3            [24] 3473 	inc	dptr
   0C74 E0            [24] 3474 	movx	a,@dptr
   0C75 90 00 60      [24] 3475 	mov	dptr,#_timer1_configure_PARM_2
   0C78 ED            [12] 3476 	mov	a,r5
   0C79 F0            [24] 3477 	movx	@dptr,a
   0C7A E4            [12] 3478 	clr	a
   0C7B A3            [24] 3479 	inc	dptr
   0C7C F0            [24] 3480 	movx	@dptr,a
   0C7D 75 82 20      [24] 3481 	mov	dpl,#0x20
   0C80 C0 07         [24] 3482 	push	ar7
   0C82 12 0B FE      [24] 3483 	lcall	_timer1_configure
   0C85 D0 07         [24] 3484 	pop	ar7
                           3485 ;	../src/uart/src/uart_configure_manual_baud_calc.c:87: timer1_run(); //enable the timer
   0C87 D2 8E         [12] 3486 	setb _TCON_SB_TR1 
   0C89                    3487 00108$:
                           3488 ;	../src/uart/src/uart_configure_manual_baud_calc.c:92: S0CON = uart_config_options & UART_CONFIG_OPTION_S0CON_MASK;
   0C89 74 F0         [12] 3489 	mov	a,#0xF0
   0C8B 5F            [12] 3490 	anl	a,r7
   0C8C F5 98         [12] 3491 	mov	_S0CON,a
   0C8E 22            [24] 3492 	ret
                           3493 ;------------------------------------------------------------
                           3494 ;Allocation info for local variables in function 'uart_calc_actual_baud_rate_from_s0rel'
                           3495 ;------------------------------------------------------------
                           3496 ;smod_bit_value            Allocated with name '_uart_calc_actual_baud_rate_from_s0rel_PARM_2'
                           3497 ;s0rel_reg_value           Allocated with name '_uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_210'
                           3498 ;------------------------------------------------------------
                           3499 ;	../src/uart/src/uart_calc_actual_baud_rate_from_s0rel.c:48: uint32_t uart_calc_actual_baud_rate_from_s0rel(uint16_t s0rel_reg_value, bool smod_bit_value)
                           3500 ;	-----------------------------------------
                           3501 ;	 function uart_calc_actual_baud_rate_from_s0rel
                           3502 ;	-----------------------------------------
   0C8F                    3503 _uart_calc_actual_baud_rate_from_s0rel:
   0C8F AF 83         [24] 3504 	mov	r7,dph
   0C91 E5 82         [12] 3505 	mov	a,dpl
   0C93 90 00 67      [24] 3506 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_210
   0C96 F0            [24] 3507 	movx	@dptr,a
   0C97 EF            [12] 3508 	mov	a,r7
   0C98 A3            [24] 3509 	inc	dptr
   0C99 F0            [24] 3510 	movx	@dptr,a
                           3511 ;	../src/uart/src/uart_calc_actual_baud_rate_from_s0rel.c:57: return (uint32_t)(((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(64 * (1024 - s0rel_reg_value)))) + 1) / 2);
   0C9A 90 00 66      [24] 3512 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
   0C9D E0            [24] 3513 	movx	a,@dptr
   0C9E FF            [12] 3514 	mov	r7,a
   0C9F 60 04         [24] 3515 	jz	00103$
   0CA1 7F 02         [12] 3516 	mov	r7,#0x02
   0CA3 80 02         [24] 3517 	sjmp	00104$
   0CA5                    3518 00103$:
   0CA5 7F 01         [12] 3519 	mov	r7,#0x01
   0CA7                    3520 00104$:
   0CA7 EF            [12] 3521 	mov	a,r7
   0CA8 75 F0 02      [24] 3522 	mov	b,#0x02
   0CAB A4            [48] 3523 	mul	ab
   0CAC FF            [12] 3524 	mov	r7,a
   0CAD AE F0         [24] 3525 	mov	r6,b
   0CAF C0 07         [24] 3526 	push	ar7
   0CB1 C0 06         [24] 3527 	push	ar6
   0CB3 12 09 BF      [24] 3528 	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
   0CB6 AA 82         [24] 3529 	mov	r2,dpl
   0CB8 AB 83         [24] 3530 	mov	r3,dph
   0CBA AC F0         [24] 3531 	mov	r4,b
   0CBC FD            [12] 3532 	mov	r5,a
   0CBD D0 06         [24] 3533 	pop	ar6
   0CBF D0 07         [24] 3534 	pop	ar7
   0CC1 8F 00         [24] 3535 	mov	ar0,r7
   0CC3 EE            [12] 3536 	mov	a,r6
   0CC4 F9            [12] 3537 	mov	r1,a
   0CC5 33            [12] 3538 	rlc	a
   0CC6 95 E0         [12] 3539 	subb	a,acc
   0CC8 FE            [12] 3540 	mov	r6,a
   0CC9 FF            [12] 3541 	mov	r7,a
   0CCA 90 00 CB      [24] 3542 	mov	dptr,#__mullong_PARM_2
   0CCD EA            [12] 3543 	mov	a,r2
   0CCE F0            [24] 3544 	movx	@dptr,a
   0CCF EB            [12] 3545 	mov	a,r3
   0CD0 A3            [24] 3546 	inc	dptr
   0CD1 F0            [24] 3547 	movx	@dptr,a
   0CD2 EC            [12] 3548 	mov	a,r4
   0CD3 A3            [24] 3549 	inc	dptr
   0CD4 F0            [24] 3550 	movx	@dptr,a
   0CD5 ED            [12] 3551 	mov	a,r5
   0CD6 A3            [24] 3552 	inc	dptr
   0CD7 F0            [24] 3553 	movx	@dptr,a
   0CD8 88 82         [24] 3554 	mov	dpl,r0
   0CDA 89 83         [24] 3555 	mov	dph,r1
   0CDC 8E F0         [24] 3556 	mov	b,r6
   0CDE EF            [12] 3557 	mov	a,r7
   0CDF 12 18 AF      [24] 3558 	lcall	__mullong
   0CE2 AC 82         [24] 3559 	mov	r4,dpl
   0CE4 AD 83         [24] 3560 	mov	r5,dph
   0CE6 AE F0         [24] 3561 	mov	r6,b
   0CE8 FF            [12] 3562 	mov	r7,a
   0CE9 90 00 67      [24] 3563 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_210
   0CEC E0            [24] 3564 	movx	a,@dptr
   0CED FA            [12] 3565 	mov	r2,a
   0CEE A3            [24] 3566 	inc	dptr
   0CEF E0            [24] 3567 	movx	a,@dptr
   0CF0 FB            [12] 3568 	mov	r3,a
   0CF1 E4            [12] 3569 	clr	a
   0CF2 C3            [12] 3570 	clr	c
   0CF3 9A            [12] 3571 	subb	a,r2
   0CF4 FA            [12] 3572 	mov	r2,a
   0CF5 74 04         [12] 3573 	mov	a,#0x04
   0CF7 9B            [12] 3574 	subb	a,r3
   0CF8 54 03         [12] 3575 	anl	a,#0x03
   0CFA A2 E0         [12] 3576 	mov	c,acc.0
   0CFC CA            [12] 3577 	xch	a,r2
   0CFD 13            [12] 3578 	rrc	a
   0CFE CA            [12] 3579 	xch	a,r2
   0CFF 13            [12] 3580 	rrc	a
   0D00 A2 E0         [12] 3581 	mov	c,acc.0
   0D02 CA            [12] 3582 	xch	a,r2
   0D03 13            [12] 3583 	rrc	a
   0D04 CA            [12] 3584 	xch	a,r2
   0D05 13            [12] 3585 	rrc	a
   0D06 CA            [12] 3586 	xch	a,r2
   0D07 FB            [12] 3587 	mov	r3,a
   0D08 90 00 BC      [24] 3588 	mov	dptr,#__divulong_PARM_2
   0D0B EA            [12] 3589 	mov	a,r2
   0D0C F0            [24] 3590 	movx	@dptr,a
   0D0D EB            [12] 3591 	mov	a,r3
   0D0E A3            [24] 3592 	inc	dptr
   0D0F F0            [24] 3593 	movx	@dptr,a
   0D10 E4            [12] 3594 	clr	a
   0D11 A3            [24] 3595 	inc	dptr
   0D12 F0            [24] 3596 	movx	@dptr,a
   0D13 E4            [12] 3597 	clr	a
   0D14 A3            [24] 3598 	inc	dptr
   0D15 F0            [24] 3599 	movx	@dptr,a
   0D16 8C 82         [24] 3600 	mov	dpl,r4
   0D18 8D 83         [24] 3601 	mov	dph,r5
   0D1A 8E F0         [24] 3602 	mov	b,r6
   0D1C EF            [12] 3603 	mov	a,r7
   0D1D 12 17 66      [24] 3604 	lcall	__divulong
   0D20 AC 82         [24] 3605 	mov	r4,dpl
   0D22 AD 83         [24] 3606 	mov	r5,dph
   0D24 AE F0         [24] 3607 	mov	r6,b
   0D26 FF            [12] 3608 	mov	r7,a
   0D27 0C            [12] 3609 	inc	r4
   0D28 BC 00 09      [24] 3610 	cjne	r4,#0x00,00109$
   0D2B 0D            [12] 3611 	inc	r5
   0D2C BD 00 05      [24] 3612 	cjne	r5,#0x00,00109$
   0D2F 0E            [12] 3613 	inc	r6
   0D30 BE 00 01      [24] 3614 	cjne	r6,#0x00,00109$
   0D33 0F            [12] 3615 	inc	r7
   0D34                    3616 00109$:
   0D34 EF            [12] 3617 	mov	a,r7
   0D35 C3            [12] 3618 	clr	c
   0D36 13            [12] 3619 	rrc	a
   0D37 FF            [12] 3620 	mov	r7,a
   0D38 EE            [12] 3621 	mov	a,r6
   0D39 13            [12] 3622 	rrc	a
   0D3A FE            [12] 3623 	mov	r6,a
   0D3B ED            [12] 3624 	mov	a,r5
   0D3C 13            [12] 3625 	rrc	a
   0D3D FD            [12] 3626 	mov	r5,a
   0D3E EC            [12] 3627 	mov	a,r4
   0D3F 13            [12] 3628 	rrc	a
   0D40 F5 82         [12] 3629 	mov	dpl,a
   0D42 8D 83         [24] 3630 	mov	dph,r5
   0D44 8E F0         [24] 3631 	mov	b,r6
   0D46 EF            [12] 3632 	mov	a,r7
   0D47 22            [24] 3633 	ret
                           3634 ;------------------------------------------------------------
                           3635 ;Allocation info for local variables in function 'uart_calc_actual_baud_rate_from_th1'
                           3636 ;------------------------------------------------------------
                           3637 ;smod_bit_value            Allocated with name '_uart_calc_actual_baud_rate_from_th1_PARM_2'
                           3638 ;th1_reg_value             Allocated with name '_uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_212'
                           3639 ;------------------------------------------------------------
                           3640 ;	../src/uart/src/uart_calc_actual_baud_rate_from_th1.c:48: uint32_t uart_calc_actual_baud_rate_from_th1(uint8_t th1_reg_value, bool smod_bit_value)
                           3641 ;	-----------------------------------------
                           3642 ;	 function uart_calc_actual_baud_rate_from_th1
                           3643 ;	-----------------------------------------
   0D48                    3644 _uart_calc_actual_baud_rate_from_th1:
   0D48 E5 82         [12] 3645 	mov	a,dpl
   0D4A 90 00 6A      [24] 3646 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_212
   0D4D F0            [24] 3647 	movx	@dptr,a
                           3648 ;	../src/uart/src/uart_calc_actual_baud_rate_from_th1.c:57: return (uint32_t)(((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(384 * (256 - th1_reg_value)))) + 1) / 2);
   0D4E 90 00 69      [24] 3649 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
   0D51 E0            [24] 3650 	movx	a,@dptr
   0D52 FF            [12] 3651 	mov	r7,a
   0D53 60 04         [24] 3652 	jz	00103$
   0D55 7F 02         [12] 3653 	mov	r7,#0x02
   0D57 80 02         [24] 3654 	sjmp	00104$
   0D59                    3655 00103$:
   0D59 7F 01         [12] 3656 	mov	r7,#0x01
   0D5B                    3657 00104$:
   0D5B EF            [12] 3658 	mov	a,r7
   0D5C 75 F0 02      [24] 3659 	mov	b,#0x02
   0D5F A4            [48] 3660 	mul	ab
   0D60 FF            [12] 3661 	mov	r7,a
   0D61 AE F0         [24] 3662 	mov	r6,b
   0D63 C0 07         [24] 3663 	push	ar7
   0D65 C0 06         [24] 3664 	push	ar6
   0D67 12 09 BF      [24] 3665 	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
   0D6A AA 82         [24] 3666 	mov	r2,dpl
   0D6C AB 83         [24] 3667 	mov	r3,dph
   0D6E AC F0         [24] 3668 	mov	r4,b
   0D70 FD            [12] 3669 	mov	r5,a
   0D71 D0 06         [24] 3670 	pop	ar6
   0D73 D0 07         [24] 3671 	pop	ar7
   0D75 8F 00         [24] 3672 	mov	ar0,r7
   0D77 EE            [12] 3673 	mov	a,r6
   0D78 F9            [12] 3674 	mov	r1,a
   0D79 33            [12] 3675 	rlc	a
   0D7A 95 E0         [12] 3676 	subb	a,acc
   0D7C FE            [12] 3677 	mov	r6,a
   0D7D FF            [12] 3678 	mov	r7,a
   0D7E 90 00 CB      [24] 3679 	mov	dptr,#__mullong_PARM_2
   0D81 EA            [12] 3680 	mov	a,r2
   0D82 F0            [24] 3681 	movx	@dptr,a
   0D83 EB            [12] 3682 	mov	a,r3
   0D84 A3            [24] 3683 	inc	dptr
   0D85 F0            [24] 3684 	movx	@dptr,a
   0D86 EC            [12] 3685 	mov	a,r4
   0D87 A3            [24] 3686 	inc	dptr
   0D88 F0            [24] 3687 	movx	@dptr,a
   0D89 ED            [12] 3688 	mov	a,r5
   0D8A A3            [24] 3689 	inc	dptr
   0D8B F0            [24] 3690 	movx	@dptr,a
   0D8C 88 82         [24] 3691 	mov	dpl,r0
   0D8E 89 83         [24] 3692 	mov	dph,r1
   0D90 8E F0         [24] 3693 	mov	b,r6
   0D92 EF            [12] 3694 	mov	a,r7
   0D93 12 18 AF      [24] 3695 	lcall	__mullong
   0D96 AC 82         [24] 3696 	mov	r4,dpl
   0D98 AD 83         [24] 3697 	mov	r5,dph
   0D9A AE F0         [24] 3698 	mov	r6,b
   0D9C FF            [12] 3699 	mov	r7,a
   0D9D 90 00 6A      [24] 3700 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_212
   0DA0 E0            [24] 3701 	movx	a,@dptr
   0DA1 FB            [12] 3702 	mov	r3,a
   0DA2 7A 00         [12] 3703 	mov	r2,#0x00
   0DA4 90 00 C9      [24] 3704 	mov	dptr,#__mulint_PARM_2
   0DA7 E4            [12] 3705 	clr	a
   0DA8 C3            [12] 3706 	clr	c
   0DA9 9B            [12] 3707 	subb	a,r3
   0DAA F0            [24] 3708 	movx	@dptr,a
   0DAB 74 01         [12] 3709 	mov	a,#0x01
   0DAD 9A            [12] 3710 	subb	a,r2
   0DAE A3            [24] 3711 	inc	dptr
   0DAF F0            [24] 3712 	movx	@dptr,a
   0DB0 90 01 80      [24] 3713 	mov	dptr,#0x0180
   0DB3 C0 07         [24] 3714 	push	ar7
   0DB5 C0 06         [24] 3715 	push	ar6
   0DB7 C0 05         [24] 3716 	push	ar5
   0DB9 C0 04         [24] 3717 	push	ar4
   0DBB 12 18 8F      [24] 3718 	lcall	__mulint
   0DBE AA 82         [24] 3719 	mov	r2,dpl
   0DC0 AB 83         [24] 3720 	mov	r3,dph
   0DC2 D0 04         [24] 3721 	pop	ar4
   0DC4 D0 05         [24] 3722 	pop	ar5
   0DC6 D0 06         [24] 3723 	pop	ar6
   0DC8 D0 07         [24] 3724 	pop	ar7
   0DCA 90 00 BC      [24] 3725 	mov	dptr,#__divulong_PARM_2
   0DCD EA            [12] 3726 	mov	a,r2
   0DCE F0            [24] 3727 	movx	@dptr,a
   0DCF EB            [12] 3728 	mov	a,r3
   0DD0 A3            [24] 3729 	inc	dptr
   0DD1 F0            [24] 3730 	movx	@dptr,a
   0DD2 EB            [12] 3731 	mov	a,r3
   0DD3 33            [12] 3732 	rlc	a
   0DD4 95 E0         [12] 3733 	subb	a,acc
   0DD6 A3            [24] 3734 	inc	dptr
   0DD7 F0            [24] 3735 	movx	@dptr,a
   0DD8 A3            [24] 3736 	inc	dptr
   0DD9 F0            [24] 3737 	movx	@dptr,a
   0DDA 8C 82         [24] 3738 	mov	dpl,r4
   0DDC 8D 83         [24] 3739 	mov	dph,r5
   0DDE 8E F0         [24] 3740 	mov	b,r6
   0DE0 EF            [12] 3741 	mov	a,r7
   0DE1 12 17 66      [24] 3742 	lcall	__divulong
   0DE4 AC 82         [24] 3743 	mov	r4,dpl
   0DE6 AD 83         [24] 3744 	mov	r5,dph
   0DE8 AE F0         [24] 3745 	mov	r6,b
   0DEA FF            [12] 3746 	mov	r7,a
   0DEB 0C            [12] 3747 	inc	r4
   0DEC BC 00 09      [24] 3748 	cjne	r4,#0x00,00109$
   0DEF 0D            [12] 3749 	inc	r5
   0DF0 BD 00 05      [24] 3750 	cjne	r5,#0x00,00109$
   0DF3 0E            [12] 3751 	inc	r6
   0DF4 BE 00 01      [24] 3752 	cjne	r6,#0x00,00109$
   0DF7 0F            [12] 3753 	inc	r7
   0DF8                    3754 00109$:
   0DF8 EF            [12] 3755 	mov	a,r7
   0DF9 C3            [12] 3756 	clr	c
   0DFA 13            [12] 3757 	rrc	a
   0DFB FF            [12] 3758 	mov	r7,a
   0DFC EE            [12] 3759 	mov	a,r6
   0DFD 13            [12] 3760 	rrc	a
   0DFE FE            [12] 3761 	mov	r6,a
   0DFF ED            [12] 3762 	mov	a,r5
   0E00 13            [12] 3763 	rrc	a
   0E01 FD            [12] 3764 	mov	r5,a
   0E02 EC            [12] 3765 	mov	a,r4
   0E03 13            [12] 3766 	rrc	a
   0E04 F5 82         [12] 3767 	mov	dpl,a
   0E06 8D 83         [24] 3768 	mov	dph,r5
   0E08 8E F0         [24] 3769 	mov	b,r6
   0E0A EF            [12] 3770 	mov	a,r7
   0E0B 22            [24] 3771 	ret
                           3772 ;------------------------------------------------------------
                           3773 ;Allocation info for local variables in function 'uart_calc_s0rel_value'
                           3774 ;------------------------------------------------------------
                           3775 ;smod_bit_value            Allocated with name '_uart_calc_s0rel_value_PARM_2'
                           3776 ;desired_baud_rate         Allocated with name '_uart_calc_s0rel_value_desired_baud_rate_1_214'
                           3777 ;------------------------------------------------------------
                           3778 ;	../src/uart/src/uart_calc_s0rel_value.c:48: uint16_t uart_calc_s0rel_value(uint32_t desired_baud_rate, bool smod_bit_value)
                           3779 ;	-----------------------------------------
                           3780 ;	 function uart_calc_s0rel_value
                           3781 ;	-----------------------------------------
   0E0C                    3782 _uart_calc_s0rel_value:
   0E0C AF 82         [24] 3783 	mov	r7,dpl
   0E0E AE 83         [24] 3784 	mov	r6,dph
   0E10 AD F0         [24] 3785 	mov	r5,b
   0E12 FC            [12] 3786 	mov	r4,a
   0E13 90 00 6C      [24] 3787 	mov	dptr,#_uart_calc_s0rel_value_desired_baud_rate_1_214
   0E16 EF            [12] 3788 	mov	a,r7
   0E17 F0            [24] 3789 	movx	@dptr,a
   0E18 EE            [12] 3790 	mov	a,r6
   0E19 A3            [24] 3791 	inc	dptr
   0E1A F0            [24] 3792 	movx	@dptr,a
   0E1B ED            [12] 3793 	mov	a,r5
   0E1C A3            [24] 3794 	inc	dptr
   0E1D F0            [24] 3795 	movx	@dptr,a
   0E1E EC            [12] 3796 	mov	a,r4
   0E1F A3            [24] 3797 	inc	dptr
   0E20 F0            [24] 3798 	movx	@dptr,a
                           3799 ;	../src/uart/src/uart_calc_s0rel_value.c:57: return (uint16_t)(1024 - (((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(64 * desired_baud_rate))) + 1) / 2));
   0E21 90 00 6B      [24] 3800 	mov	dptr,#_uart_calc_s0rel_value_PARM_2
   0E24 E0            [24] 3801 	movx	a,@dptr
   0E25 FF            [12] 3802 	mov	r7,a
   0E26 60 04         [24] 3803 	jz	00103$
   0E28 7F 02         [12] 3804 	mov	r7,#0x02
   0E2A 80 02         [24] 3805 	sjmp	00104$
   0E2C                    3806 00103$:
   0E2C 7F 01         [12] 3807 	mov	r7,#0x01
   0E2E                    3808 00104$:
   0E2E EF            [12] 3809 	mov	a,r7
   0E2F 75 F0 02      [24] 3810 	mov	b,#0x02
   0E32 A4            [48] 3811 	mul	ab
   0E33 FF            [12] 3812 	mov	r7,a
   0E34 AE F0         [24] 3813 	mov	r6,b
   0E36 C0 07         [24] 3814 	push	ar7
   0E38 C0 06         [24] 3815 	push	ar6
   0E3A 12 09 BF      [24] 3816 	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
   0E3D AA 82         [24] 3817 	mov	r2,dpl
   0E3F AB 83         [24] 3818 	mov	r3,dph
   0E41 AC F0         [24] 3819 	mov	r4,b
   0E43 FD            [12] 3820 	mov	r5,a
   0E44 D0 06         [24] 3821 	pop	ar6
   0E46 D0 07         [24] 3822 	pop	ar7
   0E48 8F 00         [24] 3823 	mov	ar0,r7
   0E4A EE            [12] 3824 	mov	a,r6
   0E4B F9            [12] 3825 	mov	r1,a
   0E4C 33            [12] 3826 	rlc	a
   0E4D 95 E0         [12] 3827 	subb	a,acc
   0E4F FE            [12] 3828 	mov	r6,a
   0E50 FF            [12] 3829 	mov	r7,a
   0E51 90 00 CB      [24] 3830 	mov	dptr,#__mullong_PARM_2
   0E54 EA            [12] 3831 	mov	a,r2
   0E55 F0            [24] 3832 	movx	@dptr,a
   0E56 EB            [12] 3833 	mov	a,r3
   0E57 A3            [24] 3834 	inc	dptr
   0E58 F0            [24] 3835 	movx	@dptr,a
   0E59 EC            [12] 3836 	mov	a,r4
   0E5A A3            [24] 3837 	inc	dptr
   0E5B F0            [24] 3838 	movx	@dptr,a
   0E5C ED            [12] 3839 	mov	a,r5
   0E5D A3            [24] 3840 	inc	dptr
   0E5E F0            [24] 3841 	movx	@dptr,a
   0E5F 88 82         [24] 3842 	mov	dpl,r0
   0E61 89 83         [24] 3843 	mov	dph,r1
   0E63 8E F0         [24] 3844 	mov	b,r6
   0E65 EF            [12] 3845 	mov	a,r7
   0E66 12 18 AF      [24] 3846 	lcall	__mullong
   0E69 AC 82         [24] 3847 	mov	r4,dpl
   0E6B AD 83         [24] 3848 	mov	r5,dph
   0E6D AE F0         [24] 3849 	mov	r6,b
   0E6F FF            [12] 3850 	mov	r7,a
   0E70 90 00 6C      [24] 3851 	mov	dptr,#_uart_calc_s0rel_value_desired_baud_rate_1_214
   0E73 E0            [24] 3852 	movx	a,@dptr
   0E74 F8            [12] 3853 	mov	r0,a
   0E75 A3            [24] 3854 	inc	dptr
   0E76 E0            [24] 3855 	movx	a,@dptr
   0E77 F9            [12] 3856 	mov	r1,a
   0E78 A3            [24] 3857 	inc	dptr
   0E79 E0            [24] 3858 	movx	a,@dptr
   0E7A FA            [12] 3859 	mov	r2,a
   0E7B A3            [24] 3860 	inc	dptr
   0E7C E0            [24] 3861 	movx	a,@dptr
   0E7D 54 03         [12] 3862 	anl	a,#0x03
   0E7F A2 E0         [12] 3863 	mov	c,acc.0
   0E81 CA            [12] 3864 	xch	a,r2
   0E82 13            [12] 3865 	rrc	a
   0E83 CA            [12] 3866 	xch	a,r2
   0E84 13            [12] 3867 	rrc	a
   0E85 A2 E0         [12] 3868 	mov	c,acc.0
   0E87 CA            [12] 3869 	xch	a,r2
   0E88 13            [12] 3870 	rrc	a
   0E89 CA            [12] 3871 	xch	a,r2
   0E8A 13            [12] 3872 	rrc	a
   0E8B CA            [12] 3873 	xch	a,r2
   0E8C FB            [12] 3874 	mov	r3,a
   0E8D E9            [12] 3875 	mov	a,r1
   0E8E 03            [12] 3876 	rr	a
   0E8F 03            [12] 3877 	rr	a
   0E90 54 3F         [12] 3878 	anl	a,#0x3F
   0E92 4A            [12] 3879 	orl	a,r2
   0E93 FA            [12] 3880 	mov	r2,a
   0E94 E9            [12] 3881 	mov	a,r1
   0E95 54 03         [12] 3882 	anl	a,#0x03
   0E97 A2 E0         [12] 3883 	mov	c,acc.0
   0E99 C8            [12] 3884 	xch	a,r0
   0E9A 13            [12] 3885 	rrc	a
   0E9B C8            [12] 3886 	xch	a,r0
   0E9C 13            [12] 3887 	rrc	a
   0E9D A2 E0         [12] 3888 	mov	c,acc.0
   0E9F C8            [12] 3889 	xch	a,r0
   0EA0 13            [12] 3890 	rrc	a
   0EA1 C8            [12] 3891 	xch	a,r0
   0EA2 13            [12] 3892 	rrc	a
   0EA3 C8            [12] 3893 	xch	a,r0
   0EA4 F9            [12] 3894 	mov	r1,a
   0EA5 90 00 BC      [24] 3895 	mov	dptr,#__divulong_PARM_2
   0EA8 E8            [12] 3896 	mov	a,r0
   0EA9 F0            [24] 3897 	movx	@dptr,a
   0EAA E9            [12] 3898 	mov	a,r1
   0EAB A3            [24] 3899 	inc	dptr
   0EAC F0            [24] 3900 	movx	@dptr,a
   0EAD EA            [12] 3901 	mov	a,r2
   0EAE A3            [24] 3902 	inc	dptr
   0EAF F0            [24] 3903 	movx	@dptr,a
   0EB0 EB            [12] 3904 	mov	a,r3
   0EB1 A3            [24] 3905 	inc	dptr
   0EB2 F0            [24] 3906 	movx	@dptr,a
   0EB3 8C 82         [24] 3907 	mov	dpl,r4
   0EB5 8D 83         [24] 3908 	mov	dph,r5
   0EB7 8E F0         [24] 3909 	mov	b,r6
   0EB9 EF            [12] 3910 	mov	a,r7
   0EBA 12 17 66      [24] 3911 	lcall	__divulong
   0EBD AC 82         [24] 3912 	mov	r4,dpl
   0EBF AD 83         [24] 3913 	mov	r5,dph
   0EC1 AE F0         [24] 3914 	mov	r6,b
   0EC3 FF            [12] 3915 	mov	r7,a
   0EC4 0C            [12] 3916 	inc	r4
   0EC5 BC 00 09      [24] 3917 	cjne	r4,#0x00,00109$
   0EC8 0D            [12] 3918 	inc	r5
   0EC9 BD 00 05      [24] 3919 	cjne	r5,#0x00,00109$
   0ECC 0E            [12] 3920 	inc	r6
   0ECD BE 00 01      [24] 3921 	cjne	r6,#0x00,00109$
   0ED0 0F            [12] 3922 	inc	r7
   0ED1                    3923 00109$:
   0ED1 EF            [12] 3924 	mov	a,r7
   0ED2 C3            [12] 3925 	clr	c
   0ED3 13            [12] 3926 	rrc	a
   0ED4 FF            [12] 3927 	mov	r7,a
   0ED5 EE            [12] 3928 	mov	a,r6
   0ED6 13            [12] 3929 	rrc	a
   0ED7 FE            [12] 3930 	mov	r6,a
   0ED8 ED            [12] 3931 	mov	a,r5
   0ED9 13            [12] 3932 	rrc	a
   0EDA FD            [12] 3933 	mov	r5,a
   0EDB EC            [12] 3934 	mov	a,r4
   0EDC 13            [12] 3935 	rrc	a
   0EDD FC            [12] 3936 	mov	r4,a
   0EDE E4            [12] 3937 	clr	a
   0EDF C3            [12] 3938 	clr	c
   0EE0 9C            [12] 3939 	subb	a,r4
   0EE1 FC            [12] 3940 	mov	r4,a
   0EE2 74 04         [12] 3941 	mov	a,#0x04
   0EE4 9D            [12] 3942 	subb	a,r5
   0EE5 FD            [12] 3943 	mov	r5,a
   0EE6 E4            [12] 3944 	clr	a
   0EE7 9E            [12] 3945 	subb	a,r6
   0EE8 E4            [12] 3946 	clr	a
   0EE9 9F            [12] 3947 	subb	a,r7
   0EEA 8C 82         [24] 3948 	mov	dpl,r4
   0EEC 8D 83         [24] 3949 	mov	dph,r5
   0EEE 22            [24] 3950 	ret
                           3951 ;------------------------------------------------------------
                           3952 ;Allocation info for local variables in function 'uart_calc_th1_value'
                           3953 ;------------------------------------------------------------
                           3954 ;smod_bit_value            Allocated with name '_uart_calc_th1_value_PARM_2'
                           3955 ;desired_baud_rate         Allocated with name '_uart_calc_th1_value_desired_baud_rate_1_216'
                           3956 ;------------------------------------------------------------
                           3957 ;	../src/uart/src/uart_calc_th1_value.c:48: uint8_t uart_calc_th1_value(uint32_t desired_baud_rate, bool smod_bit_value)
                           3958 ;	-----------------------------------------
                           3959 ;	 function uart_calc_th1_value
                           3960 ;	-----------------------------------------
   0EEF                    3961 _uart_calc_th1_value:
   0EEF AF 82         [24] 3962 	mov	r7,dpl
   0EF1 AE 83         [24] 3963 	mov	r6,dph
   0EF3 AD F0         [24] 3964 	mov	r5,b
   0EF5 FC            [12] 3965 	mov	r4,a
   0EF6 90 00 71      [24] 3966 	mov	dptr,#_uart_calc_th1_value_desired_baud_rate_1_216
   0EF9 EF            [12] 3967 	mov	a,r7
   0EFA F0            [24] 3968 	movx	@dptr,a
   0EFB EE            [12] 3969 	mov	a,r6
   0EFC A3            [24] 3970 	inc	dptr
   0EFD F0            [24] 3971 	movx	@dptr,a
   0EFE ED            [12] 3972 	mov	a,r5
   0EFF A3            [24] 3973 	inc	dptr
   0F00 F0            [24] 3974 	movx	@dptr,a
   0F01 EC            [12] 3975 	mov	a,r4
   0F02 A3            [24] 3976 	inc	dptr
   0F03 F0            [24] 3977 	movx	@dptr,a
                           3978 ;	../src/uart/src/uart_calc_th1_value.c:57: return (uint8_t)(256 - (((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(384 * desired_baud_rate))) + 1) / 2));
   0F04 90 00 70      [24] 3979 	mov	dptr,#_uart_calc_th1_value_PARM_2
   0F07 E0            [24] 3980 	movx	a,@dptr
   0F08 FF            [12] 3981 	mov	r7,a
   0F09 60 04         [24] 3982 	jz	00103$
   0F0B 7F 02         [12] 3983 	mov	r7,#0x02
   0F0D 80 02         [24] 3984 	sjmp	00104$
   0F0F                    3985 00103$:
   0F0F 7F 01         [12] 3986 	mov	r7,#0x01
   0F11                    3987 00104$:
   0F11 EF            [12] 3988 	mov	a,r7
   0F12 75 F0 02      [24] 3989 	mov	b,#0x02
   0F15 A4            [48] 3990 	mul	ab
   0F16 FF            [12] 3991 	mov	r7,a
   0F17 AE F0         [24] 3992 	mov	r6,b
   0F19 C0 07         [24] 3993 	push	ar7
   0F1B C0 06         [24] 3994 	push	ar6
   0F1D 12 09 BF      [24] 3995 	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
   0F20 AA 82         [24] 3996 	mov	r2,dpl
   0F22 AB 83         [24] 3997 	mov	r3,dph
   0F24 AC F0         [24] 3998 	mov	r4,b
   0F26 FD            [12] 3999 	mov	r5,a
   0F27 D0 06         [24] 4000 	pop	ar6
   0F29 D0 07         [24] 4001 	pop	ar7
   0F2B 8F 00         [24] 4002 	mov	ar0,r7
   0F2D EE            [12] 4003 	mov	a,r6
   0F2E F9            [12] 4004 	mov	r1,a
   0F2F 33            [12] 4005 	rlc	a
   0F30 95 E0         [12] 4006 	subb	a,acc
   0F32 FE            [12] 4007 	mov	r6,a
   0F33 FF            [12] 4008 	mov	r7,a
   0F34 90 00 CB      [24] 4009 	mov	dptr,#__mullong_PARM_2
   0F37 EA            [12] 4010 	mov	a,r2
   0F38 F0            [24] 4011 	movx	@dptr,a
   0F39 EB            [12] 4012 	mov	a,r3
   0F3A A3            [24] 4013 	inc	dptr
   0F3B F0            [24] 4014 	movx	@dptr,a
   0F3C EC            [12] 4015 	mov	a,r4
   0F3D A3            [24] 4016 	inc	dptr
   0F3E F0            [24] 4017 	movx	@dptr,a
   0F3F ED            [12] 4018 	mov	a,r5
   0F40 A3            [24] 4019 	inc	dptr
   0F41 F0            [24] 4020 	movx	@dptr,a
   0F42 88 82         [24] 4021 	mov	dpl,r0
   0F44 89 83         [24] 4022 	mov	dph,r1
   0F46 8E F0         [24] 4023 	mov	b,r6
   0F48 EF            [12] 4024 	mov	a,r7
   0F49 12 18 AF      [24] 4025 	lcall	__mullong
   0F4C AC 82         [24] 4026 	mov	r4,dpl
   0F4E AD 83         [24] 4027 	mov	r5,dph
   0F50 AE F0         [24] 4028 	mov	r6,b
   0F52 FF            [12] 4029 	mov	r7,a
   0F53 90 00 71      [24] 4030 	mov	dptr,#_uart_calc_th1_value_desired_baud_rate_1_216
   0F56 E0            [24] 4031 	movx	a,@dptr
   0F57 F8            [12] 4032 	mov	r0,a
   0F58 A3            [24] 4033 	inc	dptr
   0F59 E0            [24] 4034 	movx	a,@dptr
   0F5A F9            [12] 4035 	mov	r1,a
   0F5B A3            [24] 4036 	inc	dptr
   0F5C E0            [24] 4037 	movx	a,@dptr
   0F5D FA            [12] 4038 	mov	r2,a
   0F5E A3            [24] 4039 	inc	dptr
   0F5F E0            [24] 4040 	movx	a,@dptr
   0F60 FB            [12] 4041 	mov	r3,a
   0F61 90 00 CB      [24] 4042 	mov	dptr,#__mullong_PARM_2
   0F64 E8            [12] 4043 	mov	a,r0
   0F65 F0            [24] 4044 	movx	@dptr,a
   0F66 E9            [12] 4045 	mov	a,r1
   0F67 A3            [24] 4046 	inc	dptr
   0F68 F0            [24] 4047 	movx	@dptr,a
   0F69 EA            [12] 4048 	mov	a,r2
   0F6A A3            [24] 4049 	inc	dptr
   0F6B F0            [24] 4050 	movx	@dptr,a
   0F6C EB            [12] 4051 	mov	a,r3
   0F6D A3            [24] 4052 	inc	dptr
   0F6E F0            [24] 4053 	movx	@dptr,a
   0F6F 90 01 80      [24] 4054 	mov	dptr,#0x0180
   0F72 E4            [12] 4055 	clr	a
   0F73 F5 F0         [12] 4056 	mov	b,a
   0F75 C0 07         [24] 4057 	push	ar7
   0F77 C0 06         [24] 4058 	push	ar6
   0F79 C0 05         [24] 4059 	push	ar5
   0F7B C0 04         [24] 4060 	push	ar4
   0F7D 12 18 AF      [24] 4061 	lcall	__mullong
   0F80 A8 82         [24] 4062 	mov	r0,dpl
   0F82 A9 83         [24] 4063 	mov	r1,dph
   0F84 AA F0         [24] 4064 	mov	r2,b
   0F86 FB            [12] 4065 	mov	r3,a
   0F87 D0 04         [24] 4066 	pop	ar4
   0F89 D0 05         [24] 4067 	pop	ar5
   0F8B D0 06         [24] 4068 	pop	ar6
   0F8D D0 07         [24] 4069 	pop	ar7
   0F8F 90 00 BC      [24] 4070 	mov	dptr,#__divulong_PARM_2
   0F92 E8            [12] 4071 	mov	a,r0
   0F93 F0            [24] 4072 	movx	@dptr,a
   0F94 E9            [12] 4073 	mov	a,r1
   0F95 A3            [24] 4074 	inc	dptr
   0F96 F0            [24] 4075 	movx	@dptr,a
   0F97 EA            [12] 4076 	mov	a,r2
   0F98 A3            [24] 4077 	inc	dptr
   0F99 F0            [24] 4078 	movx	@dptr,a
   0F9A EB            [12] 4079 	mov	a,r3
   0F9B A3            [24] 4080 	inc	dptr
   0F9C F0            [24] 4081 	movx	@dptr,a
   0F9D 8C 82         [24] 4082 	mov	dpl,r4
   0F9F 8D 83         [24] 4083 	mov	dph,r5
   0FA1 8E F0         [24] 4084 	mov	b,r6
   0FA3 EF            [12] 4085 	mov	a,r7
   0FA4 12 17 66      [24] 4086 	lcall	__divulong
   0FA7 AC 82         [24] 4087 	mov	r4,dpl
   0FA9 AD 83         [24] 4088 	mov	r5,dph
   0FAB AE F0         [24] 4089 	mov	r6,b
   0FAD FF            [12] 4090 	mov	r7,a
   0FAE 0C            [12] 4091 	inc	r4
   0FAF BC 00 09      [24] 4092 	cjne	r4,#0x00,00109$
   0FB2 0D            [12] 4093 	inc	r5
   0FB3 BD 00 05      [24] 4094 	cjne	r5,#0x00,00109$
   0FB6 0E            [12] 4095 	inc	r6
   0FB7 BE 00 01      [24] 4096 	cjne	r6,#0x00,00109$
   0FBA 0F            [12] 4097 	inc	r7
   0FBB                    4098 00109$:
   0FBB EF            [12] 4099 	mov	a,r7
   0FBC C3            [12] 4100 	clr	c
   0FBD 13            [12] 4101 	rrc	a
   0FBE EE            [12] 4102 	mov	a,r6
   0FBF 13            [12] 4103 	rrc	a
   0FC0 ED            [12] 4104 	mov	a,r5
   0FC1 13            [12] 4105 	rrc	a
   0FC2 EC            [12] 4106 	mov	a,r4
   0FC3 13            [12] 4107 	rrc	a
   0FC4 FC            [12] 4108 	mov	r4,a
   0FC5 C3            [12] 4109 	clr	c
   0FC6 E4            [12] 4110 	clr	a
   0FC7 9C            [12] 4111 	subb	a,r4
   0FC8 F5 82         [12] 4112 	mov	dpl,a
   0FCA 22            [24] 4113 	ret
                           4114 ;------------------------------------------------------------
                           4115 ;Allocation info for local variables in function 'uart_configure_auto_baud_calc'
                           4116 ;------------------------------------------------------------
                           4117 ;sloc0                     Allocated with name '_uart_configure_auto_baud_calc_sloc0_1_0'
                           4118 ;sloc1                     Allocated with name '_uart_configure_auto_baud_calc_sloc1_1_0'
                           4119 ;sloc2                     Allocated with name '_uart_configure_auto_baud_calc_sloc2_1_0'
                           4120 ;sloc3                     Allocated with name '_uart_configure_auto_baud_calc_sloc3_1_0'
                           4121 ;baud_rate                 Allocated with name '_uart_configure_auto_baud_calc_PARM_2'
                           4122 ;uart_config_options       Allocated with name '_uart_configure_auto_baud_calc_uart_config_options_1_218'
                           4123 ;calc_br_with_smod_cleared Allocated with name '_uart_configure_auto_baud_calc_calc_br_with_smod_cleared_2_220'
                           4124 ;calc_br_with_smod_set     Allocated with name '_uart_configure_auto_baud_calc_calc_br_with_smod_set_2_220'
                           4125 ;error_calc_br_with_smod_cleared Allocated with name '_uart_configure_auto_baud_calc_error_calc_br_with_smod_cleared_2_220'
                           4126 ;error_calc_br_with_smod_set Allocated with name '_uart_configure_auto_baud_calc_error_calc_br_with_smod_set_2_220'
                           4127 ;s0rel_with_smod_cleared   Allocated with name '_uart_configure_auto_baud_calc_s0rel_with_smod_cleared_3_221'
                           4128 ;s0rel_with_smod_set       Allocated with name '_uart_configure_auto_baud_calc_s0rel_with_smod_set_3_221'
                           4129 ;th1_with_smod_cleared     Allocated with name '_uart_configure_auto_baud_calc_th1_with_smod_cleared_3_224'
                           4130 ;th1_with_smod_set         Allocated with name '_uart_configure_auto_baud_calc_th1_with_smod_set_3_224'
                           4131 ;------------------------------------------------------------
                           4132 ;	../src/uart/src/uart_configure_auto_baud_calc.c:48: void uart_configure_auto_baud_calc(uint8_t uart_config_options, uint32_t baud_rate)
                           4133 ;	-----------------------------------------
                           4134 ;	 function uart_configure_auto_baud_calc
                           4135 ;	-----------------------------------------
   0FCB                    4136 _uart_configure_auto_baud_calc:
   0FCB E5 82         [12] 4137 	mov	a,dpl
                           4138 ;	../src/uart/src/uart_configure_auto_baud_calc.c:51: if(((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_1_UART_8_BIT) ||
   0FCD 90 00 79      [24] 4139 	mov	dptr,#_uart_configure_auto_baud_calc_uart_config_options_1_218
   0FD0 F0            [24] 4140 	movx	@dptr,a
   0FD1 FF            [12] 4141 	mov	r7,a
   0FD2 74 C0         [12] 4142 	mov	a,#0xC0
   0FD4 5F            [12] 4143 	anl	a,r7
   0FD5 FE            [12] 4144 	mov	r6,a
   0FD6 BE 40 02      [24] 4145 	cjne	r6,#0x40,00147$
   0FD9 80 0A         [24] 4146 	sjmp	00110$
   0FDB                    4147 00147$:
                           4148 ;	../src/uart/src/uart_configure_auto_baud_calc.c:52: ((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_3_UART_9_BIT))
   0FDB 74 C0         [12] 4149 	mov	a,#0xC0
   0FDD 5F            [12] 4150 	anl	a,r7
   0FDE FE            [12] 4151 	mov	r6,a
   0FDF BE C0 02      [24] 4152 	cjne	r6,#0xC0,00148$
   0FE2 80 01         [24] 4153 	sjmp	00149$
   0FE4                    4154 00148$:
   0FE4 22            [24] 4155 	ret
   0FE5                    4156 00149$:
   0FE5                    4157 00110$:
                           4158 ;	../src/uart/src/uart_configure_auto_baud_calc.c:58: if((uart_config_options & UART_CONFIG_OPTION_CLOCK_MASK) == UART_CONFIG_OPTION_CLOCK_FOR_MODES_1_3_USE_BR_GEN)
   0FE5 74 02         [12] 4159 	mov	a,#0x02
   0FE7 5F            [12] 4160 	anl	a,r7
   0FE8 FE            [12] 4161 	mov	r6,a
   0FE9 BE 02 02      [24] 4162 	cjne	r6,#0x02,00150$
   0FEC 80 03         [24] 4163 	sjmp	00151$
   0FEE                    4164 00150$:
   0FEE 02 11 3F      [24] 4165 	ljmp	00108$
   0FF1                    4166 00151$:
                           4167 ;	../src/uart/src/uart_configure_auto_baud_calc.c:63: s0rel_with_smod_cleared = uart_calc_s0rel_value(baud_rate, 0);
   0FF1 90 00 75      [24] 4168 	mov	dptr,#_uart_configure_auto_baud_calc_PARM_2
   0FF4 E0            [24] 4169 	movx	a,@dptr
   0FF5 FB            [12] 4170 	mov	r3,a
   0FF6 A3            [24] 4171 	inc	dptr
   0FF7 E0            [24] 4172 	movx	a,@dptr
   0FF8 FC            [12] 4173 	mov	r4,a
   0FF9 A3            [24] 4174 	inc	dptr
   0FFA E0            [24] 4175 	movx	a,@dptr
   0FFB FD            [12] 4176 	mov	r5,a
   0FFC A3            [24] 4177 	inc	dptr
   0FFD E0            [24] 4178 	movx	a,@dptr
   0FFE FE            [12] 4179 	mov	r6,a
   0FFF 90 00 6B      [24] 4180 	mov	dptr,#_uart_calc_s0rel_value_PARM_2
   1002 E4            [12] 4181 	clr	a
   1003 F0            [24] 4182 	movx	@dptr,a
   1004 8B 82         [24] 4183 	mov	dpl,r3
   1006 8C 83         [24] 4184 	mov	dph,r4
   1008 8D F0         [24] 4185 	mov	b,r5
   100A EE            [12] 4186 	mov	a,r6
   100B C0 07         [24] 4187 	push	ar7
   100D C0 06         [24] 4188 	push	ar6
   100F C0 05         [24] 4189 	push	ar5
   1011 C0 04         [24] 4190 	push	ar4
   1013 C0 03         [24] 4191 	push	ar3
   1015 12 0E 0C      [24] 4192 	lcall	_uart_calc_s0rel_value
   1018 A9 82         [24] 4193 	mov	r1,dpl
   101A AA 83         [24] 4194 	mov	r2,dph
   101C D0 03         [24] 4195 	pop	ar3
   101E D0 04         [24] 4196 	pop	ar4
   1020 D0 05         [24] 4197 	pop	ar5
   1022 D0 06         [24] 4198 	pop	ar6
                           4199 ;	../src/uart/src/uart_configure_auto_baud_calc.c:64: s0rel_with_smod_set = uart_calc_s0rel_value(baud_rate, 1);
   1024 90 00 6B      [24] 4200 	mov	dptr,#_uart_calc_s0rel_value_PARM_2
   1027 74 01         [12] 4201 	mov	a,#0x01
   1029 F0            [24] 4202 	movx	@dptr,a
   102A 8B 82         [24] 4203 	mov	dpl,r3
   102C 8C 83         [24] 4204 	mov	dph,r4
   102E 8D F0         [24] 4205 	mov	b,r5
   1030 EE            [12] 4206 	mov	a,r6
   1031 C0 06         [24] 4207 	push	ar6
   1033 C0 05         [24] 4208 	push	ar5
   1035 C0 04         [24] 4209 	push	ar4
   1037 C0 03         [24] 4210 	push	ar3
   1039 C0 02         [24] 4211 	push	ar2
   103B C0 01         [24] 4212 	push	ar1
   103D 12 0E 0C      [24] 4213 	lcall	_uart_calc_s0rel_value
   1040 85 82 0C      [24] 4214 	mov	_uart_configure_auto_baud_calc_sloc0_1_0,dpl
   1043 85 83 0D      [24] 4215 	mov	(_uart_configure_auto_baud_calc_sloc0_1_0 + 1),dph
   1046 D0 01         [24] 4216 	pop	ar1
   1048 D0 02         [24] 4217 	pop	ar2
                           4218 ;	../src/uart/src/uart_configure_auto_baud_calc.c:67: calc_br_with_smod_cleared = uart_calc_actual_baud_rate_from_s0rel(s0rel_with_smod_cleared, false);
   104A 90 00 66      [24] 4219 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
   104D E4            [12] 4220 	clr	a
   104E F0            [24] 4221 	movx	@dptr,a
   104F 89 82         [24] 4222 	mov	dpl,r1
   1051 8A 83         [24] 4223 	mov	dph,r2
   1053 C0 02         [24] 4224 	push	ar2
   1055 C0 01         [24] 4225 	push	ar1
   1057 12 0C 8F      [24] 4226 	lcall	_uart_calc_actual_baud_rate_from_s0rel
   105A 85 82 0E      [24] 4227 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,dpl
   105D 85 83 0F      [24] 4228 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),dph
   1060 85 F0 10      [24] 4229 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),b
   1063 F5 11         [12] 4230 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
                           4231 ;	../src/uart/src/uart_configure_auto_baud_calc.c:68: calc_br_with_smod_set = uart_calc_actual_baud_rate_from_s0rel(s0rel_with_smod_set, true);
   1065 90 00 66      [24] 4232 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
   1068 74 01         [12] 4233 	mov	a,#0x01
   106A F0            [24] 4234 	movx	@dptr,a
   106B 85 0C 82      [24] 4235 	mov	dpl,_uart_configure_auto_baud_calc_sloc0_1_0
   106E 85 0D 83      [24] 4236 	mov	dph,(_uart_configure_auto_baud_calc_sloc0_1_0 + 1)
   1071 12 0C 8F      [24] 4237 	lcall	_uart_calc_actual_baud_rate_from_s0rel
   1074 85 82 12      [24] 4238 	mov	_uart_configure_auto_baud_calc_sloc2_1_0,dpl
   1077 85 83 13      [24] 4239 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 1),dph
   107A 85 F0 14      [24] 4240 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 2),b
   107D F5 15         [12] 4241 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 3),a
   107F D0 01         [24] 4242 	pop	ar1
   1081 D0 02         [24] 4243 	pop	ar2
   1083 D0 03         [24] 4244 	pop	ar3
   1085 D0 04         [24] 4245 	pop	ar4
   1087 D0 05         [24] 4246 	pop	ar5
   1089 D0 06         [24] 4247 	pop	ar6
   108B D0 07         [24] 4248 	pop	ar7
                           4249 ;	../src/uart/src/uart_configure_auto_baud_calc.c:71: error_calc_br_with_smod_cleared = (calc_br_with_smod_cleared > baud_rate) ? (calc_br_with_smod_cleared - baud_rate) : (baud_rate - calc_br_with_smod_cleared);
   108D C3            [12] 4250 	clr	c
   108E EB            [12] 4251 	mov	a,r3
   108F 95 0E         [12] 4252 	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
   1091 EC            [12] 4253 	mov	a,r4
   1092 95 0F         [12] 4254 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   1094 ED            [12] 4255 	mov	a,r5
   1095 95 10         [12] 4256 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   1097 EE            [12] 4257 	mov	a,r6
   1098 95 11         [12] 4258 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   109A 50 17         [24] 4259 	jnc	00115$
   109C E5 0E         [12] 4260 	mov	a,_uart_configure_auto_baud_calc_sloc1_1_0
   109E C3            [12] 4261 	clr	c
   109F 9B            [12] 4262 	subb	a,r3
   10A0 F5 16         [12] 4263 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
   10A2 E5 0F         [12] 4264 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   10A4 9C            [12] 4265 	subb	a,r4
   10A5 F5 17         [12] 4266 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
   10A7 E5 10         [12] 4267 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   10A9 9D            [12] 4268 	subb	a,r5
   10AA F5 18         [12] 4269 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
   10AC E5 11         [12] 4270 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   10AE 9E            [12] 4271 	subb	a,r6
   10AF F5 19         [12] 4272 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   10B1 80 15         [24] 4273 	sjmp	00116$
   10B3                    4274 00115$:
   10B3 EB            [12] 4275 	mov	a,r3
   10B4 C3            [12] 4276 	clr	c
   10B5 95 0E         [12] 4277 	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
   10B7 F5 16         [12] 4278 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
   10B9 EC            [12] 4279 	mov	a,r4
   10BA 95 0F         [12] 4280 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   10BC F5 17         [12] 4281 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
   10BE ED            [12] 4282 	mov	a,r5
   10BF 95 10         [12] 4283 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   10C1 F5 18         [12] 4284 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
   10C3 EE            [12] 4285 	mov	a,r6
   10C4 95 11         [12] 4286 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   10C6 F5 19         [12] 4287 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   10C8                    4288 00116$:
                           4289 ;	../src/uart/src/uart_configure_auto_baud_calc.c:72: error_calc_br_with_smod_set = (calc_br_with_smod_set > baud_rate) ? (calc_br_with_smod_set - baud_rate) : (baud_rate - calc_br_with_smod_set);
   10C8 C3            [12] 4290 	clr	c
   10C9 EB            [12] 4291 	mov	a,r3
   10CA 95 12         [12] 4292 	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
   10CC EC            [12] 4293 	mov	a,r4
   10CD 95 13         [12] 4294 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   10CF ED            [12] 4295 	mov	a,r5
   10D0 95 14         [12] 4296 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   10D2 EE            [12] 4297 	mov	a,r6
   10D3 95 15         [12] 4298 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   10D5 50 17         [24] 4299 	jnc	00117$
   10D7 E5 12         [12] 4300 	mov	a,_uart_configure_auto_baud_calc_sloc2_1_0
   10D9 C3            [12] 4301 	clr	c
   10DA 9B            [12] 4302 	subb	a,r3
   10DB F5 0E         [12] 4303 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
   10DD E5 13         [12] 4304 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   10DF 9C            [12] 4305 	subb	a,r4
   10E0 F5 0F         [12] 4306 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
   10E2 E5 14         [12] 4307 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   10E4 9D            [12] 4308 	subb	a,r5
   10E5 F5 10         [12] 4309 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
   10E7 E5 15         [12] 4310 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   10E9 9E            [12] 4311 	subb	a,r6
   10EA F5 11         [12] 4312 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
   10EC 80 15         [24] 4313 	sjmp	00118$
   10EE                    4314 00117$:
   10EE EB            [12] 4315 	mov	a,r3
   10EF C3            [12] 4316 	clr	c
   10F0 95 12         [12] 4317 	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
   10F2 F5 0E         [12] 4318 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
   10F4 EC            [12] 4319 	mov	a,r4
   10F5 95 13         [12] 4320 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   10F7 F5 0F         [12] 4321 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
   10F9 ED            [12] 4322 	mov	a,r5
   10FA 95 14         [12] 4323 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   10FC F5 10         [12] 4324 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
   10FE EE            [12] 4325 	mov	a,r6
   10FF 95 15         [12] 4326 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   1101 F5 11         [12] 4327 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
   1103                    4328 00118$:
                           4329 ;	../src/uart/src/uart_configure_auto_baud_calc.c:75: if(error_calc_br_with_smod_cleared < error_calc_br_with_smod_set)
   1103 C3            [12] 4330 	clr	c
   1104 E5 16         [12] 4331 	mov	a,_uart_configure_auto_baud_calc_sloc3_1_0
   1106 95 0E         [12] 4332 	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
   1108 E5 17         [12] 4333 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   110A 95 0F         [12] 4334 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   110C E5 18         [12] 4335 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   110E 95 10         [12] 4336 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   1110 E5 19         [12] 4337 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   1112 95 11         [12] 4338 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   1114 50 12         [24] 4339 	jnc	00102$
                           4340 ;	../src/uart/src/uart_configure_auto_baud_calc.c:77: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_CLEAR),
   1116 8F 06         [24] 4341 	mov	ar6,r7
   1118 53 06 FB      [24] 4342 	anl	ar6,#0xFB
                           4343 ;	../src/uart/src/uart_configure_auto_baud_calc.c:78: s0rel_with_smod_cleared);
   111B 90 00 63      [24] 4344 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   111E E9            [12] 4345 	mov	a,r1
   111F F0            [24] 4346 	movx	@dptr,a
   1120 EA            [12] 4347 	mov	a,r2
   1121 A3            [24] 4348 	inc	dptr
   1122 F0            [24] 4349 	movx	@dptr,a
   1123 8E 82         [24] 4350 	mov	dpl,r6
   1125 02 0C 31      [24] 4351 	ljmp	_uart_configure_manual_baud_calc
   1128                    4352 00102$:
                           4353 ;	../src/uart/src/uart_configure_auto_baud_calc.c:82: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_SET),
   1128 8F 06         [24] 4354 	mov	ar6,r7
   112A 74 FB         [12] 4355 	mov	a,#0xFB
   112C 5E            [12] 4356 	anl	a,r6
   112D 44 04         [12] 4357 	orl	a,#0x04
   112F FE            [12] 4358 	mov	r6,a
                           4359 ;	../src/uart/src/uart_configure_auto_baud_calc.c:83: s0rel_with_smod_set);
   1130 90 00 63      [24] 4360 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   1133 E5 0C         [12] 4361 	mov	a,_uart_configure_auto_baud_calc_sloc0_1_0
   1135 F0            [24] 4362 	movx	@dptr,a
   1136 E5 0D         [12] 4363 	mov	a,(_uart_configure_auto_baud_calc_sloc0_1_0 + 1)
   1138 A3            [24] 4364 	inc	dptr
   1139 F0            [24] 4365 	movx	@dptr,a
   113A 8E 82         [24] 4366 	mov	dpl,r6
   113C 02 0C 31      [24] 4367 	ljmp	_uart_configure_manual_baud_calc
   113F                    4368 00108$:
                           4369 ;	../src/uart/src/uart_configure_auto_baud_calc.c:91: th1_with_smod_cleared = uart_calc_th1_value(baud_rate, 0);
   113F 90 00 75      [24] 4370 	mov	dptr,#_uart_configure_auto_baud_calc_PARM_2
   1142 E0            [24] 4371 	movx	a,@dptr
   1143 FB            [12] 4372 	mov	r3,a
   1144 A3            [24] 4373 	inc	dptr
   1145 E0            [24] 4374 	movx	a,@dptr
   1146 FC            [12] 4375 	mov	r4,a
   1147 A3            [24] 4376 	inc	dptr
   1148 E0            [24] 4377 	movx	a,@dptr
   1149 FD            [12] 4378 	mov	r5,a
   114A A3            [24] 4379 	inc	dptr
   114B E0            [24] 4380 	movx	a,@dptr
   114C FE            [12] 4381 	mov	r6,a
   114D 90 00 70      [24] 4382 	mov	dptr,#_uart_calc_th1_value_PARM_2
   1150 E4            [12] 4383 	clr	a
   1151 F0            [24] 4384 	movx	@dptr,a
   1152 8B 82         [24] 4385 	mov	dpl,r3
   1154 8C 83         [24] 4386 	mov	dph,r4
   1156 8D F0         [24] 4387 	mov	b,r5
   1158 EE            [12] 4388 	mov	a,r6
   1159 C0 07         [24] 4389 	push	ar7
   115B C0 06         [24] 4390 	push	ar6
   115D C0 05         [24] 4391 	push	ar5
   115F C0 04         [24] 4392 	push	ar4
   1161 C0 03         [24] 4393 	push	ar3
   1163 12 0E EF      [24] 4394 	lcall	_uart_calc_th1_value
   1166 AA 82         [24] 4395 	mov	r2,dpl
   1168 D0 03         [24] 4396 	pop	ar3
   116A D0 04         [24] 4397 	pop	ar4
   116C D0 05         [24] 4398 	pop	ar5
   116E D0 06         [24] 4399 	pop	ar6
                           4400 ;	../src/uart/src/uart_configure_auto_baud_calc.c:92: th1_with_smod_set = uart_calc_th1_value(baud_rate, 1);
   1170 90 00 70      [24] 4401 	mov	dptr,#_uart_calc_th1_value_PARM_2
   1173 74 01         [12] 4402 	mov	a,#0x01
   1175 F0            [24] 4403 	movx	@dptr,a
   1176 8B 82         [24] 4404 	mov	dpl,r3
   1178 8C 83         [24] 4405 	mov	dph,r4
   117A 8D F0         [24] 4406 	mov	b,r5
   117C EE            [12] 4407 	mov	a,r6
   117D C0 06         [24] 4408 	push	ar6
   117F C0 05         [24] 4409 	push	ar5
   1181 C0 04         [24] 4410 	push	ar4
   1183 C0 03         [24] 4411 	push	ar3
   1185 C0 02         [24] 4412 	push	ar2
   1187 12 0E EF      [24] 4413 	lcall	_uart_calc_th1_value
   118A A9 82         [24] 4414 	mov	r1,dpl
   118C D0 02         [24] 4415 	pop	ar2
                           4416 ;	../src/uart/src/uart_configure_auto_baud_calc.c:95: calc_br_with_smod_cleared = uart_calc_actual_baud_rate_from_th1(th1_with_smod_cleared, false);
   118E 90 00 69      [24] 4417 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
   1191 E4            [12] 4418 	clr	a
   1192 F0            [24] 4419 	movx	@dptr,a
   1193 8A 82         [24] 4420 	mov	dpl,r2
   1195 C0 02         [24] 4421 	push	ar2
   1197 C0 01         [24] 4422 	push	ar1
   1199 12 0D 48      [24] 4423 	lcall	_uart_calc_actual_baud_rate_from_th1
   119C 85 82 16      [24] 4424 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,dpl
   119F 85 83 17      [24] 4425 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),dph
   11A2 85 F0 18      [24] 4426 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),b
   11A5 F5 19         [12] 4427 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   11A7 D0 01         [24] 4428 	pop	ar1
                           4429 ;	../src/uart/src/uart_configure_auto_baud_calc.c:96: calc_br_with_smod_set = uart_calc_actual_baud_rate_from_th1(th1_with_smod_set, true);
   11A9 90 00 69      [24] 4430 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
   11AC 74 01         [12] 4431 	mov	a,#0x01
   11AE F0            [24] 4432 	movx	@dptr,a
   11AF 89 82         [24] 4433 	mov	dpl,r1
   11B1 C0 01         [24] 4434 	push	ar1
   11B3 12 0D 48      [24] 4435 	lcall	_uart_calc_actual_baud_rate_from_th1
   11B6 85 82 12      [24] 4436 	mov	_uart_configure_auto_baud_calc_sloc2_1_0,dpl
   11B9 85 83 13      [24] 4437 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 1),dph
   11BC 85 F0 14      [24] 4438 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 2),b
   11BF F5 15         [12] 4439 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 3),a
   11C1 D0 01         [24] 4440 	pop	ar1
   11C3 D0 02         [24] 4441 	pop	ar2
   11C5 D0 03         [24] 4442 	pop	ar3
   11C7 D0 04         [24] 4443 	pop	ar4
   11C9 D0 05         [24] 4444 	pop	ar5
   11CB D0 06         [24] 4445 	pop	ar6
   11CD D0 07         [24] 4446 	pop	ar7
                           4447 ;	../src/uart/src/uart_configure_auto_baud_calc.c:99: error_calc_br_with_smod_cleared = (calc_br_with_smod_cleared > baud_rate) ? (calc_br_with_smod_cleared - baud_rate) : (baud_rate - calc_br_with_smod_cleared);
   11CF C3            [12] 4448 	clr	c
   11D0 EB            [12] 4449 	mov	a,r3
   11D1 95 16         [12] 4450 	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
   11D3 EC            [12] 4451 	mov	a,r4
   11D4 95 17         [12] 4452 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   11D6 ED            [12] 4453 	mov	a,r5
   11D7 95 18         [12] 4454 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   11D9 EE            [12] 4455 	mov	a,r6
   11DA 95 19         [12] 4456 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   11DC 50 17         [24] 4457 	jnc	00119$
   11DE E5 16         [12] 4458 	mov	a,_uart_configure_auto_baud_calc_sloc3_1_0
   11E0 C3            [12] 4459 	clr	c
   11E1 9B            [12] 4460 	subb	a,r3
   11E2 F5 0E         [12] 4461 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
   11E4 E5 17         [12] 4462 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   11E6 9C            [12] 4463 	subb	a,r4
   11E7 F5 0F         [12] 4464 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
   11E9 E5 18         [12] 4465 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   11EB 9D            [12] 4466 	subb	a,r5
   11EC F5 10         [12] 4467 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
   11EE E5 19         [12] 4468 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   11F0 9E            [12] 4469 	subb	a,r6
   11F1 F5 11         [12] 4470 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
   11F3 80 15         [24] 4471 	sjmp	00120$
   11F5                    4472 00119$:
   11F5 EB            [12] 4473 	mov	a,r3
   11F6 C3            [12] 4474 	clr	c
   11F7 95 16         [12] 4475 	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
   11F9 F5 0E         [12] 4476 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
   11FB EC            [12] 4477 	mov	a,r4
   11FC 95 17         [12] 4478 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   11FE F5 0F         [12] 4479 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
   1200 ED            [12] 4480 	mov	a,r5
   1201 95 18         [12] 4481 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   1203 F5 10         [12] 4482 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
   1205 EE            [12] 4483 	mov	a,r6
   1206 95 19         [12] 4484 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   1208 F5 11         [12] 4485 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
   120A                    4486 00120$:
                           4487 ;	../src/uart/src/uart_configure_auto_baud_calc.c:100: error_calc_br_with_smod_set = (calc_br_with_smod_set > baud_rate) ? (calc_br_with_smod_set - baud_rate) : (baud_rate - calc_br_with_smod_set);
   120A C3            [12] 4488 	clr	c
   120B EB            [12] 4489 	mov	a,r3
   120C 95 12         [12] 4490 	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
   120E EC            [12] 4491 	mov	a,r4
   120F 95 13         [12] 4492 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   1211 ED            [12] 4493 	mov	a,r5
   1212 95 14         [12] 4494 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   1214 EE            [12] 4495 	mov	a,r6
   1215 95 15         [12] 4496 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   1217 50 17         [24] 4497 	jnc	00121$
   1219 E5 12         [12] 4498 	mov	a,_uart_configure_auto_baud_calc_sloc2_1_0
   121B C3            [12] 4499 	clr	c
   121C 9B            [12] 4500 	subb	a,r3
   121D F5 16         [12] 4501 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
   121F E5 13         [12] 4502 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   1221 9C            [12] 4503 	subb	a,r4
   1222 F5 17         [12] 4504 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
   1224 E5 14         [12] 4505 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   1226 9D            [12] 4506 	subb	a,r5
   1227 F5 18         [12] 4507 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
   1229 E5 15         [12] 4508 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   122B 9E            [12] 4509 	subb	a,r6
   122C F5 19         [12] 4510 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   122E 80 15         [24] 4511 	sjmp	00122$
   1230                    4512 00121$:
   1230 EB            [12] 4513 	mov	a,r3
   1231 C3            [12] 4514 	clr	c
   1232 95 12         [12] 4515 	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
   1234 F5 16         [12] 4516 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
   1236 EC            [12] 4517 	mov	a,r4
   1237 95 13         [12] 4518 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   1239 F5 17         [12] 4519 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
   123B ED            [12] 4520 	mov	a,r5
   123C 95 14         [12] 4521 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   123E F5 18         [12] 4522 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
   1240 EE            [12] 4523 	mov	a,r6
   1241 95 15         [12] 4524 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   1243 F5 19         [12] 4525 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   1245                    4526 00122$:
                           4527 ;	../src/uart/src/uart_configure_auto_baud_calc.c:103: if(error_calc_br_with_smod_cleared < error_calc_br_with_smod_set)
   1245 C3            [12] 4528 	clr	c
   1246 E5 0E         [12] 4529 	mov	a,_uart_configure_auto_baud_calc_sloc1_1_0
   1248 95 16         [12] 4530 	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
   124A E5 0F         [12] 4531 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   124C 95 17         [12] 4532 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   124E E5 10         [12] 4533 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   1250 95 18         [12] 4534 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   1252 E5 11         [12] 4535 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   1254 95 19         [12] 4536 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   1256 50 12         [24] 4537 	jnc	00105$
                           4538 ;	../src/uart/src/uart_configure_auto_baud_calc.c:105: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_CLEAR),
   1258 8F 06         [24] 4539 	mov	ar6,r7
   125A 53 06 FB      [24] 4540 	anl	ar6,#0xFB
                           4541 ;	../src/uart/src/uart_configure_auto_baud_calc.c:106: (uint16_t)th1_with_smod_cleared);
   125D 90 00 63      [24] 4542 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   1260 EA            [12] 4543 	mov	a,r2
   1261 F0            [24] 4544 	movx	@dptr,a
   1262 E4            [12] 4545 	clr	a
   1263 A3            [24] 4546 	inc	dptr
   1264 F0            [24] 4547 	movx	@dptr,a
   1265 8E 82         [24] 4548 	mov	dpl,r6
   1267 02 0C 31      [24] 4549 	ljmp	_uart_configure_manual_baud_calc
   126A                    4550 00105$:
                           4551 ;	../src/uart/src/uart_configure_auto_baud_calc.c:110: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_SET),
   126A 74 FB         [12] 4552 	mov	a,#0xFB
   126C 5F            [12] 4553 	anl	a,r7
   126D 44 04         [12] 4554 	orl	a,#0x04
   126F FF            [12] 4555 	mov	r7,a
                           4556 ;	../src/uart/src/uart_configure_auto_baud_calc.c:111: (uint16_t)th1_with_smod_set);
   1270 90 00 63      [24] 4557 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   1273 E9            [12] 4558 	mov	a,r1
   1274 F0            [24] 4559 	movx	@dptr,a
   1275 E4            [12] 4560 	clr	a
   1276 A3            [24] 4561 	inc	dptr
   1277 F0            [24] 4562 	movx	@dptr,a
   1278 8F 82         [24] 4563 	mov	dpl,r7
   127A 02 0C 31      [24] 4564 	ljmp	_uart_configure_manual_baud_calc
                           4565 ;------------------------------------------------------------
                           4566 ;Allocation info for local variables in function 'radiobegin'
                           4567 ;------------------------------------------------------------
                           4568 ;setup                     Allocated with name '_radiobegin_setup_1_227'
                           4569 ;------------------------------------------------------------
                           4570 ;	../nRFLE.c:22: void radiobegin() {
                           4571 ;	-----------------------------------------
                           4572 ;	 function radiobegin
                           4573 ;	-----------------------------------------
   127D                    4574 _radiobegin:
                           4575 ;	../nRFLE.c:26: rf_spi_configure_enable();
   127D 12 01 76      [24] 4576 	lcall	_rf_spi_configure_enable
                           4577 ;	../nRFLE.c:28: setup = 255; // setup_retr setRetries 15*16+15
   1280 90 00 7A      [24] 4578 	mov	dptr,#_radiobegin_setup_1_227
   1283 74 FF         [12] 4579 	mov	a,#0xFF
   1285 F0            [24] 4580 	movx	@dptr,a
                           4581 ;	../nRFLE.c:29: rf_write_register(RF_SETUP_RETR, &setup, 1);
   1286 90 00 08      [24] 4582 	mov	dptr,#_rf_write_register_PARM_2
   1289 74 7A         [12] 4583 	mov	a,#_radiobegin_setup_1_227
   128B F0            [24] 4584 	movx	@dptr,a
   128C 74 00         [12] 4585 	mov	a,#(_radiobegin_setup_1_227 >> 8)
   128E A3            [24] 4586 	inc	dptr
   128F F0            [24] 4587 	movx	@dptr,a
   1290 E4            [12] 4588 	clr	a
   1291 A3            [24] 4589 	inc	dptr
   1292 F0            [24] 4590 	movx	@dptr,a
   1293 90 00 0B      [24] 4591 	mov	dptr,#_rf_write_register_PARM_3
   1296 74 01         [12] 4592 	mov	a,#0x01
   1298 F0            [24] 4593 	movx	@dptr,a
   1299 E4            [12] 4594 	clr	a
   129A A3            [24] 4595 	inc	dptr
   129B F0            [24] 4596 	movx	@dptr,a
   129C 75 82 04      [24] 4597 	mov	dpl,#0x04
   129F 02 01 39      [24] 4598 	ljmp	_rf_write_register
                           4599 ;------------------------------------------------------------
                           4600 ;Allocation info for local variables in function 'setChannel'
                           4601 ;------------------------------------------------------------
                           4602 ;channel                   Allocated with name '_setChannel_channel_1_228'
                           4603 ;------------------------------------------------------------
                           4604 ;	../nRFLE.c:35: void setChannel(unsigned char channel){
                           4605 ;	-----------------------------------------
                           4606 ;	 function setChannel
                           4607 ;	-----------------------------------------
   12A2                    4608 _setChannel:
   12A2 E5 82         [12] 4609 	mov	a,dpl
   12A4 90 00 7B      [24] 4610 	mov	dptr,#_setChannel_channel_1_228
   12A7 F0            [24] 4611 	movx	@dptr,a
                           4612 ;	../nRFLE.c:36: rf_write_register(RF_RF_CH, &channel, 1);
   12A8 90 00 08      [24] 4613 	mov	dptr,#_rf_write_register_PARM_2
   12AB 74 7B         [12] 4614 	mov	a,#_setChannel_channel_1_228
   12AD F0            [24] 4615 	movx	@dptr,a
   12AE 74 00         [12] 4616 	mov	a,#(_setChannel_channel_1_228 >> 8)
   12B0 A3            [24] 4617 	inc	dptr
   12B1 F0            [24] 4618 	movx	@dptr,a
   12B2 E4            [12] 4619 	clr	a
   12B3 A3            [24] 4620 	inc	dptr
   12B4 F0            [24] 4621 	movx	@dptr,a
   12B5 90 00 0B      [24] 4622 	mov	dptr,#_rf_write_register_PARM_3
   12B8 74 01         [12] 4623 	mov	a,#0x01
   12BA F0            [24] 4624 	movx	@dptr,a
   12BB E4            [12] 4625 	clr	a
   12BC A3            [24] 4626 	inc	dptr
   12BD F0            [24] 4627 	movx	@dptr,a
   12BE 75 82 05      [24] 4628 	mov	dpl,#0x05
   12C1 02 01 39      [24] 4629 	ljmp	_rf_write_register
                           4630 ;------------------------------------------------------------
                           4631 ;Allocation info for local variables in function 'setDataRate'
                           4632 ;------------------------------------------------------------
                           4633 ;speed                     Allocated with name '_setDataRate_speed_1_230'
                           4634 ;buffer                    Allocated with name '_setDataRate_buffer_1_231'
                           4635 ;------------------------------------------------------------
                           4636 ;	../nRFLE.c:41: void setDataRate(unsigned char speed){
                           4637 ;	-----------------------------------------
                           4638 ;	 function setDataRate
                           4639 ;	-----------------------------------------
   12C4                    4640 _setDataRate:
   12C4 E5 82         [12] 4641 	mov	a,dpl
   12C6 90 00 7C      [24] 4642 	mov	dptr,#_setDataRate_speed_1_230
   12C9 F0            [24] 4643 	movx	@dptr,a
                           4644 ;	../nRFLE.c:43: rf_read_register(RF_RF_SETUP,&buffer,1);
   12CA 90 00 28      [24] 4645 	mov	dptr,#_rf_read_register_PARM_2
   12CD 74 7D         [12] 4646 	mov	a,#_setDataRate_buffer_1_231
   12CF F0            [24] 4647 	movx	@dptr,a
   12D0 74 00         [12] 4648 	mov	a,#(_setDataRate_buffer_1_231 >> 8)
   12D2 A3            [24] 4649 	inc	dptr
   12D3 F0            [24] 4650 	movx	@dptr,a
   12D4 E4            [12] 4651 	clr	a
   12D5 A3            [24] 4652 	inc	dptr
   12D6 F0            [24] 4653 	movx	@dptr,a
   12D7 90 00 2B      [24] 4654 	mov	dptr,#_rf_read_register_PARM_3
   12DA 74 01         [12] 4655 	mov	a,#0x01
   12DC F0            [24] 4656 	movx	@dptr,a
   12DD E4            [12] 4657 	clr	a
   12DE A3            [24] 4658 	inc	dptr
   12DF F0            [24] 4659 	movx	@dptr,a
   12E0 75 82 06      [24] 4660 	mov	dpl,#0x06
   12E3 12 03 ED      [24] 4661 	lcall	_rf_read_register
                           4662 ;	../nRFLE.c:45: buffer &= ~(_BV(RF_DR_LOW) | _BV(RF_DR_HIGH)) ;
   12E6 90 00 7D      [24] 4663 	mov	dptr,#_setDataRate_buffer_1_231
   12E9 E0            [24] 4664 	movx	a,@dptr
   12EA 54 D7         [12] 4665 	anl	a,#0xD7
   12EC F0            [24] 4666 	movx	@dptr,a
                           4667 ;	../nRFLE.c:47: if( speed == 1 )	 buffer |= _BV(RF_DR_LOW);
   12ED 90 00 7C      [24] 4668 	mov	dptr,#_setDataRate_speed_1_230
   12F0 E0            [24] 4669 	movx	a,@dptr
   12F1 FF            [12] 4670 	mov	r7,a
   12F2 BF 01 0A      [24] 4671 	cjne	r7,#0x01,00104$
   12F5 90 00 7D      [24] 4672 	mov	dptr,#_setDataRate_buffer_1_231
   12F8 E0            [24] 4673 	movx	a,@dptr
   12F9 FE            [12] 4674 	mov	r6,a
   12FA 44 20         [12] 4675 	orl	a,#0x20
   12FC F0            [24] 4676 	movx	@dptr,a
   12FD 80 0B         [24] 4677 	sjmp	00105$
   12FF                    4678 00104$:
                           4679 ;	../nRFLE.c:49: else if ( speed == 3 ) buffer |= _BV(RF_DR_HIGH);
   12FF BF 03 08      [24] 4680 	cjne	r7,#0x03,00105$
   1302 90 00 7D      [24] 4681 	mov	dptr,#_setDataRate_buffer_1_231
   1305 E0            [24] 4682 	movx	a,@dptr
   1306 FF            [12] 4683 	mov	r7,a
   1307 44 08         [12] 4684 	orl	a,#0x08
   1309 F0            [24] 4685 	movx	@dptr,a
   130A                    4686 00105$:
                           4687 ;	../nRFLE.c:51: rf_write_register(RF_RF_SETUP,&buffer,1 ) ;
   130A 90 00 08      [24] 4688 	mov	dptr,#_rf_write_register_PARM_2
   130D 74 7D         [12] 4689 	mov	a,#_setDataRate_buffer_1_231
   130F F0            [24] 4690 	movx	@dptr,a
   1310 74 00         [12] 4691 	mov	a,#(_setDataRate_buffer_1_231 >> 8)
   1312 A3            [24] 4692 	inc	dptr
   1313 F0            [24] 4693 	movx	@dptr,a
   1314 E4            [12] 4694 	clr	a
   1315 A3            [24] 4695 	inc	dptr
   1316 F0            [24] 4696 	movx	@dptr,a
   1317 90 00 0B      [24] 4697 	mov	dptr,#_rf_write_register_PARM_3
   131A 74 01         [12] 4698 	mov	a,#0x01
   131C F0            [24] 4699 	movx	@dptr,a
   131D E4            [12] 4700 	clr	a
   131E A3            [24] 4701 	inc	dptr
   131F F0            [24] 4702 	movx	@dptr,a
   1320 75 82 06      [24] 4703 	mov	dpl,#0x06
   1323 02 01 39      [24] 4704 	ljmp	_rf_write_register
                           4705 ;------------------------------------------------------------
                           4706 ;Allocation info for local variables in function 'setAutoAck'
                           4707 ;------------------------------------------------------------
                           4708 ;enable                    Allocated with name '_setAutoAck_enable_1_232'
                           4709 ;buffer                    Allocated with name '_setAutoAck_buffer_1_233'
                           4710 ;------------------------------------------------------------
                           4711 ;	../nRFLE.c:56: void setAutoAck(unsigned char enable)
                           4712 ;	-----------------------------------------
                           4713 ;	 function setAutoAck
                           4714 ;	-----------------------------------------
   1326                    4715 _setAutoAck:
   1326 E5 82         [12] 4716 	mov	a,dpl
                           4717 ;	../nRFLE.c:60: if (enable==1) buffer=63;
   1328 90 00 7E      [24] 4718 	mov	dptr,#_setAutoAck_enable_1_232
   132B F0            [24] 4719 	movx	@dptr,a
   132C FF            [12] 4720 	mov	r7,a
   132D BF 01 08      [24] 4721 	cjne	r7,#0x01,00102$
   1330 90 00 7F      [24] 4722 	mov	dptr,#_setAutoAck_buffer_1_233
   1333 74 3F         [12] 4723 	mov	a,#0x3F
   1335 F0            [24] 4724 	movx	@dptr,a
   1336 80 05         [24] 4725 	sjmp	00103$
   1338                    4726 00102$:
                           4727 ;	../nRFLE.c:61: else        buffer=0;
   1338 90 00 7F      [24] 4728 	mov	dptr,#_setAutoAck_buffer_1_233
   133B E4            [12] 4729 	clr	a
   133C F0            [24] 4730 	movx	@dptr,a
   133D                    4731 00103$:
                           4732 ;	../nRFLE.c:62: rf_write_register(RF_EN_AA, &buffer,1);
   133D 90 00 08      [24] 4733 	mov	dptr,#_rf_write_register_PARM_2
   1340 74 7F         [12] 4734 	mov	a,#_setAutoAck_buffer_1_233
   1342 F0            [24] 4735 	movx	@dptr,a
   1343 74 00         [12] 4736 	mov	a,#(_setAutoAck_buffer_1_233 >> 8)
   1345 A3            [24] 4737 	inc	dptr
   1346 F0            [24] 4738 	movx	@dptr,a
   1347 E4            [12] 4739 	clr	a
   1348 A3            [24] 4740 	inc	dptr
   1349 F0            [24] 4741 	movx	@dptr,a
   134A 90 00 0B      [24] 4742 	mov	dptr,#_rf_write_register_PARM_3
   134D 74 01         [12] 4743 	mov	a,#0x01
   134F F0            [24] 4744 	movx	@dptr,a
   1350 E4            [12] 4745 	clr	a
   1351 A3            [24] 4746 	inc	dptr
   1352 F0            [24] 4747 	movx	@dptr,a
   1353 75 82 01      [24] 4748 	mov	dpl,#0x01
   1356 02 01 39      [24] 4749 	ljmp	_rf_write_register
                           4750 ;------------------------------------------------------------
                           4751 ;Allocation info for local variables in function 'setCRCLength'
                           4752 ;------------------------------------------------------------
                           4753 ;length                    Allocated with name '_setCRCLength_length_1_234'
                           4754 ;buffer                    Allocated with name '_setCRCLength_buffer_1_235'
                           4755 ;------------------------------------------------------------
                           4756 ;	../nRFLE.c:67: void setCRCLength(unsigned char length)
                           4757 ;	-----------------------------------------
                           4758 ;	 function setCRCLength
                           4759 ;	-----------------------------------------
   1359                    4760 _setCRCLength:
   1359 E5 82         [12] 4761 	mov	a,dpl
   135B 90 00 80      [24] 4762 	mov	dptr,#_setCRCLength_length_1_234
   135E F0            [24] 4763 	movx	@dptr,a
                           4764 ;	../nRFLE.c:71: rf_read_register(RF_CONFIG,&buffer,1);
   135F 90 00 28      [24] 4765 	mov	dptr,#_rf_read_register_PARM_2
   1362 74 81         [12] 4766 	mov	a,#_setCRCLength_buffer_1_235
   1364 F0            [24] 4767 	movx	@dptr,a
   1365 74 00         [12] 4768 	mov	a,#(_setCRCLength_buffer_1_235 >> 8)
   1367 A3            [24] 4769 	inc	dptr
   1368 F0            [24] 4770 	movx	@dptr,a
   1369 E4            [12] 4771 	clr	a
   136A A3            [24] 4772 	inc	dptr
   136B F0            [24] 4773 	movx	@dptr,a
   136C 90 00 2B      [24] 4774 	mov	dptr,#_rf_read_register_PARM_3
   136F 74 01         [12] 4775 	mov	a,#0x01
   1371 F0            [24] 4776 	movx	@dptr,a
   1372 E4            [12] 4777 	clr	a
   1373 A3            [24] 4778 	inc	dptr
   1374 F0            [24] 4779 	movx	@dptr,a
   1375 75 82 00      [24] 4780 	mov	dpl,#0x00
   1378 12 03 ED      [24] 4781 	lcall	_rf_read_register
                           4782 ;	../nRFLE.c:73: buffer = buffer & ~( _BV(RF_CRCO) | _BV(RF_EN_CRC)) ;
   137B 90 00 81      [24] 4783 	mov	dptr,#_setCRCLength_buffer_1_235
   137E E0            [24] 4784 	movx	a,@dptr
   137F 54 F3         [12] 4785 	anl	a,#0xF3
   1381 F0            [24] 4786 	movx	@dptr,a
                           4787 ;	../nRFLE.c:75: if (length==1) buffer |= _BV(RF_EN_CRC);
   1382 90 00 80      [24] 4788 	mov	dptr,#_setCRCLength_length_1_234
   1385 E0            [24] 4789 	movx	a,@dptr
   1386 FF            [12] 4790 	mov	r7,a
   1387 BF 01 0A      [24] 4791 	cjne	r7,#0x01,00104$
   138A 90 00 81      [24] 4792 	mov	dptr,#_setCRCLength_buffer_1_235
   138D E0            [24] 4793 	movx	a,@dptr
   138E FE            [12] 4794 	mov	r6,a
   138F 44 08         [12] 4795 	orl	a,#0x08
   1391 F0            [24] 4796 	movx	@dptr,a
   1392 80 0B         [24] 4797 	sjmp	00105$
   1394                    4798 00104$:
                           4799 ;	../nRFLE.c:76: else if (length==2) buffer |= _BV(RF_EN_CRC) | _BV( RF_CRCO );
   1394 BF 02 08      [24] 4800 	cjne	r7,#0x02,00105$
   1397 90 00 81      [24] 4801 	mov	dptr,#_setCRCLength_buffer_1_235
   139A E0            [24] 4802 	movx	a,@dptr
   139B FF            [12] 4803 	mov	r7,a
   139C 44 0C         [12] 4804 	orl	a,#0x0C
   139E F0            [24] 4805 	movx	@dptr,a
   139F                    4806 00105$:
                           4807 ;	../nRFLE.c:78: buffer |=1<<PWR_UP;
   139F 90 00 81      [24] 4808 	mov	dptr,#_setCRCLength_buffer_1_235
   13A2 E0            [24] 4809 	movx	a,@dptr
   13A3 44 02         [12] 4810 	orl	a,#0x02
   13A5 F0            [24] 4811 	movx	@dptr,a
                           4812 ;	../nRFLE.c:80: rf_write_register(RF_CONFIG,&buffer,1 ) ;
   13A6 90 00 08      [24] 4813 	mov	dptr,#_rf_write_register_PARM_2
   13A9 74 81         [12] 4814 	mov	a,#_setCRCLength_buffer_1_235
   13AB F0            [24] 4815 	movx	@dptr,a
   13AC 74 00         [12] 4816 	mov	a,#(_setCRCLength_buffer_1_235 >> 8)
   13AE A3            [24] 4817 	inc	dptr
   13AF F0            [24] 4818 	movx	@dptr,a
   13B0 E4            [12] 4819 	clr	a
   13B1 A3            [24] 4820 	inc	dptr
   13B2 F0            [24] 4821 	movx	@dptr,a
   13B3 90 00 0B      [24] 4822 	mov	dptr,#_rf_write_register_PARM_3
   13B6 74 01         [12] 4823 	mov	a,#0x01
   13B8 F0            [24] 4824 	movx	@dptr,a
   13B9 E4            [12] 4825 	clr	a
   13BA A3            [24] 4826 	inc	dptr
   13BB F0            [24] 4827 	movx	@dptr,a
   13BC 75 82 00      [24] 4828 	mov	dpl,#0x00
   13BF 02 01 39      [24] 4829 	ljmp	_rf_write_register
                           4830 ;------------------------------------------------------------
                           4831 ;Allocation info for local variables in function 'setPALevel'
                           4832 ;------------------------------------------------------------
                           4833 ;level                     Allocated with name '_setPALevel_level_1_236'
                           4834 ;setup                     Allocated with name '_setPALevel_setup_1_237'
                           4835 ;------------------------------------------------------------
                           4836 ;	../nRFLE.c:84: void setPALevel(unsigned char level)
                           4837 ;	-----------------------------------------
                           4838 ;	 function setPALevel
                           4839 ;	-----------------------------------------
   13C2                    4840 _setPALevel:
                           4841 ;	../nRFLE.c:88: rf_read_register(RF_RF_SETUP,&setup,1) ;
   13C2 90 00 28      [24] 4842 	mov	dptr,#_rf_read_register_PARM_2
   13C5 74 82         [12] 4843 	mov	a,#_setPALevel_setup_1_237
   13C7 F0            [24] 4844 	movx	@dptr,a
   13C8 74 00         [12] 4845 	mov	a,#(_setPALevel_setup_1_237 >> 8)
   13CA A3            [24] 4846 	inc	dptr
   13CB F0            [24] 4847 	movx	@dptr,a
   13CC E4            [12] 4848 	clr	a
   13CD A3            [24] 4849 	inc	dptr
   13CE F0            [24] 4850 	movx	@dptr,a
   13CF 90 00 2B      [24] 4851 	mov	dptr,#_rf_read_register_PARM_3
   13D2 74 01         [12] 4852 	mov	a,#0x01
   13D4 F0            [24] 4853 	movx	@dptr,a
   13D5 E4            [12] 4854 	clr	a
   13D6 A3            [24] 4855 	inc	dptr
   13D7 F0            [24] 4856 	movx	@dptr,a
   13D8 75 82 06      [24] 4857 	mov	dpl,#0x06
   13DB 12 03 ED      [24] 4858 	lcall	_rf_read_register
                           4859 ;	../nRFLE.c:90: setup &= ~(_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH)) ;
   13DE 90 00 82      [24] 4860 	mov	dptr,#_setPALevel_setup_1_237
   13E1 E0            [24] 4861 	movx	a,@dptr
   13E2 54 F9         [12] 4862 	anl	a,#0xF9
   13E4 F0            [24] 4863 	movx	@dptr,a
                           4864 ;	../nRFLE.c:93: rf_write_register(RF_RF_SETUP,&setup,1);
   13E5 90 00 08      [24] 4865 	mov	dptr,#_rf_write_register_PARM_2
   13E8 74 82         [12] 4866 	mov	a,#_setPALevel_setup_1_237
   13EA F0            [24] 4867 	movx	@dptr,a
   13EB 74 00         [12] 4868 	mov	a,#(_setPALevel_setup_1_237 >> 8)
   13ED A3            [24] 4869 	inc	dptr
   13EE F0            [24] 4870 	movx	@dptr,a
   13EF E4            [12] 4871 	clr	a
   13F0 A3            [24] 4872 	inc	dptr
   13F1 F0            [24] 4873 	movx	@dptr,a
   13F2 90 00 0B      [24] 4874 	mov	dptr,#_rf_write_register_PARM_3
   13F5 74 01         [12] 4875 	mov	a,#0x01
   13F7 F0            [24] 4876 	movx	@dptr,a
   13F8 E4            [12] 4877 	clr	a
   13F9 A3            [24] 4878 	inc	dptr
   13FA F0            [24] 4879 	movx	@dptr,a
   13FB 75 82 06      [24] 4880 	mov	dpl,#0x06
   13FE 02 01 39      [24] 4881 	ljmp	_rf_write_register
                           4882 ;------------------------------------------------------------
                           4883 ;Allocation info for local variables in function 'openAllPipe'
                           4884 ;------------------------------------------------------------
                           4885 ;buffer                    Allocated with name '_openAllPipe_buffer_1_238'
                           4886 ;setup                     Allocated with name '_openAllPipe_setup_1_238'
                           4887 ;------------------------------------------------------------
                           4888 ;	../nRFLE.c:101: void openAllPipe()
                           4889 ;	-----------------------------------------
                           4890 ;	 function openAllPipe
                           4891 ;	-----------------------------------------
   1401                    4892 _openAllPipe:
                           4893 ;	../nRFLE.c:106: buffer[1]=adr1;
   1401 90 00 84      [24] 4894 	mov	dptr,#(_openAllPipe_buffer_1_238 + 0x0001)
   1404 74 F0         [12] 4895 	mov	a,#0xF0
   1406 F0            [24] 4896 	movx	@dptr,a
                           4897 ;	../nRFLE.c:107: buffer[2]=adr2;
   1407 90 00 85      [24] 4898 	mov	dptr,#(_openAllPipe_buffer_1_238 + 0x0002)
   140A 74 F0         [12] 4899 	mov	a,#0xF0
   140C F0            [24] 4900 	movx	@dptr,a
                           4901 ;	../nRFLE.c:108: buffer[3]=adr3;
   140D 90 00 86      [24] 4902 	mov	dptr,#(_openAllPipe_buffer_1_238 + 0x0003)
   1410 74 F0         [12] 4903 	mov	a,#0xF0
   1412 F0            [24] 4904 	movx	@dptr,a
                           4905 ;	../nRFLE.c:109: buffer[4]=adr4;
   1413 90 00 87      [24] 4906 	mov	dptr,#(_openAllPipe_buffer_1_238 + 0x0004)
   1416 74 F0         [12] 4907 	mov	a,#0xF0
   1418 F0            [24] 4908 	movx	@dptr,a
                           4909 ;	../nRFLE.c:111: setup = 2; // en_rxaddr ,биты включения каналов B00000010 на прием
   1419 90 00 88      [24] 4910 	mov	dptr,#_openAllPipe_setup_1_238
   141C 74 02         [12] 4911 	mov	a,#0x02
   141E F0            [24] 4912 	movx	@dptr,a
                           4913 ;	../nRFLE.c:112: rf_write_register(RF_EN_RXADDR, &setup, 1);
   141F 90 00 08      [24] 4914 	mov	dptr,#_rf_write_register_PARM_2
   1422 74 88         [12] 4915 	mov	a,#_openAllPipe_setup_1_238
   1424 F0            [24] 4916 	movx	@dptr,a
   1425 74 00         [12] 4917 	mov	a,#(_openAllPipe_setup_1_238 >> 8)
   1427 A3            [24] 4918 	inc	dptr
   1428 F0            [24] 4919 	movx	@dptr,a
   1429 E4            [12] 4920 	clr	a
   142A A3            [24] 4921 	inc	dptr
   142B F0            [24] 4922 	movx	@dptr,a
   142C 90 00 0B      [24] 4923 	mov	dptr,#_rf_write_register_PARM_3
   142F 74 01         [12] 4924 	mov	a,#0x01
   1431 F0            [24] 4925 	movx	@dptr,a
   1432 E4            [12] 4926 	clr	a
   1433 A3            [24] 4927 	inc	dptr
   1434 F0            [24] 4928 	movx	@dptr,a
   1435 75 82 02      [24] 4929 	mov	dpl,#0x02
   1438 12 01 39      [24] 4930 	lcall	_rf_write_register
                           4931 ;	../nRFLE.c:115: buffer[0]=0xD2;
   143B 90 00 83      [24] 4932 	mov	dptr,#_openAllPipe_buffer_1_238
   143E 74 D2         [12] 4933 	mov	a,#0xD2
   1440 F0            [24] 4934 	movx	@dptr,a
                           4935 ;	../nRFLE.c:117: rf_write_register(RF_RX_ADDR_P0,buffer,5);
   1441 90 00 08      [24] 4936 	mov	dptr,#_rf_write_register_PARM_2
   1444 74 83         [12] 4937 	mov	a,#_openAllPipe_buffer_1_238
   1446 F0            [24] 4938 	movx	@dptr,a
   1447 74 00         [12] 4939 	mov	a,#(_openAllPipe_buffer_1_238 >> 8)
   1449 A3            [24] 4940 	inc	dptr
   144A F0            [24] 4941 	movx	@dptr,a
   144B E4            [12] 4942 	clr	a
   144C A3            [24] 4943 	inc	dptr
   144D F0            [24] 4944 	movx	@dptr,a
   144E 90 00 0B      [24] 4945 	mov	dptr,#_rf_write_register_PARM_3
   1451 74 05         [12] 4946 	mov	a,#0x05
   1453 F0            [24] 4947 	movx	@dptr,a
   1454 E4            [12] 4948 	clr	a
   1455 A3            [24] 4949 	inc	dptr
   1456 F0            [24] 4950 	movx	@dptr,a
   1457 75 82 0A      [24] 4951 	mov	dpl,#0x0A
   145A 12 01 39      [24] 4952 	lcall	_rf_write_register
                           4953 ;	../nRFLE.c:118: rf_write_register(RF_TX_ADDR,buffer,5);
   145D 90 00 08      [24] 4954 	mov	dptr,#_rf_write_register_PARM_2
   1460 74 83         [12] 4955 	mov	a,#_openAllPipe_buffer_1_238
   1462 F0            [24] 4956 	movx	@dptr,a
   1463 74 00         [12] 4957 	mov	a,#(_openAllPipe_buffer_1_238 >> 8)
   1465 A3            [24] 4958 	inc	dptr
   1466 F0            [24] 4959 	movx	@dptr,a
   1467 E4            [12] 4960 	clr	a
   1468 A3            [24] 4961 	inc	dptr
   1469 F0            [24] 4962 	movx	@dptr,a
   146A 90 00 0B      [24] 4963 	mov	dptr,#_rf_write_register_PARM_3
   146D 74 05         [12] 4964 	mov	a,#0x05
   146F F0            [24] 4965 	movx	@dptr,a
   1470 E4            [12] 4966 	clr	a
   1471 A3            [24] 4967 	inc	dptr
   1472 F0            [24] 4968 	movx	@dptr,a
   1473 75 82 10      [24] 4969 	mov	dpl,#0x10
   1476 12 01 39      [24] 4970 	lcall	_rf_write_register
                           4971 ;	../nRFLE.c:122: buffer[0]=0xE1;
   1479 90 00 83      [24] 4972 	mov	dptr,#_openAllPipe_buffer_1_238
   147C 74 E1         [12] 4973 	mov	a,#0xE1
   147E F0            [24] 4974 	movx	@dptr,a
                           4975 ;	../nRFLE.c:124: rf_write_register(RF_RX_ADDR_P0+1,buffer,5);
   147F 90 00 08      [24] 4976 	mov	dptr,#_rf_write_register_PARM_2
   1482 74 83         [12] 4977 	mov	a,#_openAllPipe_buffer_1_238
   1484 F0            [24] 4978 	movx	@dptr,a
   1485 74 00         [12] 4979 	mov	a,#(_openAllPipe_buffer_1_238 >> 8)
   1487 A3            [24] 4980 	inc	dptr
   1488 F0            [24] 4981 	movx	@dptr,a
   1489 E4            [12] 4982 	clr	a
   148A A3            [24] 4983 	inc	dptr
   148B F0            [24] 4984 	movx	@dptr,a
   148C 90 00 0B      [24] 4985 	mov	dptr,#_rf_write_register_PARM_3
   148F 74 05         [12] 4986 	mov	a,#0x05
   1491 F0            [24] 4987 	movx	@dptr,a
   1492 E4            [12] 4988 	clr	a
   1493 A3            [24] 4989 	inc	dptr
   1494 F0            [24] 4990 	movx	@dptr,a
   1495 75 82 0B      [24] 4991 	mov	dpl,#0x0B
   1498 12 01 39      [24] 4992 	lcall	_rf_write_register
                           4993 ;	../nRFLE.c:126: setup=32; //
   149B 90 00 88      [24] 4994 	mov	dptr,#_openAllPipe_setup_1_238
   149E 74 20         [12] 4995 	mov	a,#0x20
   14A0 F0            [24] 4996 	movx	@dptr,a
                           4997 ;	../nRFLE.c:127: rf_write_register(RF_RX_PW_P0+1,&setup,1);
   14A1 90 00 08      [24] 4998 	mov	dptr,#_rf_write_register_PARM_2
   14A4 74 88         [12] 4999 	mov	a,#_openAllPipe_setup_1_238
   14A6 F0            [24] 5000 	movx	@dptr,a
   14A7 74 00         [12] 5001 	mov	a,#(_openAllPipe_setup_1_238 >> 8)
   14A9 A3            [24] 5002 	inc	dptr
   14AA F0            [24] 5003 	movx	@dptr,a
   14AB E4            [12] 5004 	clr	a
   14AC A3            [24] 5005 	inc	dptr
   14AD F0            [24] 5006 	movx	@dptr,a
   14AE 90 00 0B      [24] 5007 	mov	dptr,#_rf_write_register_PARM_3
   14B1 74 01         [12] 5008 	mov	a,#0x01
   14B3 F0            [24] 5009 	movx	@dptr,a
   14B4 E4            [12] 5010 	clr	a
   14B5 A3            [24] 5011 	inc	dptr
   14B6 F0            [24] 5012 	movx	@dptr,a
   14B7 75 82 12      [24] 5013 	mov	dpl,#0x12
   14BA 02 01 39      [24] 5014 	ljmp	_rf_write_register
                           5015 ;------------------------------------------------------------
                           5016 ;Allocation info for local variables in function 'isr_ifp'
                           5017 ;------------------------------------------------------------
                           5018 ;	main.c:46: interrupt_isr_ifp()
                           5019 ;	-----------------------------------------
                           5020 ;	 function isr_ifp
                           5021 ;	-----------------------------------------
   14BD                    5022 _isr_ifp:
   14BD C0 21         [24] 5023 	push	bits
   14BF C0 E0         [24] 5024 	push	acc
   14C1 C0 F0         [24] 5025 	push	b
   14C3 C0 82         [24] 5026 	push	dpl
   14C5 C0 83         [24] 5027 	push	dph
   14C7 C0 07         [24] 5028 	push	(0+7)
   14C9 C0 06         [24] 5029 	push	(0+6)
   14CB C0 05         [24] 5030 	push	(0+5)
   14CD C0 04         [24] 5031 	push	(0+4)
   14CF C0 03         [24] 5032 	push	(0+3)
   14D1 C0 02         [24] 5033 	push	(0+2)
   14D3 C0 01         [24] 5034 	push	(0+1)
   14D5 C0 00         [24] 5035 	push	(0+0)
   14D7 C0 D0         [24] 5036 	push	psw
   14D9 75 D0 00      [24] 5037 	mov	psw,#0x00
                           5038 ;	main.c:48: timer1_stop();
   14DC C2 8E         [12] 5039 	clr _TCON_SB_TR1 
                           5040 ;	main.c:49: if(clientnf.countPWM !=0) {
   14DE 90 00 8A      [24] 5041 	mov	dptr,#(_clientnf + 0x0001)
   14E1 E0            [24] 5042 	movx	a,@dptr
   14E2 FE            [12] 5043 	mov	r6,a
   14E3 A3            [24] 5044 	inc	dptr
   14E4 E0            [24] 5045 	movx	a,@dptr
   14E5 FF            [12] 5046 	mov	r7,a
   14E6 4E            [12] 5047 	orl	a,r6
   14E7 60 3F         [24] 5048 	jz	00102$
                           5049 ;	main.c:51: timer1_set_t1_val(65535-DIMSTART*(DIMMERSTEP-clientnf.countPWM) );
   14E9 74 64         [12] 5050 	mov	a,#0x64
   14EB C3            [12] 5051 	clr	c
   14EC 9E            [12] 5052 	subb	a,r6
   14ED FE            [12] 5053 	mov	r6,a
   14EE E4            [12] 5054 	clr	a
   14EF 9F            [12] 5055 	subb	a,r7
   14F0 FF            [12] 5056 	mov	r7,a
   14F1 90 00 CB      [24] 5057 	mov	dptr,#__mullong_PARM_2
   14F4 EE            [12] 5058 	mov	a,r6
   14F5 F0            [24] 5059 	movx	@dptr,a
   14F6 EF            [12] 5060 	mov	a,r7
   14F7 A3            [24] 5061 	inc	dptr
   14F8 F0            [24] 5062 	movx	@dptr,a
   14F9 EF            [12] 5063 	mov	a,r7
   14FA 33            [12] 5064 	rlc	a
   14FB 95 E0         [12] 5065 	subb	a,acc
   14FD A3            [24] 5066 	inc	dptr
   14FE F0            [24] 5067 	movx	@dptr,a
   14FF A3            [24] 5068 	inc	dptr
   1500 F0            [24] 5069 	movx	@dptr,a
   1501 90 34 15      [24] 5070 	mov	dptr,#0x3415
   1504 E4            [12] 5071 	clr	a
   1505 F5 F0         [12] 5072 	mov	b,a
   1507 12 18 AF      [24] 5073 	lcall	__mullong
   150A AC 82         [24] 5074 	mov	r4,dpl
   150C AD 83         [24] 5075 	mov	r5,dph
   150E AE F0         [24] 5076 	mov	r6,b
   1510 FF            [12] 5077 	mov	r7,a
   1511 74 FF         [12] 5078 	mov	a,#0xFF
   1513 C3            [12] 5079 	clr	c
   1514 9C            [12] 5080 	subb	a,r4
   1515 FC            [12] 5081 	mov	r4,a
   1516 74 FF         [12] 5082 	mov	a,#0xFF
   1518 9D            [12] 5083 	subb	a,r5
   1519 FD            [12] 5084 	mov	r5,a
   151A E4            [12] 5085 	clr	a
   151B 9E            [12] 5086 	subb	a,r6
   151C FE            [12] 5087 	mov	r6,a
   151D E4            [12] 5088 	clr	a
   151E 9F            [12] 5089 	subb	a,r7
   151F FF            [12] 5090 	mov	r7,a
   1520 8C 8B         [24] 5091 	mov	((_T1 >> 0) & 0xFF),r4
   1522 8D 8D         [24] 5092 	mov	((_T1 >> 8) & 0xFF),r5
                           5093 ;	main.c:53: timer1_run();
   1524 D2 8E         [12] 5094 	setb _TCON_SB_TR1 
   1526 80 06         [24] 5095 	sjmp	00103$
   1528                    5096 00102$:
                           5097 ;	main.c:55: else gpio_pin_val_clear(DIMMPIN);
   1528 75 82 02      [24] 5098 	mov	dpl,#0x02
   152B 12 07 CE      [24] 5099 	lcall	_gpio_pin_val_clear
   152E                    5100 00103$:
                           5101 ;	main.c:56: stdimm=1;
   152E 90 00 9B      [24] 5102 	mov	dptr,#_stdimm
   1531 74 01         [12] 5103 	mov	a,#0x01
   1533 F0            [24] 5104 	movx	@dptr,a
   1534 D0 D0         [24] 5105 	pop	psw
   1536 D0 00         [24] 5106 	pop	(0+0)
   1538 D0 01         [24] 5107 	pop	(0+1)
   153A D0 02         [24] 5108 	pop	(0+2)
   153C D0 03         [24] 5109 	pop	(0+3)
   153E D0 04         [24] 5110 	pop	(0+4)
   1540 D0 05         [24] 5111 	pop	(0+5)
   1542 D0 06         [24] 5112 	pop	(0+6)
   1544 D0 07         [24] 5113 	pop	(0+7)
   1546 D0 83         [24] 5114 	pop	dph
   1548 D0 82         [24] 5115 	pop	dpl
   154A D0 F0         [24] 5116 	pop	b
   154C D0 E0         [24] 5117 	pop	acc
   154E D0 21         [24] 5118 	pop	bits
   1550 32            [24] 5119 	reti
                           5120 ;------------------------------------------------------------
                           5121 ;Allocation info for local variables in function 'isr_t1'
                           5122 ;------------------------------------------------------------
                           5123 ;	main.c:60: interrupt_isr_t1() {
                           5124 ;	-----------------------------------------
                           5125 ;	 function isr_t1
                           5126 ;	-----------------------------------------
   1551                    5127 _isr_t1:
   1551 C0 21         [24] 5128 	push	bits
   1553 C0 E0         [24] 5129 	push	acc
   1555 C0 F0         [24] 5130 	push	b
   1557 C0 82         [24] 5131 	push	dpl
   1559 C0 83         [24] 5132 	push	dph
   155B C0 07         [24] 5133 	push	(0+7)
   155D C0 06         [24] 5134 	push	(0+6)
   155F C0 05         [24] 5135 	push	(0+5)
   1561 C0 04         [24] 5136 	push	(0+4)
   1563 C0 03         [24] 5137 	push	(0+3)
   1565 C0 02         [24] 5138 	push	(0+2)
   1567 C0 01         [24] 5139 	push	(0+1)
   1569 C0 00         [24] 5140 	push	(0+0)
   156B C0 D0         [24] 5141 	push	psw
   156D 75 D0 00      [24] 5142 	mov	psw,#0x00
                           5143 ;	main.c:62: if (stdimm) {
   1570 90 00 9B      [24] 5144 	mov	dptr,#_stdimm
   1573 E0            [24] 5145 	movx	a,@dptr
   1574 FF            [12] 5146 	mov	r7,a
   1575 60 13         [24] 5147 	jz	00102$
                           5148 ;	main.c:63: gpio_pin_val_set(DIMMPIN); 
   1577 75 82 02      [24] 5149 	mov	dpl,#0x02
   157A 12 08 39      [24] 5150 	lcall	_gpio_pin_val_set
                           5151 ;	main.c:64: timer1_set_t1_val(65535-100);
   157D 75 8B 9B      [24] 5152 	mov	((_T1 >> 0) & 0xFF),#0x9B
   1580 75 8D FF      [24] 5153 	mov	((_T1 >> 8) & 0xFF),#0xFF
                           5154 ;	main.c:65: stdimm=0;
   1583 90 00 9B      [24] 5155 	mov	dptr,#_stdimm
   1586 E4            [12] 5156 	clr	a
   1587 F0            [24] 5157 	movx	@dptr,a
   1588 80 06         [24] 5158 	sjmp	00104$
   158A                    5159 00102$:
                           5160 ;	main.c:67: gpio_pin_val_clear(DIMMPIN);
   158A 75 82 02      [24] 5161 	mov	dpl,#0x02
   158D 12 07 CE      [24] 5162 	lcall	_gpio_pin_val_clear
   1590                    5163 00104$:
   1590 D0 D0         [24] 5164 	pop	psw
   1592 D0 00         [24] 5165 	pop	(0+0)
   1594 D0 01         [24] 5166 	pop	(0+1)
   1596 D0 02         [24] 5167 	pop	(0+2)
   1598 D0 03         [24] 5168 	pop	(0+3)
   159A D0 04         [24] 5169 	pop	(0+4)
   159C D0 05         [24] 5170 	pop	(0+5)
   159E D0 06         [24] 5171 	pop	(0+6)
   15A0 D0 07         [24] 5172 	pop	(0+7)
   15A2 D0 83         [24] 5173 	pop	dph
   15A4 D0 82         [24] 5174 	pop	dpl
   15A6 D0 F0         [24] 5175 	pop	b
   15A8 D0 E0         [24] 5176 	pop	acc
   15AA D0 21         [24] 5177 	pop	bits
   15AC 32            [24] 5178 	reti
                           5179 ;------------------------------------------------------------
                           5180 ;Allocation info for local variables in function 'main'
                           5181 ;------------------------------------------------------------
                           5182 ;state                     Allocated with name '_main_state_1_243'
                           5183 ;count                     Allocated with name '_main_count_1_243'
                           5184 ;------------------------------------------------------------
                           5185 ;	main.c:77: void main()
                           5186 ;	-----------------------------------------
                           5187 ;	 function main
                           5188 ;	-----------------------------------------
   15AD                    5189 _main:
                           5190 ;	main.c:85: gpio_pin_configure(DIMMPIN,GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);
   15AD 90 00 38      [24] 5191 	mov	dptr,#_gpio_pin_configure_PARM_2
   15B0 74 01         [12] 5192 	mov	a,#0x01
   15B2 F0            [24] 5193 	movx	@dptr,a
   15B3 75 82 02      [24] 5194 	mov	dpl,#0x02
   15B6 12 05 3F      [24] 5195 	lcall	_gpio_pin_configure
                           5196 ;	main.c:86: gpio_pin_val_set(DIMMPIN);
   15B9 75 82 02      [24] 5197 	mov	dpl,#0x02
   15BC 12 08 39      [24] 5198 	lcall	_gpio_pin_val_set
                           5199 ;	main.c:87: delay_ms(500); 
   15BF 90 01 F4      [24] 5200 	mov	dptr,#0x01F4
   15C2 12 09 3C      [24] 5201 	lcall	_delay_ms
                           5202 ;	main.c:88: gpio_pin_val_clear(DIMMPIN);
   15C5 75 82 02      [24] 5203 	mov	dpl,#0x02
   15C8 12 07 CE      [24] 5204 	lcall	_gpio_pin_val_clear
                           5205 ;	main.c:89: delay_ms(500); 
   15CB 90 01 F4      [24] 5206 	mov	dptr,#0x01F4
   15CE 12 09 3C      [24] 5207 	lcall	_delay_ms
                           5208 ;	main.c:92: radiobegin(); //
   15D1 12 12 7D      [24] 5209 	lcall	_radiobegin
                           5210 ;	main.c:93: openAllPipe(); // открываем прием/передачу
   15D4 12 14 01      [24] 5211 	lcall	_openAllPipe
                           5212 ;	main.c:95: setChannel(100);
   15D7 75 82 64      [24] 5213 	mov	dpl,#0x64
   15DA 12 12 A2      [24] 5214 	lcall	_setChannel
                           5215 ;	main.c:96: setDataRate(2); // 1 - 250кб , 2 - 1 мб , 3 -2 мб.
   15DD 75 82 02      [24] 5216 	mov	dpl,#0x02
   15E0 12 12 C4      [24] 5217 	lcall	_setDataRate
                           5218 ;	main.c:97: setAutoAck(false);
   15E3 75 82 00      [24] 5219 	mov	dpl,#0x00
   15E6 12 13 26      [24] 5220 	lcall	_setAutoAck
                           5221 ;	main.c:98: setCRCLength(2); // 0 - crc off ,1 - 8bit ,2 - 16bit
   15E9 75 82 02      [24] 5222 	mov	dpl,#0x02
   15EC 12 13 59      [24] 5223 	lcall	_setCRCLength
                           5224 ;	main.c:99: setPALevel(3) ; // мощность 0..3
   15EF 75 82 03      [24] 5225 	mov	dpl,#0x03
   15F2 12 13 C2      [24] 5226 	lcall	_setPALevel
                           5227 ;	main.c:102: clientnf.identifier=chclient;
   15F5 90 00 89      [24] 5228 	mov	dptr,#_clientnf
   15F8 74 01         [12] 5229 	mov	a,#0x01
   15FA F0            [24] 5230 	movx	@dptr,a
                           5231 ;	main.c:103: clientnf.countPWM=10;
   15FB 90 00 8A      [24] 5232 	mov	dptr,#(_clientnf + 0x0001)
   15FE 74 0A         [12] 5233 	mov	a,#0x0A
   1600 F0            [24] 5234 	movx	@dptr,a
   1601 E4            [12] 5235 	clr	a
   1602 A3            [24] 5236 	inc	dptr
   1603 F0            [24] 5237 	movx	@dptr,a
                           5238 ;	main.c:105: sti();
   1604 D2 AF         [12] 5239 	setb _IEN0_SB_GLOBAL 
                           5240 ;	main.c:106: interrupt_configure_ifp(INTERRUPT_IFP_INPUT_GPINT0,INTERRUPT_IFP_CONFIG_OPTION_ENABLE | INTERRUPT_IFP_CONFIG_OPTION_TYPE_FALLING_EDGE);
   1606 90 00 56      [24] 5241 	mov	dptr,#_interrupt_configure_ifp_PARM_2
   1609 74 81         [12] 5242 	mov	a,#0x81
   160B F0            [24] 5243 	movx	@dptr,a
   160C 75 82 08      [24] 5244 	mov	dpl,#0x08
   160F 12 0A EB      [24] 5245 	lcall	_interrupt_configure_ifp
                           5246 ;	main.c:107: interrupt_control_ifp_enable();
   1612 D2 A8         [12] 5247 	setb _IEN0_SB_IFP 
                           5248 ;	main.c:109: interrupt_control_t1_enable()	;
   1614 D2 AB         [12] 5249 	setb _IEN0_SB_T1 
                           5250 ;	main.c:110: timer1_configure(TIMER1_CONFIG_OPTION_MODE_1_16_BIT_CTR_TMR,0);
   1616 90 00 60      [24] 5251 	mov	dptr,#_timer1_configure_PARM_2
   1619 E4            [12] 5252 	clr	a
   161A F0            [24] 5253 	movx	@dptr,a
   161B E4            [12] 5254 	clr	a
   161C A3            [24] 5255 	inc	dptr
   161D F0            [24] 5256 	movx	@dptr,a
   161E 75 82 10      [24] 5257 	mov	dpl,#0x10
   1621 12 0B FE      [24] 5258 	lcall	_timer1_configure
                           5259 ;	main.c:111: timer1_run();
   1624 D2 8E         [12] 5260 	setb _TCON_SB_TR1 
                           5261 ;	main.c:116: while(1)
   1626                    5262 00119$:
                           5263 ;	main.c:124: rf_write_tx_payload((const uint8_t*)&clientnf, 32, true); //transmit received char over RF
   1626 7E 89         [12] 5264 	mov	r6,#_clientnf
   1628 7F 00         [12] 5265 	mov	r7,#(_clientnf >> 8)
   162A 7D 00         [12] 5266 	mov	r5,#0x00
   162C 90 00 0E      [24] 5267 	mov	dptr,#_rf_write_tx_payload_PARM_2
   162F 74 20         [12] 5268 	mov	a,#0x20
   1631 F0            [24] 5269 	movx	@dptr,a
   1632 E4            [12] 5270 	clr	a
   1633 A3            [24] 5271 	inc	dptr
   1634 F0            [24] 5272 	movx	@dptr,a
   1635 90 00 10      [24] 5273 	mov	dptr,#_rf_write_tx_payload_PARM_3
   1638 74 01         [12] 5274 	mov	a,#0x01
   163A F0            [24] 5275 	movx	@dptr,a
   163B 8E 82         [24] 5276 	mov	dpl,r6
   163D 8F 83         [24] 5277 	mov	dph,r7
   163F 8D F0         [24] 5278 	mov	b,r5
   1641 12 01 7D      [24] 5279 	lcall	_rf_write_tx_payload
                           5280 ;	main.c:127: while(!(rf_irq_pin_active() && rf_irq_tx_ds_active()));
   1644                    5281 00102$:
   1644 30 C1 FD      [24] 5282 	jnb	_IRCON_SB_RFIRQ,00102$
   1647 90 00 18      [24] 5283 	mov	dptr,#_rf_spi_execute_command_PARM_2
   164A E4            [12] 5284 	clr	a
   164B F0            [24] 5285 	movx	@dptr,a
   164C E4            [12] 5286 	clr	a
   164D A3            [24] 5287 	inc	dptr
   164E F0            [24] 5288 	movx	@dptr,a
   164F E4            [12] 5289 	clr	a
   1650 A3            [24] 5290 	inc	dptr
   1651 F0            [24] 5291 	movx	@dptr,a
   1652 90 00 1B      [24] 5292 	mov	dptr,#_rf_spi_execute_command_PARM_3
   1655 E4            [12] 5293 	clr	a
   1656 F0            [24] 5294 	movx	@dptr,a
   1657 E4            [12] 5295 	clr	a
   1658 A3            [24] 5296 	inc	dptr
   1659 F0            [24] 5297 	movx	@dptr,a
   165A 90 00 1D      [24] 5298 	mov	dptr,#_rf_spi_execute_command_PARM_4
   165D 74 01         [12] 5299 	mov	a,#0x01
   165F F0            [24] 5300 	movx	@dptr,a
   1660 75 82 FF      [24] 5301 	mov	dpl,#0xFF
   1663 12 02 B2      [24] 5302 	lcall	_rf_spi_execute_command
   1666 E5 82         [12] 5303 	mov	a,dpl
   1668 30 E5 D9      [24] 5304 	jnb	acc.5,00102$
                           5305 ;	main.c:129: rf_irq_clear_all(); //clear all interrupts in the 24L01
   166B 12 02 43      [24] 5306 	lcall	_rf_irq_clear_all
                           5307 ;	main.c:130: rf_set_as_rx(true); //change the device to an RX to get the character back from the other 24L01
   166E 75 82 01      [24] 5308 	mov	dpl,#0x01
   1671 12 01 E3      [24] 5309 	lcall	_rf_set_as_rx
                           5310 ;	main.c:134: for(count = 0; count < 25000; count++)
   1674 7E 00         [12] 5311 	mov	r6,#0x00
   1676 7F 00         [12] 5312 	mov	r7,#0x00
   1678                    5313 00121$:
                           5314 ;	main.c:137: if((rf_irq_pin_active() && rf_irq_rx_dr_active()))
   1678 20 C1 03      [24] 5315 	jb	_IRCON_SB_RFIRQ,00160$
   167B 02 17 0C      [24] 5316 	ljmp	00109$
   167E                    5317 00160$:
   167E 90 00 18      [24] 5318 	mov	dptr,#_rf_spi_execute_command_PARM_2
   1681 E4            [12] 5319 	clr	a
   1682 F0            [24] 5320 	movx	@dptr,a
   1683 E4            [12] 5321 	clr	a
   1684 A3            [24] 5322 	inc	dptr
   1685 F0            [24] 5323 	movx	@dptr,a
   1686 E4            [12] 5324 	clr	a
   1687 A3            [24] 5325 	inc	dptr
   1688 F0            [24] 5326 	movx	@dptr,a
   1689 90 00 1B      [24] 5327 	mov	dptr,#_rf_spi_execute_command_PARM_3
   168C E4            [12] 5328 	clr	a
   168D F0            [24] 5329 	movx	@dptr,a
   168E E4            [12] 5330 	clr	a
   168F A3            [24] 5331 	inc	dptr
   1690 F0            [24] 5332 	movx	@dptr,a
   1691 90 00 1D      [24] 5333 	mov	dptr,#_rf_spi_execute_command_PARM_4
   1694 74 01         [12] 5334 	mov	a,#0x01
   1696 F0            [24] 5335 	movx	@dptr,a
   1697 75 82 FF      [24] 5336 	mov	dpl,#0xFF
   169A C0 07         [24] 5337 	push	ar7
   169C C0 06         [24] 5338 	push	ar6
   169E 12 02 B2      [24] 5339 	lcall	_rf_spi_execute_command
   16A1 E5 82         [12] 5340 	mov	a,dpl
   16A3 D0 06         [24] 5341 	pop	ar6
   16A5 D0 07         [24] 5342 	pop	ar7
   16A7 30 E6 62      [24] 5343 	jnb	acc.6,00109$
                           5344 ;	main.c:140: if (clientnf.count <= 2147483646) clientnf.count++;      /// счетчик передач для контроля качества канала
   16AA 90 00 8F      [24] 5345 	mov	dptr,#(_clientnf + 0x0006)
   16AD E0            [24] 5346 	movx	a,@dptr
   16AE FA            [12] 5347 	mov	r2,a
   16AF A3            [24] 5348 	inc	dptr
   16B0 E0            [24] 5349 	movx	a,@dptr
   16B1 FB            [12] 5350 	mov	r3,a
   16B2 A3            [24] 5351 	inc	dptr
   16B3 E0            [24] 5352 	movx	a,@dptr
   16B4 FC            [12] 5353 	mov	r4,a
   16B5 A3            [24] 5354 	inc	dptr
   16B6 E0            [24] 5355 	movx	a,@dptr
   16B7 FD            [12] 5356 	mov	r5,a
   16B8 C3            [12] 5357 	clr	c
   16B9 74 FE         [12] 5358 	mov	a,#0xFE
   16BB 9A            [12] 5359 	subb	a,r2
   16BC 74 FF         [12] 5360 	mov	a,#0xFF
   16BE 9B            [12] 5361 	subb	a,r3
   16BF 74 FF         [12] 5362 	mov	a,#0xFF
   16C1 9C            [12] 5363 	subb	a,r4
   16C2 74 FF         [12] 5364 	mov	a,#(0x7F ^ 0x80)
   16C4 8D F0         [24] 5365 	mov	b,r5
   16C6 63 F0 80      [24] 5366 	xrl	b,#0x80
   16C9 95 F0         [12] 5367 	subb	a,b
   16CB 40 1D         [24] 5368 	jc	00106$
   16CD 0A            [12] 5369 	inc	r2
   16CE BA 00 09      [24] 5370 	cjne	r2,#0x00,00163$
   16D1 0B            [12] 5371 	inc	r3
   16D2 BB 00 05      [24] 5372 	cjne	r3,#0x00,00163$
   16D5 0C            [12] 5373 	inc	r4
   16D6 BC 00 01      [24] 5374 	cjne	r4,#0x00,00163$
   16D9 0D            [12] 5375 	inc	r5
   16DA                    5376 00163$:
   16DA 90 00 8F      [24] 5377 	mov	dptr,#(_clientnf + 0x0006)
   16DD EA            [12] 5378 	mov	a,r2
   16DE F0            [24] 5379 	movx	@dptr,a
   16DF EB            [12] 5380 	mov	a,r3
   16E0 A3            [24] 5381 	inc	dptr
   16E1 F0            [24] 5382 	movx	@dptr,a
   16E2 EC            [12] 5383 	mov	a,r4
   16E3 A3            [24] 5384 	inc	dptr
   16E4 F0            [24] 5385 	movx	@dptr,a
   16E5 ED            [12] 5386 	mov	a,r5
   16E6 A3            [24] 5387 	inc	dptr
   16E7 F0            [24] 5388 	movx	@dptr,a
   16E8 80 0E         [24] 5389 	sjmp	00107$
   16EA                    5390 00106$:
                           5391 ;	main.c:141: else clientnf.count = 0;
   16EA 90 00 8F      [24] 5392 	mov	dptr,#(_clientnf + 0x0006)
   16ED E4            [12] 5393 	clr	a
   16EE F0            [24] 5394 	movx	@dptr,a
   16EF E4            [12] 5395 	clr	a
   16F0 A3            [24] 5396 	inc	dptr
   16F1 F0            [24] 5397 	movx	@dptr,a
   16F2 E4            [12] 5398 	clr	a
   16F3 A3            [24] 5399 	inc	dptr
   16F4 F0            [24] 5400 	movx	@dptr,a
   16F5 E4            [12] 5401 	clr	a
   16F6 A3            [24] 5402 	inc	dptr
   16F7 F0            [24] 5403 	movx	@dptr,a
   16F8                    5404 00107$:
                           5405 ;	main.c:143: rf_read_rx_payload((const uint8_t*)&servernf, 32); //get the payload into data
   16F8 90 00 00      [24] 5406 	mov	dptr,#_rf_read_rx_payload_PARM_2
   16FB 74 20         [12] 5407 	mov	a,#0x20
   16FD F0            [24] 5408 	movx	@dptr,a
   16FE E4            [12] 5409 	clr	a
   16FF A3            [24] 5410 	inc	dptr
   1700 F0            [24] 5411 	movx	@dptr,a
   1701 90 00 9C      [24] 5412 	mov	dptr,#_servernf
   1704 75 F0 00      [24] 5413 	mov	b,#0x00
   1707 12 00 7D      [24] 5414 	lcall	_rf_read_rx_payload
                           5415 ;	main.c:144: break;
   170A 80 2C         [24] 5416 	sjmp	00113$
   170C                    5417 00109$:
                           5418 ;	main.c:151: if(count == 24999) clientnf.Error_Message++;
   170C BE A7 18      [24] 5419 	cjne	r6,#0xA7,00122$
   170F BF 61 15      [24] 5420 	cjne	r7,#0x61,00122$
   1712 90 00 8D      [24] 5421 	mov	dptr,#(_clientnf + 0x0004)
   1715 E0            [24] 5422 	movx	a,@dptr
   1716 FC            [12] 5423 	mov	r4,a
   1717 A3            [24] 5424 	inc	dptr
   1718 E0            [24] 5425 	movx	a,@dptr
   1719 FD            [12] 5426 	mov	r5,a
   171A 0C            [12] 5427 	inc	r4
   171B BC 00 01      [24] 5428 	cjne	r4,#0x00,00166$
   171E 0D            [12] 5429 	inc	r5
   171F                    5430 00166$:
   171F 90 00 8D      [24] 5431 	mov	dptr,#(_clientnf + 0x0004)
   1722 EC            [12] 5432 	mov	a,r4
   1723 F0            [24] 5433 	movx	@dptr,a
   1724 ED            [12] 5434 	mov	a,r5
   1725 A3            [24] 5435 	inc	dptr
   1726 F0            [24] 5436 	movx	@dptr,a
   1727                    5437 00122$:
                           5438 ;	main.c:134: for(count = 0; count < 25000; count++)
   1727 0E            [12] 5439 	inc	r6
   1728 BE 00 01      [24] 5440 	cjne	r6,#0x00,00167$
   172B 0F            [12] 5441 	inc	r7
   172C                    5442 00167$:
   172C C3            [12] 5443 	clr	c
   172D EE            [12] 5444 	mov	a,r6
   172E 94 A8         [12] 5445 	subb	a,#0xA8
   1730 EF            [12] 5446 	mov	a,r7
   1731 94 61         [12] 5447 	subb	a,#0x61
   1733 50 03         [24] 5448 	jnc	00168$
   1735 02 16 78      [24] 5449 	ljmp	00121$
   1738                    5450 00168$:
   1738                    5451 00113$:
                           5452 ;	main.c:156: rf_irq_clear_all(); //clear interrupts again
   1738 12 02 43      [24] 5453 	lcall	_rf_irq_clear_all
                           5454 ;	main.c:158: rf_set_as_tx(); //resume normal operation as a TX
   173B 12 02 68      [24] 5455 	lcall	_rf_set_as_tx
                           5456 ;	main.c:161: if (servernf[0]==chclient){	
   173E 90 00 9C      [24] 5457 	mov	dptr,#_servernf
   1741 E0            [24] 5458 	movx	a,@dptr
   1742 FF            [12] 5459 	mov	r7,a
   1743 BF 01 17      [24] 5460 	cjne	r7,#0x01,00117$
                           5461 ;	main.c:169: if (servernf[1]==11) clientnf.countPWM=servernf[3];
   1746 90 00 9D      [24] 5462 	mov	dptr,#(_servernf + 0x0001)
   1749 E0            [24] 5463 	movx	a,@dptr
   174A FF            [12] 5464 	mov	r7,a
   174B BF 0B 0F      [24] 5465 	cjne	r7,#0x0B,00117$
   174E 90 00 9F      [24] 5466 	mov	dptr,#(_servernf + 0x0003)
   1751 E0            [24] 5467 	movx	a,@dptr
   1752 FF            [12] 5468 	mov	r7,a
   1753 7E 00         [12] 5469 	mov	r6,#0x00
   1755 90 00 8A      [24] 5470 	mov	dptr,#(_clientnf + 0x0001)
   1758 EF            [12] 5471 	mov	a,r7
   1759 F0            [24] 5472 	movx	@dptr,a
   175A EE            [12] 5473 	mov	a,r6
   175B A3            [24] 5474 	inc	dptr
   175C F0            [24] 5475 	movx	@dptr,a
   175D                    5476 00117$:
                           5477 ;	main.c:173: delay_ms(timesend);
   175D 90 01 2C      [24] 5478 	mov	dptr,#0x012C
   1760 12 09 3C      [24] 5479 	lcall	_delay_ms
   1763 02 16 26      [24] 5480 	ljmp	00119$
                           5481 	.area CSEG    (CODE)
                           5482 	.area CONST   (CODE)
                           5483 	.area XINIT   (CODE)
                           5484 	.area CABS    (ABS,CODE)
