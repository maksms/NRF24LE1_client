                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sat Jun 14 09:22:02 2014
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _isr_rtc2
                             14 	.globl _dimmon
                             15 	.globl _isr_t1
                             16 	.globl _isr_ifp
                             17 	.globl _openAllPipe
                             18 	.globl _setPALevel
                             19 	.globl _setCRCLength
                             20 	.globl _setAutoAck
                             21 	.globl _setDataRate
                             22 	.globl _setChannel
                             23 	.globl _radiobegin
                             24 	.globl _watchdog_start_and_set_timeout_in_ms
                             25 	.globl _watchdog_set_wdsv_count
                             26 	.globl _gpio_pin_val_write
                             27 	.globl _gpio_pin_val_set
                             28 	.globl _gpio_pin_val_clear
                             29 	.globl _gpio_pin_val_read
                             30 	.globl _FSR_SB_ENDBG
                             31 	.globl _FSR_SB_STP
                             32 	.globl _FSR_SB_WEN
                             33 	.globl _FSR_SB_RDYN
                             34 	.globl _FSR_SB_INFEN
                             35 	.globl _FSR_SB_RDISMB
                             36 	.globl _RFCON_SB_RFCKEN
                             37 	.globl _RFCON_SB_RFCSN
                             38 	.globl _RFCON_SB_RFCE
                             39 	.globl _ADCON_SB_BD
                             40 	.globl _PSW_SB_P
                             41 	.globl _PSW_SB_F1
                             42 	.globl _PSW_SB_OV
                             43 	.globl _PSW_SB_RS0
                             44 	.globl _PSW_SB_RS1
                             45 	.globl _PSW_SB_F0
                             46 	.globl _PSW_SB_AC
                             47 	.globl _PSW_SB_CY
                             48 	.globl _T2CON_SB_T2PS
                             49 	.globl _T2CON_SB_I3FR
                             50 	.globl _T2CON_SB_I2FR
                             51 	.globl _T2CON_SB_T2R1
                             52 	.globl _T2CON_SB_T2R0
                             53 	.globl _T2CON_SB_T2CM
                             54 	.globl _T2CON_SB_T2I1
                             55 	.globl _T2CON_SB_T2I0
                             56 	.globl _IRCON_SB_EXF2
                             57 	.globl _IRCON_SB_TF2
                             58 	.globl _IRCON_SB_TICK
                             59 	.globl _IRCON_SB_MISCIRQ
                             60 	.globl _IRCON_SB_WUOPIRQ
                             61 	.globl _IRCON_SB_SPI_2WIRE
                             62 	.globl _IRCON_SB_RFIRQ
                             63 	.globl _IRCON_SB_RFRDY
                             64 	.globl _IEN1_SB_T2EXTRLD
                             65 	.globl _IEN1_SB_TICK
                             66 	.globl _IEN1_SB_MISCIRQ
                             67 	.globl _IEN1_SB_WUOPIRQ
                             68 	.globl _IEN1_SB_SPI_2WIRE
                             69 	.globl _IEN1_SB_RFIRQ
                             70 	.globl _IEN1_SB_RFRDY
                             71 	.globl _P3_SB_D7
                             72 	.globl _P3_SB_D6
                             73 	.globl _P3_SB_D5
                             74 	.globl _P3_SB_D4
                             75 	.globl _P3_SB_D3
                             76 	.globl _P3_SB_D2
                             77 	.globl _P3_SB_D1
                             78 	.globl _P3_SB_D0
                             79 	.globl _IEN0_SB_GLOBAL
                             80 	.globl _IEN0_SB_T2
                             81 	.globl _IEN0_SB_UART
                             82 	.globl _IEN0_SB_T1
                             83 	.globl _IEN0_SB_POFIRQ
                             84 	.globl _IEN0_SB_T0
                             85 	.globl _IEN0_SB_IFP
                             86 	.globl _P2_SB_D7
                             87 	.globl _P2_SB_D6
                             88 	.globl _P2_SB_D5
                             89 	.globl _P2_SB_D4
                             90 	.globl _P2_SB_D3
                             91 	.globl _P2_SB_D2
                             92 	.globl _P2_SB_D1
                             93 	.globl _P2_SB_D0
                             94 	.globl _S0CON_SB_SM0
                             95 	.globl _S0CON_SB_SM1
                             96 	.globl _S0CON_SB_SM20
                             97 	.globl _S0CON_SB_REN0
                             98 	.globl _S0CON_SB_TB80
                             99 	.globl _S0CON_SB_RB80
                            100 	.globl _S0CON_SB_TI0
                            101 	.globl _S0CON_SB_RI0
                            102 	.globl _P1_SB_D7
                            103 	.globl _P1_SB_D6
                            104 	.globl _P1_SB_D5
                            105 	.globl _P1_SB_D4
                            106 	.globl _P1_SB_D3
                            107 	.globl _P1_SB_D2
                            108 	.globl _P1_SB_D1
                            109 	.globl _P1_SB_D0
                            110 	.globl _TCON_SB_TF1
                            111 	.globl _TCON_SB_TR1
                            112 	.globl _TCON_SB_TF0
                            113 	.globl _TCON_SB_TR0
                            114 	.globl _TCON_SB_IE1
                            115 	.globl _TCON_SB_IT1
                            116 	.globl _TCON_SB_IE0
                            117 	.globl _TCON_SB_IT0
                            118 	.globl _P0_SB_D7
                            119 	.globl _P0_SB_D6
                            120 	.globl _P0_SB_D5
                            121 	.globl _P0_SB_D4
                            122 	.globl _P0_SB_D3
                            123 	.globl _P0_SB_D2
                            124 	.globl _P0_SB_D1
                            125 	.globl _P0_SB_D0
                            126 	.globl _ADCDAT
                            127 	.globl _S0REL
                            128 	.globl _T2
                            129 	.globl _T1
                            130 	.globl _T0
                            131 	.globl _CRC
                            132 	.globl _CC3
                            133 	.globl _CC2
                            134 	.globl _CC1
                            135 	.globl _SPIMDAT
                            136 	.globl _SPIMSTAT
                            137 	.globl _SPIMCON1
                            138 	.globl _SPIMCON0
                            139 	.globl _FCR
                            140 	.globl _FPCR
                            141 	.globl _FSR
                            142 	.globl _B
                            143 	.globl _ARCON
                            144 	.globl _MD5
                            145 	.globl _MD4
                            146 	.globl _MD3
                            147 	.globl _MD2
                            148 	.globl _MD1
                            149 	.globl _MD0
                            150 	.globl _RFCON
                            151 	.globl _SPIRDAT
                            152 	.globl _SPIRSTAT
                            153 	.globl _SPIRCON1
                            154 	.globl _SPIRCON0
                            155 	.globl _W2CON0
                            156 	.globl _W2CON1
                            157 	.globl _ACC
                            158 	.globl _CCPDATO
                            159 	.globl _CCPDATIB
                            160 	.globl _CCPDATIA
                            161 	.globl _POFCON
                            162 	.globl _COMPCON
                            163 	.globl _W2DAT
                            164 	.globl _W2SADR
                            165 	.globl _ADCON
                            166 	.globl _RNGDAT
                            167 	.globl _RNGCTL
                            168 	.globl _ADCDATL
                            169 	.globl _ADCDATH
                            170 	.globl _ADCCON1
                            171 	.globl _ADCCON2
                            172 	.globl _ADCCON3
                            173 	.globl _PSW
                            174 	.globl _WUOPC0
                            175 	.globl _WUOPC1
                            176 	.globl _TH2
                            177 	.globl _TL2
                            178 	.globl _CRCH
                            179 	.globl _CRCL
                            180 	.globl __XPAGE
                            181 	.globl _MPAGE
                            182 	.globl _T2CON
                            183 	.globl _CCH3
                            184 	.globl _CCL3
                            185 	.globl _CCH2
                            186 	.globl _CCL2
                            187 	.globl _CCH1
                            188 	.globl _CCL1
                            189 	.globl _CCEN
                            190 	.globl _IRCON
                            191 	.globl _SPISDAT
                            192 	.globl _SPISSTAT
                            193 	.globl _SPISCON1
                            194 	.globl _SPISCON0
                            195 	.globl _S0RELH
                            196 	.globl _IP1
                            197 	.globl _IEN1
                            198 	.globl _SPISRDSZ
                            199 	.globl _RTC2CPT00
                            200 	.globl _RTC2CMP1
                            201 	.globl _RTC2CMP0
                            202 	.globl _RTC2CON
                            203 	.globl _PWMCON
                            204 	.globl _RSTREAS
                            205 	.globl _P3
                            206 	.globl _WDSV
                            207 	.globl _OPMCON
                            208 	.globl _CLKLFCTRL
                            209 	.globl _RTC2CPT10
                            210 	.globl _RTC2CPT01
                            211 	.globl _S0RELL
                            212 	.globl _IP0
                            213 	.globl _IEN0
                            214 	.globl _MEMCON
                            215 	.globl _INTEXP
                            216 	.globl _WUCON
                            217 	.globl _PWRDWN
                            218 	.globl _CLKCTRL
                            219 	.globl _PWMDC1
                            220 	.globl _PWMDC0
                            221 	.globl _P2
                            222 	.globl _P1CON
                            223 	.globl _P0CON
                            224 	.globl _S0BUF
                            225 	.globl _S0CON
                            226 	.globl _P2CON
                            227 	.globl _P3DIR
                            228 	.globl _P2DIR
                            229 	.globl _P1DIR
                            230 	.globl _P0DIR
                            231 	.globl _DPS
                            232 	.globl _P1
                            233 	.globl _P3CON
                            234 	.globl _TH1
                            235 	.globl _TH0
                            236 	.globl _TL1
                            237 	.globl _TL0
                            238 	.globl _TMOD
                            239 	.globl _TCON
                            240 	.globl _PCON
                            241 	.globl _DPH1
                            242 	.globl _DPL1
                            243 	.globl _DPH
                            244 	.globl _DPL
                            245 	.globl _SP
                            246 	.globl _P0
                            247 	.globl _countrtc
                            248 	.globl _servernf
                            249 	.globl _stdimm
                            250 	.globl _clientnf
                            251 	.globl _rtc2_configure_PARM_2
                            252 	.globl _uart_configure_auto_baud_calc_PARM_2
                            253 	.globl _uart_calc_th1_value_PARM_2
                            254 	.globl _uart_calc_s0rel_value_PARM_2
                            255 	.globl _uart_calc_actual_baud_rate_from_th1_PARM_2
                            256 	.globl _uart_calc_actual_baud_rate_from_s0rel_PARM_2
                            257 	.globl _uart_configure_manual_baud_calc_PARM_2
                            258 	.globl _timer1_configure_PARM_2
                            259 	.globl _timer0_configure_PARM_2
                            260 	.globl _interrupt_configure_ifp_PARM_2
                            261 	.globl _pwr_clk_mgmt_wakeup_configure_PARM_2
                            262 	.globl _pwm_start_PARM_2
                            263 	.globl _gpio_pin_val_write_PARM_2
                            264 	.globl _gpio_pin_configure_PARM_2
                            265 	.globl _rf_set_rx_addr_PARM_3
                            266 	.globl _rf_set_rx_addr_PARM_2
                            267 	.globl _rf_read_register_PARM_3
                            268 	.globl _rf_read_register_PARM_2
                            269 	.globl _rf_power_up_param_PARM_2
                            270 	.globl _rf_spi_send_read_PARM_3
                            271 	.globl _rf_spi_send_read_PARM_2
                            272 	.globl _rf_spi_execute_command_PARM_4
                            273 	.globl _rf_spi_execute_command_PARM_3
                            274 	.globl _rf_spi_execute_command_PARM_2
                            275 	.globl _rf_write_tx_payload_PARM_3
                            276 	.globl _rf_write_tx_payload_PARM_2
                            277 	.globl _rf_write_register_PARM_3
                            278 	.globl _rf_write_register_PARM_2
                            279 	.globl _rf_configure_debug_lite_PARM_2
                            280 	.globl _rf_read_rx_payload_PARM_2
                            281 	.globl _rf_read_rx_payload
                            282 	.globl _rf_configure_debug_lite
                            283 	.globl _rf_write_register
                            284 	.globl _rf_spi_configure_enable
                            285 	.globl _rf_write_tx_payload
                            286 	.globl _rf_transmit
                            287 	.globl _rf_set_as_rx
                            288 	.globl _rf_irq_clear_all
                            289 	.globl _rf_set_as_tx
                            290 	.globl _rf_spi_execute_command
                            291 	.globl _rf_spi_send_read
                            292 	.globl _rf_power_up_param
                            293 	.globl _rf_read_register
                            294 	.globl _rf_spi_send_read_byte
                            295 	.globl _rf_set_rx_addr
                            296 	.globl _rf_power_down
                            297 	.globl _rf_power_up
                            298 	.globl _gpio_pin_configure
                            299 	.globl _delay_us
                            300 	.globl _delay_s
                            301 	.globl _delay_ms
                            302 	.globl _pwm_configure
                            303 	.globl _pwm_start
                            304 	.globl _pwr_clk_mgmt_clklf_configure
                            305 	.globl _pwr_clk_mgmt_get_cclk_freq_in_hz
                            306 	.globl _pwr_clk_mgmt_wakeup_configure
                            307 	.globl _interrupt_configure_ifp
                            308 	.globl _adc_configure
                            309 	.globl _adc_set_input_channel
                            310 	.globl _adc_start_single_conversion
                            311 	.globl _adc_start_single_conversion_get_value
                            312 	.globl _timer0_configure
                            313 	.globl _timer1_configure
                            314 	.globl _uart_configure_manual_baud_calc
                            315 	.globl _uart_calc_actual_baud_rate_from_s0rel
                            316 	.globl _uart_calc_actual_baud_rate_from_th1
                            317 	.globl _uart_calc_s0rel_value
                            318 	.globl _uart_calc_th1_value
                            319 	.globl _uart_configure_auto_baud_calc
                            320 	.globl _rtc2_configure
                            321 ;--------------------------------------------------------
                            322 ; special function registers
                            323 ;--------------------------------------------------------
                            324 	.area RSEG    (ABS,DATA)
   0000                     325 	.org 0x0000
                     0080   326 _P0	=	0x0080
                     0081   327 _SP	=	0x0081
                     0082   328 _DPL	=	0x0082
                     0083   329 _DPH	=	0x0083
                     0084   330 _DPL1	=	0x0084
                     0085   331 _DPH1	=	0x0085
                     0087   332 _PCON	=	0x0087
                     0088   333 _TCON	=	0x0088
                     0089   334 _TMOD	=	0x0089
                     008A   335 _TL0	=	0x008a
                     008B   336 _TL1	=	0x008b
                     008C   337 _TH0	=	0x008c
                     008D   338 _TH1	=	0x008d
                     008F   339 _P3CON	=	0x008f
                     0090   340 _P1	=	0x0090
                     0092   341 _DPS	=	0x0092
                     0093   342 _P0DIR	=	0x0093
                     0094   343 _P1DIR	=	0x0094
                     0095   344 _P2DIR	=	0x0095
                     0096   345 _P3DIR	=	0x0096
                     0097   346 _P2CON	=	0x0097
                     0098   347 _S0CON	=	0x0098
                     0099   348 _S0BUF	=	0x0099
                     009E   349 _P0CON	=	0x009e
                     009F   350 _P1CON	=	0x009f
                     00A0   351 _P2	=	0x00a0
                     00A1   352 _PWMDC0	=	0x00a1
                     00A2   353 _PWMDC1	=	0x00a2
                     00A3   354 _CLKCTRL	=	0x00a3
                     00A4   355 _PWRDWN	=	0x00a4
                     00A5   356 _WUCON	=	0x00a5
                     00A6   357 _INTEXP	=	0x00a6
                     00A7   358 _MEMCON	=	0x00a7
                     00A8   359 _IEN0	=	0x00a8
                     00A9   360 _IP0	=	0x00a9
                     00AA   361 _S0RELL	=	0x00aa
                     00AB   362 _RTC2CPT01	=	0x00ab
                     00AC   363 _RTC2CPT10	=	0x00ac
                     00AD   364 _CLKLFCTRL	=	0x00ad
                     00AE   365 _OPMCON	=	0x00ae
                     00AF   366 _WDSV	=	0x00af
                     00B0   367 _P3	=	0x00b0
                     00B1   368 _RSTREAS	=	0x00b1
                     00B2   369 _PWMCON	=	0x00b2
                     00B3   370 _RTC2CON	=	0x00b3
                     00B4   371 _RTC2CMP0	=	0x00b4
                     00B5   372 _RTC2CMP1	=	0x00b5
                     00B6   373 _RTC2CPT00	=	0x00b6
                     00B7   374 _SPISRDSZ	=	0x00b7
                     00B8   375 _IEN1	=	0x00b8
                     00B9   376 _IP1	=	0x00b9
                     00BA   377 _S0RELH	=	0x00ba
                     00BC   378 _SPISCON0	=	0x00bc
                     00BD   379 _SPISCON1	=	0x00bd
                     00BE   380 _SPISSTAT	=	0x00be
                     00BF   381 _SPISDAT	=	0x00bf
                     00C0   382 _IRCON	=	0x00c0
                     00C1   383 _CCEN	=	0x00c1
                     00C2   384 _CCL1	=	0x00c2
                     00C3   385 _CCH1	=	0x00c3
                     00C4   386 _CCL2	=	0x00c4
                     00C5   387 _CCH2	=	0x00c5
                     00C6   388 _CCL3	=	0x00c6
                     00C7   389 _CCH3	=	0x00c7
                     00C8   390 _T2CON	=	0x00c8
                     00C9   391 _MPAGE	=	0x00c9
                     00C9   392 __XPAGE	=	0x00c9
                     00CA   393 _CRCL	=	0x00ca
                     00CB   394 _CRCH	=	0x00cb
                     00CC   395 _TL2	=	0x00cc
                     00CD   396 _TH2	=	0x00cd
                     00CE   397 _WUOPC1	=	0x00ce
                     00CF   398 _WUOPC0	=	0x00cf
                     00D0   399 _PSW	=	0x00d0
                     00D1   400 _ADCCON3	=	0x00d1
                     00D2   401 _ADCCON2	=	0x00d2
                     00D3   402 _ADCCON1	=	0x00d3
                     00D4   403 _ADCDATH	=	0x00d4
                     00D5   404 _ADCDATL	=	0x00d5
                     00D6   405 _RNGCTL	=	0x00d6
                     00D7   406 _RNGDAT	=	0x00d7
                     00D8   407 _ADCON	=	0x00d8
                     00D9   408 _W2SADR	=	0x00d9
                     00DA   409 _W2DAT	=	0x00da
                     00DB   410 _COMPCON	=	0x00db
                     00DC   411 _POFCON	=	0x00dc
                     00DD   412 _CCPDATIA	=	0x00dd
                     00DE   413 _CCPDATIB	=	0x00de
                     00DF   414 _CCPDATO	=	0x00df
                     00E0   415 _ACC	=	0x00e0
                     00E1   416 _W2CON1	=	0x00e1
                     00E2   417 _W2CON0	=	0x00e2
                     00E4   418 _SPIRCON0	=	0x00e4
                     00E5   419 _SPIRCON1	=	0x00e5
                     00E6   420 _SPIRSTAT	=	0x00e6
                     00E7   421 _SPIRDAT	=	0x00e7
                     00E8   422 _RFCON	=	0x00e8
                     00E9   423 _MD0	=	0x00e9
                     00EA   424 _MD1	=	0x00ea
                     00EB   425 _MD2	=	0x00eb
                     00EC   426 _MD3	=	0x00ec
                     00ED   427 _MD4	=	0x00ed
                     00EE   428 _MD5	=	0x00ee
                     00EF   429 _ARCON	=	0x00ef
                     00F0   430 _B	=	0x00f0
                     00F8   431 _FSR	=	0x00f8
                     00F9   432 _FPCR	=	0x00f9
                     00FA   433 _FCR	=	0x00fa
                     00FC   434 _SPIMCON0	=	0x00fc
                     00FD   435 _SPIMCON1	=	0x00fd
                     00FE   436 _SPIMSTAT	=	0x00fe
                     00FF   437 _SPIMDAT	=	0x00ff
                     C3C2   438 _CC1	=	0xc3c2
                     C5C4   439 _CC2	=	0xc5c4
                     C7C6   440 _CC3	=	0xc7c6
                     CBCA   441 _CRC	=	0xcbca
                     8C8A   442 _T0	=	0x8c8a
                     8D8B   443 _T1	=	0x8d8b
                     CDCC   444 _T2	=	0xcdcc
                     BAAA   445 _S0REL	=	0xbaaa
                     D4D5   446 _ADCDAT	=	0xd4d5
                            447 ;--------------------------------------------------------
                            448 ; special function bits
                            449 ;--------------------------------------------------------
                            450 	.area RSEG    (ABS,DATA)
   0000                     451 	.org 0x0000
                     0080   452 _P0_SB_D0	=	0x0080
                     0081   453 _P0_SB_D1	=	0x0081
                     0082   454 _P0_SB_D2	=	0x0082
                     0083   455 _P0_SB_D3	=	0x0083
                     0084   456 _P0_SB_D4	=	0x0084
                     0085   457 _P0_SB_D5	=	0x0085
                     0086   458 _P0_SB_D6	=	0x0086
                     0087   459 _P0_SB_D7	=	0x0087
                     0088   460 _TCON_SB_IT0	=	0x0088
                     0089   461 _TCON_SB_IE0	=	0x0089
                     008A   462 _TCON_SB_IT1	=	0x008a
                     008B   463 _TCON_SB_IE1	=	0x008b
                     008C   464 _TCON_SB_TR0	=	0x008c
                     008D   465 _TCON_SB_TF0	=	0x008d
                     008E   466 _TCON_SB_TR1	=	0x008e
                     008F   467 _TCON_SB_TF1	=	0x008f
                     0090   468 _P1_SB_D0	=	0x0090
                     0091   469 _P1_SB_D1	=	0x0091
                     0092   470 _P1_SB_D2	=	0x0092
                     0093   471 _P1_SB_D3	=	0x0093
                     0094   472 _P1_SB_D4	=	0x0094
                     0095   473 _P1_SB_D5	=	0x0095
                     0096   474 _P1_SB_D6	=	0x0096
                     0097   475 _P1_SB_D7	=	0x0097
                     0098   476 _S0CON_SB_RI0	=	0x0098
                     0099   477 _S0CON_SB_TI0	=	0x0099
                     009A   478 _S0CON_SB_RB80	=	0x009a
                     009B   479 _S0CON_SB_TB80	=	0x009b
                     009C   480 _S0CON_SB_REN0	=	0x009c
                     009D   481 _S0CON_SB_SM20	=	0x009d
                     009E   482 _S0CON_SB_SM1	=	0x009e
                     009F   483 _S0CON_SB_SM0	=	0x009f
                     00A0   484 _P2_SB_D0	=	0x00a0
                     00A1   485 _P2_SB_D1	=	0x00a1
                     00A2   486 _P2_SB_D2	=	0x00a2
                     00A3   487 _P2_SB_D3	=	0x00a3
                     00A4   488 _P2_SB_D4	=	0x00a4
                     00A5   489 _P2_SB_D5	=	0x00a5
                     00A6   490 _P2_SB_D6	=	0x00a6
                     00A7   491 _P2_SB_D7	=	0x00a7
                     00A8   492 _IEN0_SB_IFP	=	0x00a8
                     00A9   493 _IEN0_SB_T0	=	0x00a9
                     00AA   494 _IEN0_SB_POFIRQ	=	0x00aa
                     00AB   495 _IEN0_SB_T1	=	0x00ab
                     00AC   496 _IEN0_SB_UART	=	0x00ac
                     00AD   497 _IEN0_SB_T2	=	0x00ad
                     00AF   498 _IEN0_SB_GLOBAL	=	0x00af
                     00B0   499 _P3_SB_D0	=	0x00b0
                     00B1   500 _P3_SB_D1	=	0x00b1
                     00B2   501 _P3_SB_D2	=	0x00b2
                     00B3   502 _P3_SB_D3	=	0x00b3
                     00B4   503 _P3_SB_D4	=	0x00b4
                     00B5   504 _P3_SB_D5	=	0x00b5
                     00B6   505 _P3_SB_D6	=	0x00b6
                     00B7   506 _P3_SB_D7	=	0x00b7
                     00B8   507 _IEN1_SB_RFRDY	=	0x00b8
                     00B9   508 _IEN1_SB_RFIRQ	=	0x00b9
                     00BA   509 _IEN1_SB_SPI_2WIRE	=	0x00ba
                     00BB   510 _IEN1_SB_WUOPIRQ	=	0x00bb
                     00BC   511 _IEN1_SB_MISCIRQ	=	0x00bc
                     00BD   512 _IEN1_SB_TICK	=	0x00bd
                     00BF   513 _IEN1_SB_T2EXTRLD	=	0x00bf
                     00C0   514 _IRCON_SB_RFRDY	=	0x00c0
                     00C1   515 _IRCON_SB_RFIRQ	=	0x00c1
                     00C2   516 _IRCON_SB_SPI_2WIRE	=	0x00c2
                     00C3   517 _IRCON_SB_WUOPIRQ	=	0x00c3
                     00C4   518 _IRCON_SB_MISCIRQ	=	0x00c4
                     00C5   519 _IRCON_SB_TICK	=	0x00c5
                     00C6   520 _IRCON_SB_TF2	=	0x00c6
                     00C7   521 _IRCON_SB_EXF2	=	0x00c7
                     00C8   522 _T2CON_SB_T2I0	=	0x00c8
                     00C9   523 _T2CON_SB_T2I1	=	0x00c9
                     00CA   524 _T2CON_SB_T2CM	=	0x00ca
                     00CB   525 _T2CON_SB_T2R0	=	0x00cb
                     00CC   526 _T2CON_SB_T2R1	=	0x00cc
                     00CD   527 _T2CON_SB_I2FR	=	0x00cd
                     00CE   528 _T2CON_SB_I3FR	=	0x00ce
                     00CF   529 _T2CON_SB_T2PS	=	0x00cf
                     00D7   530 _PSW_SB_CY	=	0x00d7
                     00D6   531 _PSW_SB_AC	=	0x00d6
                     00D5   532 _PSW_SB_F0	=	0x00d5
                     00D4   533 _PSW_SB_RS1	=	0x00d4
                     00D3   534 _PSW_SB_RS0	=	0x00d3
                     00D2   535 _PSW_SB_OV	=	0x00d2
                     00D1   536 _PSW_SB_F1	=	0x00d1
                     00D0   537 _PSW_SB_P	=	0x00d0
                     00DF   538 _ADCON_SB_BD	=	0x00df
                     00E8   539 _RFCON_SB_RFCE	=	0x00e8
                     00E9   540 _RFCON_SB_RFCSN	=	0x00e9
                     00EA   541 _RFCON_SB_RFCKEN	=	0x00ea
                     00FA   542 _FSR_SB_RDISMB	=	0x00fa
                     00FB   543 _FSR_SB_INFEN	=	0x00fb
                     00FC   544 _FSR_SB_RDYN	=	0x00fc
                     00FD   545 _FSR_SB_WEN	=	0x00fd
                     00FE   546 _FSR_SB_STP	=	0x00fe
                     00FF   547 _FSR_SB_ENDBG	=	0x00ff
                            548 ;--------------------------------------------------------
                            549 ; overlayable register banks
                            550 ;--------------------------------------------------------
                            551 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     552 	.ds 8
                            553 ;--------------------------------------------------------
                            554 ; overlayable bit register bank
                            555 ;--------------------------------------------------------
                            556 	.area BIT_BANK	(REL,OVR,DATA)
   0021                     557 bits:
   0021                     558 	.ds 1
                     8000   559 	b0 = bits[0]
                     8100   560 	b1 = bits[1]
                     8200   561 	b2 = bits[2]
                     8300   562 	b3 = bits[3]
                     8400   563 	b4 = bits[4]
                     8500   564 	b5 = bits[5]
                     8600   565 	b6 = bits[6]
                     8700   566 	b7 = bits[7]
                            567 ;--------------------------------------------------------
                            568 ; internal ram data
                            569 ;--------------------------------------------------------
                            570 	.area DSEG    (DATA)
   0008                     571 _rf_spi_send_read_sloc0_1_0:
   0008                     572 	.ds 3
   000B                     573 _rf_spi_send_read_sloc1_1_0:
   000B                     574 	.ds 1
   000C                     575 _uart_configure_auto_baud_calc_sloc0_1_0:
   000C                     576 	.ds 2
   000E                     577 _uart_configure_auto_baud_calc_sloc1_1_0:
   000E                     578 	.ds 4
   0012                     579 _uart_configure_auto_baud_calc_sloc2_1_0:
   0012                     580 	.ds 4
   0016                     581 _uart_configure_auto_baud_calc_sloc3_1_0:
   0016                     582 	.ds 4
                            583 ;--------------------------------------------------------
                            584 ; overlayable items in internal ram 
                            585 ;--------------------------------------------------------
                            586 ;--------------------------------------------------------
                            587 ; Stack segment in internal ram 
                            588 ;--------------------------------------------------------
                            589 	.area	SSEG	(DATA)
   0022                     590 __start__stack:
   0022                     591 	.ds	1
                            592 
                            593 ;--------------------------------------------------------
                            594 ; indirectly addressable internal ram data
                            595 ;--------------------------------------------------------
                            596 	.area ISEG    (DATA)
                            597 ;--------------------------------------------------------
                            598 ; absolute internal ram data
                            599 ;--------------------------------------------------------
                            600 	.area IABS    (ABS,DATA)
                            601 	.area IABS    (ABS,DATA)
                            602 ;--------------------------------------------------------
                            603 ; bit data
                            604 ;--------------------------------------------------------
                            605 	.area BSEG    (BIT)
                            606 ;--------------------------------------------------------
                            607 ; paged external ram data
                            608 ;--------------------------------------------------------
                            609 	.area PSEG    (PAG,XDATA)
                            610 ;--------------------------------------------------------
                            611 ; external ram data
                            612 ;--------------------------------------------------------
                            613 	.area XSEG    (XDATA)
   0000                     614 _rf_read_rx_payload_PARM_2:
   0000                     615 	.ds 2
   0002                     616 _rf_read_rx_payload_dataptr_1_37:
   0002                     617 	.ds 3
   0005                     618 _rf_configure_debug_lite_PARM_2:
   0005                     619 	.ds 1
   0006                     620 _rf_configure_debug_lite_rx_1_39:
   0006                     621 	.ds 1
   0007                     622 _rf_configure_debug_lite_config_1_40:
   0007                     623 	.ds 1
   0008                     624 _rf_write_register_PARM_2:
   0008                     625 	.ds 3
   000B                     626 _rf_write_register_PARM_3:
   000B                     627 	.ds 2
   000D                     628 _rf_write_register_regnumber_1_42:
   000D                     629 	.ds 1
   000E                     630 _rf_write_tx_payload_PARM_2:
   000E                     631 	.ds 2
   0010                     632 _rf_write_tx_payload_PARM_3:
   0010                     633 	.ds 1
   0011                     634 _rf_write_tx_payload_dataptr_1_45:
   0011                     635 	.ds 3
   0014                     636 _rf_set_as_rx_rx_active_mode_1_49:
   0014                     637 	.ds 1
   0015                     638 _rf_set_as_rx_config_1_50:
   0015                     639 	.ds 1
   0016                     640 _rf_irq_clear_all_dataptr_1_54:
   0016                     641 	.ds 1
   0017                     642 _rf_set_as_tx_config_1_55:
   0017                     643 	.ds 1
   0018                     644 _rf_spi_execute_command_PARM_2:
   0018                     645 	.ds 3
   001B                     646 _rf_spi_execute_command_PARM_3:
   001B                     647 	.ds 2
   001D                     648 _rf_spi_execute_command_PARM_4:
   001D                     649 	.ds 1
   001E                     650 _rf_spi_execute_command_instruction_1_57:
   001E                     651 	.ds 1
   001F                     652 _rf_spi_execute_command_status_1_58:
   001F                     653 	.ds 1
   0020                     654 _rf_spi_send_read_PARM_2:
   0020                     655 	.ds 2
   0022                     656 _rf_spi_send_read_PARM_3:
   0022                     657 	.ds 1
   0023                     658 _rf_spi_send_read_dataptr_1_59:
   0023                     659 	.ds 3
   0026                     660 _rf_power_up_param_PARM_2:
   0026                     661 	.ds 1
   0027                     662 _rf_power_up_param_rx_active_mode_1_63:
   0027                     663 	.ds 1
   0028                     664 _rf_read_register_PARM_2:
   0028                     665 	.ds 3
   002B                     666 _rf_read_register_PARM_3:
   002B                     667 	.ds 2
   002D                     668 _rf_read_register_regnumber_1_69:
   002D                     669 	.ds 1
   002E                     670 _rf_spi_send_read_byte_byte_1_71:
   002E                     671 	.ds 1
   002F                     672 _rf_set_rx_addr_PARM_2:
   002F                     673 	.ds 2
   0031                     674 _rf_set_rx_addr_PARM_3:
   0031                     675 	.ds 1
   0032                     676 _rf_set_rx_addr_address_1_73:
   0032                     677 	.ds 3
   0035                     678 _rf_power_down_config_1_76:
   0035                     679 	.ds 1
   0036                     680 _rf_power_up_rx_active_mode_1_78:
   0036                     681 	.ds 1
   0037                     682 _rf_power_up_config_1_79:
   0037                     683 	.ds 1
   0038                     684 _gpio_pin_configure_PARM_2:
   0038                     685 	.ds 1
   0039                     686 _gpio_pin_configure_gpio_pin_id_1_86:
   0039                     687 	.ds 1
   003A                     688 _gpio_pin_val_read_gpio_pin_id_1_108:
   003A                     689 	.ds 1
   003B                     690 _gpio_pin_val_read_value_1_109:
   003B                     691 	.ds 1
   003C                     692 _gpio_pin_val_clear_gpio_pin_id_1_116:
   003C                     693 	.ds 1
   003D                     694 _gpio_pin_val_set_gpio_pin_id_1_122:
   003D                     695 	.ds 1
   003E                     696 _gpio_pin_val_write_PARM_2:
   003E                     697 	.ds 1
   003F                     698 _gpio_pin_val_write_gpio_pin_id_1_128:
   003F                     699 	.ds 1
   0040                     700 _delay_us_microseconds_1_132:
   0040                     701 	.ds 2
   0042                     702 _delay_s_seconds_1_135:
   0042                     703 	.ds 2
   0044                     704 _delay_ms_milliseconds_1_138:
   0044                     705 	.ds 2
   0046                     706 _pwm_configure_pwm_config_options_1_143:
   0046                     707 	.ds 1
   0047                     708 _pwm_start_PARM_2:
   0047                     709 	.ds 1
   0048                     710 _pwm_start_pwm_channel_1_145:
   0048                     711 	.ds 1
   0049                     712 _pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154:
   0049                     713 	.ds 1
   004A                     714 _pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156:
   004A                     715 	.ds 4
   004E                     716 _pwr_clk_mgmt_wakeup_configure_PARM_2:
   004E                     717 	.ds 2
   0050                     718 _pwr_clk_mgmt_wakeup_configure_wakeup_sources_config_options_1_158:
   0050                     719 	.ds 1
   0051                     720 _watchdog_set_wdsv_count_wdsv_value_1_161:
   0051                     721 	.ds 2
   0053                     722 _watchdog_start_and_set_timeout_in_ms_milliseconds_1_163:
   0053                     723 	.ds 4
   0057                     724 _watchdog_start_and_set_timeout_in_ms_wd_value_1_164:
   0057                     725 	.ds 2
   0059                     726 _interrupt_configure_ifp_PARM_2:
   0059                     727 	.ds 1
   005A                     728 _interrupt_configure_ifp_interrupt_ifp_input_1_167:
   005A                     729 	.ds 1
   005B                     730 _adc_configure_adc_config_options_1_181:
   005B                     731 	.ds 2
   005D                     732 _adc_set_input_channel_adc_channel_1_183:
   005D                     733 	.ds 1
   005E                     734 _adc_start_single_conversion_adc_channel_1_185:
   005E                     735 	.ds 1
   005F                     736 _adc_start_single_conversion_get_value_adc_channel_1_187:
   005F                     737 	.ds 1
   0060                     738 _timer0_configure_PARM_2:
   0060                     739 	.ds 2
   0062                     740 _timer0_configure_timer0_config_options_1_190:
   0062                     741 	.ds 1
   0063                     742 _timer1_configure_PARM_2:
   0063                     743 	.ds 2
   0065                     744 _timer1_configure_timer1_config_options_1_195:
   0065                     745 	.ds 1
   0066                     746 _uart_configure_manual_baud_calc_PARM_2:
   0066                     747 	.ds 2
   0068                     748 _uart_configure_manual_baud_calc_uart_config_options_1_205:
   0068                     749 	.ds 1
   0069                     750 _uart_calc_actual_baud_rate_from_s0rel_PARM_2:
   0069                     751 	.ds 1
   006A                     752 _uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_212:
   006A                     753 	.ds 2
   006C                     754 _uart_calc_actual_baud_rate_from_th1_PARM_2:
   006C                     755 	.ds 1
   006D                     756 _uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_214:
   006D                     757 	.ds 1
   006E                     758 _uart_calc_s0rel_value_PARM_2:
   006E                     759 	.ds 1
   006F                     760 _uart_calc_s0rel_value_desired_baud_rate_1_216:
   006F                     761 	.ds 4
   0073                     762 _uart_calc_th1_value_PARM_2:
   0073                     763 	.ds 1
   0074                     764 _uart_calc_th1_value_desired_baud_rate_1_218:
   0074                     765 	.ds 4
   0078                     766 _uart_configure_auto_baud_calc_PARM_2:
   0078                     767 	.ds 4
   007C                     768 _uart_configure_auto_baud_calc_uart_config_options_1_220:
   007C                     769 	.ds 1
   007D                     770 _rtc2_configure_PARM_2:
   007D                     771 	.ds 2
   007F                     772 _rtc2_configure_rtc2_config_options_1_230:
   007F                     773 	.ds 1
   0080                     774 _radiobegin_setup_1_233:
   0080                     775 	.ds 1
   0081                     776 _setChannel_channel_1_234:
   0081                     777 	.ds 1
   0082                     778 _setDataRate_speed_1_236:
   0082                     779 	.ds 1
   0083                     780 _setDataRate_buffer_1_237:
   0083                     781 	.ds 1
   0084                     782 _setAutoAck_enable_1_238:
   0084                     783 	.ds 1
   0085                     784 _setAutoAck_buffer_1_239:
   0085                     785 	.ds 1
   0086                     786 _setCRCLength_length_1_240:
   0086                     787 	.ds 1
   0087                     788 _setCRCLength_buffer_1_241:
   0087                     789 	.ds 1
   0088                     790 _setPALevel_setup_1_243:
   0088                     791 	.ds 1
   0089                     792 _openAllPipe_buffer_1_244:
   0089                     793 	.ds 5
   008E                     794 _openAllPipe_setup_1_244:
   008E                     795 	.ds 1
   008F                     796 _clientnf::
   008F                     797 	.ds 18
   00A1                     798 _stdimm::
   00A1                     799 	.ds 1
   00A2                     800 _dimmon_mode_1_249:
   00A2                     801 	.ds 1
   00A3                     802 _servernf::
   00A3                     803 	.ds 32
                            804 ;--------------------------------------------------------
                            805 ; absolute external ram data
                            806 ;--------------------------------------------------------
                            807 	.area XABS    (ABS,XDATA)
                            808 ;--------------------------------------------------------
                            809 ; external initialized ram data
                            810 ;--------------------------------------------------------
                            811 	.area XISEG   (XDATA)
   00D6                     812 _countrtc::
   00D6                     813 	.ds 4
                            814 	.area HOME    (CODE)
                            815 	.area GSINIT0 (CODE)
                            816 	.area GSINIT1 (CODE)
                            817 	.area GSINIT2 (CODE)
                            818 	.area GSINIT3 (CODE)
                            819 	.area GSINIT4 (CODE)
                            820 	.area GSINIT5 (CODE)
                            821 	.area GSINIT  (CODE)
                            822 	.area GSFINAL (CODE)
                            823 	.area CSEG    (CODE)
                            824 ;--------------------------------------------------------
                            825 ; interrupt vector 
                            826 ;--------------------------------------------------------
                            827 	.area HOME    (CODE)
   0000                     828 __interrupt_vect:
   0000 02 00 71      [24]  829 	ljmp	__sdcc_gsinit_startup
   0003 02 15 56      [24]  830 	ljmp	_isr_ifp
   0006                     831 	.ds	5
   000B 32            [24]  832 	reti
   000C                     833 	.ds	7
   0013 32            [24]  834 	reti
   0014                     835 	.ds	7
   001B 02 15 EA      [24]  836 	ljmp	_isr_t1
   001E                     837 	.ds	5
   0023 32            [24]  838 	reti
   0024                     839 	.ds	7
   002B 32            [24]  840 	reti
   002C                     841 	.ds	7
   0033 32            [24]  842 	reti
   0034                     843 	.ds	7
   003B 32            [24]  844 	reti
   003C                     845 	.ds	7
   0043 32            [24]  846 	reti
   0044                     847 	.ds	7
   004B 32            [24]  848 	reti
   004C                     849 	.ds	7
   0053 32            [24]  850 	reti
   0054                     851 	.ds	7
   005B 32            [24]  852 	reti
   005C                     853 	.ds	7
   0063 32            [24]  854 	reti
   0064                     855 	.ds	7
   006B 02 16 67      [24]  856 	ljmp	_isr_rtc2
                            857 ;--------------------------------------------------------
                            858 ; global & static initialisations
                            859 ;--------------------------------------------------------
                            860 	.area HOME    (CODE)
                            861 	.area GSINIT  (CODE)
                            862 	.area GSFINAL (CODE)
                            863 	.area GSINIT  (CODE)
                            864 	.globl __sdcc_gsinit_startup
                            865 	.globl __sdcc_program_startup
                            866 	.globl __start__stack
                            867 	.globl __mcs51_genXINIT
                            868 	.globl __mcs51_genXRAMCLEAR
                            869 	.globl __mcs51_genRAMCLEAR
                            870 	.area GSFINAL (CODE)
   00CA 02 00 6E      [24]  871 	ljmp	__sdcc_program_startup
                            872 ;--------------------------------------------------------
                            873 ; Home
                            874 ;--------------------------------------------------------
                            875 	.area HOME    (CODE)
                            876 	.area HOME    (CODE)
   006E                     877 __sdcc_program_startup:
   006E 02 16 8E      [24]  878 	ljmp	_main
                            879 ;	return from main will return to caller
                            880 ;--------------------------------------------------------
                            881 ; code
                            882 ;--------------------------------------------------------
                            883 	.area CSEG    (CODE)
                            884 ;------------------------------------------------------------
                            885 ;Allocation info for local variables in function 'rf_read_rx_payload'
                            886 ;------------------------------------------------------------
                            887 ;len                       Allocated with name '_rf_read_rx_payload_PARM_2'
                            888 ;dataptr                   Allocated with name '_rf_read_rx_payload_dataptr_1_37'
                            889 ;status                    Allocated with name '_rf_read_rx_payload_status_1_38'
                            890 ;------------------------------------------------------------
                            891 ;	../src/rf/src/rf_read_rx_payload.c:48: unsigned char rf_read_rx_payload(unsigned char * dataptr, unsigned int len)
                            892 ;	-----------------------------------------
                            893 ;	 function rf_read_rx_payload
                            894 ;	-----------------------------------------
   00CD                     895 _rf_read_rx_payload:
                     0007   896 	ar7 = 0x07
                     0006   897 	ar6 = 0x06
                     0005   898 	ar5 = 0x05
                     0004   899 	ar4 = 0x04
                     0003   900 	ar3 = 0x03
                     0002   901 	ar2 = 0x02
                     0001   902 	ar1 = 0x01
                     0000   903 	ar0 = 0x00
   00CD AF F0         [24]  904 	mov	r7,b
   00CF AE 83         [24]  905 	mov	r6,dph
   00D1 E5 82         [12]  906 	mov	a,dpl
   00D3 90 00 02      [24]  907 	mov	dptr,#_rf_read_rx_payload_dataptr_1_37
   00D6 F0            [24]  908 	movx	@dptr,a
   00D7 EE            [12]  909 	mov	a,r6
   00D8 A3            [24]  910 	inc	dptr
   00D9 F0            [24]  911 	movx	@dptr,a
   00DA EF            [12]  912 	mov	a,r7
   00DB A3            [24]  913 	inc	dptr
   00DC F0            [24]  914 	movx	@dptr,a
                            915 ;	../src/rf/src/rf_read_rx_payload.c:53: rf_clear_ce();
   00DD C2 E8         [12]  916 	clr _RFCON_SB_RFCE 
                            917 ;	../src/rf/src/rf_read_rx_payload.c:54: status = rf_spi_execute_command(RF_R_RX_PAYLOAD, dataptr, len, true);
   00DF 90 00 02      [24]  918 	mov	dptr,#_rf_read_rx_payload_dataptr_1_37
   00E2 E0            [24]  919 	movx	a,@dptr
   00E3 FD            [12]  920 	mov	r5,a
   00E4 A3            [24]  921 	inc	dptr
   00E5 E0            [24]  922 	movx	a,@dptr
   00E6 FE            [12]  923 	mov	r6,a
   00E7 A3            [24]  924 	inc	dptr
   00E8 E0            [24]  925 	movx	a,@dptr
   00E9 FF            [12]  926 	mov	r7,a
   00EA 90 00 00      [24]  927 	mov	dptr,#_rf_read_rx_payload_PARM_2
   00ED E0            [24]  928 	movx	a,@dptr
   00EE FB            [12]  929 	mov	r3,a
   00EF A3            [24]  930 	inc	dptr
   00F0 E0            [24]  931 	movx	a,@dptr
   00F1 FC            [12]  932 	mov	r4,a
   00F2 90 00 18      [24]  933 	mov	dptr,#_rf_spi_execute_command_PARM_2
   00F5 ED            [12]  934 	mov	a,r5
   00F6 F0            [24]  935 	movx	@dptr,a
   00F7 EE            [12]  936 	mov	a,r6
   00F8 A3            [24]  937 	inc	dptr
   00F9 F0            [24]  938 	movx	@dptr,a
   00FA EF            [12]  939 	mov	a,r7
   00FB A3            [24]  940 	inc	dptr
   00FC F0            [24]  941 	movx	@dptr,a
   00FD 90 00 1B      [24]  942 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0100 EB            [12]  943 	mov	a,r3
   0101 F0            [24]  944 	movx	@dptr,a
   0102 EC            [12]  945 	mov	a,r4
   0103 A3            [24]  946 	inc	dptr
   0104 F0            [24]  947 	movx	@dptr,a
   0105 90 00 1D      [24]  948 	mov	dptr,#_rf_spi_execute_command_PARM_4
   0108 74 01         [12]  949 	mov	a,#0x01
   010A F0            [24]  950 	movx	@dptr,a
   010B 75 82 61      [24]  951 	mov	dpl,#0x61
   010E 12 03 02      [24]  952 	lcall	_rf_spi_execute_command
   0111 AF 82         [24]  953 	mov	r7,dpl
                            954 ;	../src/rf/src/rf_read_rx_payload.c:55: rf_set_ce();
   0113 D2 E8         [12]  955 	setb _RFCON_SB_RFCE 
   0115 90 00 04      [24]  956 	mov	dptr,#0x0004
   0118 C0 07         [24]  957 	push	ar7
   011A 12 09 0F      [24]  958 	lcall	_delay_us
   011D D0 07         [24]  959 	pop	ar7
                            960 ;	../src/rf/src/rf_read_rx_payload.c:57: return status; //Return the STATUS register value
   011F 8F 82         [24]  961 	mov	dpl,r7
   0121 22            [24]  962 	ret
                            963 ;------------------------------------------------------------
                            964 ;Allocation info for local variables in function 'rf_configure_debug_lite'
                            965 ;------------------------------------------------------------
                            966 ;p0_payload_width          Allocated with name '_rf_configure_debug_lite_PARM_2'
                            967 ;rx                        Allocated with name '_rf_configure_debug_lite_rx_1_39'
                            968 ;config                    Allocated with name '_rf_configure_debug_lite_config_1_40'
                            969 ;------------------------------------------------------------
                            970 ;	../src/rf/src/rf_configure_debug_lite.c:48: void rf_configure_debug_lite(bool rx, unsigned char p0_payload_width)
                            971 ;	-----------------------------------------
                            972 ;	 function rf_configure_debug_lite
                            973 ;	-----------------------------------------
   0122                     974 _rf_configure_debug_lite:
   0122 E5 82         [12]  975 	mov	a,dpl
   0124 90 00 06      [24]  976 	mov	dptr,#_rf_configure_debug_lite_rx_1_39
   0127 F0            [24]  977 	movx	@dptr,a
                            978 ;	../src/rf/src/rf_configure_debug_lite.c:52: rf_spi_configure_enable(); //Enable RF SPI
   0128 12 01 C6      [24]  979 	lcall	_rf_spi_configure_enable
                            980 ;	../src/rf/src/rf_configure_debug_lite.c:55: config = 0;
   012B 90 00 07      [24]  981 	mov	dptr,#_rf_configure_debug_lite_config_1_40
   012E E4            [12]  982 	clr	a
   012F F0            [24]  983 	movx	@dptr,a
                            984 ;	../src/rf/src/rf_configure_debug_lite.c:56: rf_write_register(RF_EN_AA, &config, 1); //Turn auto-acknowledge off
   0130 90 00 08      [24]  985 	mov	dptr,#_rf_write_register_PARM_2
   0133 74 07         [12]  986 	mov	a,#_rf_configure_debug_lite_config_1_40
   0135 F0            [24]  987 	movx	@dptr,a
   0136 74 00         [12]  988 	mov	a,#(_rf_configure_debug_lite_config_1_40 >> 8)
   0138 A3            [24]  989 	inc	dptr
   0139 F0            [24]  990 	movx	@dptr,a
   013A E4            [12]  991 	clr	a
   013B A3            [24]  992 	inc	dptr
   013C F0            [24]  993 	movx	@dptr,a
   013D 90 00 0B      [24]  994 	mov	dptr,#_rf_write_register_PARM_3
   0140 74 01         [12]  995 	mov	a,#0x01
   0142 F0            [24]  996 	movx	@dptr,a
   0143 E4            [12]  997 	clr	a
   0144 A3            [24]  998 	inc	dptr
   0145 F0            [24]  999 	movx	@dptr,a
   0146 75 82 01      [24] 1000 	mov	dpl,#0x01
   0149 12 01 89      [24] 1001 	lcall	_rf_write_register
                           1002 ;	../src/rf/src/rf_configure_debug_lite.c:59: config = RF_CONFIG_DEFAULT_VAL; //Set config to the default value of the CONFIG register
   014C 90 00 07      [24] 1003 	mov	dptr,#_rf_configure_debug_lite_config_1_40
   014F 74 08         [12] 1004 	mov	a,#0x08
   0151 F0            [24] 1005 	movx	@dptr,a
                           1006 ;	../src/rf/src/rf_configure_debug_lite.c:62: rf_write_register(RF_RX_PW_P0, &p0_payload_width, 1);
   0152 90 00 08      [24] 1007 	mov	dptr,#_rf_write_register_PARM_2
   0155 74 05         [12] 1008 	mov	a,#_rf_configure_debug_lite_PARM_2
   0157 F0            [24] 1009 	movx	@dptr,a
   0158 74 00         [12] 1010 	mov	a,#(_rf_configure_debug_lite_PARM_2 >> 8)
   015A A3            [24] 1011 	inc	dptr
   015B F0            [24] 1012 	movx	@dptr,a
   015C E4            [12] 1013 	clr	a
   015D A3            [24] 1014 	inc	dptr
   015E F0            [24] 1015 	movx	@dptr,a
   015F 90 00 0B      [24] 1016 	mov	dptr,#_rf_write_register_PARM_3
   0162 74 01         [12] 1017 	mov	a,#0x01
   0164 F0            [24] 1018 	movx	@dptr,a
   0165 E4            [12] 1019 	clr	a
   0166 A3            [24] 1020 	inc	dptr
   0167 F0            [24] 1021 	movx	@dptr,a
   0168 75 82 11      [24] 1022 	mov	dpl,#0x11
   016B 12 01 89      [24] 1023 	lcall	_rf_write_register
                           1024 ;	../src/rf/src/rf_configure_debug_lite.c:65: if(rx != false)
   016E 90 00 06      [24] 1025 	mov	dptr,#_rf_configure_debug_lite_rx_1_39
   0171 E0            [24] 1026 	movx	a,@dptr
   0172 FF            [12] 1027 	mov	r7,a
   0173 60 06         [24] 1028 	jz	00102$
                           1029 ;	../src/rf/src/rf_configure_debug_lite.c:67: config |= RF_CONFIG_PRIM_RX;
   0175 90 00 07      [24] 1030 	mov	dptr,#_rf_configure_debug_lite_config_1_40
   0178 74 09         [12] 1031 	mov	a,#0x09
   017A F0            [24] 1032 	movx	@dptr,a
   017B                    1033 00102$:
                           1034 ;	../src/rf/src/rf_configure_debug_lite.c:70: rf_power_up_param(true, config);
   017B 90 00 07      [24] 1035 	mov	dptr,#_rf_configure_debug_lite_config_1_40
   017E E0            [24] 1036 	movx	a,@dptr
   017F 90 00 26      [24] 1037 	mov	dptr,#_rf_power_up_param_PARM_2
   0182 F0            [24] 1038 	movx	@dptr,a
   0183 75 82 01      [24] 1039 	mov	dpl,#0x01
   0186 02 03 F1      [24] 1040 	ljmp	_rf_power_up_param
                           1041 ;------------------------------------------------------------
                           1042 ;Allocation info for local variables in function 'rf_write_register'
                           1043 ;------------------------------------------------------------
                           1044 ;dataptr                   Allocated with name '_rf_write_register_PARM_2'
                           1045 ;len                       Allocated with name '_rf_write_register_PARM_3'
                           1046 ;regnumber                 Allocated with name '_rf_write_register_regnumber_1_42'
                           1047 ;------------------------------------------------------------
                           1048 ;	../src/rf/src/rf_write_register.c:49: unsigned char rf_write_register(unsigned char regnumber, unsigned char * dataptr, unsigned int len)
                           1049 ;	-----------------------------------------
                           1050 ;	 function rf_write_register
                           1051 ;	-----------------------------------------
   0189                    1052 _rf_write_register:
   0189 E5 82         [12] 1053 	mov	a,dpl
                           1054 ;	../src/rf/src/rf_write_register.c:52: return rf_spi_execute_command(RF_W_REGISTER | (regnumber & RF_W_REGISTER_DATA), dataptr, len, false);
   018B 90 00 0D      [24] 1055 	mov	dptr,#_rf_write_register_regnumber_1_42
   018E F0            [24] 1056 	movx	@dptr,a
   018F FF            [12] 1057 	mov	r7,a
   0190 74 1F         [12] 1058 	mov	a,#0x1F
   0192 5F            [12] 1059 	anl	a,r7
   0193 44 20         [12] 1060 	orl	a,#0x20
   0195 FF            [12] 1061 	mov	r7,a
   0196 90 00 08      [24] 1062 	mov	dptr,#_rf_write_register_PARM_2
   0199 E0            [24] 1063 	movx	a,@dptr
   019A FC            [12] 1064 	mov	r4,a
   019B A3            [24] 1065 	inc	dptr
   019C E0            [24] 1066 	movx	a,@dptr
   019D FD            [12] 1067 	mov	r5,a
   019E A3            [24] 1068 	inc	dptr
   019F E0            [24] 1069 	movx	a,@dptr
   01A0 FE            [12] 1070 	mov	r6,a
   01A1 90 00 0B      [24] 1071 	mov	dptr,#_rf_write_register_PARM_3
   01A4 E0            [24] 1072 	movx	a,@dptr
   01A5 FA            [12] 1073 	mov	r2,a
   01A6 A3            [24] 1074 	inc	dptr
   01A7 E0            [24] 1075 	movx	a,@dptr
   01A8 FB            [12] 1076 	mov	r3,a
   01A9 90 00 18      [24] 1077 	mov	dptr,#_rf_spi_execute_command_PARM_2
   01AC EC            [12] 1078 	mov	a,r4
   01AD F0            [24] 1079 	movx	@dptr,a
   01AE ED            [12] 1080 	mov	a,r5
   01AF A3            [24] 1081 	inc	dptr
   01B0 F0            [24] 1082 	movx	@dptr,a
   01B1 EE            [12] 1083 	mov	a,r6
   01B2 A3            [24] 1084 	inc	dptr
   01B3 F0            [24] 1085 	movx	@dptr,a
   01B4 90 00 1B      [24] 1086 	mov	dptr,#_rf_spi_execute_command_PARM_3
   01B7 EA            [12] 1087 	mov	a,r2
   01B8 F0            [24] 1088 	movx	@dptr,a
   01B9 EB            [12] 1089 	mov	a,r3
   01BA A3            [24] 1090 	inc	dptr
   01BB F0            [24] 1091 	movx	@dptr,a
   01BC 90 00 1D      [24] 1092 	mov	dptr,#_rf_spi_execute_command_PARM_4
   01BF E4            [12] 1093 	clr	a
   01C0 F0            [24] 1094 	movx	@dptr,a
   01C1 8F 82         [24] 1095 	mov	dpl,r7
   01C3 02 03 02      [24] 1096 	ljmp	_rf_spi_execute_command
                           1097 ;------------------------------------------------------------
                           1098 ;Allocation info for local variables in function 'rf_spi_configure_enable'
                           1099 ;------------------------------------------------------------
                           1100 ;	../src/rf/src/rf_spi_configure_enable.c:47: void rf_spi_configure_enable()
                           1101 ;	-----------------------------------------
                           1102 ;	 function rf_spi_configure_enable
                           1103 ;	-----------------------------------------
   01C6                    1104 _rf_spi_configure_enable:
                           1105 ;	../src/rf/src/rf_spi_configure_enable.c:50: RFCON = 0x02;
   01C6 75 E8 02      [24] 1106 	mov	_RFCON,#0x02
                           1107 ;	../src/rf/src/rf_spi_configure_enable.c:51: RFCON = RFCON_RFCKEN;
   01C9 75 E8 04      [24] 1108 	mov	_RFCON,#0x04
   01CC 22            [24] 1109 	ret
                           1110 ;------------------------------------------------------------
                           1111 ;Allocation info for local variables in function 'rf_write_tx_payload'
                           1112 ;------------------------------------------------------------
                           1113 ;len                       Allocated with name '_rf_write_tx_payload_PARM_2'
                           1114 ;transmit                  Allocated with name '_rf_write_tx_payload_PARM_3'
                           1115 ;dataptr                   Allocated with name '_rf_write_tx_payload_dataptr_1_45'
                           1116 ;status                    Allocated with name '_rf_write_tx_payload_status_1_46'
                           1117 ;------------------------------------------------------------
                           1118 ;	../src/rf/src/rf_write_tx_payload.c:49: unsigned char rf_write_tx_payload(unsigned char * dataptr, unsigned int len, bool transmit)
                           1119 ;	-----------------------------------------
                           1120 ;	 function rf_write_tx_payload
                           1121 ;	-----------------------------------------
   01CD                    1122 _rf_write_tx_payload:
   01CD AF F0         [24] 1123 	mov	r7,b
   01CF AE 83         [24] 1124 	mov	r6,dph
   01D1 E5 82         [12] 1125 	mov	a,dpl
   01D3 90 00 11      [24] 1126 	mov	dptr,#_rf_write_tx_payload_dataptr_1_45
   01D6 F0            [24] 1127 	movx	@dptr,a
   01D7 EE            [12] 1128 	mov	a,r6
   01D8 A3            [24] 1129 	inc	dptr
   01D9 F0            [24] 1130 	movx	@dptr,a
   01DA EF            [12] 1131 	mov	a,r7
   01DB A3            [24] 1132 	inc	dptr
   01DC F0            [24] 1133 	movx	@dptr,a
                           1134 ;	../src/rf/src/rf_write_tx_payload.c:53: status = rf_spi_execute_command(RF_W_TX_PAYLOAD, dataptr, len, false); //Write the payload
   01DD 90 00 11      [24] 1135 	mov	dptr,#_rf_write_tx_payload_dataptr_1_45
   01E0 E0            [24] 1136 	movx	a,@dptr
   01E1 FD            [12] 1137 	mov	r5,a
   01E2 A3            [24] 1138 	inc	dptr
   01E3 E0            [24] 1139 	movx	a,@dptr
   01E4 FE            [12] 1140 	mov	r6,a
   01E5 A3            [24] 1141 	inc	dptr
   01E6 E0            [24] 1142 	movx	a,@dptr
   01E7 FF            [12] 1143 	mov	r7,a
   01E8 90 00 0E      [24] 1144 	mov	dptr,#_rf_write_tx_payload_PARM_2
   01EB E0            [24] 1145 	movx	a,@dptr
   01EC FB            [12] 1146 	mov	r3,a
   01ED A3            [24] 1147 	inc	dptr
   01EE E0            [24] 1148 	movx	a,@dptr
   01EF FC            [12] 1149 	mov	r4,a
   01F0 90 00 18      [24] 1150 	mov	dptr,#_rf_spi_execute_command_PARM_2
   01F3 ED            [12] 1151 	mov	a,r5
   01F4 F0            [24] 1152 	movx	@dptr,a
   01F5 EE            [12] 1153 	mov	a,r6
   01F6 A3            [24] 1154 	inc	dptr
   01F7 F0            [24] 1155 	movx	@dptr,a
   01F8 EF            [12] 1156 	mov	a,r7
   01F9 A3            [24] 1157 	inc	dptr
   01FA F0            [24] 1158 	movx	@dptr,a
   01FB 90 00 1B      [24] 1159 	mov	dptr,#_rf_spi_execute_command_PARM_3
   01FE EB            [12] 1160 	mov	a,r3
   01FF F0            [24] 1161 	movx	@dptr,a
   0200 EC            [12] 1162 	mov	a,r4
   0201 A3            [24] 1163 	inc	dptr
   0202 F0            [24] 1164 	movx	@dptr,a
   0203 90 00 1D      [24] 1165 	mov	dptr,#_rf_spi_execute_command_PARM_4
   0206 E4            [12] 1166 	clr	a
   0207 F0            [24] 1167 	movx	@dptr,a
   0208 75 82 A0      [24] 1168 	mov	dpl,#0xA0
   020B 12 03 02      [24] 1169 	lcall	_rf_spi_execute_command
   020E AF 82         [24] 1170 	mov	r7,dpl
                           1171 ;	../src/rf/src/rf_write_tx_payload.c:56: if(transmit == true)
   0210 90 00 10      [24] 1172 	mov	dptr,#_rf_write_tx_payload_PARM_3
   0213 E0            [24] 1173 	movx	a,@dptr
   0214 FE            [12] 1174 	mov	r6,a
   0215 BE 01 07      [24] 1175 	cjne	r6,#0x01,00102$
                           1176 ;	../src/rf/src/rf_write_tx_payload.c:58: rf_transmit();
   0218 C0 07         [24] 1177 	push	ar7
   021A 12 02 22      [24] 1178 	lcall	_rf_transmit
   021D D0 07         [24] 1179 	pop	ar7
   021F                    1180 00102$:
                           1181 ;	../src/rf/src/rf_write_tx_payload.c:61: return status; //Return the value of STATUS
   021F 8F 82         [24] 1182 	mov	dpl,r7
   0221 22            [24] 1183 	ret
                           1184 ;------------------------------------------------------------
                           1185 ;Allocation info for local variables in function 'rf_transmit'
                           1186 ;------------------------------------------------------------
                           1187 ;	../src/rf/src/rf_transmit.c:47: void rf_transmit()
                           1188 ;	-----------------------------------------
                           1189 ;	 function rf_transmit
                           1190 ;	-----------------------------------------
   0222                    1191 _rf_transmit:
                           1192 ;	../src/rf/src/rf_transmit.c:50: rf_set_ce();
   0222 D2 E8         [12] 1193 	setb _RFCON_SB_RFCE 
   0224 90 00 04      [24] 1194 	mov	dptr,#0x0004
   0227 12 09 0F      [24] 1195 	lcall	_delay_us
                           1196 ;	../src/rf/src/rf_transmit.c:51: delay_us(10);
   022A 90 00 0A      [24] 1197 	mov	dptr,#0x000A
   022D 12 09 0F      [24] 1198 	lcall	_delay_us
                           1199 ;	../src/rf/src/rf_transmit.c:52: rf_clear_ce();
   0230 C2 E8         [12] 1200 	clr _RFCON_SB_RFCE 
   0232 22            [24] 1201 	ret
                           1202 ;------------------------------------------------------------
                           1203 ;Allocation info for local variables in function 'rf_set_as_rx'
                           1204 ;------------------------------------------------------------
                           1205 ;rx_active_mode            Allocated with name '_rf_set_as_rx_rx_active_mode_1_49'
                           1206 ;config                    Allocated with name '_rf_set_as_rx_config_1_50'
                           1207 ;------------------------------------------------------------
                           1208 ;	../src/rf/src/rf_set_as_rx.c:47: void rf_set_as_rx(bool rx_active_mode)
                           1209 ;	-----------------------------------------
                           1210 ;	 function rf_set_as_rx
                           1211 ;	-----------------------------------------
   0233                    1212 _rf_set_as_rx:
   0233 E5 82         [12] 1213 	mov	a,dpl
   0235 90 00 14      [24] 1214 	mov	dptr,#_rf_set_as_rx_rx_active_mode_1_49
   0238 F0            [24] 1215 	movx	@dptr,a
                           1216 ;	../src/rf/src/rf_set_as_rx.c:51: rf_read_register(RF_CONFIG, &config, 1); //Read the current CONFIG value
   0239 90 00 28      [24] 1217 	mov	dptr,#_rf_read_register_PARM_2
   023C 74 15         [12] 1218 	mov	a,#_rf_set_as_rx_config_1_50
   023E F0            [24] 1219 	movx	@dptr,a
   023F 74 00         [12] 1220 	mov	a,#(_rf_set_as_rx_config_1_50 >> 8)
   0241 A3            [24] 1221 	inc	dptr
   0242 F0            [24] 1222 	movx	@dptr,a
   0243 E4            [12] 1223 	clr	a
   0244 A3            [24] 1224 	inc	dptr
   0245 F0            [24] 1225 	movx	@dptr,a
   0246 90 00 2B      [24] 1226 	mov	dptr,#_rf_read_register_PARM_3
   0249 74 01         [12] 1227 	mov	a,#0x01
   024B F0            [24] 1228 	movx	@dptr,a
   024C E4            [12] 1229 	clr	a
   024D A3            [24] 1230 	inc	dptr
   024E F0            [24] 1231 	movx	@dptr,a
   024F 75 82 00      [24] 1232 	mov	dpl,#0x00
   0252 12 04 3D      [24] 1233 	lcall	_rf_read_register
                           1234 ;	../src/rf/src/rf_set_as_rx.c:54: if((config & RF_CONFIG_PRIM_RX) != 0)
   0255 90 00 15      [24] 1235 	mov	dptr,#_rf_set_as_rx_config_1_50
   0258 E0            [24] 1236 	movx	a,@dptr
   0259 FF            [12] 1237 	mov	r7,a
   025A 30 E0 01      [24] 1238 	jnb	acc.0,00102$
                           1239 ;	../src/rf/src/rf_set_as_rx.c:56: return;
   025D 22            [24] 1240 	ret
   025E                    1241 00102$:
                           1242 ;	../src/rf/src/rf_set_as_rx.c:60: config |= RF_CONFIG_PRIM_RX;
   025E 90 00 15      [24] 1243 	mov	dptr,#_rf_set_as_rx_config_1_50
   0261 74 01         [12] 1244 	mov	a,#0x01
   0263 4F            [12] 1245 	orl	a,r7
   0264 F0            [24] 1246 	movx	@dptr,a
                           1247 ;	../src/rf/src/rf_set_as_rx.c:61: rf_write_register(RF_CONFIG, &config, 1);
   0265 90 00 08      [24] 1248 	mov	dptr,#_rf_write_register_PARM_2
   0268 74 15         [12] 1249 	mov	a,#_rf_set_as_rx_config_1_50
   026A F0            [24] 1250 	movx	@dptr,a
   026B 74 00         [12] 1251 	mov	a,#(_rf_set_as_rx_config_1_50 >> 8)
   026D A3            [24] 1252 	inc	dptr
   026E F0            [24] 1253 	movx	@dptr,a
   026F E4            [12] 1254 	clr	a
   0270 A3            [24] 1255 	inc	dptr
   0271 F0            [24] 1256 	movx	@dptr,a
   0272 90 00 0B      [24] 1257 	mov	dptr,#_rf_write_register_PARM_3
   0275 74 01         [12] 1258 	mov	a,#0x01
   0277 F0            [24] 1259 	movx	@dptr,a
   0278 E4            [12] 1260 	clr	a
   0279 A3            [24] 1261 	inc	dptr
   027A F0            [24] 1262 	movx	@dptr,a
   027B 75 82 00      [24] 1263 	mov	dpl,#0x00
   027E 12 01 89      [24] 1264 	lcall	_rf_write_register
                           1265 ;	../src/rf/src/rf_set_as_rx.c:64: if(rx_active_mode != false)
   0281 90 00 14      [24] 1266 	mov	dptr,#_rf_set_as_rx_rx_active_mode_1_49
   0284 E0            [24] 1267 	movx	a,@dptr
   0285 FF            [12] 1268 	mov	r7,a
   0286 60 08         [24] 1269 	jz	00104$
                           1270 ;	../src/rf/src/rf_set_as_rx.c:66: rf_set_ce();
   0288 D2 E8         [12] 1271 	setb _RFCON_SB_RFCE 
   028A 90 00 04      [24] 1272 	mov	dptr,#0x0004
   028D 02 09 0F      [24] 1273 	ljmp	_delay_us
   0290                    1274 00104$:
                           1275 ;	../src/rf/src/rf_set_as_rx.c:70: rf_clear_ce();
   0290 C2 E8         [12] 1276 	clr _RFCON_SB_RFCE 
   0292 22            [24] 1277 	ret
                           1278 ;------------------------------------------------------------
                           1279 ;Allocation info for local variables in function 'rf_irq_clear_all'
                           1280 ;------------------------------------------------------------
                           1281 ;dataptr                   Allocated with name '_rf_irq_clear_all_dataptr_1_54'
                           1282 ;------------------------------------------------------------
                           1283 ;	../src/rf/src/rf_irq_clear_all.c:47: void rf_irq_clear_all()
                           1284 ;	-----------------------------------------
                           1285 ;	 function rf_irq_clear_all
                           1286 ;	-----------------------------------------
   0293                    1287 _rf_irq_clear_all:
                           1288 ;	../src/rf/src/rf_irq_clear_all.c:50: unsigned char dataptr = RF_STATUS_RX_DR | RF_STATUS_TX_DS | RF_STATUS_MAX_RT;
   0293 90 00 16      [24] 1289 	mov	dptr,#_rf_irq_clear_all_dataptr_1_54
   0296 74 70         [12] 1290 	mov	a,#0x70
   0298 F0            [24] 1291 	movx	@dptr,a
                           1292 ;	../src/rf/src/rf_irq_clear_all.c:52: rf_write_register(RF_STATUS, &dataptr, 1);
   0299 90 00 08      [24] 1293 	mov	dptr,#_rf_write_register_PARM_2
   029C 74 16         [12] 1294 	mov	a,#_rf_irq_clear_all_dataptr_1_54
   029E F0            [24] 1295 	movx	@dptr,a
   029F 74 00         [12] 1296 	mov	a,#(_rf_irq_clear_all_dataptr_1_54 >> 8)
   02A1 A3            [24] 1297 	inc	dptr
   02A2 F0            [24] 1298 	movx	@dptr,a
   02A3 E4            [12] 1299 	clr	a
   02A4 A3            [24] 1300 	inc	dptr
   02A5 F0            [24] 1301 	movx	@dptr,a
   02A6 90 00 0B      [24] 1302 	mov	dptr,#_rf_write_register_PARM_3
   02A9 74 01         [12] 1303 	mov	a,#0x01
   02AB F0            [24] 1304 	movx	@dptr,a
   02AC E4            [12] 1305 	clr	a
   02AD A3            [24] 1306 	inc	dptr
   02AE F0            [24] 1307 	movx	@dptr,a
   02AF 75 82 07      [24] 1308 	mov	dpl,#0x07
   02B2 12 01 89      [24] 1309 	lcall	_rf_write_register
                           1310 ;	../src/rf/src/rf_irq_clear_all.c:54: sbit_clear(IRCON_SB_RFIRQ); //Clear the master interrupt
   02B5 C2 C1         [12] 1311 	clr _IRCON_SB_RFIRQ 
   02B7 22            [24] 1312 	ret
                           1313 ;------------------------------------------------------------
                           1314 ;Allocation info for local variables in function 'rf_set_as_tx'
                           1315 ;------------------------------------------------------------
                           1316 ;config                    Allocated with name '_rf_set_as_tx_config_1_55'
                           1317 ;------------------------------------------------------------
                           1318 ;	../src/rf/src/rf_set_as_tx.c:47: void rf_set_as_tx()
                           1319 ;	-----------------------------------------
                           1320 ;	 function rf_set_as_tx
                           1321 ;	-----------------------------------------
   02B8                    1322 _rf_set_as_tx:
                           1323 ;	../src/rf/src/rf_set_as_tx.c:51: rf_read_register(RF_CONFIG, &config, 1); //Read the current CONFIG value
   02B8 90 00 28      [24] 1324 	mov	dptr,#_rf_read_register_PARM_2
   02BB 74 17         [12] 1325 	mov	a,#_rf_set_as_tx_config_1_55
   02BD F0            [24] 1326 	movx	@dptr,a
   02BE 74 00         [12] 1327 	mov	a,#(_rf_set_as_tx_config_1_55 >> 8)
   02C0 A3            [24] 1328 	inc	dptr
   02C1 F0            [24] 1329 	movx	@dptr,a
   02C2 E4            [12] 1330 	clr	a
   02C3 A3            [24] 1331 	inc	dptr
   02C4 F0            [24] 1332 	movx	@dptr,a
   02C5 90 00 2B      [24] 1333 	mov	dptr,#_rf_read_register_PARM_3
   02C8 74 01         [12] 1334 	mov	a,#0x01
   02CA F0            [24] 1335 	movx	@dptr,a
   02CB E4            [12] 1336 	clr	a
   02CC A3            [24] 1337 	inc	dptr
   02CD F0            [24] 1338 	movx	@dptr,a
   02CE 75 82 00      [24] 1339 	mov	dpl,#0x00
   02D1 12 04 3D      [24] 1340 	lcall	_rf_read_register
                           1341 ;	../src/rf/src/rf_set_as_tx.c:54: if((config & RF_CONFIG_PRIM_RX) == 0)
   02D4 90 00 17      [24] 1342 	mov	dptr,#_rf_set_as_tx_config_1_55
   02D7 E0            [24] 1343 	movx	a,@dptr
   02D8 FF            [12] 1344 	mov	r7,a
   02D9 20 E0 01      [24] 1345 	jb	acc.0,00102$
                           1346 ;	../src/rf/src/rf_set_as_tx.c:56: return;
   02DC 22            [24] 1347 	ret
   02DD                    1348 00102$:
                           1349 ;	../src/rf/src/rf_set_as_tx.c:59: rf_clear_ce(); //Clear the CE pin
   02DD C2 E8         [12] 1350 	clr _RFCON_SB_RFCE 
                           1351 ;	../src/rf/src/rf_set_as_tx.c:62: config &= (~RF_CONFIG_PRIM_RX);
   02DF 90 00 17      [24] 1352 	mov	dptr,#_rf_set_as_tx_config_1_55
   02E2 74 FE         [12] 1353 	mov	a,#0xFE
   02E4 5F            [12] 1354 	anl	a,r7
   02E5 F0            [24] 1355 	movx	@dptr,a
                           1356 ;	../src/rf/src/rf_set_as_tx.c:63: rf_write_register(RF_CONFIG, &config, 1);
   02E6 90 00 08      [24] 1357 	mov	dptr,#_rf_write_register_PARM_2
   02E9 74 17         [12] 1358 	mov	a,#_rf_set_as_tx_config_1_55
   02EB F0            [24] 1359 	movx	@dptr,a
   02EC 74 00         [12] 1360 	mov	a,#(_rf_set_as_tx_config_1_55 >> 8)
   02EE A3            [24] 1361 	inc	dptr
   02EF F0            [24] 1362 	movx	@dptr,a
   02F0 E4            [12] 1363 	clr	a
   02F1 A3            [24] 1364 	inc	dptr
   02F2 F0            [24] 1365 	movx	@dptr,a
   02F3 90 00 0B      [24] 1366 	mov	dptr,#_rf_write_register_PARM_3
   02F6 74 01         [12] 1367 	mov	a,#0x01
   02F8 F0            [24] 1368 	movx	@dptr,a
   02F9 E4            [12] 1369 	clr	a
   02FA A3            [24] 1370 	inc	dptr
   02FB F0            [24] 1371 	movx	@dptr,a
   02FC 75 82 00      [24] 1372 	mov	dpl,#0x00
   02FF 02 01 89      [24] 1373 	ljmp	_rf_write_register
                           1374 ;------------------------------------------------------------
                           1375 ;Allocation info for local variables in function 'rf_spi_execute_command'
                           1376 ;------------------------------------------------------------
                           1377 ;dataptr                   Allocated with name '_rf_spi_execute_command_PARM_2'
                           1378 ;len                       Allocated with name '_rf_spi_execute_command_PARM_3'
                           1379 ;copydata                  Allocated with name '_rf_spi_execute_command_PARM_4'
                           1380 ;instruction               Allocated with name '_rf_spi_execute_command_instruction_1_57'
                           1381 ;status                    Allocated with name '_rf_spi_execute_command_status_1_58'
                           1382 ;------------------------------------------------------------
                           1383 ;	../src/rf/src/rf_spi_execute_command.c:50: unsigned char rf_spi_execute_command(unsigned char instruction, unsigned char * dataptr, unsigned int len, bool copydata)
                           1384 ;	-----------------------------------------
                           1385 ;	 function rf_spi_execute_command
                           1386 ;	-----------------------------------------
   0302                    1387 _rf_spi_execute_command:
   0302 E5 82         [12] 1388 	mov	a,dpl
                           1389 ;	../src/rf/src/rf_spi_execute_command.c:52: unsigned char status = instruction; //status writes the instruction, then reads the current STATUS value
   0304 90 00 1E      [24] 1390 	mov	dptr,#_rf_spi_execute_command_instruction_1_57
   0307 F0            [24] 1391 	movx	@dptr,a
   0308 FF            [12] 1392 	mov	r7,a
   0309 90 00 1F      [24] 1393 	mov	dptr,#_rf_spi_execute_command_status_1_58
   030C F0            [24] 1394 	movx	@dptr,a
                           1395 ;	../src/rf/src/rf_spi_execute_command.c:54: rf_clear_csn(); //Clear CSN to start the transaction
   030D C2 E9         [12] 1396 	clr _RFCON_SB_RFCSN 
                           1397 ;	../src/rf/src/rf_spi_execute_command.c:57: rf_spi_send_read(&status, 1, true);
   030F 90 00 20      [24] 1398 	mov	dptr,#_rf_spi_send_read_PARM_2
   0312 74 01         [12] 1399 	mov	a,#0x01
   0314 F0            [24] 1400 	movx	@dptr,a
   0315 E4            [12] 1401 	clr	a
   0316 A3            [24] 1402 	inc	dptr
   0317 F0            [24] 1403 	movx	@dptr,a
   0318 90 00 22      [24] 1404 	mov	dptr,#_rf_spi_send_read_PARM_3
   031B 74 01         [12] 1405 	mov	a,#0x01
   031D F0            [24] 1406 	movx	@dptr,a
   031E 90 00 1F      [24] 1407 	mov	dptr,#_rf_spi_execute_command_status_1_58
   0321 75 F0 00      [24] 1408 	mov	b,#0x00
   0324 12 03 5E      [24] 1409 	lcall	_rf_spi_send_read
                           1410 ;	../src/rf/src/rf_spi_execute_command.c:58: rf_spi_send_read(dataptr, len, copydata);
   0327 90 00 18      [24] 1411 	mov	dptr,#_rf_spi_execute_command_PARM_2
   032A E0            [24] 1412 	movx	a,@dptr
   032B FD            [12] 1413 	mov	r5,a
   032C A3            [24] 1414 	inc	dptr
   032D E0            [24] 1415 	movx	a,@dptr
   032E FE            [12] 1416 	mov	r6,a
   032F A3            [24] 1417 	inc	dptr
   0330 E0            [24] 1418 	movx	a,@dptr
   0331 FF            [12] 1419 	mov	r7,a
   0332 90 00 1B      [24] 1420 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0335 E0            [24] 1421 	movx	a,@dptr
   0336 FB            [12] 1422 	mov	r3,a
   0337 A3            [24] 1423 	inc	dptr
   0338 E0            [24] 1424 	movx	a,@dptr
   0339 FC            [12] 1425 	mov	r4,a
   033A 90 00 1D      [24] 1426 	mov	dptr,#_rf_spi_execute_command_PARM_4
   033D E0            [24] 1427 	movx	a,@dptr
   033E FA            [12] 1428 	mov	r2,a
   033F 90 00 20      [24] 1429 	mov	dptr,#_rf_spi_send_read_PARM_2
   0342 EB            [12] 1430 	mov	a,r3
   0343 F0            [24] 1431 	movx	@dptr,a
   0344 EC            [12] 1432 	mov	a,r4
   0345 A3            [24] 1433 	inc	dptr
   0346 F0            [24] 1434 	movx	@dptr,a
   0347 90 00 22      [24] 1435 	mov	dptr,#_rf_spi_send_read_PARM_3
   034A EA            [12] 1436 	mov	a,r2
   034B F0            [24] 1437 	movx	@dptr,a
   034C 8D 82         [24] 1438 	mov	dpl,r5
   034E 8E 83         [24] 1439 	mov	dph,r6
   0350 8F F0         [24] 1440 	mov	b,r7
   0352 12 03 5E      [24] 1441 	lcall	_rf_spi_send_read
                           1442 ;	../src/rf/src/rf_spi_execute_command.c:60: rf_set_csn(); //Set CSN to end the transaction
   0355 D2 E9         [12] 1443 	setb _RFCON_SB_RFCSN 
                           1444 ;	../src/rf/src/rf_spi_execute_command.c:62: return status; //Return the value of STATUS
   0357 90 00 1F      [24] 1445 	mov	dptr,#_rf_spi_execute_command_status_1_58
   035A E0            [24] 1446 	movx	a,@dptr
   035B F5 82         [12] 1447 	mov	dpl,a
   035D 22            [24] 1448 	ret
                           1449 ;------------------------------------------------------------
                           1450 ;Allocation info for local variables in function 'rf_spi_send_read'
                           1451 ;------------------------------------------------------------
                           1452 ;sloc0                     Allocated with name '_rf_spi_send_read_sloc0_1_0'
                           1453 ;sloc1                     Allocated with name '_rf_spi_send_read_sloc1_1_0'
                           1454 ;len                       Allocated with name '_rf_spi_send_read_PARM_2'
                           1455 ;copydata                  Allocated with name '_rf_spi_send_read_PARM_3'
                           1456 ;dataptr                   Allocated with name '_rf_spi_send_read_dataptr_1_59'
                           1457 ;i                         Allocated with name '_rf_spi_send_read_i_1_60'
                           1458 ;tempbyte                  Allocated with name '_rf_spi_send_read_tempbyte_1_60'
                           1459 ;------------------------------------------------------------
                           1460 ;	../src/rf/src/rf_spi_send_read.c:49: void rf_spi_send_read(unsigned char * dataptr, unsigned int len, bool copydata)
                           1461 ;	-----------------------------------------
                           1462 ;	 function rf_spi_send_read
                           1463 ;	-----------------------------------------
   035E                    1464 _rf_spi_send_read:
   035E AF F0         [24] 1465 	mov	r7,b
   0360 AE 83         [24] 1466 	mov	r6,dph
   0362 E5 82         [12] 1467 	mov	a,dpl
   0364 90 00 23      [24] 1468 	mov	dptr,#_rf_spi_send_read_dataptr_1_59
   0367 F0            [24] 1469 	movx	@dptr,a
   0368 EE            [12] 1470 	mov	a,r6
   0369 A3            [24] 1471 	inc	dptr
   036A F0            [24] 1472 	movx	@dptr,a
   036B EF            [12] 1473 	mov	a,r7
   036C A3            [24] 1474 	inc	dptr
   036D F0            [24] 1475 	movx	@dptr,a
                           1476 ;	../src/rf/src/rf_spi_send_read.c:55: for(i = 0; i < len; i++)
   036E 90 00 23      [24] 1477 	mov	dptr,#_rf_spi_send_read_dataptr_1_59
   0371 E0            [24] 1478 	movx	a,@dptr
   0372 FD            [12] 1479 	mov	r5,a
   0373 A3            [24] 1480 	inc	dptr
   0374 E0            [24] 1481 	movx	a,@dptr
   0375 FE            [12] 1482 	mov	r6,a
   0376 A3            [24] 1483 	inc	dptr
   0377 E0            [24] 1484 	movx	a,@dptr
   0378 FF            [12] 1485 	mov	r7,a
   0379 90 00 22      [24] 1486 	mov	dptr,#_rf_spi_send_read_PARM_3
   037C E0            [24] 1487 	movx	a,@dptr
   037D FC            [12] 1488 	mov	r4,a
   037E 90 00 20      [24] 1489 	mov	dptr,#_rf_spi_send_read_PARM_2
   0381 E0            [24] 1490 	movx	a,@dptr
   0382 FA            [12] 1491 	mov	r2,a
   0383 A3            [24] 1492 	inc	dptr
   0384 E0            [24] 1493 	movx	a,@dptr
   0385 FB            [12] 1494 	mov	r3,a
   0386 78 00         [12] 1495 	mov	r0,#0x00
   0388 79 00         [12] 1496 	mov	r1,#0x00
   038A                    1497 00105$:
   038A C3            [12] 1498 	clr	c
   038B E8            [12] 1499 	mov	a,r0
   038C 9A            [12] 1500 	subb	a,r2
   038D E9            [12] 1501 	mov	a,r1
   038E 9B            [12] 1502 	subb	a,r3
   038F 50 5F         [24] 1503 	jnc	00107$
                           1504 ;	../src/rf/src/rf_spi_send_read.c:57: tempbyte = rf_spi_send_read_byte(dataptr[i]); //Send the value, and then save the received value
   0391 C0 02         [24] 1505 	push	ar2
   0393 C0 03         [24] 1506 	push	ar3
   0395 E8            [12] 1507 	mov	a,r0
   0396 2D            [12] 1508 	add	a,r5
   0397 F5 08         [12] 1509 	mov	_rf_spi_send_read_sloc0_1_0,a
   0399 E9            [12] 1510 	mov	a,r1
   039A 3E            [12] 1511 	addc	a,r6
   039B F5 09         [12] 1512 	mov	(_rf_spi_send_read_sloc0_1_0 + 1),a
   039D 8F 0A         [24] 1513 	mov	(_rf_spi_send_read_sloc0_1_0 + 2),r7
   039F 85 08 82      [24] 1514 	mov	dpl,_rf_spi_send_read_sloc0_1_0
   03A2 85 09 83      [24] 1515 	mov	dph,(_rf_spi_send_read_sloc0_1_0 + 1)
   03A5 85 0A F0      [24] 1516 	mov	b,(_rf_spi_send_read_sloc0_1_0 + 2)
   03A8 12 1A 5B      [24] 1517 	lcall	__gptrget
   03AB FB            [12] 1518 	mov	r3,a
   03AC F5 82         [12] 1519 	mov	dpl,a
   03AE C0 07         [24] 1520 	push	ar7
   03B0 C0 06         [24] 1521 	push	ar6
   03B2 C0 05         [24] 1522 	push	ar5
   03B4 C0 04         [24] 1523 	push	ar4
   03B6 C0 03         [24] 1524 	push	ar3
   03B8 C0 02         [24] 1525 	push	ar2
   03BA C0 01         [24] 1526 	push	ar1
   03BC C0 00         [24] 1527 	push	ar0
   03BE 12 04 78      [24] 1528 	lcall	_rf_spi_send_read_byte
   03C1 85 82 0B      [24] 1529 	mov	_rf_spi_send_read_sloc1_1_0,dpl
   03C4 D0 00         [24] 1530 	pop	ar0
   03C6 D0 01         [24] 1531 	pop	ar1
   03C8 D0 02         [24] 1532 	pop	ar2
   03CA D0 03         [24] 1533 	pop	ar3
   03CC D0 04         [24] 1534 	pop	ar4
   03CE D0 05         [24] 1535 	pop	ar5
   03D0 D0 06         [24] 1536 	pop	ar6
   03D2 D0 07         [24] 1537 	pop	ar7
                           1538 ;	../src/rf/src/rf_spi_send_read.c:60: if(copydata != false)
   03D4 D0 03         [24] 1539 	pop	ar3
   03D6 D0 02         [24] 1540 	pop	ar2
   03D8 EC            [12] 1541 	mov	a,r4
   03D9 60 0E         [24] 1542 	jz	00106$
                           1543 ;	../src/rf/src/rf_spi_send_read.c:62: dataptr[i] = tempbyte;
   03DB 85 08 82      [24] 1544 	mov	dpl,_rf_spi_send_read_sloc0_1_0
   03DE 85 09 83      [24] 1545 	mov	dph,(_rf_spi_send_read_sloc0_1_0 + 1)
   03E1 85 0A F0      [24] 1546 	mov	b,(_rf_spi_send_read_sloc0_1_0 + 2)
   03E4 E5 0B         [12] 1547 	mov	a,_rf_spi_send_read_sloc1_1_0
   03E6 12 19 B4      [24] 1548 	lcall	__gptrput
   03E9                    1549 00106$:
                           1550 ;	../src/rf/src/rf_spi_send_read.c:55: for(i = 0; i < len; i++)
   03E9 08            [12] 1551 	inc	r0
   03EA B8 00 9D      [24] 1552 	cjne	r0,#0x00,00105$
   03ED 09            [12] 1553 	inc	r1
   03EE 80 9A         [24] 1554 	sjmp	00105$
   03F0                    1555 00107$:
   03F0 22            [24] 1556 	ret
                           1557 ;------------------------------------------------------------
                           1558 ;Allocation info for local variables in function 'rf_power_up_param'
                           1559 ;------------------------------------------------------------
                           1560 ;config                    Allocated with name '_rf_power_up_param_PARM_2'
                           1561 ;rx_active_mode            Allocated with name '_rf_power_up_param_rx_active_mode_1_63'
                           1562 ;------------------------------------------------------------
                           1563 ;	../src/rf/src/rf_power_up_param.c:49: void rf_power_up_param(bool rx_active_mode, unsigned char config)
                           1564 ;	-----------------------------------------
                           1565 ;	 function rf_power_up_param
                           1566 ;	-----------------------------------------
   03F1                    1567 _rf_power_up_param:
   03F1 E5 82         [12] 1568 	mov	a,dpl
   03F3 90 00 27      [24] 1569 	mov	dptr,#_rf_power_up_param_rx_active_mode_1_63
   03F6 F0            [24] 1570 	movx	@dptr,a
                           1571 ;	../src/rf/src/rf_power_up_param.c:52: config |= RF_CONFIG_PWR_UP;
   03F7 90 00 26      [24] 1572 	mov	dptr,#_rf_power_up_param_PARM_2
   03FA E0            [24] 1573 	movx	a,@dptr
   03FB 44 02         [12] 1574 	orl	a,#0x02
   03FD F0            [24] 1575 	movx	@dptr,a
                           1576 ;	../src/rf/src/rf_power_up_param.c:53: rf_write_register(RF_CONFIG, &config, 1);
   03FE 90 00 08      [24] 1577 	mov	dptr,#_rf_write_register_PARM_2
   0401 74 26         [12] 1578 	mov	a,#_rf_power_up_param_PARM_2
   0403 F0            [24] 1579 	movx	@dptr,a
   0404 74 00         [12] 1580 	mov	a,#(_rf_power_up_param_PARM_2 >> 8)
   0406 A3            [24] 1581 	inc	dptr
   0407 F0            [24] 1582 	movx	@dptr,a
   0408 E4            [12] 1583 	clr	a
   0409 A3            [24] 1584 	inc	dptr
   040A F0            [24] 1585 	movx	@dptr,a
   040B 90 00 0B      [24] 1586 	mov	dptr,#_rf_write_register_PARM_3
   040E 74 01         [12] 1587 	mov	a,#0x01
   0410 F0            [24] 1588 	movx	@dptr,a
   0411 E4            [12] 1589 	clr	a
   0412 A3            [24] 1590 	inc	dptr
   0413 F0            [24] 1591 	movx	@dptr,a
   0414 75 82 00      [24] 1592 	mov	dpl,#0x00
   0417 12 01 89      [24] 1593 	lcall	_rf_write_register
                           1594 ;	../src/rf/src/rf_power_up_param.c:55: delay_us(1); //Delay for power up
   041A 90 00 01      [24] 1595 	mov	dptr,#0x0001
   041D 12 09 0F      [24] 1596 	lcall	_delay_us
                           1597 ;	../src/rf/src/rf_power_up_param.c:58: if((config & RF_CONFIG_PRIM_RX) == 0)
   0420 90 00 26      [24] 1598 	mov	dptr,#_rf_power_up_param_PARM_2
   0423 E0            [24] 1599 	movx	a,@dptr
   0424 FF            [12] 1600 	mov	r7,a
   0425 20 E0 03      [24] 1601 	jb	acc.0,00105$
                           1602 ;	../src/rf/src/rf_power_up_param.c:60: rf_clear_ce(); //Clear CE for TX mode
   0428 C2 E8         [12] 1603 	clr _RFCON_SB_RFCE 
   042A 22            [24] 1604 	ret
   042B                    1605 00105$:
                           1606 ;	../src/rf/src/rf_power_up_param.c:65: if(rx_active_mode != false)
   042B 90 00 27      [24] 1607 	mov	dptr,#_rf_power_up_param_rx_active_mode_1_63
   042E E0            [24] 1608 	movx	a,@dptr
   042F FF            [12] 1609 	mov	r7,a
   0430 60 08         [24] 1610 	jz	00102$
                           1611 ;	../src/rf/src/rf_power_up_param.c:67: rf_set_ce();
   0432 D2 E8         [12] 1612 	setb _RFCON_SB_RFCE 
   0434 90 00 04      [24] 1613 	mov	dptr,#0x0004
   0437 02 09 0F      [24] 1614 	ljmp	_delay_us
   043A                    1615 00102$:
                           1616 ;	../src/rf/src/rf_power_up_param.c:71: rf_clear_ce();
   043A C2 E8         [12] 1617 	clr _RFCON_SB_RFCE 
   043C 22            [24] 1618 	ret
                           1619 ;------------------------------------------------------------
                           1620 ;Allocation info for local variables in function 'rf_read_register'
                           1621 ;------------------------------------------------------------
                           1622 ;dataptr                   Allocated with name '_rf_read_register_PARM_2'
                           1623 ;len                       Allocated with name '_rf_read_register_PARM_3'
                           1624 ;regnumber                 Allocated with name '_rf_read_register_regnumber_1_69'
                           1625 ;------------------------------------------------------------
                           1626 ;	../src/rf/src/rf_read_register.c:49: unsigned char rf_read_register(unsigned char regnumber, unsigned char * dataptr, unsigned int len)
                           1627 ;	-----------------------------------------
                           1628 ;	 function rf_read_register
                           1629 ;	-----------------------------------------
   043D                    1630 _rf_read_register:
   043D E5 82         [12] 1631 	mov	a,dpl
                           1632 ;	../src/rf/src/rf_read_register.c:52: return rf_spi_execute_command(regnumber & RF_R_REGISTER_DATA, dataptr, len, true);
   043F 90 00 2D      [24] 1633 	mov	dptr,#_rf_read_register_regnumber_1_69
   0442 F0            [24] 1634 	movx	@dptr,a
   0443 FF            [12] 1635 	mov	r7,a
   0444 53 07 1F      [24] 1636 	anl	ar7,#0x1F
   0447 90 00 28      [24] 1637 	mov	dptr,#_rf_read_register_PARM_2
   044A E0            [24] 1638 	movx	a,@dptr
   044B FC            [12] 1639 	mov	r4,a
   044C A3            [24] 1640 	inc	dptr
   044D E0            [24] 1641 	movx	a,@dptr
   044E FD            [12] 1642 	mov	r5,a
   044F A3            [24] 1643 	inc	dptr
   0450 E0            [24] 1644 	movx	a,@dptr
   0451 FE            [12] 1645 	mov	r6,a
   0452 90 00 2B      [24] 1646 	mov	dptr,#_rf_read_register_PARM_3
   0455 E0            [24] 1647 	movx	a,@dptr
   0456 FA            [12] 1648 	mov	r2,a
   0457 A3            [24] 1649 	inc	dptr
   0458 E0            [24] 1650 	movx	a,@dptr
   0459 FB            [12] 1651 	mov	r3,a
   045A 90 00 18      [24] 1652 	mov	dptr,#_rf_spi_execute_command_PARM_2
   045D EC            [12] 1653 	mov	a,r4
   045E F0            [24] 1654 	movx	@dptr,a
   045F ED            [12] 1655 	mov	a,r5
   0460 A3            [24] 1656 	inc	dptr
   0461 F0            [24] 1657 	movx	@dptr,a
   0462 EE            [12] 1658 	mov	a,r6
   0463 A3            [24] 1659 	inc	dptr
   0464 F0            [24] 1660 	movx	@dptr,a
   0465 90 00 1B      [24] 1661 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0468 EA            [12] 1662 	mov	a,r2
   0469 F0            [24] 1663 	movx	@dptr,a
   046A EB            [12] 1664 	mov	a,r3
   046B A3            [24] 1665 	inc	dptr
   046C F0            [24] 1666 	movx	@dptr,a
   046D 90 00 1D      [24] 1667 	mov	dptr,#_rf_spi_execute_command_PARM_4
   0470 74 01         [12] 1668 	mov	a,#0x01
   0472 F0            [24] 1669 	movx	@dptr,a
   0473 8F 82         [24] 1670 	mov	dpl,r7
   0475 02 03 02      [24] 1671 	ljmp	_rf_spi_execute_command
                           1672 ;------------------------------------------------------------
                           1673 ;Allocation info for local variables in function 'rf_spi_send_read_byte'
                           1674 ;------------------------------------------------------------
                           1675 ;byte                      Allocated with name '_rf_spi_send_read_byte_byte_1_71'
                           1676 ;------------------------------------------------------------
                           1677 ;	../src/rf/src/rf_spi_send_read_byte.c:47: unsigned char rf_spi_send_read_byte(unsigned char byte)
                           1678 ;	-----------------------------------------
                           1679 ;	 function rf_spi_send_read_byte
                           1680 ;	-----------------------------------------
   0478                    1681 _rf_spi_send_read_byte:
   0478 E5 82         [12] 1682 	mov	a,dpl
                           1683 ;	../src/rf/src/rf_spi_send_read_byte.c:49: SPIRDAT = byte; //Send byte over SPI
   047A 90 00 2E      [24] 1684 	mov	dptr,#_rf_spi_send_read_byte_byte_1_71
   047D F0            [24] 1685 	movx	@dptr,a
   047E F5 E7         [12] 1686 	mov	_SPIRDAT,a
                           1687 ;	../src/rf/src/rf_spi_send_read_byte.c:51: while(!(SPIRSTAT & SPIRSTAT_IRQ_RX_FIFO_READY)); //Wait for the transaction to finish
   0480                    1688 00101$:
   0480 E5 E6         [12] 1689 	mov	a,_SPIRSTAT
   0482 30 E2 FB      [24] 1690 	jnb	acc.2,00101$
                           1691 ;	../src/rf/src/rf_spi_send_read_byte.c:53: IRCON_SB_RFRDY = BIT_FALSE; //Clear the IRQ bit
   0485 C2 C0         [12] 1692 	clr	_IRCON_SB_RFRDY
                           1693 ;	../src/rf/src/rf_spi_send_read_byte.c:55: return SPIRDAT; //Return the received value
   0487 85 E7 82      [24] 1694 	mov	dpl,_SPIRDAT
   048A 22            [24] 1695 	ret
                           1696 ;------------------------------------------------------------
                           1697 ;Allocation info for local variables in function 'rf_set_rx_addr'
                           1698 ;------------------------------------------------------------
                           1699 ;len                       Allocated with name '_rf_set_rx_addr_PARM_2'
                           1700 ;rxpipenum                 Allocated with name '_rf_set_rx_addr_PARM_3'
                           1701 ;address                   Allocated with name '_rf_set_rx_addr_address_1_73'
                           1702 ;------------------------------------------------------------
                           1703 ;	../src/rf/src/rf_set_rx_addr.c:49: void rf_set_rx_addr(unsigned char * address, unsigned int len, unsigned char rxpipenum)
                           1704 ;	-----------------------------------------
                           1705 ;	 function rf_set_rx_addr
                           1706 ;	-----------------------------------------
   048B                    1707 _rf_set_rx_addr:
   048B AF F0         [24] 1708 	mov	r7,b
   048D AE 83         [24] 1709 	mov	r6,dph
   048F E5 82         [12] 1710 	mov	a,dpl
   0491 90 00 32      [24] 1711 	mov	dptr,#_rf_set_rx_addr_address_1_73
   0494 F0            [24] 1712 	movx	@dptr,a
   0495 EE            [12] 1713 	mov	a,r6
   0496 A3            [24] 1714 	inc	dptr
   0497 F0            [24] 1715 	movx	@dptr,a
   0498 EF            [12] 1716 	mov	a,r7
   0499 A3            [24] 1717 	inc	dptr
   049A F0            [24] 1718 	movx	@dptr,a
                           1719 ;	../src/rf/src/rf_set_rx_addr.c:52: if(rxpipenum > 5)
   049B 90 00 31      [24] 1720 	mov	dptr,#_rf_set_rx_addr_PARM_3
   049E E0            [24] 1721 	movx	a,@dptr
   049F FF            [12] 1722 	mov  r7,a
   04A0 24 FA         [12] 1723 	add	a,#0xff - 0x05
   04A2 50 01         [24] 1724 	jnc	00102$
                           1725 ;	../src/rf/src/rf_set_rx_addr.c:54: return;
   04A4 22            [24] 1726 	ret
   04A5                    1727 00102$:
                           1728 ;	../src/rf/src/rf_set_rx_addr.c:57: rf_write_register(RF_RX_ADDR_P0 + rxpipenum, address, len); //Write the requested address to the requested RX pipe
   04A5 74 0A         [12] 1729 	mov	a,#0x0A
   04A7 2F            [12] 1730 	add	a,r7
   04A8 FF            [12] 1731 	mov	r7,a
   04A9 90 00 32      [24] 1732 	mov	dptr,#_rf_set_rx_addr_address_1_73
   04AC E0            [24] 1733 	movx	a,@dptr
   04AD FC            [12] 1734 	mov	r4,a
   04AE A3            [24] 1735 	inc	dptr
   04AF E0            [24] 1736 	movx	a,@dptr
   04B0 FD            [12] 1737 	mov	r5,a
   04B1 A3            [24] 1738 	inc	dptr
   04B2 E0            [24] 1739 	movx	a,@dptr
   04B3 FE            [12] 1740 	mov	r6,a
   04B4 90 00 2F      [24] 1741 	mov	dptr,#_rf_set_rx_addr_PARM_2
   04B7 E0            [24] 1742 	movx	a,@dptr
   04B8 FA            [12] 1743 	mov	r2,a
   04B9 A3            [24] 1744 	inc	dptr
   04BA E0            [24] 1745 	movx	a,@dptr
   04BB FB            [12] 1746 	mov	r3,a
   04BC 90 00 08      [24] 1747 	mov	dptr,#_rf_write_register_PARM_2
   04BF EC            [12] 1748 	mov	a,r4
   04C0 F0            [24] 1749 	movx	@dptr,a
   04C1 ED            [12] 1750 	mov	a,r5
   04C2 A3            [24] 1751 	inc	dptr
   04C3 F0            [24] 1752 	movx	@dptr,a
   04C4 EE            [12] 1753 	mov	a,r6
   04C5 A3            [24] 1754 	inc	dptr
   04C6 F0            [24] 1755 	movx	@dptr,a
   04C7 90 00 0B      [24] 1756 	mov	dptr,#_rf_write_register_PARM_3
   04CA EA            [12] 1757 	mov	a,r2
   04CB F0            [24] 1758 	movx	@dptr,a
   04CC EB            [12] 1759 	mov	a,r3
   04CD A3            [24] 1760 	inc	dptr
   04CE F0            [24] 1761 	movx	@dptr,a
   04CF 8F 82         [24] 1762 	mov	dpl,r7
   04D1 02 01 89      [24] 1763 	ljmp	_rf_write_register
                           1764 ;------------------------------------------------------------
                           1765 ;Allocation info for local variables in function 'rf_power_down'
                           1766 ;------------------------------------------------------------
                           1767 ;config                    Allocated with name '_rf_power_down_config_1_76'
                           1768 ;------------------------------------------------------------
                           1769 ;	../src/rf/src/rf_power_down.c:47: void rf_power_down()
                           1770 ;	-----------------------------------------
                           1771 ;	 function rf_power_down
                           1772 ;	-----------------------------------------
   04D4                    1773 _rf_power_down:
                           1774 ;	../src/rf/src/rf_power_down.c:51: rf_clear_ce(); //Clear the CE pin
   04D4 C2 E8         [12] 1775 	clr _RFCON_SB_RFCE 
                           1776 ;	../src/rf/src/rf_power_down.c:53: rf_read_register(RF_CONFIG, &config, 1); //Read the current value of the CONFIG register
   04D6 90 00 28      [24] 1777 	mov	dptr,#_rf_read_register_PARM_2
   04D9 74 35         [12] 1778 	mov	a,#_rf_power_down_config_1_76
   04DB F0            [24] 1779 	movx	@dptr,a
   04DC 74 00         [12] 1780 	mov	a,#(_rf_power_down_config_1_76 >> 8)
   04DE A3            [24] 1781 	inc	dptr
   04DF F0            [24] 1782 	movx	@dptr,a
   04E0 E4            [12] 1783 	clr	a
   04E1 A3            [24] 1784 	inc	dptr
   04E2 F0            [24] 1785 	movx	@dptr,a
   04E3 90 00 2B      [24] 1786 	mov	dptr,#_rf_read_register_PARM_3
   04E6 74 01         [12] 1787 	mov	a,#0x01
   04E8 F0            [24] 1788 	movx	@dptr,a
   04E9 E4            [12] 1789 	clr	a
   04EA A3            [24] 1790 	inc	dptr
   04EB F0            [24] 1791 	movx	@dptr,a
   04EC 75 82 00      [24] 1792 	mov	dpl,#0x00
   04EF 12 04 3D      [24] 1793 	lcall	_rf_read_register
                           1794 ;	../src/rf/src/rf_power_down.c:56: if((config & RF_CONFIG_PWR_UP) == 0)
   04F2 90 00 35      [24] 1795 	mov	dptr,#_rf_power_down_config_1_76
   04F5 E0            [24] 1796 	movx	a,@dptr
   04F6 FF            [12] 1797 	mov	r7,a
   04F7 20 E1 01      [24] 1798 	jb	acc.1,00102$
                           1799 ;	../src/rf/src/rf_power_down.c:58: return;
   04FA 22            [24] 1800 	ret
   04FB                    1801 00102$:
                           1802 ;	../src/rf/src/rf_power_down.c:62: config &= (~RF_CONFIG_PWR_UP);
   04FB 90 00 35      [24] 1803 	mov	dptr,#_rf_power_down_config_1_76
   04FE 74 FD         [12] 1804 	mov	a,#0xFD
   0500 5F            [12] 1805 	anl	a,r7
   0501 F0            [24] 1806 	movx	@dptr,a
                           1807 ;	../src/rf/src/rf_power_down.c:63: rf_write_register(RF_CONFIG, &config, 1);
   0502 90 00 08      [24] 1808 	mov	dptr,#_rf_write_register_PARM_2
   0505 74 35         [12] 1809 	mov	a,#_rf_power_down_config_1_76
   0507 F0            [24] 1810 	movx	@dptr,a
   0508 74 00         [12] 1811 	mov	a,#(_rf_power_down_config_1_76 >> 8)
   050A A3            [24] 1812 	inc	dptr
   050B F0            [24] 1813 	movx	@dptr,a
   050C E4            [12] 1814 	clr	a
   050D A3            [24] 1815 	inc	dptr
   050E F0            [24] 1816 	movx	@dptr,a
   050F 90 00 0B      [24] 1817 	mov	dptr,#_rf_write_register_PARM_3
   0512 74 01         [12] 1818 	mov	a,#0x01
   0514 F0            [24] 1819 	movx	@dptr,a
   0515 E4            [12] 1820 	clr	a
   0516 A3            [24] 1821 	inc	dptr
   0517 F0            [24] 1822 	movx	@dptr,a
   0518 75 82 00      [24] 1823 	mov	dpl,#0x00
   051B 02 01 89      [24] 1824 	ljmp	_rf_write_register
                           1825 ;------------------------------------------------------------
                           1826 ;Allocation info for local variables in function 'rf_power_up'
                           1827 ;------------------------------------------------------------
                           1828 ;rx_active_mode            Allocated with name '_rf_power_up_rx_active_mode_1_78'
                           1829 ;config                    Allocated with name '_rf_power_up_config_1_79'
                           1830 ;------------------------------------------------------------
                           1831 ;	../src/rf/src/rf_power_up.c:47: void rf_power_up(bool rx_active_mode)
                           1832 ;	-----------------------------------------
                           1833 ;	 function rf_power_up
                           1834 ;	-----------------------------------------
   051E                    1835 _rf_power_up:
   051E E5 82         [12] 1836 	mov	a,dpl
   0520 90 00 36      [24] 1837 	mov	dptr,#_rf_power_up_rx_active_mode_1_78
   0523 F0            [24] 1838 	movx	@dptr,a
                           1839 ;	../src/rf/src/rf_power_up.c:51: rf_read_register(RF_CONFIG, &config, 1); //Get the current value of the CONFIG register
   0524 90 00 28      [24] 1840 	mov	dptr,#_rf_read_register_PARM_2
   0527 74 37         [12] 1841 	mov	a,#_rf_power_up_config_1_79
   0529 F0            [24] 1842 	movx	@dptr,a
   052A 74 00         [12] 1843 	mov	a,#(_rf_power_up_config_1_79 >> 8)
   052C A3            [24] 1844 	inc	dptr
   052D F0            [24] 1845 	movx	@dptr,a
   052E E4            [12] 1846 	clr	a
   052F A3            [24] 1847 	inc	dptr
   0530 F0            [24] 1848 	movx	@dptr,a
   0531 90 00 2B      [24] 1849 	mov	dptr,#_rf_read_register_PARM_3
   0534 74 01         [12] 1850 	mov	a,#0x01
   0536 F0            [24] 1851 	movx	@dptr,a
   0537 E4            [12] 1852 	clr	a
   0538 A3            [24] 1853 	inc	dptr
   0539 F0            [24] 1854 	movx	@dptr,a
   053A 75 82 00      [24] 1855 	mov	dpl,#0x00
   053D 12 04 3D      [24] 1856 	lcall	_rf_read_register
                           1857 ;	../src/rf/src/rf_power_up.c:54: if((config & RF_CONFIG_PWR_UP) != 0)
   0540 90 00 37      [24] 1858 	mov	dptr,#_rf_power_up_config_1_79
   0543 E0            [24] 1859 	movx	a,@dptr
   0544 FF            [12] 1860 	mov	r7,a
   0545 30 E1 01      [24] 1861 	jnb	acc.1,00102$
                           1862 ;	../src/rf/src/rf_power_up.c:56: return;
   0548 22            [24] 1863 	ret
   0549                    1864 00102$:
                           1865 ;	../src/rf/src/rf_power_up.c:60: config |= RF_CONFIG_PWR_UP;
   0549 90 00 37      [24] 1866 	mov	dptr,#_rf_power_up_config_1_79
   054C 74 02         [12] 1867 	mov	a,#0x02
   054E 4F            [12] 1868 	orl	a,r7
   054F F0            [24] 1869 	movx	@dptr,a
                           1870 ;	../src/rf/src/rf_power_up.c:61: rf_write_register(RF_CONFIG, &config, 1);
   0550 90 00 08      [24] 1871 	mov	dptr,#_rf_write_register_PARM_2
   0553 74 37         [12] 1872 	mov	a,#_rf_power_up_config_1_79
   0555 F0            [24] 1873 	movx	@dptr,a
   0556 74 00         [12] 1874 	mov	a,#(_rf_power_up_config_1_79 >> 8)
   0558 A3            [24] 1875 	inc	dptr
   0559 F0            [24] 1876 	movx	@dptr,a
   055A E4            [12] 1877 	clr	a
   055B A3            [24] 1878 	inc	dptr
   055C F0            [24] 1879 	movx	@dptr,a
   055D 90 00 0B      [24] 1880 	mov	dptr,#_rf_write_register_PARM_3
   0560 74 01         [12] 1881 	mov	a,#0x01
   0562 F0            [24] 1882 	movx	@dptr,a
   0563 E4            [12] 1883 	clr	a
   0564 A3            [24] 1884 	inc	dptr
   0565 F0            [24] 1885 	movx	@dptr,a
   0566 75 82 00      [24] 1886 	mov	dpl,#0x00
   0569 12 01 89      [24] 1887 	lcall	_rf_write_register
                           1888 ;	../src/rf/src/rf_power_up.c:63: delay_us(1); //Delay for power up
   056C 90 00 01      [24] 1889 	mov	dptr,#0x0001
   056F 12 09 0F      [24] 1890 	lcall	_delay_us
                           1891 ;	../src/rf/src/rf_power_up.c:66: if((config & RF_CONFIG_PRIM_RX) == 0)
   0572 90 00 37      [24] 1892 	mov	dptr,#_rf_power_up_config_1_79
   0575 E0            [24] 1893 	movx	a,@dptr
   0576 FF            [12] 1894 	mov	r7,a
   0577 20 E0 03      [24] 1895 	jb	acc.0,00107$
                           1896 ;	../src/rf/src/rf_power_up.c:68: rf_clear_ce(); //Clear CE for TX mode
   057A C2 E8         [12] 1897 	clr _RFCON_SB_RFCE 
   057C 22            [24] 1898 	ret
   057D                    1899 00107$:
                           1900 ;	../src/rf/src/rf_power_up.c:73: if(rx_active_mode != false)
   057D 90 00 36      [24] 1901 	mov	dptr,#_rf_power_up_rx_active_mode_1_78
   0580 E0            [24] 1902 	movx	a,@dptr
   0581 FF            [12] 1903 	mov	r7,a
   0582 60 08         [24] 1904 	jz	00104$
                           1905 ;	../src/rf/src/rf_power_up.c:75: rf_set_ce();
   0584 D2 E8         [12] 1906 	setb _RFCON_SB_RFCE 
   0586 90 00 04      [24] 1907 	mov	dptr,#0x0004
   0589 02 09 0F      [24] 1908 	ljmp	_delay_us
   058C                    1909 00104$:
                           1910 ;	../src/rf/src/rf_power_up.c:79: rf_clear_ce();
   058C C2 E8         [12] 1911 	clr _RFCON_SB_RFCE 
   058E 22            [24] 1912 	ret
                           1913 ;------------------------------------------------------------
                           1914 ;Allocation info for local variables in function 'gpio_pin_configure'
                           1915 ;------------------------------------------------------------
                           1916 ;gpio_pin_config_options   Allocated with name '_gpio_pin_configure_PARM_2'
                           1917 ;gpio_pin_id               Allocated with name '_gpio_pin_configure_gpio_pin_id_1_86'
                           1918 ;------------------------------------------------------------
                           1919 ;	../src/gpio/src/gpio_pin_configure.c:47: void gpio_pin_configure(gpio_pin_id_t gpio_pin_id, uint8_t gpio_pin_config_options)
                           1920 ;	-----------------------------------------
                           1921 ;	 function gpio_pin_configure
                           1922 ;	-----------------------------------------
   058F                    1923 _gpio_pin_configure:
   058F E5 82         [12] 1924 	mov	a,dpl
                           1925 ;	../src/gpio/src/gpio_pin_configure.c:50: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   0591 90 00 39      [24] 1926 	mov	dptr,#_gpio_pin_configure_gpio_pin_id_1_86
   0594 F0            [24] 1927 	movx	@dptr,a
   0595 FF            [12] 1928 	mov  r7,a
   0596 24 F8         [12] 1929 	add	a,#0xff - 0x07
   0598 50 03         [24] 1930 	jnc	00174$
   059A 02 06 13      [24] 1931 	ljmp	00134$
   059D                    1932 00174$:
                           1933 ;	../src/gpio/src/gpio_pin_configure.c:53: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   059D 90 00 38      [24] 1934 	mov	dptr,#_gpio_pin_configure_PARM_2
   05A0 E0            [24] 1935 	movx	a,@dptr
   05A1 FE            [12] 1936 	mov	r6,a
   05A2 FD            [12] 1937 	mov	r5,a
   05A3 ED            [12] 1938 	mov	a,r5
   05A4 30 E0 4C      [24] 1939 	jnb	acc.0,00105$
                           1940 ;	../src/gpio/src/gpio_pin_configure.c:56: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   05A7 EE            [12] 1941 	mov	a,r6
   05A8 30 E1 15      [24] 1942 	jnb	acc.1,00102$
                           1943 ;	../src/gpio/src/gpio_pin_configure.c:58: gpio_pins_val_set(P0, (1 << (gpio_pin_id % 8)));
   05AB 74 07         [12] 1944 	mov	a,#0x07
   05AD 5F            [12] 1945 	anl	a,r7
   05AE F5 F0         [12] 1946 	mov	b,a
   05B0 05 F0         [12] 1947 	inc	b
   05B2 74 01         [12] 1948 	mov	a,#0x01
   05B4 80 02         [24] 1949 	sjmp	00179$
   05B6                    1950 00177$:
   05B6 25 E0         [12] 1951 	add	a,acc
   05B8                    1952 00179$:
   05B8 D5 F0 FB      [24] 1953 	djnz	b,00177$
   05BB FD            [12] 1954 	mov	r5,a
   05BC 42 80         [12] 1955 	orl	_P0,a
   05BE 80 14         [24] 1956 	sjmp	00103$
   05C0                    1957 00102$:
                           1958 ;	../src/gpio/src/gpio_pin_configure.c:62: gpio_pins_val_clear(P0, (1 << (gpio_pin_id % 8)));
   05C0 74 07         [12] 1959 	mov	a,#0x07
   05C2 5F            [12] 1960 	anl	a,r7
   05C3 F5 F0         [12] 1961 	mov	b,a
   05C5 05 F0         [12] 1962 	inc	b
   05C7 74 01         [12] 1963 	mov	a,#0x01
   05C9 80 02         [24] 1964 	sjmp	00182$
   05CB                    1965 00180$:
   05CB 25 E0         [12] 1966 	add	a,acc
   05CD                    1967 00182$:
   05CD D5 F0 FB      [24] 1968 	djnz	b,00180$
   05D0 F4            [12] 1969 	cpl	a
   05D1 FD            [12] 1970 	mov	r5,a
   05D2 52 80         [12] 1971 	anl	_P0,a
   05D4                    1972 00103$:
                           1973 ;	../src/gpio/src/gpio_pin_configure.c:66: P0CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   05D4 74 07         [12] 1974 	mov	a,#0x07
   05D6 5F            [12] 1975 	anl	a,r7
   05D7 FD            [12] 1976 	mov	r5,a
   05D8 74 07         [12] 1977 	mov	a,#0x07
   05DA 5D            [12] 1978 	anl	a,r5
   05DB FC            [12] 1979 	mov	r4,a
                           1980 ;	../src/gpio/src/gpio_pin_configure.c:67: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   05DC 74 E0         [12] 1981 	mov	a,#0xE0
   05DE 5E            [12] 1982 	anl	a,r6
   05DF 4C            [12] 1983 	orl	a,r4
   05E0 F5 9E         [12] 1984 	mov	_P0CON,a
                           1985 ;	../src/gpio/src/gpio_pin_configure.c:70: gpio_pins_dir_output(P0DIR, (1 << (gpio_pin_id % 8)));
   05E2 8D F0         [24] 1986 	mov	b,r5
   05E4 05 F0         [12] 1987 	inc	b
   05E6 74 01         [12] 1988 	mov	a,#0x01
   05E8 80 02         [24] 1989 	sjmp	00185$
   05EA                    1990 00183$:
   05EA 25 E0         [12] 1991 	add	a,acc
   05EC                    1992 00185$:
   05EC D5 F0 FB      [24] 1993 	djnz	b,00183$
   05EF F4            [12] 1994 	cpl	a
   05F0 52 93         [12] 1995 	anl	_P0DIR,a
   05F2 22            [24] 1996 	ret
   05F3                    1997 00105$:
                           1998 ;	../src/gpio/src/gpio_pin_configure.c:75: P0CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   05F3 74 07         [12] 1999 	mov	a,#0x07
   05F5 5F            [12] 2000 	anl	a,r7
   05F6 FD            [12] 2001 	mov	r5,a
   05F7 74 07         [12] 2002 	mov	a,#0x07
   05F9 5D            [12] 2003 	anl	a,r5
   05FA 44 10         [12] 2004 	orl	a,#0x10
   05FC FC            [12] 2005 	mov	r4,a
                           2006 ;	../src/gpio/src/gpio_pin_configure.c:77: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   05FD 74 E0         [12] 2007 	mov	a,#0xE0
   05FF 5E            [12] 2008 	anl	a,r6
   0600 4C            [12] 2009 	orl	a,r4
   0601 F5 9E         [12] 2010 	mov	_P0CON,a
                           2011 ;	../src/gpio/src/gpio_pin_configure.c:80: gpio_pins_dir_input(P0DIR, (1 << (gpio_pin_id % 8)));
   0603 8D F0         [24] 2012 	mov	b,r5
   0605 05 F0         [12] 2013 	inc	b
   0607 74 01         [12] 2014 	mov	a,#0x01
   0609 80 02         [24] 2015 	sjmp	00188$
   060B                    2016 00186$:
   060B 25 E0         [12] 2017 	add	a,acc
   060D                    2018 00188$:
   060D D5 F0 FB      [24] 2019 	djnz	b,00186$
   0610 42 93         [12] 2020 	orl	_P0DIR,a
   0612 22            [24] 2021 	ret
   0613                    2022 00134$:
                           2023 ;	../src/gpio/src/gpio_pin_configure.c:83: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   0613 EF            [12] 2024 	mov	a,r7
   0614 24 F0         [12] 2025 	add	a,#0xff - 0x0F
   0616 50 03         [24] 2026 	jnc	00189$
   0618 02 06 91      [24] 2027 	ljmp	00131$
   061B                    2028 00189$:
                           2029 ;	../src/gpio/src/gpio_pin_configure.c:86: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   061B 90 00 38      [24] 2030 	mov	dptr,#_gpio_pin_configure_PARM_2
   061E E0            [24] 2031 	movx	a,@dptr
   061F FE            [12] 2032 	mov	r6,a
   0620 FD            [12] 2033 	mov	r5,a
   0621 ED            [12] 2034 	mov	a,r5
   0622 30 E0 4C      [24] 2035 	jnb	acc.0,00111$
                           2036 ;	../src/gpio/src/gpio_pin_configure.c:89: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   0625 EE            [12] 2037 	mov	a,r6
   0626 30 E1 15      [24] 2038 	jnb	acc.1,00108$
                           2039 ;	../src/gpio/src/gpio_pin_configure.c:91: gpio_pins_val_set(P1, (1 << (gpio_pin_id % 8)));
   0629 74 07         [12] 2040 	mov	a,#0x07
   062B 5F            [12] 2041 	anl	a,r7
   062C F5 F0         [12] 2042 	mov	b,a
   062E 05 F0         [12] 2043 	inc	b
   0630 74 01         [12] 2044 	mov	a,#0x01
   0632 80 02         [24] 2045 	sjmp	00194$
   0634                    2046 00192$:
   0634 25 E0         [12] 2047 	add	a,acc
   0636                    2048 00194$:
   0636 D5 F0 FB      [24] 2049 	djnz	b,00192$
   0639 FD            [12] 2050 	mov	r5,a
   063A 42 90         [12] 2051 	orl	_P1,a
   063C 80 14         [24] 2052 	sjmp	00109$
   063E                    2053 00108$:
                           2054 ;	../src/gpio/src/gpio_pin_configure.c:95: gpio_pins_val_clear(P1, (1 << (gpio_pin_id % 8)));
   063E 74 07         [12] 2055 	mov	a,#0x07
   0640 5F            [12] 2056 	anl	a,r7
   0641 F5 F0         [12] 2057 	mov	b,a
   0643 05 F0         [12] 2058 	inc	b
   0645 74 01         [12] 2059 	mov	a,#0x01
   0647 80 02         [24] 2060 	sjmp	00197$
   0649                    2061 00195$:
   0649 25 E0         [12] 2062 	add	a,acc
   064B                    2063 00197$:
   064B D5 F0 FB      [24] 2064 	djnz	b,00195$
   064E F4            [12] 2065 	cpl	a
   064F FD            [12] 2066 	mov	r5,a
   0650 52 90         [12] 2067 	anl	_P1,a
   0652                    2068 00109$:
                           2069 ;	../src/gpio/src/gpio_pin_configure.c:99: P1CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   0652 74 07         [12] 2070 	mov	a,#0x07
   0654 5F            [12] 2071 	anl	a,r7
   0655 FD            [12] 2072 	mov	r5,a
   0656 74 07         [12] 2073 	mov	a,#0x07
   0658 5D            [12] 2074 	anl	a,r5
   0659 FC            [12] 2075 	mov	r4,a
                           2076 ;	../src/gpio/src/gpio_pin_configure.c:100: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   065A 74 E0         [12] 2077 	mov	a,#0xE0
   065C 5E            [12] 2078 	anl	a,r6
   065D 4C            [12] 2079 	orl	a,r4
   065E F5 9F         [12] 2080 	mov	_P1CON,a
                           2081 ;	../src/gpio/src/gpio_pin_configure.c:103: gpio_pins_dir_output(P1DIR, (1 << (gpio_pin_id % 8)));
   0660 8D F0         [24] 2082 	mov	b,r5
   0662 05 F0         [12] 2083 	inc	b
   0664 74 01         [12] 2084 	mov	a,#0x01
   0666 80 02         [24] 2085 	sjmp	00200$
   0668                    2086 00198$:
   0668 25 E0         [12] 2087 	add	a,acc
   066A                    2088 00200$:
   066A D5 F0 FB      [24] 2089 	djnz	b,00198$
   066D F4            [12] 2090 	cpl	a
   066E 52 94         [12] 2091 	anl	_P1DIR,a
   0670 22            [24] 2092 	ret
   0671                    2093 00111$:
                           2094 ;	../src/gpio/src/gpio_pin_configure.c:108: P1CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   0671 74 07         [12] 2095 	mov	a,#0x07
   0673 5F            [12] 2096 	anl	a,r7
   0674 FD            [12] 2097 	mov	r5,a
   0675 74 07         [12] 2098 	mov	a,#0x07
   0677 5D            [12] 2099 	anl	a,r5
   0678 44 10         [12] 2100 	orl	a,#0x10
   067A FC            [12] 2101 	mov	r4,a
                           2102 ;	../src/gpio/src/gpio_pin_configure.c:110: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   067B 74 E0         [12] 2103 	mov	a,#0xE0
   067D 5E            [12] 2104 	anl	a,r6
   067E 4C            [12] 2105 	orl	a,r4
   067F F5 9F         [12] 2106 	mov	_P1CON,a
                           2107 ;	../src/gpio/src/gpio_pin_configure.c:113: gpio_pins_dir_input(P1DIR, (1 << (gpio_pin_id % 8)));
   0681 8D F0         [24] 2108 	mov	b,r5
   0683 05 F0         [12] 2109 	inc	b
   0685 74 01         [12] 2110 	mov	a,#0x01
   0687 80 02         [24] 2111 	sjmp	00203$
   0689                    2112 00201$:
   0689 25 E0         [12] 2113 	add	a,acc
   068B                    2114 00203$:
   068B D5 F0 FB      [24] 2115 	djnz	b,00201$
   068E 42 94         [12] 2116 	orl	_P1DIR,a
   0690 22            [24] 2117 	ret
   0691                    2118 00131$:
                           2119 ;	../src/gpio/src/gpio_pin_configure.c:116: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   0691 EF            [12] 2120 	mov	a,r7
   0692 24 E8         [12] 2121 	add	a,#0xff - 0x17
   0694 50 03         [24] 2122 	jnc	00204$
   0696 02 07 0F      [24] 2123 	ljmp	00128$
   0699                    2124 00204$:
                           2125 ;	../src/gpio/src/gpio_pin_configure.c:119: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   0699 90 00 38      [24] 2126 	mov	dptr,#_gpio_pin_configure_PARM_2
   069C E0            [24] 2127 	movx	a,@dptr
   069D FE            [12] 2128 	mov	r6,a
   069E FD            [12] 2129 	mov	r5,a
   069F ED            [12] 2130 	mov	a,r5
   06A0 30 E0 4C      [24] 2131 	jnb	acc.0,00117$
                           2132 ;	../src/gpio/src/gpio_pin_configure.c:122: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   06A3 EE            [12] 2133 	mov	a,r6
   06A4 30 E1 15      [24] 2134 	jnb	acc.1,00114$
                           2135 ;	../src/gpio/src/gpio_pin_configure.c:124: gpio_pins_val_set(P2, (1 << (gpio_pin_id % 8)));
   06A7 74 07         [12] 2136 	mov	a,#0x07
   06A9 5F            [12] 2137 	anl	a,r7
   06AA F5 F0         [12] 2138 	mov	b,a
   06AC 05 F0         [12] 2139 	inc	b
   06AE 74 01         [12] 2140 	mov	a,#0x01
   06B0 80 02         [24] 2141 	sjmp	00209$
   06B2                    2142 00207$:
   06B2 25 E0         [12] 2143 	add	a,acc
   06B4                    2144 00209$:
   06B4 D5 F0 FB      [24] 2145 	djnz	b,00207$
   06B7 FD            [12] 2146 	mov	r5,a
   06B8 42 A0         [12] 2147 	orl	_P2,a
   06BA 80 14         [24] 2148 	sjmp	00115$
   06BC                    2149 00114$:
                           2150 ;	../src/gpio/src/gpio_pin_configure.c:128: gpio_pins_val_clear(P2, (1 << (gpio_pin_id % 8)));
   06BC 74 07         [12] 2151 	mov	a,#0x07
   06BE 5F            [12] 2152 	anl	a,r7
   06BF F5 F0         [12] 2153 	mov	b,a
   06C1 05 F0         [12] 2154 	inc	b
   06C3 74 01         [12] 2155 	mov	a,#0x01
   06C5 80 02         [24] 2156 	sjmp	00212$
   06C7                    2157 00210$:
   06C7 25 E0         [12] 2158 	add	a,acc
   06C9                    2159 00212$:
   06C9 D5 F0 FB      [24] 2160 	djnz	b,00210$
   06CC F4            [12] 2161 	cpl	a
   06CD FD            [12] 2162 	mov	r5,a
   06CE 52 A0         [12] 2163 	anl	_P2,a
   06D0                    2164 00115$:
                           2165 ;	../src/gpio/src/gpio_pin_configure.c:132: P2CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   06D0 74 07         [12] 2166 	mov	a,#0x07
   06D2 5F            [12] 2167 	anl	a,r7
   06D3 FD            [12] 2168 	mov	r5,a
   06D4 74 07         [12] 2169 	mov	a,#0x07
   06D6 5D            [12] 2170 	anl	a,r5
   06D7 FC            [12] 2171 	mov	r4,a
                           2172 ;	../src/gpio/src/gpio_pin_configure.c:133: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   06D8 74 E0         [12] 2173 	mov	a,#0xE0
   06DA 5E            [12] 2174 	anl	a,r6
   06DB 4C            [12] 2175 	orl	a,r4
   06DC F5 97         [12] 2176 	mov	_P2CON,a
                           2177 ;	../src/gpio/src/gpio_pin_configure.c:136: gpio_pins_dir_output(P2DIR, (1 << (gpio_pin_id % 8)));
   06DE 8D F0         [24] 2178 	mov	b,r5
   06E0 05 F0         [12] 2179 	inc	b
   06E2 74 01         [12] 2180 	mov	a,#0x01
   06E4 80 02         [24] 2181 	sjmp	00215$
   06E6                    2182 00213$:
   06E6 25 E0         [12] 2183 	add	a,acc
   06E8                    2184 00215$:
   06E8 D5 F0 FB      [24] 2185 	djnz	b,00213$
   06EB F4            [12] 2186 	cpl	a
   06EC 52 95         [12] 2187 	anl	_P2DIR,a
   06EE 22            [24] 2188 	ret
   06EF                    2189 00117$:
                           2190 ;	../src/gpio/src/gpio_pin_configure.c:141: P2CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   06EF 74 07         [12] 2191 	mov	a,#0x07
   06F1 5F            [12] 2192 	anl	a,r7
   06F2 FD            [12] 2193 	mov	r5,a
   06F3 74 07         [12] 2194 	mov	a,#0x07
   06F5 5D            [12] 2195 	anl	a,r5
   06F6 44 10         [12] 2196 	orl	a,#0x10
   06F8 FC            [12] 2197 	mov	r4,a
                           2198 ;	../src/gpio/src/gpio_pin_configure.c:143: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   06F9 74 E0         [12] 2199 	mov	a,#0xE0
   06FB 5E            [12] 2200 	anl	a,r6
   06FC 4C            [12] 2201 	orl	a,r4
   06FD F5 97         [12] 2202 	mov	_P2CON,a
                           2203 ;	../src/gpio/src/gpio_pin_configure.c:146: gpio_pins_dir_input(P2DIR, (1 << (gpio_pin_id % 8)));
   06FF 8D F0         [24] 2204 	mov	b,r5
   0701 05 F0         [12] 2205 	inc	b
   0703 74 01         [12] 2206 	mov	a,#0x01
   0705 80 02         [24] 2207 	sjmp	00218$
   0707                    2208 00216$:
   0707 25 E0         [12] 2209 	add	a,acc
   0709                    2210 00218$:
   0709 D5 F0 FB      [24] 2211 	djnz	b,00216$
   070C 42 95         [12] 2212 	orl	_P2DIR,a
   070E 22            [24] 2213 	ret
   070F                    2214 00128$:
                           2215 ;	../src/gpio/src/gpio_pin_configure.c:149: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   070F EF            [12] 2216 	mov	a,r7
   0710 24 E1         [12] 2217 	add	a,#0xff - 0x1E
   0712 40 75         [24] 2218 	jc	00136$
                           2219 ;	../src/gpio/src/gpio_pin_configure.c:152: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   0714 90 00 38      [24] 2220 	mov	dptr,#_gpio_pin_configure_PARM_2
   0717 E0            [24] 2221 	movx	a,@dptr
   0718 FE            [12] 2222 	mov	r6,a
   0719 FD            [12] 2223 	mov	r5,a
   071A ED            [12] 2224 	mov	a,r5
   071B 30 E0 4C      [24] 2225 	jnb	acc.0,00123$
                           2226 ;	../src/gpio/src/gpio_pin_configure.c:155: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   071E EE            [12] 2227 	mov	a,r6
   071F 30 E1 15      [24] 2228 	jnb	acc.1,00120$
                           2229 ;	../src/gpio/src/gpio_pin_configure.c:157: gpio_pins_val_set(P3, (1 << (gpio_pin_id % 8)));
   0722 74 07         [12] 2230 	mov	a,#0x07
   0724 5F            [12] 2231 	anl	a,r7
   0725 F5 F0         [12] 2232 	mov	b,a
   0727 05 F0         [12] 2233 	inc	b
   0729 74 01         [12] 2234 	mov	a,#0x01
   072B 80 02         [24] 2235 	sjmp	00224$
   072D                    2236 00222$:
   072D 25 E0         [12] 2237 	add	a,acc
   072F                    2238 00224$:
   072F D5 F0 FB      [24] 2239 	djnz	b,00222$
   0732 FD            [12] 2240 	mov	r5,a
   0733 42 B0         [12] 2241 	orl	_P3,a
   0735 80 14         [24] 2242 	sjmp	00121$
   0737                    2243 00120$:
                           2244 ;	../src/gpio/src/gpio_pin_configure.c:161: gpio_pins_val_clear(P3, (1 << (gpio_pin_id % 8)));
   0737 74 07         [12] 2245 	mov	a,#0x07
   0739 5F            [12] 2246 	anl	a,r7
   073A F5 F0         [12] 2247 	mov	b,a
   073C 05 F0         [12] 2248 	inc	b
   073E 74 01         [12] 2249 	mov	a,#0x01
   0740 80 02         [24] 2250 	sjmp	00227$
   0742                    2251 00225$:
   0742 25 E0         [12] 2252 	add	a,acc
   0744                    2253 00227$:
   0744 D5 F0 FB      [24] 2254 	djnz	b,00225$
   0747 F4            [12] 2255 	cpl	a
   0748 FD            [12] 2256 	mov	r5,a
   0749 52 B0         [12] 2257 	anl	_P3,a
   074B                    2258 00121$:
                           2259 ;	../src/gpio/src/gpio_pin_configure.c:165: P3CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   074B 74 07         [12] 2260 	mov	a,#0x07
   074D 5F            [12] 2261 	anl	a,r7
   074E FD            [12] 2262 	mov	r5,a
   074F 74 07         [12] 2263 	mov	a,#0x07
   0751 5D            [12] 2264 	anl	a,r5
   0752 FC            [12] 2265 	mov	r4,a
                           2266 ;	../src/gpio/src/gpio_pin_configure.c:166: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   0753 74 E0         [12] 2267 	mov	a,#0xE0
   0755 5E            [12] 2268 	anl	a,r6
   0756 4C            [12] 2269 	orl	a,r4
   0757 F5 8F         [12] 2270 	mov	_P3CON,a
                           2271 ;	../src/gpio/src/gpio_pin_configure.c:169: gpio_pins_dir_output(P3DIR, (1 << (gpio_pin_id % 8)));
   0759 8D F0         [24] 2272 	mov	b,r5
   075B 05 F0         [12] 2273 	inc	b
   075D 74 01         [12] 2274 	mov	a,#0x01
   075F 80 02         [24] 2275 	sjmp	00230$
   0761                    2276 00228$:
   0761 25 E0         [12] 2277 	add	a,acc
   0763                    2278 00230$:
   0763 D5 F0 FB      [24] 2279 	djnz	b,00228$
   0766 F4            [12] 2280 	cpl	a
   0767 52 96         [12] 2281 	anl	_P3DIR,a
   0769 22            [24] 2282 	ret
   076A                    2283 00123$:
                           2284 ;	../src/gpio/src/gpio_pin_configure.c:174: P3CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   076A 53 07 07      [24] 2285 	anl	ar7,#0x07
   076D 74 07         [12] 2286 	mov	a,#0x07
   076F 5F            [12] 2287 	anl	a,r7
   0770 44 10         [12] 2288 	orl	a,#0x10
   0772 FD            [12] 2289 	mov	r5,a
                           2290 ;	../src/gpio/src/gpio_pin_configure.c:176: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   0773 74 E0         [12] 2291 	mov	a,#0xE0
   0775 5E            [12] 2292 	anl	a,r6
   0776 4D            [12] 2293 	orl	a,r5
   0777 F5 8F         [12] 2294 	mov	_P3CON,a
                           2295 ;	../src/gpio/src/gpio_pin_configure.c:179: gpio_pins_dir_input(P3DIR, (1 << (gpio_pin_id % 8)));
   0779 8F F0         [24] 2296 	mov	b,r7
   077B 05 F0         [12] 2297 	inc	b
   077D 74 01         [12] 2298 	mov	a,#0x01
   077F 80 02         [24] 2299 	sjmp	00233$
   0781                    2300 00231$:
   0781 25 E0         [12] 2301 	add	a,acc
   0783                    2302 00233$:
   0783 D5 F0 FB      [24] 2303 	djnz	b,00231$
   0786 FF            [12] 2304 	mov	r7,a
   0787 42 96         [12] 2305 	orl	_P3DIR,a
   0789                    2306 00136$:
   0789 22            [24] 2307 	ret
                           2308 ;------------------------------------------------------------
                           2309 ;Allocation info for local variables in function 'gpio_pin_val_read'
                           2310 ;------------------------------------------------------------
                           2311 ;gpio_pin_id               Allocated with name '_gpio_pin_val_read_gpio_pin_id_1_108'
                           2312 ;value                     Allocated with name '_gpio_pin_val_read_value_1_109'
                           2313 ;------------------------------------------------------------
                           2314 ;	../src/gpio/src/gpio_pin_val_read.c:46: bool gpio_pin_val_read(gpio_pin_id_t gpio_pin_id)
                           2315 ;	-----------------------------------------
                           2316 ;	 function gpio_pin_val_read
                           2317 ;	-----------------------------------------
   078A                    2318 _gpio_pin_val_read:
   078A E5 82         [12] 2319 	mov	a,dpl
   078C 90 00 3A      [24] 2320 	mov	dptr,#_gpio_pin_val_read_gpio_pin_id_1_108
   078F F0            [24] 2321 	movx	@dptr,a
                           2322 ;	../src/gpio/src/gpio_pin_val_read.c:48: bool value = false;
   0790 90 00 3B      [24] 2323 	mov	dptr,#_gpio_pin_val_read_value_1_109
   0793 E4            [12] 2324 	clr	a
   0794 F0            [24] 2325 	movx	@dptr,a
                           2326 ;	../src/gpio/src/gpio_pin_val_read.c:51: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   0795 90 00 3A      [24] 2327 	mov	dptr,#_gpio_pin_val_read_gpio_pin_id_1_108
   0798 E0            [24] 2328 	movx	a,@dptr
   0799 FF            [12] 2329 	mov  r7,a
   079A 24 F8         [12] 2330 	add	a,#0xff - 0x07
   079C 40 19         [24] 2331 	jc	00110$
                           2332 ;	../src/gpio/src/gpio_pin_val_read.c:53: value = P0 & (1 << (gpio_pin_id % 8));
   079E 74 07         [12] 2333 	mov	a,#0x07
   07A0 5F            [12] 2334 	anl	a,r7
   07A1 F5 F0         [12] 2335 	mov	b,a
   07A3 05 F0         [12] 2336 	inc	b
   07A5 74 01         [12] 2337 	mov	a,#0x01
   07A7 80 02         [24] 2338 	sjmp	00135$
   07A9                    2339 00133$:
   07A9 25 E0         [12] 2340 	add	a,acc
   07AB                    2341 00135$:
   07AB D5 F0 FB      [24] 2342 	djnz	b,00133$
   07AE FE            [12] 2343 	mov	r6,a
   07AF 90 00 3B      [24] 2344 	mov	dptr,#_gpio_pin_val_read_value_1_109
   07B2 55 80         [12] 2345 	anl	a,_P0
   07B4 F0            [24] 2346 	movx	@dptr,a
   07B5 80 58         [24] 2347 	sjmp	00111$
   07B7                    2348 00110$:
                           2349 ;	../src/gpio/src/gpio_pin_val_read.c:55: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   07B7 EF            [12] 2350 	mov	a,r7
   07B8 24 F0         [12] 2351 	add	a,#0xff - 0x0F
   07BA 40 19         [24] 2352 	jc	00107$
                           2353 ;	../src/gpio/src/gpio_pin_val_read.c:57: value = P1 & (1 << (gpio_pin_id % 8));
   07BC 74 07         [12] 2354 	mov	a,#0x07
   07BE 5F            [12] 2355 	anl	a,r7
   07BF F5 F0         [12] 2356 	mov	b,a
   07C1 05 F0         [12] 2357 	inc	b
   07C3 74 01         [12] 2358 	mov	a,#0x01
   07C5 80 02         [24] 2359 	sjmp	00139$
   07C7                    2360 00137$:
   07C7 25 E0         [12] 2361 	add	a,acc
   07C9                    2362 00139$:
   07C9 D5 F0 FB      [24] 2363 	djnz	b,00137$
   07CC FE            [12] 2364 	mov	r6,a
   07CD 90 00 3B      [24] 2365 	mov	dptr,#_gpio_pin_val_read_value_1_109
   07D0 55 90         [12] 2366 	anl	a,_P1
   07D2 F0            [24] 2367 	movx	@dptr,a
   07D3 80 3A         [24] 2368 	sjmp	00111$
   07D5                    2369 00107$:
                           2370 ;	../src/gpio/src/gpio_pin_val_read.c:59: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   07D5 EF            [12] 2371 	mov	a,r7
   07D6 24 E8         [12] 2372 	add	a,#0xff - 0x17
   07D8 40 19         [24] 2373 	jc	00104$
                           2374 ;	../src/gpio/src/gpio_pin_val_read.c:61: value = P2 & (1 << (gpio_pin_id % 8));
   07DA 74 07         [12] 2375 	mov	a,#0x07
   07DC 5F            [12] 2376 	anl	a,r7
   07DD F5 F0         [12] 2377 	mov	b,a
   07DF 05 F0         [12] 2378 	inc	b
   07E1 74 01         [12] 2379 	mov	a,#0x01
   07E3 80 02         [24] 2380 	sjmp	00143$
   07E5                    2381 00141$:
   07E5 25 E0         [12] 2382 	add	a,acc
   07E7                    2383 00143$:
   07E7 D5 F0 FB      [24] 2384 	djnz	b,00141$
   07EA FE            [12] 2385 	mov	r6,a
   07EB 90 00 3B      [24] 2386 	mov	dptr,#_gpio_pin_val_read_value_1_109
   07EE 55 A0         [12] 2387 	anl	a,_P2
   07F0 F0            [24] 2388 	movx	@dptr,a
   07F1 80 1C         [24] 2389 	sjmp	00111$
   07F3                    2390 00104$:
                           2391 ;	../src/gpio/src/gpio_pin_val_read.c:63: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   07F3 EF            [12] 2392 	mov	a,r7
   07F4 24 E1         [12] 2393 	add	a,#0xff - 0x1E
   07F6 40 17         [24] 2394 	jc	00111$
                           2395 ;	../src/gpio/src/gpio_pin_val_read.c:65: value = P3 & (1 << (gpio_pin_id % 8));
   07F8 74 07         [12] 2396 	mov	a,#0x07
   07FA 5F            [12] 2397 	anl	a,r7
   07FB F5 F0         [12] 2398 	mov	b,a
   07FD 05 F0         [12] 2399 	inc	b
   07FF 74 01         [12] 2400 	mov	a,#0x01
   0801 80 02         [24] 2401 	sjmp	00147$
   0803                    2402 00145$:
   0803 25 E0         [12] 2403 	add	a,acc
   0805                    2404 00147$:
   0805 D5 F0 FB      [24] 2405 	djnz	b,00145$
   0808 FF            [12] 2406 	mov	r7,a
   0809 90 00 3B      [24] 2407 	mov	dptr,#_gpio_pin_val_read_value_1_109
   080C 55 B0         [12] 2408 	anl	a,_P3
   080E F0            [24] 2409 	movx	@dptr,a
   080F                    2410 00111$:
                           2411 ;	../src/gpio/src/gpio_pin_val_read.c:68: if(value)
   080F 90 00 3B      [24] 2412 	mov	dptr,#_gpio_pin_val_read_value_1_109
   0812 E0            [24] 2413 	movx	a,@dptr
   0813 FF            [12] 2414 	mov	r7,a
   0814 60 04         [24] 2415 	jz	00113$
                           2416 ;	../src/gpio/src/gpio_pin_val_read.c:70: return true;
   0816 75 82 01      [24] 2417 	mov	dpl,#0x01
   0819 22            [24] 2418 	ret
   081A                    2419 00113$:
                           2420 ;	../src/gpio/src/gpio_pin_val_read.c:74: return false;
   081A 75 82 00      [24] 2421 	mov	dpl,#0x00
   081D 22            [24] 2422 	ret
                           2423 ;------------------------------------------------------------
                           2424 ;Allocation info for local variables in function 'gpio_pin_val_clear'
                           2425 ;------------------------------------------------------------
                           2426 ;gpio_pin_id               Allocated with name '_gpio_pin_val_clear_gpio_pin_id_1_116'
                           2427 ;------------------------------------------------------------
                           2428 ;	../src/gpio/src/gpio_pin_val_clear.c:46: void gpio_pin_val_clear(gpio_pin_id_t gpio_pin_id)
                           2429 ;	-----------------------------------------
                           2430 ;	 function gpio_pin_val_clear
                           2431 ;	-----------------------------------------
   081E                    2432 _gpio_pin_val_clear:
   081E E5 82         [12] 2433 	mov	a,dpl
                           2434 ;	../src/gpio/src/gpio_pin_val_clear.c:49: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   0820 90 00 3C      [24] 2435 	mov	dptr,#_gpio_pin_val_clear_gpio_pin_id_1_116
   0823 F0            [24] 2436 	movx	@dptr,a
   0824 FF            [12] 2437 	mov  r7,a
   0825 24 F8         [12] 2438 	add	a,#0xff - 0x07
   0827 40 14         [24] 2439 	jc	00110$
                           2440 ;	../src/gpio/src/gpio_pin_val_clear.c:51: gpio_pins_val_clear(P0, (1 << (gpio_pin_id % 8)));
   0829 74 07         [12] 2441 	mov	a,#0x07
   082B 5F            [12] 2442 	anl	a,r7
   082C F5 F0         [12] 2443 	mov	b,a
   082E 05 F0         [12] 2444 	inc	b
   0830 74 01         [12] 2445 	mov	a,#0x01
   0832 80 02         [24] 2446 	sjmp	00129$
   0834                    2447 00127$:
   0834 25 E0         [12] 2448 	add	a,acc
   0836                    2449 00129$:
   0836 D5 F0 FB      [24] 2450 	djnz	b,00127$
   0839 F4            [12] 2451 	cpl	a
   083A 52 80         [12] 2452 	anl	_P0,a
   083C 22            [24] 2453 	ret
   083D                    2454 00110$:
                           2455 ;	../src/gpio/src/gpio_pin_val_clear.c:53: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   083D EF            [12] 2456 	mov	a,r7
   083E 24 F0         [12] 2457 	add	a,#0xff - 0x0F
   0840 40 14         [24] 2458 	jc	00107$
                           2459 ;	../src/gpio/src/gpio_pin_val_clear.c:55: gpio_pins_val_clear(P1, (1 << (gpio_pin_id % 8)));
   0842 74 07         [12] 2460 	mov	a,#0x07
   0844 5F            [12] 2461 	anl	a,r7
   0845 F5 F0         [12] 2462 	mov	b,a
   0847 05 F0         [12] 2463 	inc	b
   0849 74 01         [12] 2464 	mov	a,#0x01
   084B 80 02         [24] 2465 	sjmp	00133$
   084D                    2466 00131$:
   084D 25 E0         [12] 2467 	add	a,acc
   084F                    2468 00133$:
   084F D5 F0 FB      [24] 2469 	djnz	b,00131$
   0852 F4            [12] 2470 	cpl	a
   0853 52 90         [12] 2471 	anl	_P1,a
   0855 22            [24] 2472 	ret
   0856                    2473 00107$:
                           2474 ;	../src/gpio/src/gpio_pin_val_clear.c:57: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   0856 EF            [12] 2475 	mov	a,r7
   0857 24 E8         [12] 2476 	add	a,#0xff - 0x17
   0859 40 14         [24] 2477 	jc	00104$
                           2478 ;	../src/gpio/src/gpio_pin_val_clear.c:59: gpio_pins_val_clear(P2, (1 << (gpio_pin_id % 8)));
   085B 74 07         [12] 2479 	mov	a,#0x07
   085D 5F            [12] 2480 	anl	a,r7
   085E F5 F0         [12] 2481 	mov	b,a
   0860 05 F0         [12] 2482 	inc	b
   0862 74 01         [12] 2483 	mov	a,#0x01
   0864 80 02         [24] 2484 	sjmp	00137$
   0866                    2485 00135$:
   0866 25 E0         [12] 2486 	add	a,acc
   0868                    2487 00137$:
   0868 D5 F0 FB      [24] 2488 	djnz	b,00135$
   086B F4            [12] 2489 	cpl	a
   086C 52 A0         [12] 2490 	anl	_P2,a
   086E 22            [24] 2491 	ret
   086F                    2492 00104$:
                           2493 ;	../src/gpio/src/gpio_pin_val_clear.c:61: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   086F EF            [12] 2494 	mov	a,r7
   0870 24 E1         [12] 2495 	add	a,#0xff - 0x1E
   0872 40 14         [24] 2496 	jc	00112$
                           2497 ;	../src/gpio/src/gpio_pin_val_clear.c:63: gpio_pins_val_clear(P3, (1 << (gpio_pin_id % 8)));
   0874 74 07         [12] 2498 	mov	a,#0x07
   0876 5F            [12] 2499 	anl	a,r7
   0877 F5 F0         [12] 2500 	mov	b,a
   0879 05 F0         [12] 2501 	inc	b
   087B 74 01         [12] 2502 	mov	a,#0x01
   087D 80 02         [24] 2503 	sjmp	00141$
   087F                    2504 00139$:
   087F 25 E0         [12] 2505 	add	a,acc
   0881                    2506 00141$:
   0881 D5 F0 FB      [24] 2507 	djnz	b,00139$
   0884 F4            [12] 2508 	cpl	a
   0885 FF            [12] 2509 	mov	r7,a
   0886 52 B0         [12] 2510 	anl	_P3,a
   0888                    2511 00112$:
   0888 22            [24] 2512 	ret
                           2513 ;------------------------------------------------------------
                           2514 ;Allocation info for local variables in function 'gpio_pin_val_set'
                           2515 ;------------------------------------------------------------
                           2516 ;gpio_pin_id               Allocated with name '_gpio_pin_val_set_gpio_pin_id_1_122'
                           2517 ;------------------------------------------------------------
                           2518 ;	../src/gpio/src/gpio_pin_val_set.c:46: void gpio_pin_val_set(gpio_pin_id_t gpio_pin_id)
                           2519 ;	-----------------------------------------
                           2520 ;	 function gpio_pin_val_set
                           2521 ;	-----------------------------------------
   0889                    2522 _gpio_pin_val_set:
   0889 E5 82         [12] 2523 	mov	a,dpl
                           2524 ;	../src/gpio/src/gpio_pin_val_set.c:49: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   088B 90 00 3D      [24] 2525 	mov	dptr,#_gpio_pin_val_set_gpio_pin_id_1_122
   088E F0            [24] 2526 	movx	@dptr,a
   088F FF            [12] 2527 	mov  r7,a
   0890 24 F8         [12] 2528 	add	a,#0xff - 0x07
   0892 40 13         [24] 2529 	jc	00110$
                           2530 ;	../src/gpio/src/gpio_pin_val_set.c:51: gpio_pins_val_set(P0, (1 << (gpio_pin_id % 8)));
   0894 74 07         [12] 2531 	mov	a,#0x07
   0896 5F            [12] 2532 	anl	a,r7
   0897 F5 F0         [12] 2533 	mov	b,a
   0899 05 F0         [12] 2534 	inc	b
   089B 74 01         [12] 2535 	mov	a,#0x01
   089D 80 02         [24] 2536 	sjmp	00129$
   089F                    2537 00127$:
   089F 25 E0         [12] 2538 	add	a,acc
   08A1                    2539 00129$:
   08A1 D5 F0 FB      [24] 2540 	djnz	b,00127$
   08A4 42 80         [12] 2541 	orl	_P0,a
   08A6 22            [24] 2542 	ret
   08A7                    2543 00110$:
                           2544 ;	../src/gpio/src/gpio_pin_val_set.c:53: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   08A7 EF            [12] 2545 	mov	a,r7
   08A8 24 F0         [12] 2546 	add	a,#0xff - 0x0F
   08AA 40 13         [24] 2547 	jc	00107$
                           2548 ;	../src/gpio/src/gpio_pin_val_set.c:55: gpio_pins_val_set(P1, (1 << (gpio_pin_id % 8)));
   08AC 74 07         [12] 2549 	mov	a,#0x07
   08AE 5F            [12] 2550 	anl	a,r7
   08AF F5 F0         [12] 2551 	mov	b,a
   08B1 05 F0         [12] 2552 	inc	b
   08B3 74 01         [12] 2553 	mov	a,#0x01
   08B5 80 02         [24] 2554 	sjmp	00133$
   08B7                    2555 00131$:
   08B7 25 E0         [12] 2556 	add	a,acc
   08B9                    2557 00133$:
   08B9 D5 F0 FB      [24] 2558 	djnz	b,00131$
   08BC 42 90         [12] 2559 	orl	_P1,a
   08BE 22            [24] 2560 	ret
   08BF                    2561 00107$:
                           2562 ;	../src/gpio/src/gpio_pin_val_set.c:57: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   08BF EF            [12] 2563 	mov	a,r7
   08C0 24 E8         [12] 2564 	add	a,#0xff - 0x17
   08C2 40 13         [24] 2565 	jc	00104$
                           2566 ;	../src/gpio/src/gpio_pin_val_set.c:59: gpio_pins_val_set(P2, (1 << (gpio_pin_id % 8)));
   08C4 74 07         [12] 2567 	mov	a,#0x07
   08C6 5F            [12] 2568 	anl	a,r7
   08C7 F5 F0         [12] 2569 	mov	b,a
   08C9 05 F0         [12] 2570 	inc	b
   08CB 74 01         [12] 2571 	mov	a,#0x01
   08CD 80 02         [24] 2572 	sjmp	00137$
   08CF                    2573 00135$:
   08CF 25 E0         [12] 2574 	add	a,acc
   08D1                    2575 00137$:
   08D1 D5 F0 FB      [24] 2576 	djnz	b,00135$
   08D4 42 A0         [12] 2577 	orl	_P2,a
   08D6 22            [24] 2578 	ret
   08D7                    2579 00104$:
                           2580 ;	../src/gpio/src/gpio_pin_val_set.c:61: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   08D7 EF            [12] 2581 	mov	a,r7
   08D8 24 E1         [12] 2582 	add	a,#0xff - 0x1E
   08DA 40 13         [24] 2583 	jc	00112$
                           2584 ;	../src/gpio/src/gpio_pin_val_set.c:63: gpio_pins_val_set(P3, (1 << (gpio_pin_id % 8)));
   08DC 74 07         [12] 2585 	mov	a,#0x07
   08DE 5F            [12] 2586 	anl	a,r7
   08DF F5 F0         [12] 2587 	mov	b,a
   08E1 05 F0         [12] 2588 	inc	b
   08E3 74 01         [12] 2589 	mov	a,#0x01
   08E5 80 02         [24] 2590 	sjmp	00141$
   08E7                    2591 00139$:
   08E7 25 E0         [12] 2592 	add	a,acc
   08E9                    2593 00141$:
   08E9 D5 F0 FB      [24] 2594 	djnz	b,00139$
   08EC FF            [12] 2595 	mov	r7,a
   08ED 42 B0         [12] 2596 	orl	_P3,a
   08EF                    2597 00112$:
   08EF 22            [24] 2598 	ret
                           2599 ;------------------------------------------------------------
                           2600 ;Allocation info for local variables in function 'gpio_pin_val_write'
                           2601 ;------------------------------------------------------------
                           2602 ;value                     Allocated with name '_gpio_pin_val_write_PARM_2'
                           2603 ;gpio_pin_id               Allocated with name '_gpio_pin_val_write_gpio_pin_id_1_128'
                           2604 ;------------------------------------------------------------
                           2605 ;	../src/gpio/src/gpio_pin_val_write.c:47: void gpio_pin_val_write(gpio_pin_id_t gpio_pin_id, bool value)
                           2606 ;	-----------------------------------------
                           2607 ;	 function gpio_pin_val_write
                           2608 ;	-----------------------------------------
   08F0                    2609 _gpio_pin_val_write:
   08F0 E5 82         [12] 2610 	mov	a,dpl
   08F2 90 00 3F      [24] 2611 	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_128
   08F5 F0            [24] 2612 	movx	@dptr,a
                           2613 ;	../src/gpio/src/gpio_pin_val_write.c:50: if(value)
   08F6 90 00 3E      [24] 2614 	mov	dptr,#_gpio_pin_val_write_PARM_2
   08F9 E0            [24] 2615 	movx	a,@dptr
   08FA FF            [12] 2616 	mov	r7,a
   08FB 60 09         [24] 2617 	jz	00102$
                           2618 ;	../src/gpio/src/gpio_pin_val_write.c:52: gpio_pin_val_set(gpio_pin_id);
   08FD 90 00 3F      [24] 2619 	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_128
   0900 E0            [24] 2620 	movx	a,@dptr
   0901 F5 82         [12] 2621 	mov	dpl,a
   0903 02 08 89      [24] 2622 	ljmp	_gpio_pin_val_set
   0906                    2623 00102$:
                           2624 ;	../src/gpio/src/gpio_pin_val_write.c:56: gpio_pin_val_clear(gpio_pin_id);
   0906 90 00 3F      [24] 2625 	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_128
   0909 E0            [24] 2626 	movx	a,@dptr
   090A F5 82         [12] 2627 	mov	dpl,a
   090C 02 08 1E      [24] 2628 	ljmp	_gpio_pin_val_clear
                           2629 ;------------------------------------------------------------
                           2630 ;Allocation info for local variables in function 'delay_us'
                           2631 ;------------------------------------------------------------
                           2632 ;microseconds              Allocated with name '_delay_us_microseconds_1_132'
                           2633 ;count                     Allocated with name '_delay_us_count_1_133'
                           2634 ;------------------------------------------------------------
                           2635 ;	../src/delay/src/delay_us.c:46: void delay_us(uint16_t microseconds)
                           2636 ;	-----------------------------------------
                           2637 ;	 function delay_us
                           2638 ;	-----------------------------------------
   090F                    2639 _delay_us:
   090F AF 83         [24] 2640 	mov	r7,dph
   0911 E5 82         [12] 2641 	mov	a,dpl
   0913 90 00 40      [24] 2642 	mov	dptr,#_delay_us_microseconds_1_132
   0916 F0            [24] 2643 	movx	@dptr,a
   0917 EF            [12] 2644 	mov	a,r7
   0918 A3            [24] 2645 	inc	dptr
   0919 F0            [24] 2646 	movx	@dptr,a
                           2647 ;	../src/delay/src/delay_us.c:51: if(microseconds == 0)
   091A 90 00 40      [24] 2648 	mov	dptr,#_delay_us_microseconds_1_132
   091D E0            [24] 2649 	movx	a,@dptr
   091E FE            [12] 2650 	mov	r6,a
   091F A3            [24] 2651 	inc	dptr
   0920 E0            [24] 2652 	movx	a,@dptr
   0921 FF            [12] 2653 	mov	r7,a
   0922 4E            [12] 2654 	orl	a,r6
   0923 70 01         [24] 2655 	jnz	00102$
                           2656 ;	../src/delay/src/delay_us.c:52: return;
   0925 22            [24] 2657 	ret
   0926                    2658 00102$:
                           2659 ;	../src/delay/src/delay_us.c:54: microseconds -= 1;
   0926 1E            [12] 2660 	dec	r6
   0927 BE FF 01      [24] 2661 	cjne	r6,#0xFF,00121$
   092A 1F            [12] 2662 	dec	r7
   092B                    2663 00121$:
   092B 90 00 40      [24] 2664 	mov	dptr,#_delay_us_microseconds_1_132
   092E EE            [12] 2665 	mov	a,r6
   092F F0            [24] 2666 	movx	@dptr,a
   0930 EF            [12] 2667 	mov	a,r7
   0931 A3            [24] 2668 	inc	dptr
   0932 F0            [24] 2669 	movx	@dptr,a
                           2670 ;	../src/delay/src/delay_us.c:56: for(count = 0; count < microseconds; count++)
   0933 90 00 40      [24] 2671 	mov	dptr,#_delay_us_microseconds_1_132
   0936 E0            [24] 2672 	movx	a,@dptr
   0937 FE            [12] 2673 	mov	r6,a
   0938 A3            [24] 2674 	inc	dptr
   0939 E0            [24] 2675 	movx	a,@dptr
   093A FF            [12] 2676 	mov	r7,a
   093B 7C 00         [12] 2677 	mov	r4,#0x00
   093D 7D 00         [12] 2678 	mov	r5,#0x00
   093F                    2679 00106$:
   093F C3            [12] 2680 	clr	c
   0940 EC            [12] 2681 	mov	a,r4
   0941 9E            [12] 2682 	subb	a,r6
   0942 ED            [12] 2683 	mov	a,r5
   0943 9F            [12] 2684 	subb	a,r7
   0944 50 09         [24] 2685 	jnc	00108$
                           2686 ;	../src/delay/src/delay_us.c:58: nop();
   0946 00            [12] 2687 	nop 
                           2688 ;	../src/delay/src/delay_us.c:59: nop();
   0947 00            [12] 2689 	nop 
                           2690 ;	../src/delay/src/delay_us.c:56: for(count = 0; count < microseconds; count++)
   0948 0C            [12] 2691 	inc	r4
   0949 BC 00 F3      [24] 2692 	cjne	r4,#0x00,00106$
   094C 0D            [12] 2693 	inc	r5
   094D 80 F0         [24] 2694 	sjmp	00106$
   094F                    2695 00108$:
   094F 22            [24] 2696 	ret
                           2697 ;------------------------------------------------------------
                           2698 ;Allocation info for local variables in function 'delay_s'
                           2699 ;------------------------------------------------------------
                           2700 ;seconds                   Allocated with name '_delay_s_seconds_1_135'
                           2701 ;count                     Allocated with name '_delay_s_count_1_136'
                           2702 ;------------------------------------------------------------
                           2703 ;	../src/delay/src/delay_s.c:46: void delay_s(uint16_t seconds)
                           2704 ;	-----------------------------------------
                           2705 ;	 function delay_s
                           2706 ;	-----------------------------------------
   0950                    2707 _delay_s:
   0950 AF 83         [24] 2708 	mov	r7,dph
   0952 E5 82         [12] 2709 	mov	a,dpl
   0954 90 00 42      [24] 2710 	mov	dptr,#_delay_s_seconds_1_135
   0957 F0            [24] 2711 	movx	@dptr,a
   0958 EF            [12] 2712 	mov	a,r7
   0959 A3            [24] 2713 	inc	dptr
   095A F0            [24] 2714 	movx	@dptr,a
                           2715 ;	../src/delay/src/delay_s.c:51: for(count = 0; count < seconds; count++)
   095B 90 00 42      [24] 2716 	mov	dptr,#_delay_s_seconds_1_135
   095E E0            [24] 2717 	movx	a,@dptr
   095F FE            [12] 2718 	mov	r6,a
   0960 A3            [24] 2719 	inc	dptr
   0961 E0            [24] 2720 	movx	a,@dptr
   0962 FF            [12] 2721 	mov	r7,a
   0963 7C 00         [12] 2722 	mov	r4,#0x00
   0965 7D 00         [12] 2723 	mov	r5,#0x00
   0967                    2724 00103$:
   0967 C3            [12] 2725 	clr	c
   0968 EC            [12] 2726 	mov	a,r4
   0969 9E            [12] 2727 	subb	a,r6
   096A ED            [12] 2728 	mov	a,r5
   096B 9F            [12] 2729 	subb	a,r7
   096C 50 1D         [24] 2730 	jnc	00105$
                           2731 ;	../src/delay/src/delay_s.c:53: delay_ms(1000);
   096E 90 03 E8      [24] 2732 	mov	dptr,#0x03E8
   0971 C0 07         [24] 2733 	push	ar7
   0973 C0 06         [24] 2734 	push	ar6
   0975 C0 05         [24] 2735 	push	ar5
   0977 C0 04         [24] 2736 	push	ar4
   0979 12 09 8C      [24] 2737 	lcall	_delay_ms
   097C D0 04         [24] 2738 	pop	ar4
   097E D0 05         [24] 2739 	pop	ar5
   0980 D0 06         [24] 2740 	pop	ar6
   0982 D0 07         [24] 2741 	pop	ar7
                           2742 ;	../src/delay/src/delay_s.c:51: for(count = 0; count < seconds; count++)
   0984 0C            [12] 2743 	inc	r4
   0985 BC 00 DF      [24] 2744 	cjne	r4,#0x00,00103$
   0988 0D            [12] 2745 	inc	r5
   0989 80 DC         [24] 2746 	sjmp	00103$
   098B                    2747 00105$:
   098B 22            [24] 2748 	ret
                           2749 ;------------------------------------------------------------
                           2750 ;Allocation info for local variables in function 'delay_ms'
                           2751 ;------------------------------------------------------------
                           2752 ;milliseconds              Allocated with name '_delay_ms_milliseconds_1_138'
                           2753 ;count                     Allocated with name '_delay_ms_count_1_139'
                           2754 ;------------------------------------------------------------
                           2755 ;	../src/delay/src/delay_ms.c:46: void delay_ms(uint16_t milliseconds)
                           2756 ;	-----------------------------------------
                           2757 ;	 function delay_ms
                           2758 ;	-----------------------------------------
   098C                    2759 _delay_ms:
   098C AF 83         [24] 2760 	mov	r7,dph
   098E E5 82         [12] 2761 	mov	a,dpl
   0990 90 00 44      [24] 2762 	mov	dptr,#_delay_ms_milliseconds_1_138
   0993 F0            [24] 2763 	movx	@dptr,a
   0994 EF            [12] 2764 	mov	a,r7
   0995 A3            [24] 2765 	inc	dptr
   0996 F0            [24] 2766 	movx	@dptr,a
                           2767 ;	../src/delay/src/delay_ms.c:51: for(count = 0; count < milliseconds; count++)
   0997 90 00 44      [24] 2768 	mov	dptr,#_delay_ms_milliseconds_1_138
   099A E0            [24] 2769 	movx	a,@dptr
   099B FE            [12] 2770 	mov	r6,a
   099C A3            [24] 2771 	inc	dptr
   099D E0            [24] 2772 	movx	a,@dptr
   099E FF            [12] 2773 	mov	r7,a
   099F 7C 00         [12] 2774 	mov	r4,#0x00
   09A1 7D 00         [12] 2775 	mov	r5,#0x00
   09A3                    2776 00103$:
   09A3 C3            [12] 2777 	clr	c
   09A4 EC            [12] 2778 	mov	a,r4
   09A5 9E            [12] 2779 	subb	a,r6
   09A6 ED            [12] 2780 	mov	a,r5
   09A7 9F            [12] 2781 	subb	a,r7
   09A8 50 1D         [24] 2782 	jnc	00105$
                           2783 ;	../src/delay/src/delay_ms.c:53: delay_us(1000);
   09AA 90 03 E8      [24] 2784 	mov	dptr,#0x03E8
   09AD C0 07         [24] 2785 	push	ar7
   09AF C0 06         [24] 2786 	push	ar6
   09B1 C0 05         [24] 2787 	push	ar5
   09B3 C0 04         [24] 2788 	push	ar4
   09B5 12 09 0F      [24] 2789 	lcall	_delay_us
   09B8 D0 04         [24] 2790 	pop	ar4
   09BA D0 05         [24] 2791 	pop	ar5
   09BC D0 06         [24] 2792 	pop	ar6
   09BE D0 07         [24] 2793 	pop	ar7
                           2794 ;	../src/delay/src/delay_ms.c:51: for(count = 0; count < milliseconds; count++)
   09C0 0C            [12] 2795 	inc	r4
   09C1 BC 00 DF      [24] 2796 	cjne	r4,#0x00,00103$
   09C4 0D            [12] 2797 	inc	r5
   09C5 80 DC         [24] 2798 	sjmp	00103$
   09C7                    2799 00105$:
   09C7 22            [24] 2800 	ret
                           2801 ;------------------------------------------------------------
                           2802 ;Allocation info for local variables in function 'pwm_configure'
                           2803 ;------------------------------------------------------------
                           2804 ;pwm_config_options        Allocated with name '_pwm_configure_pwm_config_options_1_143'
                           2805 ;------------------------------------------------------------
                           2806 ;	../src/pwm/src/pwm_configure.c:52: void pwm_configure(uint8_t pwm_config_options)
                           2807 ;	-----------------------------------------
                           2808 ;	 function pwm_configure
                           2809 ;	-----------------------------------------
   09C8                    2810 _pwm_configure:
   09C8 E5 82         [12] 2811 	mov	a,dpl
   09CA 90 00 46      [24] 2812 	mov	dptr,#_pwm_configure_pwm_config_options_1_143
   09CD F0            [24] 2813 	movx	@dptr,a
                           2814 ;	../src/pwm/src/pwm_configure.c:55: PWMCON = (PWMCON & ~PWM_CONFIG_OPTION_PWMCON_MASK) | (pwm_config_options & PWM_CONFIG_OPTION_PWMCON_MASK);
   09CE AF B2         [24] 2815 	mov	r7,_PWMCON
   09D0 53 07 03      [24] 2816 	anl	ar7,#0x03
   09D3 90 00 46      [24] 2817 	mov	dptr,#_pwm_configure_pwm_config_options_1_143
   09D6 E0            [24] 2818 	movx	a,@dptr
   09D7 54 FC         [12] 2819 	anl	a,#0xFC
   09D9 4F            [12] 2820 	orl	a,r7
   09DA F5 B2         [12] 2821 	mov	_PWMCON,a
   09DC 22            [24] 2822 	ret
                           2823 ;------------------------------------------------------------
                           2824 ;Allocation info for local variables in function 'pwm_start'
                           2825 ;------------------------------------------------------------
                           2826 ;pwm_duty_cycle            Allocated with name '_pwm_start_PARM_2'
                           2827 ;pwm_channel               Allocated with name '_pwm_start_pwm_channel_1_145'
                           2828 ;------------------------------------------------------------
                           2829 ;	../src/pwm/src/pwm_start.c:47: void pwm_start(pwm_channel_t pwm_channel, uint8_t pwm_duty_cycle)
                           2830 ;	-----------------------------------------
                           2831 ;	 function pwm_start
                           2832 ;	-----------------------------------------
   09DD                    2833 _pwm_start:
   09DD E5 82         [12] 2834 	mov	a,dpl
                           2835 ;	../src/pwm/src/pwm_start.c:50: if(pwm_channel == PWM_CHANNEL_0)
   09DF 90 00 48      [24] 2836 	mov	dptr,#_pwm_start_pwm_channel_1_145
   09E2 F0            [24] 2837 	movx	@dptr,a
   09E3 FF            [12] 2838 	mov	r7,a
   09E4 70 0A         [24] 2839 	jnz	00102$
                           2840 ;	../src/pwm/src/pwm_start.c:52: PWMDC0 = pwm_duty_cycle;
   09E6 90 00 47      [24] 2841 	mov	dptr,#_pwm_start_PARM_2
   09E9 E0            [24] 2842 	movx	a,@dptr
   09EA F5 A1         [12] 2843 	mov	_PWMDC0,a
                           2844 ;	../src/pwm/src/pwm_start.c:53: reg_bits_set(PWMCON, PWMCON_PWM0_ENABLE);
   09EC 43 B2 01      [24] 2845 	orl	_PWMCON,#0x01
   09EF 22            [24] 2846 	ret
   09F0                    2847 00102$:
                           2848 ;	../src/pwm/src/pwm_start.c:57: PWMDC1 = pwm_duty_cycle;
   09F0 90 00 47      [24] 2849 	mov	dptr,#_pwm_start_PARM_2
   09F3 E0            [24] 2850 	movx	a,@dptr
   09F4 F5 A2         [12] 2851 	mov	_PWMDC1,a
                           2852 ;	../src/pwm/src/pwm_start.c:58: reg_bits_set(PWMCON, PWMCON_PWM1_ENABLE);
   09F6 43 B2 02      [24] 2853 	orl	_PWMCON,#0x02
   09F9 22            [24] 2854 	ret
                           2855 ;------------------------------------------------------------
                           2856 ;Allocation info for local variables in function 'pwr_clk_mgmt_clklf_configure'
                           2857 ;------------------------------------------------------------
                           2858 ;clklf_config_options      Allocated with name '_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154'
                           2859 ;------------------------------------------------------------
                           2860 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_clklf_configure.c:52: void pwr_clk_mgmt_clklf_configure(uint8_t clklf_config_options)
                           2861 ;	-----------------------------------------
                           2862 ;	 function pwr_clk_mgmt_clklf_configure
                           2863 ;	-----------------------------------------
   09FA                    2864 _pwr_clk_mgmt_clklf_configure:
   09FA E5 82         [12] 2865 	mov	a,dpl
   09FC 90 00 49      [24] 2866 	mov	dptr,#_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154
   09FF F0            [24] 2867 	movx	@dptr,a
                           2868 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_clklf_configure.c:55: CLKLFCTRL = (CLKLFCTRL & ~PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLKLFCTRL_MASK) | (clklf_config_options & PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLKLFCTRL_MASK);
   0A00 AF AD         [24] 2869 	mov	r7,_CLKLFCTRL
   0A02 53 07 F8      [24] 2870 	anl	ar7,#0xF8
   0A05 90 00 49      [24] 2871 	mov	dptr,#_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154
   0A08 E0            [24] 2872 	movx	a,@dptr
   0A09 54 07         [12] 2873 	anl	a,#0x07
   0A0B 4F            [12] 2874 	orl	a,r7
   0A0C F5 AD         [12] 2875 	mov	_CLKLFCTRL,a
   0A0E 22            [24] 2876 	ret
                           2877 ;------------------------------------------------------------
                           2878 ;Allocation info for local variables in function 'pwr_clk_mgmt_get_cclk_freq_in_hz'
                           2879 ;------------------------------------------------------------
                           2880 ;divider                   Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_divider_1_156'
                           2881 ;i                         Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_i_1_156'
                           2882 ;cclk_freq_hz              Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156'
                           2883 ;------------------------------------------------------------
                           2884 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:46: uint32_t pwr_clk_mgmt_get_cclk_freq_in_hz()
                           2885 ;	-----------------------------------------
                           2886 ;	 function pwr_clk_mgmt_get_cclk_freq_in_hz
                           2887 ;	-----------------------------------------
   0A0F                    2888 _pwr_clk_mgmt_get_cclk_freq_in_hz:
                           2889 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:48: uint8_t divider = (CLKCTRL & CLKCTRL_CLK_FREQ_MASK) >> CLKCTRL_CLK_FREQ_SHIFT;
   0A0F 74 07         [12] 2890 	mov	a,#0x07
   0A11 55 A3         [12] 2891 	anl	a,_CLKCTRL
   0A13 FF            [12] 2892 	mov	r7,a
                           2893 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:50: uint32_t cclk_freq_hz = CCLK_MAX_FREQ_HZ;
   0A14 90 00 4A      [24] 2894 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
   0A17 E4            [12] 2895 	clr	a
   0A18 F0            [24] 2896 	movx	@dptr,a
   0A19 74 24         [12] 2897 	mov	a,#0x24
   0A1B A3            [24] 2898 	inc	dptr
   0A1C F0            [24] 2899 	movx	@dptr,a
   0A1D 74 F4         [12] 2900 	mov	a,#0xF4
   0A1F A3            [24] 2901 	inc	dptr
   0A20 F0            [24] 2902 	movx	@dptr,a
   0A21 E4            [12] 2903 	clr	a
   0A22 A3            [24] 2904 	inc	dptr
   0A23 F0            [24] 2905 	movx	@dptr,a
                           2906 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:52: for(i = 0; i < divider; i++)
   0A24 7E 00         [12] 2907 	mov	r6,#0x00
   0A26                    2908 00103$:
   0A26 C3            [12] 2909 	clr	c
   0A27 EE            [12] 2910 	mov	a,r6
   0A28 9F            [12] 2911 	subb	a,r7
   0A29 50 29         [24] 2912 	jnc	00101$
                           2913 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:54: cclk_freq_hz /= 2;
   0A2B 90 00 4A      [24] 2914 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
   0A2E E0            [24] 2915 	movx	a,@dptr
   0A2F FA            [12] 2916 	mov	r2,a
   0A30 A3            [24] 2917 	inc	dptr
   0A31 E0            [24] 2918 	movx	a,@dptr
   0A32 FB            [12] 2919 	mov	r3,a
   0A33 A3            [24] 2920 	inc	dptr
   0A34 E0            [24] 2921 	movx	a,@dptr
   0A35 FC            [12] 2922 	mov	r4,a
   0A36 A3            [24] 2923 	inc	dptr
   0A37 E0            [24] 2924 	movx	a,@dptr
   0A38 C3            [12] 2925 	clr	c
   0A39 13            [12] 2926 	rrc	a
   0A3A FD            [12] 2927 	mov	r5,a
   0A3B EC            [12] 2928 	mov	a,r4
   0A3C 13            [12] 2929 	rrc	a
   0A3D FC            [12] 2930 	mov	r4,a
   0A3E EB            [12] 2931 	mov	a,r3
   0A3F 13            [12] 2932 	rrc	a
   0A40 FB            [12] 2933 	mov	r3,a
   0A41 EA            [12] 2934 	mov	a,r2
   0A42 13            [12] 2935 	rrc	a
   0A43 FA            [12] 2936 	mov	r2,a
   0A44 90 00 4A      [24] 2937 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
   0A47 F0            [24] 2938 	movx	@dptr,a
   0A48 EB            [12] 2939 	mov	a,r3
   0A49 A3            [24] 2940 	inc	dptr
   0A4A F0            [24] 2941 	movx	@dptr,a
   0A4B EC            [12] 2942 	mov	a,r4
   0A4C A3            [24] 2943 	inc	dptr
   0A4D F0            [24] 2944 	movx	@dptr,a
   0A4E ED            [12] 2945 	mov	a,r5
   0A4F A3            [24] 2946 	inc	dptr
   0A50 F0            [24] 2947 	movx	@dptr,a
                           2948 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:52: for(i = 0; i < divider; i++)
   0A51 0E            [12] 2949 	inc	r6
   0A52 80 D2         [24] 2950 	sjmp	00103$
   0A54                    2951 00101$:
                           2952 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:57: return cclk_freq_hz;
   0A54 90 00 4A      [24] 2953 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
   0A57 E0            [24] 2954 	movx	a,@dptr
   0A58 FC            [12] 2955 	mov	r4,a
   0A59 A3            [24] 2956 	inc	dptr
   0A5A E0            [24] 2957 	movx	a,@dptr
   0A5B FD            [12] 2958 	mov	r5,a
   0A5C A3            [24] 2959 	inc	dptr
   0A5D E0            [24] 2960 	movx	a,@dptr
   0A5E FE            [12] 2961 	mov	r6,a
   0A5F A3            [24] 2962 	inc	dptr
   0A60 E0            [24] 2963 	movx	a,@dptr
   0A61 8C 82         [24] 2964 	mov	dpl,r4
   0A63 8D 83         [24] 2965 	mov	dph,r5
   0A65 8E F0         [24] 2966 	mov	b,r6
   0A67 22            [24] 2967 	ret
                           2968 ;------------------------------------------------------------
                           2969 ;Allocation info for local variables in function 'pwr_clk_mgmt_wakeup_configure'
                           2970 ;------------------------------------------------------------
                           2971 ;wakeup_on_pin_config_options Allocated with name '_pwr_clk_mgmt_wakeup_configure_PARM_2'
                           2972 ;wakeup_sources_config_options Allocated with name '_pwr_clk_mgmt_wakeup_configure_wakeup_sources_config_options_1_158'
                           2973 ;------------------------------------------------------------
                           2974 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_wakeup_configure.c:47: void pwr_clk_mgmt_wakeup_configure(unsigned char wakeup_sources_config_options, unsigned int wakeup_on_pin_config_options)
                           2975 ;	-----------------------------------------
                           2976 ;	 function pwr_clk_mgmt_wakeup_configure
                           2977 ;	-----------------------------------------
   0A68                    2978 _pwr_clk_mgmt_wakeup_configure:
   0A68 E5 82         [12] 2979 	mov	a,dpl
                           2980 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_wakeup_configure.c:50: WUCON = wakeup_sources_config_options;
   0A6A 90 00 50      [24] 2981 	mov	dptr,#_pwr_clk_mgmt_wakeup_configure_wakeup_sources_config_options_1_158
   0A6D F0            [24] 2982 	movx	@dptr,a
   0A6E F5 A5         [12] 2983 	mov	_WUCON,a
                           2984 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_wakeup_configure.c:53: WUOPC0 = wakeup_on_pin_config_options & 0xFF;
   0A70 90 00 4E      [24] 2985 	mov	dptr,#_pwr_clk_mgmt_wakeup_configure_PARM_2
   0A73 E0            [24] 2986 	movx	a,@dptr
   0A74 FE            [12] 2987 	mov	r6,a
   0A75 A3            [24] 2988 	inc	dptr
   0A76 E0            [24] 2989 	movx	a,@dptr
   0A77 FF            [12] 2990 	mov	r7,a
   0A78 8E 04         [24] 2991 	mov	ar4,r6
   0A7A 8C CF         [24] 2992 	mov	_WUOPC0,r4
                           2993 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_wakeup_configure.c:54: WUOPC1 = (wakeup_on_pin_config_options >> 8) & 0xFF;
   0A7C 8F 06         [24] 2994 	mov	ar6,r7
   0A7E 8E CE         [24] 2995 	mov	_WUOPC1,r6
   0A80 22            [24] 2996 	ret
                           2997 ;------------------------------------------------------------
                           2998 ;Allocation info for local variables in function 'watchdog_set_wdsv_count'
                           2999 ;------------------------------------------------------------
                           3000 ;wdsv_value                Allocated with name '_watchdog_set_wdsv_count_wdsv_value_1_161'
                           3001 ;------------------------------------------------------------
                           3002 ;	../src/watchdog/src/watchdog_set_wdsv_count.c:46: void watchdog_set_wdsv_count(uint16_t wdsv_value)
                           3003 ;	-----------------------------------------
                           3004 ;	 function watchdog_set_wdsv_count
                           3005 ;	-----------------------------------------
   0A81                    3006 _watchdog_set_wdsv_count:
   0A81 AF 83         [24] 3007 	mov	r7,dph
   0A83 E5 82         [12] 3008 	mov	a,dpl
   0A85 90 00 51      [24] 3009 	mov	dptr,#_watchdog_set_wdsv_count_wdsv_value_1_161
   0A88 F0            [24] 3010 	movx	@dptr,a
   0A89 EF            [12] 3011 	mov	a,r7
   0A8A A3            [24] 3012 	inc	dptr
   0A8B F0            [24] 3013 	movx	@dptr,a
                           3014 ;	../src/watchdog/src/watchdog_set_wdsv_count.c:49: WDSV = (uint8_t)wdsv_value;
   0A8C 90 00 51      [24] 3015 	mov	dptr,#_watchdog_set_wdsv_count_wdsv_value_1_161
   0A8F E0            [24] 3016 	movx	a,@dptr
   0A90 FE            [12] 3017 	mov	r6,a
   0A91 A3            [24] 3018 	inc	dptr
   0A92 E0            [24] 3019 	movx	a,@dptr
   0A93 FF            [12] 3020 	mov	r7,a
   0A94 8E AF         [24] 3021 	mov	_WDSV,r6
                           3022 ;	../src/watchdog/src/watchdog_set_wdsv_count.c:50: WDSV = (uint8_t)(wdsv_value >> 8);
   0A96 8F AF         [24] 3023 	mov	_WDSV,r7
   0A98 22            [24] 3024 	ret
                           3025 ;------------------------------------------------------------
                           3026 ;Allocation info for local variables in function 'watchdog_start_and_set_timeout_in_ms'
                           3027 ;------------------------------------------------------------
                           3028 ;milliseconds              Allocated with name '_watchdog_start_and_set_timeout_in_ms_milliseconds_1_163'
                           3029 ;wd_value                  Allocated with name '_watchdog_start_and_set_timeout_in_ms_wd_value_1_164'
                           3030 ;------------------------------------------------------------
                           3031 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:50: uint16_t watchdog_start_and_set_timeout_in_ms(uint32_t milliseconds)
                           3032 ;	-----------------------------------------
                           3033 ;	 function watchdog_start_and_set_timeout_in_ms
                           3034 ;	-----------------------------------------
   0A99                    3035 _watchdog_start_and_set_timeout_in_ms:
   0A99 AF 82         [24] 3036 	mov	r7,dpl
   0A9B AE 83         [24] 3037 	mov	r6,dph
   0A9D AD F0         [24] 3038 	mov	r5,b
   0A9F FC            [12] 3039 	mov	r4,a
   0AA0 90 00 53      [24] 3040 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_milliseconds_1_163
   0AA3 EF            [12] 3041 	mov	a,r7
   0AA4 F0            [24] 3042 	movx	@dptr,a
   0AA5 EE            [12] 3043 	mov	a,r6
   0AA6 A3            [24] 3044 	inc	dptr
   0AA7 F0            [24] 3045 	movx	@dptr,a
   0AA8 ED            [12] 3046 	mov	a,r5
   0AA9 A3            [24] 3047 	inc	dptr
   0AAA F0            [24] 3048 	movx	@dptr,a
   0AAB EC            [12] 3049 	mov	a,r4
   0AAC A3            [24] 3050 	inc	dptr
   0AAD F0            [24] 3051 	movx	@dptr,a
                           3052 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:52: uint16_t wd_value = 0;
   0AAE 90 00 57      [24] 3053 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_164
   0AB1 E4            [12] 3054 	clr	a
   0AB2 F0            [24] 3055 	movx	@dptr,a
   0AB3 E4            [12] 3056 	clr	a
   0AB4 A3            [24] 3057 	inc	dptr
   0AB5 F0            [24] 3058 	movx	@dptr,a
                           3059 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:55: if(!pwr_clk_mgmt_is_clklf_enabled())
   0AB6 74 07         [12] 3060 	mov	a,#0x07
   0AB8 55 AD         [12] 3061 	anl	a,_CLKLFCTRL
   0ABA FF            [12] 3062 	mov	r7,a
   0ABB BF 07 0B      [24] 3063 	cjne	r7,#0x07,00105$
                           3064 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:58: pwr_clk_mgmt_clklf_configure(PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLK_SRC_XOSC16M);
   0ABE 75 82 02      [24] 3065 	mov	dpl,#0x02
   0AC1 12 09 FA      [24] 3066 	lcall	_pwr_clk_mgmt_clklf_configure
                           3067 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:59: pwr_clk_mgmt_wait_until_clklf_is_ready();
   0AC4                    3068 00101$:
   0AC4 E5 AD         [12] 3069 	mov	a,_CLKLFCTRL
   0AC6 30 E6 FB      [24] 3070 	jnb	acc.6,00101$
   0AC9                    3071 00105$:
                           3072 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:63: if(milliseconds < 511992)
   0AC9 90 00 53      [24] 3073 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_milliseconds_1_163
   0ACC E0            [24] 3074 	movx	a,@dptr
   0ACD FC            [12] 3075 	mov	r4,a
   0ACE A3            [24] 3076 	inc	dptr
   0ACF E0            [24] 3077 	movx	a,@dptr
   0AD0 FD            [12] 3078 	mov	r5,a
   0AD1 A3            [24] 3079 	inc	dptr
   0AD2 E0            [24] 3080 	movx	a,@dptr
   0AD3 FE            [12] 3081 	mov	r6,a
   0AD4 A3            [24] 3082 	inc	dptr
   0AD5 E0            [24] 3083 	movx	a,@dptr
   0AD6 FF            [12] 3084 	mov	r7,a
   0AD7 C3            [12] 3085 	clr	c
   0AD8 EC            [12] 3086 	mov	a,r4
   0AD9 94 F8         [12] 3087 	subb	a,#0xF8
   0ADB ED            [12] 3088 	mov	a,r5
   0ADC 94 CF         [12] 3089 	subb	a,#0xCF
   0ADE EE            [12] 3090 	mov	a,r6
   0ADF 94 07         [12] 3091 	subb	a,#0x07
   0AE1 EF            [12] 3092 	mov	a,r7
   0AE2 94 00         [12] 3093 	subb	a,#0x00
   0AE4 50 52         [24] 3094 	jnc	00107$
                           3095 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:90: wd_value = (uint16_t)(((uint32_t)(milliseconds * ((uint32_t)128)) + (uint32_t)500) / ((uint32_t)1000));
   0AE6 EF            [12] 3096 	mov	a,r7
   0AE7 54 01         [12] 3097 	anl	a,#0x01
   0AE9 A2 E0         [12] 3098 	mov	c,acc.0
   0AEB CE            [12] 3099 	xch	a,r6
   0AEC 13            [12] 3100 	rrc	a
   0AED CE            [12] 3101 	xch	a,r6
   0AEE 13            [12] 3102 	rrc	a
   0AEF CE            [12] 3103 	xch	a,r6
   0AF0 FF            [12] 3104 	mov	r7,a
   0AF1 ED            [12] 3105 	mov	a,r5
   0AF2 C3            [12] 3106 	clr	c
   0AF3 13            [12] 3107 	rrc	a
   0AF4 4E            [12] 3108 	orl	a,r6
   0AF5 FE            [12] 3109 	mov	r6,a
   0AF6 ED            [12] 3110 	mov	a,r5
   0AF7 54 01         [12] 3111 	anl	a,#0x01
   0AF9 A2 E0         [12] 3112 	mov	c,acc.0
   0AFB CC            [12] 3113 	xch	a,r4
   0AFC 13            [12] 3114 	rrc	a
   0AFD CC            [12] 3115 	xch	a,r4
   0AFE 13            [12] 3116 	rrc	a
   0AFF CC            [12] 3117 	xch	a,r4
   0B00 FD            [12] 3118 	mov	r5,a
   0B01 74 F4         [12] 3119 	mov	a,#0xF4
   0B03 2C            [12] 3120 	add	a,r4
   0B04 FC            [12] 3121 	mov	r4,a
   0B05 74 01         [12] 3122 	mov	a,#0x01
   0B07 3D            [12] 3123 	addc	a,r5
   0B08 FD            [12] 3124 	mov	r5,a
   0B09 E4            [12] 3125 	clr	a
   0B0A 3E            [12] 3126 	addc	a,r6
   0B0B FE            [12] 3127 	mov	r6,a
   0B0C E4            [12] 3128 	clr	a
   0B0D 3F            [12] 3129 	addc	a,r7
   0B0E FF            [12] 3130 	mov	r7,a
   0B0F 90 00 C3      [24] 3131 	mov	dptr,#__divulong_PARM_2
   0B12 74 E8         [12] 3132 	mov	a,#0xE8
   0B14 F0            [24] 3133 	movx	@dptr,a
   0B15 74 03         [12] 3134 	mov	a,#0x03
   0B17 A3            [24] 3135 	inc	dptr
   0B18 F0            [24] 3136 	movx	@dptr,a
   0B19 E4            [12] 3137 	clr	a
   0B1A A3            [24] 3138 	inc	dptr
   0B1B F0            [24] 3139 	movx	@dptr,a
   0B1C E4            [12] 3140 	clr	a
   0B1D A3            [24] 3141 	inc	dptr
   0B1E F0            [24] 3142 	movx	@dptr,a
   0B1F 8C 82         [24] 3143 	mov	dpl,r4
   0B21 8D 83         [24] 3144 	mov	dph,r5
   0B23 8E F0         [24] 3145 	mov	b,r6
   0B25 EF            [12] 3146 	mov	a,r7
   0B26 12 18 A6      [24] 3147 	lcall	__divulong
   0B29 AC 82         [24] 3148 	mov	r4,dpl
   0B2B AD 83         [24] 3149 	mov	r5,dph
   0B2D AE F0         [24] 3150 	mov	r6,b
   0B2F FF            [12] 3151 	mov	r7,a
   0B30 90 00 57      [24] 3152 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_164
   0B33 EC            [12] 3153 	mov	a,r4
   0B34 F0            [24] 3154 	movx	@dptr,a
   0B35 ED            [12] 3155 	mov	a,r5
   0B36 A3            [24] 3156 	inc	dptr
   0B37 F0            [24] 3157 	movx	@dptr,a
   0B38                    3158 00107$:
                           3159 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:93: watchdog_set_wdsv_count(wd_value);
   0B38 90 00 57      [24] 3160 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_164
   0B3B E0            [24] 3161 	movx	a,@dptr
   0B3C FE            [12] 3162 	mov	r6,a
   0B3D A3            [24] 3163 	inc	dptr
   0B3E E0            [24] 3164 	movx	a,@dptr
   0B3F FF            [12] 3165 	mov	r7,a
   0B40 8E 82         [24] 3166 	mov	dpl,r6
   0B42 8F 83         [24] 3167 	mov	dph,r7
   0B44 C0 07         [24] 3168 	push	ar7
   0B46 C0 06         [24] 3169 	push	ar6
   0B48 12 0A 81      [24] 3170 	lcall	_watchdog_set_wdsv_count
   0B4B D0 06         [24] 3171 	pop	ar6
   0B4D D0 07         [24] 3172 	pop	ar7
                           3173 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:95: return wd_value;
   0B4F 8E 82         [24] 3174 	mov	dpl,r6
   0B51 8F 83         [24] 3175 	mov	dph,r7
   0B53 22            [24] 3176 	ret
                           3177 ;------------------------------------------------------------
                           3178 ;Allocation info for local variables in function 'interrupt_configure_ifp'
                           3179 ;------------------------------------------------------------
                           3180 ;ifp_int_config_options    Allocated with name '_interrupt_configure_ifp_PARM_2'
                           3181 ;interrupt_ifp_input       Allocated with name '_interrupt_configure_ifp_interrupt_ifp_input_1_167'
                           3182 ;------------------------------------------------------------
                           3183 ;	../src/interrupt/src/interrupt_configure_ifp.c:57: bool interrupt_configure_ifp(interrupt_ifp_input_t interrupt_ifp_input, uint8_t ifp_int_config_options)
                           3184 ;	-----------------------------------------
                           3185 ;	 function interrupt_configure_ifp
                           3186 ;	-----------------------------------------
   0B54                    3187 _interrupt_configure_ifp:
   0B54 E5 82         [12] 3188 	mov	a,dpl
   0B56 90 00 5A      [24] 3189 	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_167
   0B59 F0            [24] 3190 	movx	@dptr,a
                           3191 ;	../src/interrupt/src/interrupt_configure_ifp.c:60: if(ifp_int_config_options & INTERRUPT_IFP_CONFIG_OPTION_ENABLE)
   0B5A 90 00 59      [24] 3192 	mov	dptr,#_interrupt_configure_ifp_PARM_2
   0B5D E0            [24] 3193 	movx	a,@dptr
   0B5E FF            [12] 3194 	mov	r7,a
   0B5F 30 E7 41      [24] 3195 	jnb	acc.7,00116$
                           3196 ;	../src/interrupt/src/interrupt_configure_ifp.c:63: if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT0)
   0B62 90 00 5A      [24] 3197 	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_167
   0B65 E0            [24] 3198 	movx	a,@dptr
   0B66 FE            [12] 3199 	mov	r6,a
   0B67 BE 08 0B      [24] 3200 	cjne	r6,#0x08,00108$
                           3201 ;	../src/interrupt/src/interrupt_configure_ifp.c:65: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT0;
   0B6A AD A6         [24] 3202 	mov	r5,_INTEXP
   0B6C 74 C7         [12] 3203 	mov	a,#0xC7
   0B6E 5D            [12] 3204 	anl	a,r5
   0B6F 44 08         [12] 3205 	orl	a,#0x08
   0B71 F5 A6         [12] 3206 	mov	_INTEXP,a
   0B73 80 20         [24] 3207 	sjmp	00109$
   0B75                    3208 00108$:
                           3209 ;	../src/interrupt/src/interrupt_configure_ifp.c:67: else if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT1)
   0B75 BE 10 0B      [24] 3210 	cjne	r6,#0x10,00105$
                           3211 ;	../src/interrupt/src/interrupt_configure_ifp.c:69: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT1;
   0B78 AD A6         [24] 3212 	mov	r5,_INTEXP
   0B7A 74 C7         [12] 3213 	mov	a,#0xC7
   0B7C 5D            [12] 3214 	anl	a,r5
   0B7D 44 10         [12] 3215 	orl	a,#0x10
   0B7F F5 A6         [12] 3216 	mov	_INTEXP,a
   0B81 80 12         [24] 3217 	sjmp	00109$
   0B83                    3218 00105$:
                           3219 ;	../src/interrupt/src/interrupt_configure_ifp.c:71: else if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT2)
   0B83 BE 20 0B      [24] 3220 	cjne	r6,#0x20,00102$
                           3221 ;	../src/interrupt/src/interrupt_configure_ifp.c:73: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT2;
   0B86 AE A6         [24] 3222 	mov	r6,_INTEXP
   0B88 74 C7         [12] 3223 	mov	a,#0xC7
   0B8A 5E            [12] 3224 	anl	a,r6
   0B8B 44 20         [12] 3225 	orl	a,#0x20
   0B8D F5 A6         [12] 3226 	mov	_INTEXP,a
   0B8F 80 04         [24] 3227 	sjmp	00109$
   0B91                    3228 00102$:
                           3229 ;	../src/interrupt/src/interrupt_configure_ifp.c:78: return false;
   0B91 75 82 00      [24] 3230 	mov	dpl,#0x00
   0B94 22            [24] 3231 	ret
   0B95                    3232 00109$:
                           3233 ;	../src/interrupt/src/interrupt_configure_ifp.c:82: TCON = (TCON & ~INTERRUPT_IFP_CONFIG_TCON_MASK) | (ifp_int_config_options & INTERRUPT_IFP_CONFIG_TCON_MASK);
   0B95 AE 88         [24] 3234 	mov	r6,_TCON
   0B97 53 06 FE      [24] 3235 	anl	ar6,#0xFE
   0B9A 53 07 01      [24] 3236 	anl	ar7,#0x01
   0B9D EF            [12] 3237 	mov	a,r7
   0B9E 4E            [12] 3238 	orl	a,r6
   0B9F F5 88         [12] 3239 	mov	_TCON,a
   0BA1 80 1F         [24] 3240 	sjmp	00117$
   0BA3                    3241 00116$:
                           3242 ;	../src/interrupt/src/interrupt_configure_ifp.c:87: if((interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT0) || (interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT1) || (interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT2))
   0BA3 90 00 5A      [24] 3243 	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_167
   0BA6 E0            [24] 3244 	movx	a,@dptr
   0BA7 FF            [12] 3245 	mov	r7,a
   0BA8 BF 08 02      [24] 3246 	cjne	r7,#0x08,00145$
   0BAB 80 08         [24] 3247 	sjmp	00110$
   0BAD                    3248 00145$:
   0BAD BF 10 02      [24] 3249 	cjne	r7,#0x10,00146$
   0BB0 80 03         [24] 3250 	sjmp	00110$
   0BB2                    3251 00146$:
   0BB2 BF 20 09      [24] 3252 	cjne	r7,#0x20,00111$
   0BB5                    3253 00110$:
                           3254 ;	../src/interrupt/src/interrupt_configure_ifp.c:89: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK);
   0BB5 AF A6         [24] 3255 	mov	r7,_INTEXP
   0BB7 74 C7         [12] 3256 	mov	a,#0xC7
   0BB9 5F            [12] 3257 	anl	a,r7
   0BBA F5 A6         [12] 3258 	mov	_INTEXP,a
   0BBC 80 04         [24] 3259 	sjmp	00117$
   0BBE                    3260 00111$:
                           3261 ;	../src/interrupt/src/interrupt_configure_ifp.c:94: return false;
   0BBE 75 82 00      [24] 3262 	mov	dpl,#0x00
   0BC1 22            [24] 3263 	ret
   0BC2                    3264 00117$:
                           3265 ;	../src/interrupt/src/interrupt_configure_ifp.c:98: return true;
   0BC2 75 82 01      [24] 3266 	mov	dpl,#0x01
   0BC5 22            [24] 3267 	ret
                           3268 ;------------------------------------------------------------
                           3269 ;Allocation info for local variables in function 'adc_configure'
                           3270 ;------------------------------------------------------------
                           3271 ;adc_config_options        Allocated with name '_adc_configure_adc_config_options_1_181'
                           3272 ;------------------------------------------------------------
                           3273 ;	../src/adc/src/adc_configure.c:54: void adc_configure(unsigned int adc_config_options)
                           3274 ;	-----------------------------------------
                           3275 ;	 function adc_configure
                           3276 ;	-----------------------------------------
   0BC6                    3277 _adc_configure:
   0BC6 AF 83         [24] 3278 	mov	r7,dph
   0BC8 E5 82         [12] 3279 	mov	a,dpl
   0BCA 90 00 5B      [24] 3280 	mov	dptr,#_adc_configure_adc_config_options_1_181
   0BCD F0            [24] 3281 	movx	@dptr,a
   0BCE EF            [12] 3282 	mov	a,r7
   0BCF A3            [24] 3283 	inc	dptr
   0BD0 F0            [24] 3284 	movx	@dptr,a
                           3285 ;	../src/adc/src/adc_configure.c:57: ADCCON1 = (adc_config_options >> 8) & ADC_CONFIG_OPTION_ADCCON1_WRITE_MASK;
   0BD1 90 00 5B      [24] 3286 	mov	dptr,#_adc_configure_adc_config_options_1_181
   0BD4 E0            [24] 3287 	movx	a,@dptr
   0BD5 FE            [12] 3288 	mov	r6,a
   0BD6 A3            [24] 3289 	inc	dptr
   0BD7 E0            [24] 3290 	movx	a,@dptr
   0BD8 FD            [12] 3291 	mov	r5,a
   0BD9 74 03         [12] 3292 	mov	a,#0x03
   0BDB 5D            [12] 3293 	anl	a,r5
   0BDC F5 D3         [12] 3294 	mov	_ADCCON1,a
                           3295 ;	../src/adc/src/adc_configure.c:58: ADCCON2 = (adc_config_options)      & ADC_CONFIG_OPTION_ADCCON2_WRITE_MASK;
   0BDE 8E D2         [24] 3296 	mov	_ADCCON2,r6
                           3297 ;	../src/adc/src/adc_configure.c:59: ADCCON3 = (adc_config_options >> 8) & ADC_CONFIG_OPTION_ADCCON3_WRITE_MASK;
   0BE0 74 E0         [12] 3298 	mov	a,#0xE0
   0BE2 5D            [12] 3299 	anl	a,r5
   0BE3 F5 D1         [12] 3300 	mov	_ADCCON3,a
   0BE5 22            [24] 3301 	ret
                           3302 ;------------------------------------------------------------
                           3303 ;Allocation info for local variables in function 'adc_set_input_channel'
                           3304 ;------------------------------------------------------------
                           3305 ;adc_channel               Allocated with name '_adc_set_input_channel_adc_channel_1_183'
                           3306 ;------------------------------------------------------------
                           3307 ;	../src/adc/src/adc_set_input_channel.c:46: void adc_set_input_channel(adc_channel_t adc_channel)
                           3308 ;	-----------------------------------------
                           3309 ;	 function adc_set_input_channel
                           3310 ;	-----------------------------------------
   0BE6                    3311 _adc_set_input_channel:
   0BE6 E5 82         [12] 3312 	mov	a,dpl
                           3313 ;	../src/adc/src/adc_set_input_channel.c:49: adc_channel &= (ADCCON1_CHAN_SEL_MASK >> ADCCON1_CHAN_SEL_SHIFT);
   0BE8 90 00 5D      [24] 3314 	mov	dptr,#_adc_set_input_channel_adc_channel_1_183
   0BEB F0            [24] 3315 	movx	@dptr,a
   0BEC FF            [12] 3316 	mov	r7,a
   0BED 90 00 5D      [24] 3317 	mov	dptr,#_adc_set_input_channel_adc_channel_1_183
   0BF0 74 0F         [12] 3318 	mov	a,#0x0F
   0BF2 5F            [12] 3319 	anl	a,r7
   0BF3 F0            [24] 3320 	movx	@dptr,a
                           3321 ;	../src/adc/src/adc_set_input_channel.c:52: ADCCON1 = (ADCCON1 & ~ADCCON1_CHAN_SEL_MASK) | (adc_channel << ADCCON1_CHAN_SEL_SHIFT);
   0BF4 AF D3         [24] 3322 	mov	r7,_ADCCON1
   0BF6 53 07 C3      [24] 3323 	anl	ar7,#0xC3
   0BF9 90 00 5D      [24] 3324 	mov	dptr,#_adc_set_input_channel_adc_channel_1_183
   0BFC E0            [24] 3325 	movx	a,@dptr
   0BFD 25 E0         [12] 3326 	add	a,acc
   0BFF 25 E0         [12] 3327 	add	a,acc
   0C01 4F            [12] 3328 	orl	a,r7
   0C02 F5 D3         [12] 3329 	mov	_ADCCON1,a
   0C04 22            [24] 3330 	ret
                           3331 ;------------------------------------------------------------
                           3332 ;Allocation info for local variables in function 'adc_start_single_conversion'
                           3333 ;------------------------------------------------------------
                           3334 ;adc_channel               Allocated with name '_adc_start_single_conversion_adc_channel_1_185'
                           3335 ;------------------------------------------------------------
                           3336 ;	../src/adc/src/adc_start_single_conversion.c:47: void adc_start_single_conversion(adc_channel_t adc_channel)
                           3337 ;	-----------------------------------------
                           3338 ;	 function adc_start_single_conversion
                           3339 ;	-----------------------------------------
   0C05                    3340 _adc_start_single_conversion:
   0C05 E5 82         [12] 3341 	mov	a,dpl
                           3342 ;	../src/adc/src/adc_start_single_conversion.c:49: adc_set_input_channel(adc_channel);
   0C07 90 00 5E      [24] 3343 	mov	dptr,#_adc_start_single_conversion_adc_channel_1_185
   0C0A F0            [24] 3344 	movx	@dptr,a
   0C0B F5 82         [12] 3345 	mov	dpl,a
   0C0D 12 0B E6      [24] 3346 	lcall	_adc_set_input_channel
                           3347 ;	../src/adc/src/adc_start_single_conversion.c:52: adc_power_up();
   0C10 43 D3 80      [24] 3348 	orl	_ADCCON1,#0x80
                           3349 ;	../src/adc/src/adc_start_single_conversion.c:53: nop(); nop(); nop(); nop(); //4 clock cycles must elapse before busy flag is set (datasheet v1.3, p. 165)
   0C13 00            [12] 3350 	nop 
   0C14 00            [12] 3351 	nop 
   0C15 00            [12] 3352 	nop 
   0C16 00            [12] 3353 	nop 
   0C17 22            [24] 3354 	ret
                           3355 ;------------------------------------------------------------
                           3356 ;Allocation info for local variables in function 'adc_start_single_conversion_get_value'
                           3357 ;------------------------------------------------------------
                           3358 ;adc_channel               Allocated with name '_adc_start_single_conversion_get_value_adc_channel_1_187'
                           3359 ;------------------------------------------------------------
                           3360 ;	../src/adc/src/adc_start_single_conversion_get_value.c:48: uint16_t adc_start_single_conversion_get_value(adc_channel_t adc_channel)
                           3361 ;	-----------------------------------------
                           3362 ;	 function adc_start_single_conversion_get_value
                           3363 ;	-----------------------------------------
   0C18                    3364 _adc_start_single_conversion_get_value:
   0C18 E5 82         [12] 3365 	mov	a,dpl
                           3366 ;	../src/adc/src/adc_start_single_conversion_get_value.c:50: adc_start_single_conversion(adc_channel);
   0C1A 90 00 5F      [24] 3367 	mov	dptr,#_adc_start_single_conversion_get_value_adc_channel_1_187
   0C1D F0            [24] 3368 	movx	@dptr,a
   0C1E F5 82         [12] 3369 	mov	dpl,a
   0C20 12 0C 05      [24] 3370 	lcall	_adc_start_single_conversion
                           3371 ;	../src/adc/src/adc_start_single_conversion_get_value.c:52: while(adc_is_conversion_in_progress());
   0C23                    3372 00101$:
   0C23 74 40         [12] 3373 	mov	a,#0x40
   0C25 55 D3         [12] 3374 	anl	a,_ADCCON1
   0C27 FF            [12] 3375 	mov	r7,a
   0C28 BF 40 02      [24] 3376 	cjne	r7,#0x40,00112$
   0C2B 80 F6         [24] 3377 	sjmp	00101$
   0C2D                    3378 00112$:
                           3379 ;	../src/adc/src/adc_start_single_conversion_get_value.c:54: return adc_get_result();
   0C2D 85 D5 82      [24] 3380 	mov	dpl,((_ADCDAT >> 0) & 0xFF)
   0C30 85 D4 83      [24] 3381 	mov	dph,((_ADCDAT >> 8) & 0xFF)
   0C33 22            [24] 3382 	ret
                           3383 ;------------------------------------------------------------
                           3384 ;Allocation info for local variables in function 'timer0_configure'
                           3385 ;------------------------------------------------------------
                           3386 ;t0_val                    Allocated with name '_timer0_configure_PARM_2'
                           3387 ;timer0_config_options     Allocated with name '_timer0_configure_timer0_config_options_1_190'
                           3388 ;------------------------------------------------------------
                           3389 ;	../src/timer0/src/timer0_configure.c:53: void timer0_configure(uint8_t timer0_config_options, uint16_t t0_val)
                           3390 ;	-----------------------------------------
                           3391 ;	 function timer0_configure
                           3392 ;	-----------------------------------------
   0C34                    3393 _timer0_configure:
   0C34 E5 82         [12] 3394 	mov	a,dpl
                           3395 ;	../src/timer0/src/timer0_configure.c:56: if((timer0_config_options & TMOD_MODE0_MASK) == TIMER0_CONFIG_OPTION_MODE_2_8_BIT_AUTO_RLD_TMR)
   0C36 90 00 62      [24] 3396 	mov	dptr,#_timer0_configure_timer0_config_options_1_190
   0C39 F0            [24] 3397 	movx	@dptr,a
   0C3A FF            [12] 3398 	mov	r7,a
   0C3B 74 03         [12] 3399 	mov	a,#0x03
   0C3D 5F            [12] 3400 	anl	a,r7
   0C3E FE            [12] 3401 	mov	r6,a
   0C3F BE 02 0E      [24] 3402 	cjne	r6,#0x02,00102$
                           3403 ;	../src/timer0/src/timer0_configure.c:58: TH0 = (uint8_t)t0_val;
   0C42 90 00 60      [24] 3404 	mov	dptr,#_timer0_configure_PARM_2
   0C45 E0            [24] 3405 	movx	a,@dptr
   0C46 FD            [12] 3406 	mov	r5,a
   0C47 A3            [24] 3407 	inc	dptr
   0C48 E0            [24] 3408 	movx	a,@dptr
   0C49 FE            [12] 3409 	mov	r6,a
   0C4A 8D 8C         [24] 3410 	mov	_TH0,r5
                           3411 ;	../src/timer0/src/timer0_configure.c:59: TL0 = (uint8_t)t0_val;
   0C4C 8D 8A         [24] 3412 	mov	_TL0,r5
   0C4E 80 0A         [24] 3413 	sjmp	00103$
   0C50                    3414 00102$:
                           3415 ;	../src/timer0/src/timer0_configure.c:63: timer0_set_t0_val(t0_val);
   0C50 90 00 60      [24] 3416 	mov	dptr,#_timer0_configure_PARM_2
   0C53 E0            [24] 3417 	movx	a,@dptr
   0C54 F5 8A         [12] 3418 	mov	((_T0 >> 0) & 0xFF),a
   0C56 A3            [24] 3419 	inc	dptr
   0C57 E0            [24] 3420 	movx	a,@dptr
   0C58 F5 8C         [12] 3421 	mov	((_T0 >> 8) & 0xFF),a
   0C5A                    3422 00103$:
                           3423 ;	../src/timer0/src/timer0_configure.c:67: TMOD = (TMOD & ~TIMER0_CONFIG_OPTION_TMOD_MASK) | (timer0_config_options & TIMER0_CONFIG_OPTION_TMOD_MASK);
   0C5A AE 89         [24] 3424 	mov	r6,_TMOD
   0C5C 53 06 F0      [24] 3425 	anl	ar6,#0xF0
   0C5F 53 07 0F      [24] 3426 	anl	ar7,#0x0F
   0C62 EF            [12] 3427 	mov	a,r7
   0C63 4E            [12] 3428 	orl	a,r6
   0C64 F5 89         [12] 3429 	mov	_TMOD,a
   0C66 22            [24] 3430 	ret
                           3431 ;------------------------------------------------------------
                           3432 ;Allocation info for local variables in function 'timer1_configure'
                           3433 ;------------------------------------------------------------
                           3434 ;t1_val                    Allocated with name '_timer1_configure_PARM_2'
                           3435 ;timer1_config_options     Allocated with name '_timer1_configure_timer1_config_options_1_195'
                           3436 ;------------------------------------------------------------
                           3437 ;	../src/timer1/src/timer1_configure.c:53: void timer1_configure(uint8_t timer1_config_options, uint16_t t1_val)
                           3438 ;	-----------------------------------------
                           3439 ;	 function timer1_configure
                           3440 ;	-----------------------------------------
   0C67                    3441 _timer1_configure:
   0C67 E5 82         [12] 3442 	mov	a,dpl
                           3443 ;	../src/timer1/src/timer1_configure.c:56: if((timer1_config_options & TMOD_MODE1_MASK) == TIMER1_CONFIG_OPTION_MODE_2_8_BIT_AUTO_RLD_TMR)
   0C69 90 00 65      [24] 3444 	mov	dptr,#_timer1_configure_timer1_config_options_1_195
   0C6C F0            [24] 3445 	movx	@dptr,a
   0C6D FF            [12] 3446 	mov	r7,a
   0C6E 74 30         [12] 3447 	mov	a,#0x30
   0C70 5F            [12] 3448 	anl	a,r7
   0C71 FE            [12] 3449 	mov	r6,a
   0C72 BE 20 0E      [24] 3450 	cjne	r6,#0x20,00102$
                           3451 ;	../src/timer1/src/timer1_configure.c:58: TH1 = (uint8_t)t1_val;
   0C75 90 00 63      [24] 3452 	mov	dptr,#_timer1_configure_PARM_2
   0C78 E0            [24] 3453 	movx	a,@dptr
   0C79 FD            [12] 3454 	mov	r5,a
   0C7A A3            [24] 3455 	inc	dptr
   0C7B E0            [24] 3456 	movx	a,@dptr
   0C7C FE            [12] 3457 	mov	r6,a
   0C7D 8D 8D         [24] 3458 	mov	_TH1,r5
                           3459 ;	../src/timer1/src/timer1_configure.c:59: TL1 = (uint8_t)t1_val;
   0C7F 8D 8B         [24] 3460 	mov	_TL1,r5
   0C81 80 0A         [24] 3461 	sjmp	00103$
   0C83                    3462 00102$:
                           3463 ;	../src/timer1/src/timer1_configure.c:63: timer1_set_t1_val(t1_val);
   0C83 90 00 63      [24] 3464 	mov	dptr,#_timer1_configure_PARM_2
   0C86 E0            [24] 3465 	movx	a,@dptr
   0C87 F5 8B         [12] 3466 	mov	((_T1 >> 0) & 0xFF),a
   0C89 A3            [24] 3467 	inc	dptr
   0C8A E0            [24] 3468 	movx	a,@dptr
   0C8B F5 8D         [12] 3469 	mov	((_T1 >> 8) & 0xFF),a
   0C8D                    3470 00103$:
                           3471 ;	../src/timer1/src/timer1_configure.c:67: TMOD = (TMOD & ~TIMER1_CONFIG_OPTION_TMOD_MASK) | (timer1_config_options & TIMER1_CONFIG_OPTION_TMOD_MASK);
   0C8D AE 89         [24] 3472 	mov	r6,_TMOD
   0C8F 53 06 0F      [24] 3473 	anl	ar6,#0x0F
   0C92 53 07 F0      [24] 3474 	anl	ar7,#0xF0
   0C95 EF            [12] 3475 	mov	a,r7
   0C96 4E            [12] 3476 	orl	a,r6
   0C97 F5 89         [12] 3477 	mov	_TMOD,a
   0C99 22            [24] 3478 	ret
                           3479 ;------------------------------------------------------------
                           3480 ;Allocation info for local variables in function 'uart_configure_manual_baud_calc'
                           3481 ;------------------------------------------------------------
                           3482 ;s0rel_val_if_br_gen_or_th1_val_if_tmr1 Allocated with name '_uart_configure_manual_baud_calc_PARM_2'
                           3483 ;uart_config_options       Allocated with name '_uart_configure_manual_baud_calc_uart_config_options_1_205'
                           3484 ;------------------------------------------------------------
                           3485 ;	../src/uart/src/uart_configure_manual_baud_calc.c:55: void uart_configure_manual_baud_calc(uint8_t uart_config_options, uint16_t s0rel_val_if_br_gen_or_th1_val_if_tmr1)
                           3486 ;	-----------------------------------------
                           3487 ;	 function uart_configure_manual_baud_calc
                           3488 ;	-----------------------------------------
   0C9A                    3489 _uart_configure_manual_baud_calc:
   0C9A E5 82         [12] 3490 	mov	a,dpl
                           3491 ;	../src/uart/src/uart_configure_manual_baud_calc.c:58: if(uart_config_options & UART_CONFIG_OPTION_BIT_SMOD_SET)
   0C9C 90 00 68      [24] 3492 	mov	dptr,#_uart_configure_manual_baud_calc_uart_config_options_1_205
   0C9F F0            [24] 3493 	movx	@dptr,a
   0CA0 FF            [12] 3494 	mov	r7,a
   0CA1 30 E2 05      [24] 3495 	jnb	acc.2,00102$
                           3496 ;	../src/uart/src/uart_configure_manual_baud_calc.c:60: reg_bits_set(PCON, PCON_SMOD);
   0CA4 43 87 80      [24] 3497 	orl	_PCON,#0x80
   0CA7 80 07         [24] 3498 	sjmp	00103$
   0CA9                    3499 00102$:
                           3500 ;	../src/uart/src/uart_configure_manual_baud_calc.c:64: reg_bits_clear(PCON, PCON_SMOD);
   0CA9 AE 87         [24] 3501 	mov	r6,_PCON
   0CAB 74 7F         [12] 3502 	mov	a,#0x7F
   0CAD 5E            [12] 3503 	anl	a,r6
   0CAE F5 87         [12] 3504 	mov	_PCON,a
   0CB0                    3505 00103$:
                           3506 ;	../src/uart/src/uart_configure_manual_baud_calc.c:68: if(((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_1_UART_8_BIT) ||
   0CB0 74 C0         [12] 3507 	mov	a,#0xC0
   0CB2 5F            [12] 3508 	anl	a,r7
   0CB3 FE            [12] 3509 	mov	r6,a
   0CB4 BE 40 02      [24] 3510 	cjne	r6,#0x40,00122$
   0CB7 80 07         [24] 3511 	sjmp	00107$
   0CB9                    3512 00122$:
                           3513 ;	../src/uart/src/uart_configure_manual_baud_calc.c:69: ((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_3_UART_9_BIT))
   0CB9 74 C0         [12] 3514 	mov	a,#0xC0
   0CBB 5F            [12] 3515 	anl	a,r7
   0CBC FE            [12] 3516 	mov	r6,a
   0CBD BE C0 32      [24] 3517 	cjne	r6,#0xC0,00108$
   0CC0                    3518 00107$:
                           3519 ;	../src/uart/src/uart_configure_manual_baud_calc.c:72: if((uart_config_options & UART_CONFIG_OPTION_CLOCK_MASK) == UART_CONFIG_OPTION_CLOCK_FOR_MODES_1_3_USE_BR_GEN)
   0CC0 74 02         [12] 3520 	mov	a,#0x02
   0CC2 5F            [12] 3521 	anl	a,r7
   0CC3 FE            [12] 3522 	mov	r6,a
   0CC4 BE 02 0E      [24] 3523 	cjne	r6,#0x02,00105$
                           3524 ;	../src/uart/src/uart_configure_manual_baud_calc.c:74: S0REL = s0rel_val_if_br_gen_or_th1_val_if_tmr1; //set S0REL to the value requested
   0CC7 90 00 66      [24] 3525 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   0CCA E0            [24] 3526 	movx	a,@dptr
   0CCB F5 AA         [12] 3527 	mov	((_S0REL >> 0) & 0xFF),a
   0CCD A3            [24] 3528 	inc	dptr
   0CCE E0            [24] 3529 	movx	a,@dptr
   0CCF F5 BA         [12] 3530 	mov	((_S0REL >> 8) & 0xFF),a
                           3531 ;	../src/uart/src/uart_configure_manual_baud_calc.c:75: sbit_set(ADCON_SB_BD); //enable BR generator
   0CD1 D2 DF         [12] 3532 	setb _ADCON_SB_BD 
   0CD3 80 1D         [24] 3533 	sjmp	00108$
   0CD5                    3534 00105$:
                           3535 ;	../src/uart/src/uart_configure_manual_baud_calc.c:79: sbit_clear(ADCON_SB_BD); //disable BR generator and use TMR1 overflow
   0CD5 C2 DF         [12] 3536 	clr _ADCON_SB_BD 
                           3537 ;	../src/uart/src/uart_configure_manual_baud_calc.c:85: (uint8_t)s0rel_val_if_br_gen_or_th1_val_if_tmr1);
   0CD7 90 00 66      [24] 3538 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   0CDA E0            [24] 3539 	movx	a,@dptr
   0CDB FD            [12] 3540 	mov	r5,a
   0CDC A3            [24] 3541 	inc	dptr
   0CDD E0            [24] 3542 	movx	a,@dptr
   0CDE 90 00 63      [24] 3543 	mov	dptr,#_timer1_configure_PARM_2
   0CE1 ED            [12] 3544 	mov	a,r5
   0CE2 F0            [24] 3545 	movx	@dptr,a
   0CE3 E4            [12] 3546 	clr	a
   0CE4 A3            [24] 3547 	inc	dptr
   0CE5 F0            [24] 3548 	movx	@dptr,a
   0CE6 75 82 20      [24] 3549 	mov	dpl,#0x20
   0CE9 C0 07         [24] 3550 	push	ar7
   0CEB 12 0C 67      [24] 3551 	lcall	_timer1_configure
   0CEE D0 07         [24] 3552 	pop	ar7
                           3553 ;	../src/uart/src/uart_configure_manual_baud_calc.c:87: timer1_run(); //enable the timer
   0CF0 D2 8E         [12] 3554 	setb _TCON_SB_TR1 
   0CF2                    3555 00108$:
                           3556 ;	../src/uart/src/uart_configure_manual_baud_calc.c:92: S0CON = uart_config_options & UART_CONFIG_OPTION_S0CON_MASK;
   0CF2 74 F0         [12] 3557 	mov	a,#0xF0
   0CF4 5F            [12] 3558 	anl	a,r7
   0CF5 F5 98         [12] 3559 	mov	_S0CON,a
   0CF7 22            [24] 3560 	ret
                           3561 ;------------------------------------------------------------
                           3562 ;Allocation info for local variables in function 'uart_calc_actual_baud_rate_from_s0rel'
                           3563 ;------------------------------------------------------------
                           3564 ;smod_bit_value            Allocated with name '_uart_calc_actual_baud_rate_from_s0rel_PARM_2'
                           3565 ;s0rel_reg_value           Allocated with name '_uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_212'
                           3566 ;------------------------------------------------------------
                           3567 ;	../src/uart/src/uart_calc_actual_baud_rate_from_s0rel.c:48: uint32_t uart_calc_actual_baud_rate_from_s0rel(uint16_t s0rel_reg_value, bool smod_bit_value)
                           3568 ;	-----------------------------------------
                           3569 ;	 function uart_calc_actual_baud_rate_from_s0rel
                           3570 ;	-----------------------------------------
   0CF8                    3571 _uart_calc_actual_baud_rate_from_s0rel:
   0CF8 AF 83         [24] 3572 	mov	r7,dph
   0CFA E5 82         [12] 3573 	mov	a,dpl
   0CFC 90 00 6A      [24] 3574 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_212
   0CFF F0            [24] 3575 	movx	@dptr,a
   0D00 EF            [12] 3576 	mov	a,r7
   0D01 A3            [24] 3577 	inc	dptr
   0D02 F0            [24] 3578 	movx	@dptr,a
                           3579 ;	../src/uart/src/uart_calc_actual_baud_rate_from_s0rel.c:57: return (uint32_t)(((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(64 * (1024 - s0rel_reg_value)))) + 1) / 2);
   0D03 90 00 69      [24] 3580 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
   0D06 E0            [24] 3581 	movx	a,@dptr
   0D07 FF            [12] 3582 	mov	r7,a
   0D08 60 04         [24] 3583 	jz	00103$
   0D0A 7F 02         [12] 3584 	mov	r7,#0x02
   0D0C 80 02         [24] 3585 	sjmp	00104$
   0D0E                    3586 00103$:
   0D0E 7F 01         [12] 3587 	mov	r7,#0x01
   0D10                    3588 00104$:
   0D10 EF            [12] 3589 	mov	a,r7
   0D11 75 F0 02      [24] 3590 	mov	b,#0x02
   0D14 A4            [48] 3591 	mul	ab
   0D15 FF            [12] 3592 	mov	r7,a
   0D16 AE F0         [24] 3593 	mov	r6,b
   0D18 C0 07         [24] 3594 	push	ar7
   0D1A C0 06         [24] 3595 	push	ar6
   0D1C 12 0A 0F      [24] 3596 	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
   0D1F AA 82         [24] 3597 	mov	r2,dpl
   0D21 AB 83         [24] 3598 	mov	r3,dph
   0D23 AC F0         [24] 3599 	mov	r4,b
   0D25 FD            [12] 3600 	mov	r5,a
   0D26 D0 06         [24] 3601 	pop	ar6
   0D28 D0 07         [24] 3602 	pop	ar7
   0D2A 8F 00         [24] 3603 	mov	ar0,r7
   0D2C EE            [12] 3604 	mov	a,r6
   0D2D F9            [12] 3605 	mov	r1,a
   0D2E 33            [12] 3606 	rlc	a
   0D2F 95 E0         [12] 3607 	subb	a,acc
   0D31 FE            [12] 3608 	mov	r6,a
   0D32 FF            [12] 3609 	mov	r7,a
   0D33 90 00 D2      [24] 3610 	mov	dptr,#__mullong_PARM_2
   0D36 EA            [12] 3611 	mov	a,r2
   0D37 F0            [24] 3612 	movx	@dptr,a
   0D38 EB            [12] 3613 	mov	a,r3
   0D39 A3            [24] 3614 	inc	dptr
   0D3A F0            [24] 3615 	movx	@dptr,a
   0D3B EC            [12] 3616 	mov	a,r4
   0D3C A3            [24] 3617 	inc	dptr
   0D3D F0            [24] 3618 	movx	@dptr,a
   0D3E ED            [12] 3619 	mov	a,r5
   0D3F A3            [24] 3620 	inc	dptr
   0D40 F0            [24] 3621 	movx	@dptr,a
   0D41 88 82         [24] 3622 	mov	dpl,r0
   0D43 89 83         [24] 3623 	mov	dph,r1
   0D45 8E F0         [24] 3624 	mov	b,r6
   0D47 EF            [12] 3625 	mov	a,r7
   0D48 12 19 EF      [24] 3626 	lcall	__mullong
   0D4B AC 82         [24] 3627 	mov	r4,dpl
   0D4D AD 83         [24] 3628 	mov	r5,dph
   0D4F AE F0         [24] 3629 	mov	r6,b
   0D51 FF            [12] 3630 	mov	r7,a
   0D52 90 00 6A      [24] 3631 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_212
   0D55 E0            [24] 3632 	movx	a,@dptr
   0D56 FA            [12] 3633 	mov	r2,a
   0D57 A3            [24] 3634 	inc	dptr
   0D58 E0            [24] 3635 	movx	a,@dptr
   0D59 FB            [12] 3636 	mov	r3,a
   0D5A E4            [12] 3637 	clr	a
   0D5B C3            [12] 3638 	clr	c
   0D5C 9A            [12] 3639 	subb	a,r2
   0D5D FA            [12] 3640 	mov	r2,a
   0D5E 74 04         [12] 3641 	mov	a,#0x04
   0D60 9B            [12] 3642 	subb	a,r3
   0D61 54 03         [12] 3643 	anl	a,#0x03
   0D63 A2 E0         [12] 3644 	mov	c,acc.0
   0D65 CA            [12] 3645 	xch	a,r2
   0D66 13            [12] 3646 	rrc	a
   0D67 CA            [12] 3647 	xch	a,r2
   0D68 13            [12] 3648 	rrc	a
   0D69 A2 E0         [12] 3649 	mov	c,acc.0
   0D6B CA            [12] 3650 	xch	a,r2
   0D6C 13            [12] 3651 	rrc	a
   0D6D CA            [12] 3652 	xch	a,r2
   0D6E 13            [12] 3653 	rrc	a
   0D6F CA            [12] 3654 	xch	a,r2
   0D70 FB            [12] 3655 	mov	r3,a
   0D71 90 00 C3      [24] 3656 	mov	dptr,#__divulong_PARM_2
   0D74 EA            [12] 3657 	mov	a,r2
   0D75 F0            [24] 3658 	movx	@dptr,a
   0D76 EB            [12] 3659 	mov	a,r3
   0D77 A3            [24] 3660 	inc	dptr
   0D78 F0            [24] 3661 	movx	@dptr,a
   0D79 E4            [12] 3662 	clr	a
   0D7A A3            [24] 3663 	inc	dptr
   0D7B F0            [24] 3664 	movx	@dptr,a
   0D7C E4            [12] 3665 	clr	a
   0D7D A3            [24] 3666 	inc	dptr
   0D7E F0            [24] 3667 	movx	@dptr,a
   0D7F 8C 82         [24] 3668 	mov	dpl,r4
   0D81 8D 83         [24] 3669 	mov	dph,r5
   0D83 8E F0         [24] 3670 	mov	b,r6
   0D85 EF            [12] 3671 	mov	a,r7
   0D86 12 18 A6      [24] 3672 	lcall	__divulong
   0D89 AC 82         [24] 3673 	mov	r4,dpl
   0D8B AD 83         [24] 3674 	mov	r5,dph
   0D8D AE F0         [24] 3675 	mov	r6,b
   0D8F FF            [12] 3676 	mov	r7,a
   0D90 0C            [12] 3677 	inc	r4
   0D91 BC 00 09      [24] 3678 	cjne	r4,#0x00,00109$
   0D94 0D            [12] 3679 	inc	r5
   0D95 BD 00 05      [24] 3680 	cjne	r5,#0x00,00109$
   0D98 0E            [12] 3681 	inc	r6
   0D99 BE 00 01      [24] 3682 	cjne	r6,#0x00,00109$
   0D9C 0F            [12] 3683 	inc	r7
   0D9D                    3684 00109$:
   0D9D EF            [12] 3685 	mov	a,r7
   0D9E C3            [12] 3686 	clr	c
   0D9F 13            [12] 3687 	rrc	a
   0DA0 FF            [12] 3688 	mov	r7,a
   0DA1 EE            [12] 3689 	mov	a,r6
   0DA2 13            [12] 3690 	rrc	a
   0DA3 FE            [12] 3691 	mov	r6,a
   0DA4 ED            [12] 3692 	mov	a,r5
   0DA5 13            [12] 3693 	rrc	a
   0DA6 FD            [12] 3694 	mov	r5,a
   0DA7 EC            [12] 3695 	mov	a,r4
   0DA8 13            [12] 3696 	rrc	a
   0DA9 F5 82         [12] 3697 	mov	dpl,a
   0DAB 8D 83         [24] 3698 	mov	dph,r5
   0DAD 8E F0         [24] 3699 	mov	b,r6
   0DAF EF            [12] 3700 	mov	a,r7
   0DB0 22            [24] 3701 	ret
                           3702 ;------------------------------------------------------------
                           3703 ;Allocation info for local variables in function 'uart_calc_actual_baud_rate_from_th1'
                           3704 ;------------------------------------------------------------
                           3705 ;smod_bit_value            Allocated with name '_uart_calc_actual_baud_rate_from_th1_PARM_2'
                           3706 ;th1_reg_value             Allocated with name '_uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_214'
                           3707 ;------------------------------------------------------------
                           3708 ;	../src/uart/src/uart_calc_actual_baud_rate_from_th1.c:48: uint32_t uart_calc_actual_baud_rate_from_th1(uint8_t th1_reg_value, bool smod_bit_value)
                           3709 ;	-----------------------------------------
                           3710 ;	 function uart_calc_actual_baud_rate_from_th1
                           3711 ;	-----------------------------------------
   0DB1                    3712 _uart_calc_actual_baud_rate_from_th1:
   0DB1 E5 82         [12] 3713 	mov	a,dpl
   0DB3 90 00 6D      [24] 3714 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_214
   0DB6 F0            [24] 3715 	movx	@dptr,a
                           3716 ;	../src/uart/src/uart_calc_actual_baud_rate_from_th1.c:57: return (uint32_t)(((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(384 * (256 - th1_reg_value)))) + 1) / 2);
   0DB7 90 00 6C      [24] 3717 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
   0DBA E0            [24] 3718 	movx	a,@dptr
   0DBB FF            [12] 3719 	mov	r7,a
   0DBC 60 04         [24] 3720 	jz	00103$
   0DBE 7F 02         [12] 3721 	mov	r7,#0x02
   0DC0 80 02         [24] 3722 	sjmp	00104$
   0DC2                    3723 00103$:
   0DC2 7F 01         [12] 3724 	mov	r7,#0x01
   0DC4                    3725 00104$:
   0DC4 EF            [12] 3726 	mov	a,r7
   0DC5 75 F0 02      [24] 3727 	mov	b,#0x02
   0DC8 A4            [48] 3728 	mul	ab
   0DC9 FF            [12] 3729 	mov	r7,a
   0DCA AE F0         [24] 3730 	mov	r6,b
   0DCC C0 07         [24] 3731 	push	ar7
   0DCE C0 06         [24] 3732 	push	ar6
   0DD0 12 0A 0F      [24] 3733 	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
   0DD3 AA 82         [24] 3734 	mov	r2,dpl
   0DD5 AB 83         [24] 3735 	mov	r3,dph
   0DD7 AC F0         [24] 3736 	mov	r4,b
   0DD9 FD            [12] 3737 	mov	r5,a
   0DDA D0 06         [24] 3738 	pop	ar6
   0DDC D0 07         [24] 3739 	pop	ar7
   0DDE 8F 00         [24] 3740 	mov	ar0,r7
   0DE0 EE            [12] 3741 	mov	a,r6
   0DE1 F9            [12] 3742 	mov	r1,a
   0DE2 33            [12] 3743 	rlc	a
   0DE3 95 E0         [12] 3744 	subb	a,acc
   0DE5 FE            [12] 3745 	mov	r6,a
   0DE6 FF            [12] 3746 	mov	r7,a
   0DE7 90 00 D2      [24] 3747 	mov	dptr,#__mullong_PARM_2
   0DEA EA            [12] 3748 	mov	a,r2
   0DEB F0            [24] 3749 	movx	@dptr,a
   0DEC EB            [12] 3750 	mov	a,r3
   0DED A3            [24] 3751 	inc	dptr
   0DEE F0            [24] 3752 	movx	@dptr,a
   0DEF EC            [12] 3753 	mov	a,r4
   0DF0 A3            [24] 3754 	inc	dptr
   0DF1 F0            [24] 3755 	movx	@dptr,a
   0DF2 ED            [12] 3756 	mov	a,r5
   0DF3 A3            [24] 3757 	inc	dptr
   0DF4 F0            [24] 3758 	movx	@dptr,a
   0DF5 88 82         [24] 3759 	mov	dpl,r0
   0DF7 89 83         [24] 3760 	mov	dph,r1
   0DF9 8E F0         [24] 3761 	mov	b,r6
   0DFB EF            [12] 3762 	mov	a,r7
   0DFC 12 19 EF      [24] 3763 	lcall	__mullong
   0DFF AC 82         [24] 3764 	mov	r4,dpl
   0E01 AD 83         [24] 3765 	mov	r5,dph
   0E03 AE F0         [24] 3766 	mov	r6,b
   0E05 FF            [12] 3767 	mov	r7,a
   0E06 90 00 6D      [24] 3768 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_214
   0E09 E0            [24] 3769 	movx	a,@dptr
   0E0A FB            [12] 3770 	mov	r3,a
   0E0B 7A 00         [12] 3771 	mov	r2,#0x00
   0E0D 90 00 D0      [24] 3772 	mov	dptr,#__mulint_PARM_2
   0E10 E4            [12] 3773 	clr	a
   0E11 C3            [12] 3774 	clr	c
   0E12 9B            [12] 3775 	subb	a,r3
   0E13 F0            [24] 3776 	movx	@dptr,a
   0E14 74 01         [12] 3777 	mov	a,#0x01
   0E16 9A            [12] 3778 	subb	a,r2
   0E17 A3            [24] 3779 	inc	dptr
   0E18 F0            [24] 3780 	movx	@dptr,a
   0E19 90 01 80      [24] 3781 	mov	dptr,#0x0180
   0E1C C0 07         [24] 3782 	push	ar7
   0E1E C0 06         [24] 3783 	push	ar6
   0E20 C0 05         [24] 3784 	push	ar5
   0E22 C0 04         [24] 3785 	push	ar4
   0E24 12 19 CF      [24] 3786 	lcall	__mulint
   0E27 AA 82         [24] 3787 	mov	r2,dpl
   0E29 AB 83         [24] 3788 	mov	r3,dph
   0E2B D0 04         [24] 3789 	pop	ar4
   0E2D D0 05         [24] 3790 	pop	ar5
   0E2F D0 06         [24] 3791 	pop	ar6
   0E31 D0 07         [24] 3792 	pop	ar7
   0E33 90 00 C3      [24] 3793 	mov	dptr,#__divulong_PARM_2
   0E36 EA            [12] 3794 	mov	a,r2
   0E37 F0            [24] 3795 	movx	@dptr,a
   0E38 EB            [12] 3796 	mov	a,r3
   0E39 A3            [24] 3797 	inc	dptr
   0E3A F0            [24] 3798 	movx	@dptr,a
   0E3B EB            [12] 3799 	mov	a,r3
   0E3C 33            [12] 3800 	rlc	a
   0E3D 95 E0         [12] 3801 	subb	a,acc
   0E3F A3            [24] 3802 	inc	dptr
   0E40 F0            [24] 3803 	movx	@dptr,a
   0E41 A3            [24] 3804 	inc	dptr
   0E42 F0            [24] 3805 	movx	@dptr,a
   0E43 8C 82         [24] 3806 	mov	dpl,r4
   0E45 8D 83         [24] 3807 	mov	dph,r5
   0E47 8E F0         [24] 3808 	mov	b,r6
   0E49 EF            [12] 3809 	mov	a,r7
   0E4A 12 18 A6      [24] 3810 	lcall	__divulong
   0E4D AC 82         [24] 3811 	mov	r4,dpl
   0E4F AD 83         [24] 3812 	mov	r5,dph
   0E51 AE F0         [24] 3813 	mov	r6,b
   0E53 FF            [12] 3814 	mov	r7,a
   0E54 0C            [12] 3815 	inc	r4
   0E55 BC 00 09      [24] 3816 	cjne	r4,#0x00,00109$
   0E58 0D            [12] 3817 	inc	r5
   0E59 BD 00 05      [24] 3818 	cjne	r5,#0x00,00109$
   0E5C 0E            [12] 3819 	inc	r6
   0E5D BE 00 01      [24] 3820 	cjne	r6,#0x00,00109$
   0E60 0F            [12] 3821 	inc	r7
   0E61                    3822 00109$:
   0E61 EF            [12] 3823 	mov	a,r7
   0E62 C3            [12] 3824 	clr	c
   0E63 13            [12] 3825 	rrc	a
   0E64 FF            [12] 3826 	mov	r7,a
   0E65 EE            [12] 3827 	mov	a,r6
   0E66 13            [12] 3828 	rrc	a
   0E67 FE            [12] 3829 	mov	r6,a
   0E68 ED            [12] 3830 	mov	a,r5
   0E69 13            [12] 3831 	rrc	a
   0E6A FD            [12] 3832 	mov	r5,a
   0E6B EC            [12] 3833 	mov	a,r4
   0E6C 13            [12] 3834 	rrc	a
   0E6D F5 82         [12] 3835 	mov	dpl,a
   0E6F 8D 83         [24] 3836 	mov	dph,r5
   0E71 8E F0         [24] 3837 	mov	b,r6
   0E73 EF            [12] 3838 	mov	a,r7
   0E74 22            [24] 3839 	ret
                           3840 ;------------------------------------------------------------
                           3841 ;Allocation info for local variables in function 'uart_calc_s0rel_value'
                           3842 ;------------------------------------------------------------
                           3843 ;smod_bit_value            Allocated with name '_uart_calc_s0rel_value_PARM_2'
                           3844 ;desired_baud_rate         Allocated with name '_uart_calc_s0rel_value_desired_baud_rate_1_216'
                           3845 ;------------------------------------------------------------
                           3846 ;	../src/uart/src/uart_calc_s0rel_value.c:48: uint16_t uart_calc_s0rel_value(uint32_t desired_baud_rate, bool smod_bit_value)
                           3847 ;	-----------------------------------------
                           3848 ;	 function uart_calc_s0rel_value
                           3849 ;	-----------------------------------------
   0E75                    3850 _uart_calc_s0rel_value:
   0E75 AF 82         [24] 3851 	mov	r7,dpl
   0E77 AE 83         [24] 3852 	mov	r6,dph
   0E79 AD F0         [24] 3853 	mov	r5,b
   0E7B FC            [12] 3854 	mov	r4,a
   0E7C 90 00 6F      [24] 3855 	mov	dptr,#_uart_calc_s0rel_value_desired_baud_rate_1_216
   0E7F EF            [12] 3856 	mov	a,r7
   0E80 F0            [24] 3857 	movx	@dptr,a
   0E81 EE            [12] 3858 	mov	a,r6
   0E82 A3            [24] 3859 	inc	dptr
   0E83 F0            [24] 3860 	movx	@dptr,a
   0E84 ED            [12] 3861 	mov	a,r5
   0E85 A3            [24] 3862 	inc	dptr
   0E86 F0            [24] 3863 	movx	@dptr,a
   0E87 EC            [12] 3864 	mov	a,r4
   0E88 A3            [24] 3865 	inc	dptr
   0E89 F0            [24] 3866 	movx	@dptr,a
                           3867 ;	../src/uart/src/uart_calc_s0rel_value.c:57: return (uint16_t)(1024 - (((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(64 * desired_baud_rate))) + 1) / 2));
   0E8A 90 00 6E      [24] 3868 	mov	dptr,#_uart_calc_s0rel_value_PARM_2
   0E8D E0            [24] 3869 	movx	a,@dptr
   0E8E FF            [12] 3870 	mov	r7,a
   0E8F 60 04         [24] 3871 	jz	00103$
   0E91 7F 02         [12] 3872 	mov	r7,#0x02
   0E93 80 02         [24] 3873 	sjmp	00104$
   0E95                    3874 00103$:
   0E95 7F 01         [12] 3875 	mov	r7,#0x01
   0E97                    3876 00104$:
   0E97 EF            [12] 3877 	mov	a,r7
   0E98 75 F0 02      [24] 3878 	mov	b,#0x02
   0E9B A4            [48] 3879 	mul	ab
   0E9C FF            [12] 3880 	mov	r7,a
   0E9D AE F0         [24] 3881 	mov	r6,b
   0E9F C0 07         [24] 3882 	push	ar7
   0EA1 C0 06         [24] 3883 	push	ar6
   0EA3 12 0A 0F      [24] 3884 	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
   0EA6 AA 82         [24] 3885 	mov	r2,dpl
   0EA8 AB 83         [24] 3886 	mov	r3,dph
   0EAA AC F0         [24] 3887 	mov	r4,b
   0EAC FD            [12] 3888 	mov	r5,a
   0EAD D0 06         [24] 3889 	pop	ar6
   0EAF D0 07         [24] 3890 	pop	ar7
   0EB1 8F 00         [24] 3891 	mov	ar0,r7
   0EB3 EE            [12] 3892 	mov	a,r6
   0EB4 F9            [12] 3893 	mov	r1,a
   0EB5 33            [12] 3894 	rlc	a
   0EB6 95 E0         [12] 3895 	subb	a,acc
   0EB8 FE            [12] 3896 	mov	r6,a
   0EB9 FF            [12] 3897 	mov	r7,a
   0EBA 90 00 D2      [24] 3898 	mov	dptr,#__mullong_PARM_2
   0EBD EA            [12] 3899 	mov	a,r2
   0EBE F0            [24] 3900 	movx	@dptr,a
   0EBF EB            [12] 3901 	mov	a,r3
   0EC0 A3            [24] 3902 	inc	dptr
   0EC1 F0            [24] 3903 	movx	@dptr,a
   0EC2 EC            [12] 3904 	mov	a,r4
   0EC3 A3            [24] 3905 	inc	dptr
   0EC4 F0            [24] 3906 	movx	@dptr,a
   0EC5 ED            [12] 3907 	mov	a,r5
   0EC6 A3            [24] 3908 	inc	dptr
   0EC7 F0            [24] 3909 	movx	@dptr,a
   0EC8 88 82         [24] 3910 	mov	dpl,r0
   0ECA 89 83         [24] 3911 	mov	dph,r1
   0ECC 8E F0         [24] 3912 	mov	b,r6
   0ECE EF            [12] 3913 	mov	a,r7
   0ECF 12 19 EF      [24] 3914 	lcall	__mullong
   0ED2 AC 82         [24] 3915 	mov	r4,dpl
   0ED4 AD 83         [24] 3916 	mov	r5,dph
   0ED6 AE F0         [24] 3917 	mov	r6,b
   0ED8 FF            [12] 3918 	mov	r7,a
   0ED9 90 00 6F      [24] 3919 	mov	dptr,#_uart_calc_s0rel_value_desired_baud_rate_1_216
   0EDC E0            [24] 3920 	movx	a,@dptr
   0EDD F8            [12] 3921 	mov	r0,a
   0EDE A3            [24] 3922 	inc	dptr
   0EDF E0            [24] 3923 	movx	a,@dptr
   0EE0 F9            [12] 3924 	mov	r1,a
   0EE1 A3            [24] 3925 	inc	dptr
   0EE2 E0            [24] 3926 	movx	a,@dptr
   0EE3 FA            [12] 3927 	mov	r2,a
   0EE4 A3            [24] 3928 	inc	dptr
   0EE5 E0            [24] 3929 	movx	a,@dptr
   0EE6 54 03         [12] 3930 	anl	a,#0x03
   0EE8 A2 E0         [12] 3931 	mov	c,acc.0
   0EEA CA            [12] 3932 	xch	a,r2
   0EEB 13            [12] 3933 	rrc	a
   0EEC CA            [12] 3934 	xch	a,r2
   0EED 13            [12] 3935 	rrc	a
   0EEE A2 E0         [12] 3936 	mov	c,acc.0
   0EF0 CA            [12] 3937 	xch	a,r2
   0EF1 13            [12] 3938 	rrc	a
   0EF2 CA            [12] 3939 	xch	a,r2
   0EF3 13            [12] 3940 	rrc	a
   0EF4 CA            [12] 3941 	xch	a,r2
   0EF5 FB            [12] 3942 	mov	r3,a
   0EF6 E9            [12] 3943 	mov	a,r1
   0EF7 03            [12] 3944 	rr	a
   0EF8 03            [12] 3945 	rr	a
   0EF9 54 3F         [12] 3946 	anl	a,#0x3F
   0EFB 4A            [12] 3947 	orl	a,r2
   0EFC FA            [12] 3948 	mov	r2,a
   0EFD E9            [12] 3949 	mov	a,r1
   0EFE 54 03         [12] 3950 	anl	a,#0x03
   0F00 A2 E0         [12] 3951 	mov	c,acc.0
   0F02 C8            [12] 3952 	xch	a,r0
   0F03 13            [12] 3953 	rrc	a
   0F04 C8            [12] 3954 	xch	a,r0
   0F05 13            [12] 3955 	rrc	a
   0F06 A2 E0         [12] 3956 	mov	c,acc.0
   0F08 C8            [12] 3957 	xch	a,r0
   0F09 13            [12] 3958 	rrc	a
   0F0A C8            [12] 3959 	xch	a,r0
   0F0B 13            [12] 3960 	rrc	a
   0F0C C8            [12] 3961 	xch	a,r0
   0F0D F9            [12] 3962 	mov	r1,a
   0F0E 90 00 C3      [24] 3963 	mov	dptr,#__divulong_PARM_2
   0F11 E8            [12] 3964 	mov	a,r0
   0F12 F0            [24] 3965 	movx	@dptr,a
   0F13 E9            [12] 3966 	mov	a,r1
   0F14 A3            [24] 3967 	inc	dptr
   0F15 F0            [24] 3968 	movx	@dptr,a
   0F16 EA            [12] 3969 	mov	a,r2
   0F17 A3            [24] 3970 	inc	dptr
   0F18 F0            [24] 3971 	movx	@dptr,a
   0F19 EB            [12] 3972 	mov	a,r3
   0F1A A3            [24] 3973 	inc	dptr
   0F1B F0            [24] 3974 	movx	@dptr,a
   0F1C 8C 82         [24] 3975 	mov	dpl,r4
   0F1E 8D 83         [24] 3976 	mov	dph,r5
   0F20 8E F0         [24] 3977 	mov	b,r6
   0F22 EF            [12] 3978 	mov	a,r7
   0F23 12 18 A6      [24] 3979 	lcall	__divulong
   0F26 AC 82         [24] 3980 	mov	r4,dpl
   0F28 AD 83         [24] 3981 	mov	r5,dph
   0F2A AE F0         [24] 3982 	mov	r6,b
   0F2C FF            [12] 3983 	mov	r7,a
   0F2D 0C            [12] 3984 	inc	r4
   0F2E BC 00 09      [24] 3985 	cjne	r4,#0x00,00109$
   0F31 0D            [12] 3986 	inc	r5
   0F32 BD 00 05      [24] 3987 	cjne	r5,#0x00,00109$
   0F35 0E            [12] 3988 	inc	r6
   0F36 BE 00 01      [24] 3989 	cjne	r6,#0x00,00109$
   0F39 0F            [12] 3990 	inc	r7
   0F3A                    3991 00109$:
   0F3A EF            [12] 3992 	mov	a,r7
   0F3B C3            [12] 3993 	clr	c
   0F3C 13            [12] 3994 	rrc	a
   0F3D FF            [12] 3995 	mov	r7,a
   0F3E EE            [12] 3996 	mov	a,r6
   0F3F 13            [12] 3997 	rrc	a
   0F40 FE            [12] 3998 	mov	r6,a
   0F41 ED            [12] 3999 	mov	a,r5
   0F42 13            [12] 4000 	rrc	a
   0F43 FD            [12] 4001 	mov	r5,a
   0F44 EC            [12] 4002 	mov	a,r4
   0F45 13            [12] 4003 	rrc	a
   0F46 FC            [12] 4004 	mov	r4,a
   0F47 E4            [12] 4005 	clr	a
   0F48 C3            [12] 4006 	clr	c
   0F49 9C            [12] 4007 	subb	a,r4
   0F4A FC            [12] 4008 	mov	r4,a
   0F4B 74 04         [12] 4009 	mov	a,#0x04
   0F4D 9D            [12] 4010 	subb	a,r5
   0F4E FD            [12] 4011 	mov	r5,a
   0F4F E4            [12] 4012 	clr	a
   0F50 9E            [12] 4013 	subb	a,r6
   0F51 E4            [12] 4014 	clr	a
   0F52 9F            [12] 4015 	subb	a,r7
   0F53 8C 82         [24] 4016 	mov	dpl,r4
   0F55 8D 83         [24] 4017 	mov	dph,r5
   0F57 22            [24] 4018 	ret
                           4019 ;------------------------------------------------------------
                           4020 ;Allocation info for local variables in function 'uart_calc_th1_value'
                           4021 ;------------------------------------------------------------
                           4022 ;smod_bit_value            Allocated with name '_uart_calc_th1_value_PARM_2'
                           4023 ;desired_baud_rate         Allocated with name '_uart_calc_th1_value_desired_baud_rate_1_218'
                           4024 ;------------------------------------------------------------
                           4025 ;	../src/uart/src/uart_calc_th1_value.c:48: uint8_t uart_calc_th1_value(uint32_t desired_baud_rate, bool smod_bit_value)
                           4026 ;	-----------------------------------------
                           4027 ;	 function uart_calc_th1_value
                           4028 ;	-----------------------------------------
   0F58                    4029 _uart_calc_th1_value:
   0F58 AF 82         [24] 4030 	mov	r7,dpl
   0F5A AE 83         [24] 4031 	mov	r6,dph
   0F5C AD F0         [24] 4032 	mov	r5,b
   0F5E FC            [12] 4033 	mov	r4,a
   0F5F 90 00 74      [24] 4034 	mov	dptr,#_uart_calc_th1_value_desired_baud_rate_1_218
   0F62 EF            [12] 4035 	mov	a,r7
   0F63 F0            [24] 4036 	movx	@dptr,a
   0F64 EE            [12] 4037 	mov	a,r6
   0F65 A3            [24] 4038 	inc	dptr
   0F66 F0            [24] 4039 	movx	@dptr,a
   0F67 ED            [12] 4040 	mov	a,r5
   0F68 A3            [24] 4041 	inc	dptr
   0F69 F0            [24] 4042 	movx	@dptr,a
   0F6A EC            [12] 4043 	mov	a,r4
   0F6B A3            [24] 4044 	inc	dptr
   0F6C F0            [24] 4045 	movx	@dptr,a
                           4046 ;	../src/uart/src/uart_calc_th1_value.c:57: return (uint8_t)(256 - (((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(384 * desired_baud_rate))) + 1) / 2));
   0F6D 90 00 73      [24] 4047 	mov	dptr,#_uart_calc_th1_value_PARM_2
   0F70 E0            [24] 4048 	movx	a,@dptr
   0F71 FF            [12] 4049 	mov	r7,a
   0F72 60 04         [24] 4050 	jz	00103$
   0F74 7F 02         [12] 4051 	mov	r7,#0x02
   0F76 80 02         [24] 4052 	sjmp	00104$
   0F78                    4053 00103$:
   0F78 7F 01         [12] 4054 	mov	r7,#0x01
   0F7A                    4055 00104$:
   0F7A EF            [12] 4056 	mov	a,r7
   0F7B 75 F0 02      [24] 4057 	mov	b,#0x02
   0F7E A4            [48] 4058 	mul	ab
   0F7F FF            [12] 4059 	mov	r7,a
   0F80 AE F0         [24] 4060 	mov	r6,b
   0F82 C0 07         [24] 4061 	push	ar7
   0F84 C0 06         [24] 4062 	push	ar6
   0F86 12 0A 0F      [24] 4063 	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
   0F89 AA 82         [24] 4064 	mov	r2,dpl
   0F8B AB 83         [24] 4065 	mov	r3,dph
   0F8D AC F0         [24] 4066 	mov	r4,b
   0F8F FD            [12] 4067 	mov	r5,a
   0F90 D0 06         [24] 4068 	pop	ar6
   0F92 D0 07         [24] 4069 	pop	ar7
   0F94 8F 00         [24] 4070 	mov	ar0,r7
   0F96 EE            [12] 4071 	mov	a,r6
   0F97 F9            [12] 4072 	mov	r1,a
   0F98 33            [12] 4073 	rlc	a
   0F99 95 E0         [12] 4074 	subb	a,acc
   0F9B FE            [12] 4075 	mov	r6,a
   0F9C FF            [12] 4076 	mov	r7,a
   0F9D 90 00 D2      [24] 4077 	mov	dptr,#__mullong_PARM_2
   0FA0 EA            [12] 4078 	mov	a,r2
   0FA1 F0            [24] 4079 	movx	@dptr,a
   0FA2 EB            [12] 4080 	mov	a,r3
   0FA3 A3            [24] 4081 	inc	dptr
   0FA4 F0            [24] 4082 	movx	@dptr,a
   0FA5 EC            [12] 4083 	mov	a,r4
   0FA6 A3            [24] 4084 	inc	dptr
   0FA7 F0            [24] 4085 	movx	@dptr,a
   0FA8 ED            [12] 4086 	mov	a,r5
   0FA9 A3            [24] 4087 	inc	dptr
   0FAA F0            [24] 4088 	movx	@dptr,a
   0FAB 88 82         [24] 4089 	mov	dpl,r0
   0FAD 89 83         [24] 4090 	mov	dph,r1
   0FAF 8E F0         [24] 4091 	mov	b,r6
   0FB1 EF            [12] 4092 	mov	a,r7
   0FB2 12 19 EF      [24] 4093 	lcall	__mullong
   0FB5 AC 82         [24] 4094 	mov	r4,dpl
   0FB7 AD 83         [24] 4095 	mov	r5,dph
   0FB9 AE F0         [24] 4096 	mov	r6,b
   0FBB FF            [12] 4097 	mov	r7,a
   0FBC 90 00 74      [24] 4098 	mov	dptr,#_uart_calc_th1_value_desired_baud_rate_1_218
   0FBF E0            [24] 4099 	movx	a,@dptr
   0FC0 F8            [12] 4100 	mov	r0,a
   0FC1 A3            [24] 4101 	inc	dptr
   0FC2 E0            [24] 4102 	movx	a,@dptr
   0FC3 F9            [12] 4103 	mov	r1,a
   0FC4 A3            [24] 4104 	inc	dptr
   0FC5 E0            [24] 4105 	movx	a,@dptr
   0FC6 FA            [12] 4106 	mov	r2,a
   0FC7 A3            [24] 4107 	inc	dptr
   0FC8 E0            [24] 4108 	movx	a,@dptr
   0FC9 FB            [12] 4109 	mov	r3,a
   0FCA 90 00 D2      [24] 4110 	mov	dptr,#__mullong_PARM_2
   0FCD E8            [12] 4111 	mov	a,r0
   0FCE F0            [24] 4112 	movx	@dptr,a
   0FCF E9            [12] 4113 	mov	a,r1
   0FD0 A3            [24] 4114 	inc	dptr
   0FD1 F0            [24] 4115 	movx	@dptr,a
   0FD2 EA            [12] 4116 	mov	a,r2
   0FD3 A3            [24] 4117 	inc	dptr
   0FD4 F0            [24] 4118 	movx	@dptr,a
   0FD5 EB            [12] 4119 	mov	a,r3
   0FD6 A3            [24] 4120 	inc	dptr
   0FD7 F0            [24] 4121 	movx	@dptr,a
   0FD8 90 01 80      [24] 4122 	mov	dptr,#0x0180
   0FDB E4            [12] 4123 	clr	a
   0FDC F5 F0         [12] 4124 	mov	b,a
   0FDE C0 07         [24] 4125 	push	ar7
   0FE0 C0 06         [24] 4126 	push	ar6
   0FE2 C0 05         [24] 4127 	push	ar5
   0FE4 C0 04         [24] 4128 	push	ar4
   0FE6 12 19 EF      [24] 4129 	lcall	__mullong
   0FE9 A8 82         [24] 4130 	mov	r0,dpl
   0FEB A9 83         [24] 4131 	mov	r1,dph
   0FED AA F0         [24] 4132 	mov	r2,b
   0FEF FB            [12] 4133 	mov	r3,a
   0FF0 D0 04         [24] 4134 	pop	ar4
   0FF2 D0 05         [24] 4135 	pop	ar5
   0FF4 D0 06         [24] 4136 	pop	ar6
   0FF6 D0 07         [24] 4137 	pop	ar7
   0FF8 90 00 C3      [24] 4138 	mov	dptr,#__divulong_PARM_2
   0FFB E8            [12] 4139 	mov	a,r0
   0FFC F0            [24] 4140 	movx	@dptr,a
   0FFD E9            [12] 4141 	mov	a,r1
   0FFE A3            [24] 4142 	inc	dptr
   0FFF F0            [24] 4143 	movx	@dptr,a
   1000 EA            [12] 4144 	mov	a,r2
   1001 A3            [24] 4145 	inc	dptr
   1002 F0            [24] 4146 	movx	@dptr,a
   1003 EB            [12] 4147 	mov	a,r3
   1004 A3            [24] 4148 	inc	dptr
   1005 F0            [24] 4149 	movx	@dptr,a
   1006 8C 82         [24] 4150 	mov	dpl,r4
   1008 8D 83         [24] 4151 	mov	dph,r5
   100A 8E F0         [24] 4152 	mov	b,r6
   100C EF            [12] 4153 	mov	a,r7
   100D 12 18 A6      [24] 4154 	lcall	__divulong
   1010 AC 82         [24] 4155 	mov	r4,dpl
   1012 AD 83         [24] 4156 	mov	r5,dph
   1014 AE F0         [24] 4157 	mov	r6,b
   1016 FF            [12] 4158 	mov	r7,a
   1017 0C            [12] 4159 	inc	r4
   1018 BC 00 09      [24] 4160 	cjne	r4,#0x00,00109$
   101B 0D            [12] 4161 	inc	r5
   101C BD 00 05      [24] 4162 	cjne	r5,#0x00,00109$
   101F 0E            [12] 4163 	inc	r6
   1020 BE 00 01      [24] 4164 	cjne	r6,#0x00,00109$
   1023 0F            [12] 4165 	inc	r7
   1024                    4166 00109$:
   1024 EF            [12] 4167 	mov	a,r7
   1025 C3            [12] 4168 	clr	c
   1026 13            [12] 4169 	rrc	a
   1027 EE            [12] 4170 	mov	a,r6
   1028 13            [12] 4171 	rrc	a
   1029 ED            [12] 4172 	mov	a,r5
   102A 13            [12] 4173 	rrc	a
   102B EC            [12] 4174 	mov	a,r4
   102C 13            [12] 4175 	rrc	a
   102D FC            [12] 4176 	mov	r4,a
   102E C3            [12] 4177 	clr	c
   102F E4            [12] 4178 	clr	a
   1030 9C            [12] 4179 	subb	a,r4
   1031 F5 82         [12] 4180 	mov	dpl,a
   1033 22            [24] 4181 	ret
                           4182 ;------------------------------------------------------------
                           4183 ;Allocation info for local variables in function 'uart_configure_auto_baud_calc'
                           4184 ;------------------------------------------------------------
                           4185 ;sloc0                     Allocated with name '_uart_configure_auto_baud_calc_sloc0_1_0'
                           4186 ;sloc1                     Allocated with name '_uart_configure_auto_baud_calc_sloc1_1_0'
                           4187 ;sloc2                     Allocated with name '_uart_configure_auto_baud_calc_sloc2_1_0'
                           4188 ;sloc3                     Allocated with name '_uart_configure_auto_baud_calc_sloc3_1_0'
                           4189 ;baud_rate                 Allocated with name '_uart_configure_auto_baud_calc_PARM_2'
                           4190 ;uart_config_options       Allocated with name '_uart_configure_auto_baud_calc_uart_config_options_1_220'
                           4191 ;calc_br_with_smod_cleared Allocated with name '_uart_configure_auto_baud_calc_calc_br_with_smod_cleared_2_222'
                           4192 ;calc_br_with_smod_set     Allocated with name '_uart_configure_auto_baud_calc_calc_br_with_smod_set_2_222'
                           4193 ;error_calc_br_with_smod_cleared Allocated with name '_uart_configure_auto_baud_calc_error_calc_br_with_smod_cleared_2_222'
                           4194 ;error_calc_br_with_smod_set Allocated with name '_uart_configure_auto_baud_calc_error_calc_br_with_smod_set_2_222'
                           4195 ;s0rel_with_smod_cleared   Allocated with name '_uart_configure_auto_baud_calc_s0rel_with_smod_cleared_3_223'
                           4196 ;s0rel_with_smod_set       Allocated with name '_uart_configure_auto_baud_calc_s0rel_with_smod_set_3_223'
                           4197 ;th1_with_smod_cleared     Allocated with name '_uart_configure_auto_baud_calc_th1_with_smod_cleared_3_226'
                           4198 ;th1_with_smod_set         Allocated with name '_uart_configure_auto_baud_calc_th1_with_smod_set_3_226'
                           4199 ;------------------------------------------------------------
                           4200 ;	../src/uart/src/uart_configure_auto_baud_calc.c:48: void uart_configure_auto_baud_calc(uint8_t uart_config_options, uint32_t baud_rate)
                           4201 ;	-----------------------------------------
                           4202 ;	 function uart_configure_auto_baud_calc
                           4203 ;	-----------------------------------------
   1034                    4204 _uart_configure_auto_baud_calc:
   1034 E5 82         [12] 4205 	mov	a,dpl
                           4206 ;	../src/uart/src/uart_configure_auto_baud_calc.c:51: if(((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_1_UART_8_BIT) ||
   1036 90 00 7C      [24] 4207 	mov	dptr,#_uart_configure_auto_baud_calc_uart_config_options_1_220
   1039 F0            [24] 4208 	movx	@dptr,a
   103A FF            [12] 4209 	mov	r7,a
   103B 74 C0         [12] 4210 	mov	a,#0xC0
   103D 5F            [12] 4211 	anl	a,r7
   103E FE            [12] 4212 	mov	r6,a
   103F BE 40 02      [24] 4213 	cjne	r6,#0x40,00147$
   1042 80 0A         [24] 4214 	sjmp	00110$
   1044                    4215 00147$:
                           4216 ;	../src/uart/src/uart_configure_auto_baud_calc.c:52: ((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_3_UART_9_BIT))
   1044 74 C0         [12] 4217 	mov	a,#0xC0
   1046 5F            [12] 4218 	anl	a,r7
   1047 FE            [12] 4219 	mov	r6,a
   1048 BE C0 02      [24] 4220 	cjne	r6,#0xC0,00148$
   104B 80 01         [24] 4221 	sjmp	00149$
   104D                    4222 00148$:
   104D 22            [24] 4223 	ret
   104E                    4224 00149$:
   104E                    4225 00110$:
                           4226 ;	../src/uart/src/uart_configure_auto_baud_calc.c:58: if((uart_config_options & UART_CONFIG_OPTION_CLOCK_MASK) == UART_CONFIG_OPTION_CLOCK_FOR_MODES_1_3_USE_BR_GEN)
   104E 74 02         [12] 4227 	mov	a,#0x02
   1050 5F            [12] 4228 	anl	a,r7
   1051 FE            [12] 4229 	mov	r6,a
   1052 BE 02 02      [24] 4230 	cjne	r6,#0x02,00150$
   1055 80 03         [24] 4231 	sjmp	00151$
   1057                    4232 00150$:
   1057 02 11 A8      [24] 4233 	ljmp	00108$
   105A                    4234 00151$:
                           4235 ;	../src/uart/src/uart_configure_auto_baud_calc.c:63: s0rel_with_smod_cleared = uart_calc_s0rel_value(baud_rate, 0);
   105A 90 00 78      [24] 4236 	mov	dptr,#_uart_configure_auto_baud_calc_PARM_2
   105D E0            [24] 4237 	movx	a,@dptr
   105E FB            [12] 4238 	mov	r3,a
   105F A3            [24] 4239 	inc	dptr
   1060 E0            [24] 4240 	movx	a,@dptr
   1061 FC            [12] 4241 	mov	r4,a
   1062 A3            [24] 4242 	inc	dptr
   1063 E0            [24] 4243 	movx	a,@dptr
   1064 FD            [12] 4244 	mov	r5,a
   1065 A3            [24] 4245 	inc	dptr
   1066 E0            [24] 4246 	movx	a,@dptr
   1067 FE            [12] 4247 	mov	r6,a
   1068 90 00 6E      [24] 4248 	mov	dptr,#_uart_calc_s0rel_value_PARM_2
   106B E4            [12] 4249 	clr	a
   106C F0            [24] 4250 	movx	@dptr,a
   106D 8B 82         [24] 4251 	mov	dpl,r3
   106F 8C 83         [24] 4252 	mov	dph,r4
   1071 8D F0         [24] 4253 	mov	b,r5
   1073 EE            [12] 4254 	mov	a,r6
   1074 C0 07         [24] 4255 	push	ar7
   1076 C0 06         [24] 4256 	push	ar6
   1078 C0 05         [24] 4257 	push	ar5
   107A C0 04         [24] 4258 	push	ar4
   107C C0 03         [24] 4259 	push	ar3
   107E 12 0E 75      [24] 4260 	lcall	_uart_calc_s0rel_value
   1081 A9 82         [24] 4261 	mov	r1,dpl
   1083 AA 83         [24] 4262 	mov	r2,dph
   1085 D0 03         [24] 4263 	pop	ar3
   1087 D0 04         [24] 4264 	pop	ar4
   1089 D0 05         [24] 4265 	pop	ar5
   108B D0 06         [24] 4266 	pop	ar6
                           4267 ;	../src/uart/src/uart_configure_auto_baud_calc.c:64: s0rel_with_smod_set = uart_calc_s0rel_value(baud_rate, 1);
   108D 90 00 6E      [24] 4268 	mov	dptr,#_uart_calc_s0rel_value_PARM_2
   1090 74 01         [12] 4269 	mov	a,#0x01
   1092 F0            [24] 4270 	movx	@dptr,a
   1093 8B 82         [24] 4271 	mov	dpl,r3
   1095 8C 83         [24] 4272 	mov	dph,r4
   1097 8D F0         [24] 4273 	mov	b,r5
   1099 EE            [12] 4274 	mov	a,r6
   109A C0 06         [24] 4275 	push	ar6
   109C C0 05         [24] 4276 	push	ar5
   109E C0 04         [24] 4277 	push	ar4
   10A0 C0 03         [24] 4278 	push	ar3
   10A2 C0 02         [24] 4279 	push	ar2
   10A4 C0 01         [24] 4280 	push	ar1
   10A6 12 0E 75      [24] 4281 	lcall	_uart_calc_s0rel_value
   10A9 85 82 0C      [24] 4282 	mov	_uart_configure_auto_baud_calc_sloc0_1_0,dpl
   10AC 85 83 0D      [24] 4283 	mov	(_uart_configure_auto_baud_calc_sloc0_1_0 + 1),dph
   10AF D0 01         [24] 4284 	pop	ar1
   10B1 D0 02         [24] 4285 	pop	ar2
                           4286 ;	../src/uart/src/uart_configure_auto_baud_calc.c:67: calc_br_with_smod_cleared = uart_calc_actual_baud_rate_from_s0rel(s0rel_with_smod_cleared, false);
   10B3 90 00 69      [24] 4287 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
   10B6 E4            [12] 4288 	clr	a
   10B7 F0            [24] 4289 	movx	@dptr,a
   10B8 89 82         [24] 4290 	mov	dpl,r1
   10BA 8A 83         [24] 4291 	mov	dph,r2
   10BC C0 02         [24] 4292 	push	ar2
   10BE C0 01         [24] 4293 	push	ar1
   10C0 12 0C F8      [24] 4294 	lcall	_uart_calc_actual_baud_rate_from_s0rel
   10C3 85 82 0E      [24] 4295 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,dpl
   10C6 85 83 0F      [24] 4296 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),dph
   10C9 85 F0 10      [24] 4297 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),b
   10CC F5 11         [12] 4298 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
                           4299 ;	../src/uart/src/uart_configure_auto_baud_calc.c:68: calc_br_with_smod_set = uart_calc_actual_baud_rate_from_s0rel(s0rel_with_smod_set, true);
   10CE 90 00 69      [24] 4300 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
   10D1 74 01         [12] 4301 	mov	a,#0x01
   10D3 F0            [24] 4302 	movx	@dptr,a
   10D4 85 0C 82      [24] 4303 	mov	dpl,_uart_configure_auto_baud_calc_sloc0_1_0
   10D7 85 0D 83      [24] 4304 	mov	dph,(_uart_configure_auto_baud_calc_sloc0_1_0 + 1)
   10DA 12 0C F8      [24] 4305 	lcall	_uart_calc_actual_baud_rate_from_s0rel
   10DD 85 82 12      [24] 4306 	mov	_uart_configure_auto_baud_calc_sloc2_1_0,dpl
   10E0 85 83 13      [24] 4307 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 1),dph
   10E3 85 F0 14      [24] 4308 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 2),b
   10E6 F5 15         [12] 4309 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 3),a
   10E8 D0 01         [24] 4310 	pop	ar1
   10EA D0 02         [24] 4311 	pop	ar2
   10EC D0 03         [24] 4312 	pop	ar3
   10EE D0 04         [24] 4313 	pop	ar4
   10F0 D0 05         [24] 4314 	pop	ar5
   10F2 D0 06         [24] 4315 	pop	ar6
   10F4 D0 07         [24] 4316 	pop	ar7
                           4317 ;	../src/uart/src/uart_configure_auto_baud_calc.c:71: error_calc_br_with_smod_cleared = (calc_br_with_smod_cleared > baud_rate) ? (calc_br_with_smod_cleared - baud_rate) : (baud_rate - calc_br_with_smod_cleared);
   10F6 C3            [12] 4318 	clr	c
   10F7 EB            [12] 4319 	mov	a,r3
   10F8 95 0E         [12] 4320 	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
   10FA EC            [12] 4321 	mov	a,r4
   10FB 95 0F         [12] 4322 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   10FD ED            [12] 4323 	mov	a,r5
   10FE 95 10         [12] 4324 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   1100 EE            [12] 4325 	mov	a,r6
   1101 95 11         [12] 4326 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   1103 50 17         [24] 4327 	jnc	00115$
   1105 E5 0E         [12] 4328 	mov	a,_uart_configure_auto_baud_calc_sloc1_1_0
   1107 C3            [12] 4329 	clr	c
   1108 9B            [12] 4330 	subb	a,r3
   1109 F5 16         [12] 4331 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
   110B E5 0F         [12] 4332 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   110D 9C            [12] 4333 	subb	a,r4
   110E F5 17         [12] 4334 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
   1110 E5 10         [12] 4335 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   1112 9D            [12] 4336 	subb	a,r5
   1113 F5 18         [12] 4337 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
   1115 E5 11         [12] 4338 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   1117 9E            [12] 4339 	subb	a,r6
   1118 F5 19         [12] 4340 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   111A 80 15         [24] 4341 	sjmp	00116$
   111C                    4342 00115$:
   111C EB            [12] 4343 	mov	a,r3
   111D C3            [12] 4344 	clr	c
   111E 95 0E         [12] 4345 	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
   1120 F5 16         [12] 4346 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
   1122 EC            [12] 4347 	mov	a,r4
   1123 95 0F         [12] 4348 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   1125 F5 17         [12] 4349 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
   1127 ED            [12] 4350 	mov	a,r5
   1128 95 10         [12] 4351 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   112A F5 18         [12] 4352 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
   112C EE            [12] 4353 	mov	a,r6
   112D 95 11         [12] 4354 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   112F F5 19         [12] 4355 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   1131                    4356 00116$:
                           4357 ;	../src/uart/src/uart_configure_auto_baud_calc.c:72: error_calc_br_with_smod_set = (calc_br_with_smod_set > baud_rate) ? (calc_br_with_smod_set - baud_rate) : (baud_rate - calc_br_with_smod_set);
   1131 C3            [12] 4358 	clr	c
   1132 EB            [12] 4359 	mov	a,r3
   1133 95 12         [12] 4360 	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
   1135 EC            [12] 4361 	mov	a,r4
   1136 95 13         [12] 4362 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   1138 ED            [12] 4363 	mov	a,r5
   1139 95 14         [12] 4364 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   113B EE            [12] 4365 	mov	a,r6
   113C 95 15         [12] 4366 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   113E 50 17         [24] 4367 	jnc	00117$
   1140 E5 12         [12] 4368 	mov	a,_uart_configure_auto_baud_calc_sloc2_1_0
   1142 C3            [12] 4369 	clr	c
   1143 9B            [12] 4370 	subb	a,r3
   1144 F5 0E         [12] 4371 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
   1146 E5 13         [12] 4372 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   1148 9C            [12] 4373 	subb	a,r4
   1149 F5 0F         [12] 4374 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
   114B E5 14         [12] 4375 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   114D 9D            [12] 4376 	subb	a,r5
   114E F5 10         [12] 4377 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
   1150 E5 15         [12] 4378 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   1152 9E            [12] 4379 	subb	a,r6
   1153 F5 11         [12] 4380 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
   1155 80 15         [24] 4381 	sjmp	00118$
   1157                    4382 00117$:
   1157 EB            [12] 4383 	mov	a,r3
   1158 C3            [12] 4384 	clr	c
   1159 95 12         [12] 4385 	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
   115B F5 0E         [12] 4386 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
   115D EC            [12] 4387 	mov	a,r4
   115E 95 13         [12] 4388 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   1160 F5 0F         [12] 4389 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
   1162 ED            [12] 4390 	mov	a,r5
   1163 95 14         [12] 4391 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   1165 F5 10         [12] 4392 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
   1167 EE            [12] 4393 	mov	a,r6
   1168 95 15         [12] 4394 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   116A F5 11         [12] 4395 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
   116C                    4396 00118$:
                           4397 ;	../src/uart/src/uart_configure_auto_baud_calc.c:75: if(error_calc_br_with_smod_cleared < error_calc_br_with_smod_set)
   116C C3            [12] 4398 	clr	c
   116D E5 16         [12] 4399 	mov	a,_uart_configure_auto_baud_calc_sloc3_1_0
   116F 95 0E         [12] 4400 	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
   1171 E5 17         [12] 4401 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   1173 95 0F         [12] 4402 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   1175 E5 18         [12] 4403 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   1177 95 10         [12] 4404 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   1179 E5 19         [12] 4405 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   117B 95 11         [12] 4406 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   117D 50 12         [24] 4407 	jnc	00102$
                           4408 ;	../src/uart/src/uart_configure_auto_baud_calc.c:77: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_CLEAR),
   117F 8F 06         [24] 4409 	mov	ar6,r7
   1181 53 06 FB      [24] 4410 	anl	ar6,#0xFB
                           4411 ;	../src/uart/src/uart_configure_auto_baud_calc.c:78: s0rel_with_smod_cleared);
   1184 90 00 66      [24] 4412 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   1187 E9            [12] 4413 	mov	a,r1
   1188 F0            [24] 4414 	movx	@dptr,a
   1189 EA            [12] 4415 	mov	a,r2
   118A A3            [24] 4416 	inc	dptr
   118B F0            [24] 4417 	movx	@dptr,a
   118C 8E 82         [24] 4418 	mov	dpl,r6
   118E 02 0C 9A      [24] 4419 	ljmp	_uart_configure_manual_baud_calc
   1191                    4420 00102$:
                           4421 ;	../src/uart/src/uart_configure_auto_baud_calc.c:82: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_SET),
   1191 8F 06         [24] 4422 	mov	ar6,r7
   1193 74 FB         [12] 4423 	mov	a,#0xFB
   1195 5E            [12] 4424 	anl	a,r6
   1196 44 04         [12] 4425 	orl	a,#0x04
   1198 FE            [12] 4426 	mov	r6,a
                           4427 ;	../src/uart/src/uart_configure_auto_baud_calc.c:83: s0rel_with_smod_set);
   1199 90 00 66      [24] 4428 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   119C E5 0C         [12] 4429 	mov	a,_uart_configure_auto_baud_calc_sloc0_1_0
   119E F0            [24] 4430 	movx	@dptr,a
   119F E5 0D         [12] 4431 	mov	a,(_uart_configure_auto_baud_calc_sloc0_1_0 + 1)
   11A1 A3            [24] 4432 	inc	dptr
   11A2 F0            [24] 4433 	movx	@dptr,a
   11A3 8E 82         [24] 4434 	mov	dpl,r6
   11A5 02 0C 9A      [24] 4435 	ljmp	_uart_configure_manual_baud_calc
   11A8                    4436 00108$:
                           4437 ;	../src/uart/src/uart_configure_auto_baud_calc.c:91: th1_with_smod_cleared = uart_calc_th1_value(baud_rate, 0);
   11A8 90 00 78      [24] 4438 	mov	dptr,#_uart_configure_auto_baud_calc_PARM_2
   11AB E0            [24] 4439 	movx	a,@dptr
   11AC FB            [12] 4440 	mov	r3,a
   11AD A3            [24] 4441 	inc	dptr
   11AE E0            [24] 4442 	movx	a,@dptr
   11AF FC            [12] 4443 	mov	r4,a
   11B0 A3            [24] 4444 	inc	dptr
   11B1 E0            [24] 4445 	movx	a,@dptr
   11B2 FD            [12] 4446 	mov	r5,a
   11B3 A3            [24] 4447 	inc	dptr
   11B4 E0            [24] 4448 	movx	a,@dptr
   11B5 FE            [12] 4449 	mov	r6,a
   11B6 90 00 73      [24] 4450 	mov	dptr,#_uart_calc_th1_value_PARM_2
   11B9 E4            [12] 4451 	clr	a
   11BA F0            [24] 4452 	movx	@dptr,a
   11BB 8B 82         [24] 4453 	mov	dpl,r3
   11BD 8C 83         [24] 4454 	mov	dph,r4
   11BF 8D F0         [24] 4455 	mov	b,r5
   11C1 EE            [12] 4456 	mov	a,r6
   11C2 C0 07         [24] 4457 	push	ar7
   11C4 C0 06         [24] 4458 	push	ar6
   11C6 C0 05         [24] 4459 	push	ar5
   11C8 C0 04         [24] 4460 	push	ar4
   11CA C0 03         [24] 4461 	push	ar3
   11CC 12 0F 58      [24] 4462 	lcall	_uart_calc_th1_value
   11CF AA 82         [24] 4463 	mov	r2,dpl
   11D1 D0 03         [24] 4464 	pop	ar3
   11D3 D0 04         [24] 4465 	pop	ar4
   11D5 D0 05         [24] 4466 	pop	ar5
   11D7 D0 06         [24] 4467 	pop	ar6
                           4468 ;	../src/uart/src/uart_configure_auto_baud_calc.c:92: th1_with_smod_set = uart_calc_th1_value(baud_rate, 1);
   11D9 90 00 73      [24] 4469 	mov	dptr,#_uart_calc_th1_value_PARM_2
   11DC 74 01         [12] 4470 	mov	a,#0x01
   11DE F0            [24] 4471 	movx	@dptr,a
   11DF 8B 82         [24] 4472 	mov	dpl,r3
   11E1 8C 83         [24] 4473 	mov	dph,r4
   11E3 8D F0         [24] 4474 	mov	b,r5
   11E5 EE            [12] 4475 	mov	a,r6
   11E6 C0 06         [24] 4476 	push	ar6
   11E8 C0 05         [24] 4477 	push	ar5
   11EA C0 04         [24] 4478 	push	ar4
   11EC C0 03         [24] 4479 	push	ar3
   11EE C0 02         [24] 4480 	push	ar2
   11F0 12 0F 58      [24] 4481 	lcall	_uart_calc_th1_value
   11F3 A9 82         [24] 4482 	mov	r1,dpl
   11F5 D0 02         [24] 4483 	pop	ar2
                           4484 ;	../src/uart/src/uart_configure_auto_baud_calc.c:95: calc_br_with_smod_cleared = uart_calc_actual_baud_rate_from_th1(th1_with_smod_cleared, false);
   11F7 90 00 6C      [24] 4485 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
   11FA E4            [12] 4486 	clr	a
   11FB F0            [24] 4487 	movx	@dptr,a
   11FC 8A 82         [24] 4488 	mov	dpl,r2
   11FE C0 02         [24] 4489 	push	ar2
   1200 C0 01         [24] 4490 	push	ar1
   1202 12 0D B1      [24] 4491 	lcall	_uart_calc_actual_baud_rate_from_th1
   1205 85 82 16      [24] 4492 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,dpl
   1208 85 83 17      [24] 4493 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),dph
   120B 85 F0 18      [24] 4494 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),b
   120E F5 19         [12] 4495 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   1210 D0 01         [24] 4496 	pop	ar1
                           4497 ;	../src/uart/src/uart_configure_auto_baud_calc.c:96: calc_br_with_smod_set = uart_calc_actual_baud_rate_from_th1(th1_with_smod_set, true);
   1212 90 00 6C      [24] 4498 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
   1215 74 01         [12] 4499 	mov	a,#0x01
   1217 F0            [24] 4500 	movx	@dptr,a
   1218 89 82         [24] 4501 	mov	dpl,r1
   121A C0 01         [24] 4502 	push	ar1
   121C 12 0D B1      [24] 4503 	lcall	_uart_calc_actual_baud_rate_from_th1
   121F 85 82 12      [24] 4504 	mov	_uart_configure_auto_baud_calc_sloc2_1_0,dpl
   1222 85 83 13      [24] 4505 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 1),dph
   1225 85 F0 14      [24] 4506 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 2),b
   1228 F5 15         [12] 4507 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 3),a
   122A D0 01         [24] 4508 	pop	ar1
   122C D0 02         [24] 4509 	pop	ar2
   122E D0 03         [24] 4510 	pop	ar3
   1230 D0 04         [24] 4511 	pop	ar4
   1232 D0 05         [24] 4512 	pop	ar5
   1234 D0 06         [24] 4513 	pop	ar6
   1236 D0 07         [24] 4514 	pop	ar7
                           4515 ;	../src/uart/src/uart_configure_auto_baud_calc.c:99: error_calc_br_with_smod_cleared = (calc_br_with_smod_cleared > baud_rate) ? (calc_br_with_smod_cleared - baud_rate) : (baud_rate - calc_br_with_smod_cleared);
   1238 C3            [12] 4516 	clr	c
   1239 EB            [12] 4517 	mov	a,r3
   123A 95 16         [12] 4518 	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
   123C EC            [12] 4519 	mov	a,r4
   123D 95 17         [12] 4520 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   123F ED            [12] 4521 	mov	a,r5
   1240 95 18         [12] 4522 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   1242 EE            [12] 4523 	mov	a,r6
   1243 95 19         [12] 4524 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   1245 50 17         [24] 4525 	jnc	00119$
   1247 E5 16         [12] 4526 	mov	a,_uart_configure_auto_baud_calc_sloc3_1_0
   1249 C3            [12] 4527 	clr	c
   124A 9B            [12] 4528 	subb	a,r3
   124B F5 0E         [12] 4529 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
   124D E5 17         [12] 4530 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   124F 9C            [12] 4531 	subb	a,r4
   1250 F5 0F         [12] 4532 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
   1252 E5 18         [12] 4533 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   1254 9D            [12] 4534 	subb	a,r5
   1255 F5 10         [12] 4535 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
   1257 E5 19         [12] 4536 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   1259 9E            [12] 4537 	subb	a,r6
   125A F5 11         [12] 4538 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
   125C 80 15         [24] 4539 	sjmp	00120$
   125E                    4540 00119$:
   125E EB            [12] 4541 	mov	a,r3
   125F C3            [12] 4542 	clr	c
   1260 95 16         [12] 4543 	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
   1262 F5 0E         [12] 4544 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
   1264 EC            [12] 4545 	mov	a,r4
   1265 95 17         [12] 4546 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   1267 F5 0F         [12] 4547 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
   1269 ED            [12] 4548 	mov	a,r5
   126A 95 18         [12] 4549 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   126C F5 10         [12] 4550 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
   126E EE            [12] 4551 	mov	a,r6
   126F 95 19         [12] 4552 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   1271 F5 11         [12] 4553 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
   1273                    4554 00120$:
                           4555 ;	../src/uart/src/uart_configure_auto_baud_calc.c:100: error_calc_br_with_smod_set = (calc_br_with_smod_set > baud_rate) ? (calc_br_with_smod_set - baud_rate) : (baud_rate - calc_br_with_smod_set);
   1273 C3            [12] 4556 	clr	c
   1274 EB            [12] 4557 	mov	a,r3
   1275 95 12         [12] 4558 	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
   1277 EC            [12] 4559 	mov	a,r4
   1278 95 13         [12] 4560 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   127A ED            [12] 4561 	mov	a,r5
   127B 95 14         [12] 4562 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   127D EE            [12] 4563 	mov	a,r6
   127E 95 15         [12] 4564 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   1280 50 17         [24] 4565 	jnc	00121$
   1282 E5 12         [12] 4566 	mov	a,_uart_configure_auto_baud_calc_sloc2_1_0
   1284 C3            [12] 4567 	clr	c
   1285 9B            [12] 4568 	subb	a,r3
   1286 F5 16         [12] 4569 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
   1288 E5 13         [12] 4570 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   128A 9C            [12] 4571 	subb	a,r4
   128B F5 17         [12] 4572 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
   128D E5 14         [12] 4573 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   128F 9D            [12] 4574 	subb	a,r5
   1290 F5 18         [12] 4575 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
   1292 E5 15         [12] 4576 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   1294 9E            [12] 4577 	subb	a,r6
   1295 F5 19         [12] 4578 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   1297 80 15         [24] 4579 	sjmp	00122$
   1299                    4580 00121$:
   1299 EB            [12] 4581 	mov	a,r3
   129A C3            [12] 4582 	clr	c
   129B 95 12         [12] 4583 	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
   129D F5 16         [12] 4584 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
   129F EC            [12] 4585 	mov	a,r4
   12A0 95 13         [12] 4586 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   12A2 F5 17         [12] 4587 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
   12A4 ED            [12] 4588 	mov	a,r5
   12A5 95 14         [12] 4589 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   12A7 F5 18         [12] 4590 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
   12A9 EE            [12] 4591 	mov	a,r6
   12AA 95 15         [12] 4592 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   12AC F5 19         [12] 4593 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   12AE                    4594 00122$:
                           4595 ;	../src/uart/src/uart_configure_auto_baud_calc.c:103: if(error_calc_br_with_smod_cleared < error_calc_br_with_smod_set)
   12AE C3            [12] 4596 	clr	c
   12AF E5 0E         [12] 4597 	mov	a,_uart_configure_auto_baud_calc_sloc1_1_0
   12B1 95 16         [12] 4598 	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
   12B3 E5 0F         [12] 4599 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   12B5 95 17         [12] 4600 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   12B7 E5 10         [12] 4601 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   12B9 95 18         [12] 4602 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   12BB E5 11         [12] 4603 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   12BD 95 19         [12] 4604 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   12BF 50 12         [24] 4605 	jnc	00105$
                           4606 ;	../src/uart/src/uart_configure_auto_baud_calc.c:105: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_CLEAR),
   12C1 8F 06         [24] 4607 	mov	ar6,r7
   12C3 53 06 FB      [24] 4608 	anl	ar6,#0xFB
                           4609 ;	../src/uart/src/uart_configure_auto_baud_calc.c:106: (uint16_t)th1_with_smod_cleared);
   12C6 90 00 66      [24] 4610 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   12C9 EA            [12] 4611 	mov	a,r2
   12CA F0            [24] 4612 	movx	@dptr,a
   12CB E4            [12] 4613 	clr	a
   12CC A3            [24] 4614 	inc	dptr
   12CD F0            [24] 4615 	movx	@dptr,a
   12CE 8E 82         [24] 4616 	mov	dpl,r6
   12D0 02 0C 9A      [24] 4617 	ljmp	_uart_configure_manual_baud_calc
   12D3                    4618 00105$:
                           4619 ;	../src/uart/src/uart_configure_auto_baud_calc.c:110: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_SET),
   12D3 74 FB         [12] 4620 	mov	a,#0xFB
   12D5 5F            [12] 4621 	anl	a,r7
   12D6 44 04         [12] 4622 	orl	a,#0x04
   12D8 FF            [12] 4623 	mov	r7,a
                           4624 ;	../src/uart/src/uart_configure_auto_baud_calc.c:111: (uint16_t)th1_with_smod_set);
   12D9 90 00 66      [24] 4625 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   12DC E9            [12] 4626 	mov	a,r1
   12DD F0            [24] 4627 	movx	@dptr,a
   12DE E4            [12] 4628 	clr	a
   12DF A3            [24] 4629 	inc	dptr
   12E0 F0            [24] 4630 	movx	@dptr,a
   12E1 8F 82         [24] 4631 	mov	dpl,r7
   12E3 02 0C 9A      [24] 4632 	ljmp	_uart_configure_manual_baud_calc
                           4633 ;------------------------------------------------------------
                           4634 ;Allocation info for local variables in function 'rtc2_configure'
                           4635 ;------------------------------------------------------------
                           4636 ;compare_value             Allocated with name '_rtc2_configure_PARM_2'
                           4637 ;rtc2_config_options       Allocated with name '_rtc2_configure_rtc2_config_options_1_230'
                           4638 ;------------------------------------------------------------
                           4639 ;	../src/rtc2/src/rtc2_configure.c:53: void rtc2_configure(unsigned char rtc2_config_options, unsigned int compare_value)
                           4640 ;	-----------------------------------------
                           4641 ;	 function rtc2_configure
                           4642 ;	-----------------------------------------
   12E6                    4643 _rtc2_configure:
   12E6 E5 82         [12] 4644 	mov	a,dpl
                           4645 ;	../src/rtc2/src/rtc2_configure.c:56: if(((rtc2_config_options & RTC2CON_COMPARE_MODE_MASK) == RTC2_CONFIG_OPTION_COMPARE_MODE_0_RESET_AT_IRQ) ||
   12E8 90 00 7F      [24] 4646 	mov	dptr,#_rtc2_configure_rtc2_config_options_1_230
   12EB F0            [24] 4647 	movx	@dptr,a
   12EC FF            [12] 4648 	mov	r7,a
   12ED 74 06         [12] 4649 	mov	a,#0x06
   12EF 5F            [12] 4650 	anl	a,r7
   12F0 FE            [12] 4651 	mov	r6,a
   12F1 BE 06 02      [24] 4652 	cjne	r6,#0x06,00109$
   12F4 80 07         [24] 4653 	sjmp	00101$
   12F6                    4654 00109$:
                           4655 ;	../src/rtc2/src/rtc2_configure.c:57: ((rtc2_config_options & RTC2CON_COMPARE_MODE_MASK) == RTC2_CONFIG_OPTION_COMPARE_MODE_1_WRAP_AT_IRQ))
   12F6 74 06         [12] 4656 	mov	a,#0x06
   12F8 5F            [12] 4657 	anl	a,r7
   12F9 FE            [12] 4658 	mov	r6,a
   12FA BE 04 0C      [24] 4659 	cjne	r6,#0x04,00102$
   12FD                    4660 00101$:
                           4661 ;	../src/rtc2/src/rtc2_configure.c:59: RTC2CMP0 = (unsigned char)compare_value;
   12FD 90 00 7D      [24] 4662 	mov	dptr,#_rtc2_configure_PARM_2
   1300 E0            [24] 4663 	movx	a,@dptr
   1301 FD            [12] 4664 	mov	r5,a
   1302 A3            [24] 4665 	inc	dptr
   1303 E0            [24] 4666 	movx	a,@dptr
   1304 FE            [12] 4667 	mov	r6,a
   1305 8D B4         [24] 4668 	mov	_RTC2CMP0,r5
                           4669 ;	../src/rtc2/src/rtc2_configure.c:60: RTC2CMP1 = (unsigned char)(compare_value >> 8);
   1307 8E B5         [24] 4670 	mov	_RTC2CMP1,r6
   1309                    4671 00102$:
                           4672 ;	../src/rtc2/src/rtc2_configure.c:64: RTC2CON = (RTC2CON & ~RTC2_CONFIG_OPTION_RTC2CON_MASK) | (rtc2_config_options & RTC2_CONFIG_OPTION_RTC2CON_MASK);
   1309 AE B3         [24] 4673 	mov	r6,_RTC2CON
   130B 53 06 F0      [24] 4674 	anl	ar6,#0xF0
   130E 53 07 0F      [24] 4675 	anl	ar7,#0x0F
   1311 EF            [12] 4676 	mov	a,r7
   1312 4E            [12] 4677 	orl	a,r6
   1313 F5 B3         [12] 4678 	mov	_RTC2CON,a
   1315 22            [24] 4679 	ret
                           4680 ;------------------------------------------------------------
                           4681 ;Allocation info for local variables in function 'radiobegin'
                           4682 ;------------------------------------------------------------
                           4683 ;setup                     Allocated with name '_radiobegin_setup_1_233'
                           4684 ;------------------------------------------------------------
                           4685 ;	../nRFLE.c:22: void radiobegin() {
                           4686 ;	-----------------------------------------
                           4687 ;	 function radiobegin
                           4688 ;	-----------------------------------------
   1316                    4689 _radiobegin:
                           4690 ;	../nRFLE.c:26: rf_spi_configure_enable();
   1316 12 01 C6      [24] 4691 	lcall	_rf_spi_configure_enable
                           4692 ;	../nRFLE.c:28: setup = 255; // setup_retr setRetries 15*16+15
   1319 90 00 80      [24] 4693 	mov	dptr,#_radiobegin_setup_1_233
   131C 74 FF         [12] 4694 	mov	a,#0xFF
   131E F0            [24] 4695 	movx	@dptr,a
                           4696 ;	../nRFLE.c:29: rf_write_register(RF_SETUP_RETR, &setup, 1);
   131F 90 00 08      [24] 4697 	mov	dptr,#_rf_write_register_PARM_2
   1322 74 80         [12] 4698 	mov	a,#_radiobegin_setup_1_233
   1324 F0            [24] 4699 	movx	@dptr,a
   1325 74 00         [12] 4700 	mov	a,#(_radiobegin_setup_1_233 >> 8)
   1327 A3            [24] 4701 	inc	dptr
   1328 F0            [24] 4702 	movx	@dptr,a
   1329 E4            [12] 4703 	clr	a
   132A A3            [24] 4704 	inc	dptr
   132B F0            [24] 4705 	movx	@dptr,a
   132C 90 00 0B      [24] 4706 	mov	dptr,#_rf_write_register_PARM_3
   132F 74 01         [12] 4707 	mov	a,#0x01
   1331 F0            [24] 4708 	movx	@dptr,a
   1332 E4            [12] 4709 	clr	a
   1333 A3            [24] 4710 	inc	dptr
   1334 F0            [24] 4711 	movx	@dptr,a
   1335 75 82 04      [24] 4712 	mov	dpl,#0x04
   1338 02 01 89      [24] 4713 	ljmp	_rf_write_register
                           4714 ;------------------------------------------------------------
                           4715 ;Allocation info for local variables in function 'setChannel'
                           4716 ;------------------------------------------------------------
                           4717 ;channel                   Allocated with name '_setChannel_channel_1_234'
                           4718 ;------------------------------------------------------------
                           4719 ;	../nRFLE.c:35: void setChannel(unsigned char channel){
                           4720 ;	-----------------------------------------
                           4721 ;	 function setChannel
                           4722 ;	-----------------------------------------
   133B                    4723 _setChannel:
   133B E5 82         [12] 4724 	mov	a,dpl
   133D 90 00 81      [24] 4725 	mov	dptr,#_setChannel_channel_1_234
   1340 F0            [24] 4726 	movx	@dptr,a
                           4727 ;	../nRFLE.c:36: rf_write_register(RF_RF_CH, &channel, 1);
   1341 90 00 08      [24] 4728 	mov	dptr,#_rf_write_register_PARM_2
   1344 74 81         [12] 4729 	mov	a,#_setChannel_channel_1_234
   1346 F0            [24] 4730 	movx	@dptr,a
   1347 74 00         [12] 4731 	mov	a,#(_setChannel_channel_1_234 >> 8)
   1349 A3            [24] 4732 	inc	dptr
   134A F0            [24] 4733 	movx	@dptr,a
   134B E4            [12] 4734 	clr	a
   134C A3            [24] 4735 	inc	dptr
   134D F0            [24] 4736 	movx	@dptr,a
   134E 90 00 0B      [24] 4737 	mov	dptr,#_rf_write_register_PARM_3
   1351 74 01         [12] 4738 	mov	a,#0x01
   1353 F0            [24] 4739 	movx	@dptr,a
   1354 E4            [12] 4740 	clr	a
   1355 A3            [24] 4741 	inc	dptr
   1356 F0            [24] 4742 	movx	@dptr,a
   1357 75 82 05      [24] 4743 	mov	dpl,#0x05
   135A 02 01 89      [24] 4744 	ljmp	_rf_write_register
                           4745 ;------------------------------------------------------------
                           4746 ;Allocation info for local variables in function 'setDataRate'
                           4747 ;------------------------------------------------------------
                           4748 ;speed                     Allocated with name '_setDataRate_speed_1_236'
                           4749 ;buffer                    Allocated with name '_setDataRate_buffer_1_237'
                           4750 ;------------------------------------------------------------
                           4751 ;	../nRFLE.c:41: void setDataRate(unsigned char speed){
                           4752 ;	-----------------------------------------
                           4753 ;	 function setDataRate
                           4754 ;	-----------------------------------------
   135D                    4755 _setDataRate:
   135D E5 82         [12] 4756 	mov	a,dpl
   135F 90 00 82      [24] 4757 	mov	dptr,#_setDataRate_speed_1_236
   1362 F0            [24] 4758 	movx	@dptr,a
                           4759 ;	../nRFLE.c:43: rf_read_register(RF_RF_SETUP,&buffer,1);
   1363 90 00 28      [24] 4760 	mov	dptr,#_rf_read_register_PARM_2
   1366 74 83         [12] 4761 	mov	a,#_setDataRate_buffer_1_237
   1368 F0            [24] 4762 	movx	@dptr,a
   1369 74 00         [12] 4763 	mov	a,#(_setDataRate_buffer_1_237 >> 8)
   136B A3            [24] 4764 	inc	dptr
   136C F0            [24] 4765 	movx	@dptr,a
   136D E4            [12] 4766 	clr	a
   136E A3            [24] 4767 	inc	dptr
   136F F0            [24] 4768 	movx	@dptr,a
   1370 90 00 2B      [24] 4769 	mov	dptr,#_rf_read_register_PARM_3
   1373 74 01         [12] 4770 	mov	a,#0x01
   1375 F0            [24] 4771 	movx	@dptr,a
   1376 E4            [12] 4772 	clr	a
   1377 A3            [24] 4773 	inc	dptr
   1378 F0            [24] 4774 	movx	@dptr,a
   1379 75 82 06      [24] 4775 	mov	dpl,#0x06
   137C 12 04 3D      [24] 4776 	lcall	_rf_read_register
                           4777 ;	../nRFLE.c:45: buffer &= ~(_BV(RF_DR_LOW) | _BV(RF_DR_HIGH)) ;
   137F 90 00 83      [24] 4778 	mov	dptr,#_setDataRate_buffer_1_237
   1382 E0            [24] 4779 	movx	a,@dptr
   1383 54 D7         [12] 4780 	anl	a,#0xD7
   1385 F0            [24] 4781 	movx	@dptr,a
                           4782 ;	../nRFLE.c:47: if( speed == 1 )	 buffer |= _BV(RF_DR_LOW);
   1386 90 00 82      [24] 4783 	mov	dptr,#_setDataRate_speed_1_236
   1389 E0            [24] 4784 	movx	a,@dptr
   138A FF            [12] 4785 	mov	r7,a
   138B BF 01 0A      [24] 4786 	cjne	r7,#0x01,00104$
   138E 90 00 83      [24] 4787 	mov	dptr,#_setDataRate_buffer_1_237
   1391 E0            [24] 4788 	movx	a,@dptr
   1392 FE            [12] 4789 	mov	r6,a
   1393 44 20         [12] 4790 	orl	a,#0x20
   1395 F0            [24] 4791 	movx	@dptr,a
   1396 80 0B         [24] 4792 	sjmp	00105$
   1398                    4793 00104$:
                           4794 ;	../nRFLE.c:49: else if ( speed == 3 ) buffer |= _BV(RF_DR_HIGH);
   1398 BF 03 08      [24] 4795 	cjne	r7,#0x03,00105$
   139B 90 00 83      [24] 4796 	mov	dptr,#_setDataRate_buffer_1_237
   139E E0            [24] 4797 	movx	a,@dptr
   139F FF            [12] 4798 	mov	r7,a
   13A0 44 08         [12] 4799 	orl	a,#0x08
   13A2 F0            [24] 4800 	movx	@dptr,a
   13A3                    4801 00105$:
                           4802 ;	../nRFLE.c:51: rf_write_register(RF_RF_SETUP,&buffer,1 ) ;
   13A3 90 00 08      [24] 4803 	mov	dptr,#_rf_write_register_PARM_2
   13A6 74 83         [12] 4804 	mov	a,#_setDataRate_buffer_1_237
   13A8 F0            [24] 4805 	movx	@dptr,a
   13A9 74 00         [12] 4806 	mov	a,#(_setDataRate_buffer_1_237 >> 8)
   13AB A3            [24] 4807 	inc	dptr
   13AC F0            [24] 4808 	movx	@dptr,a
   13AD E4            [12] 4809 	clr	a
   13AE A3            [24] 4810 	inc	dptr
   13AF F0            [24] 4811 	movx	@dptr,a
   13B0 90 00 0B      [24] 4812 	mov	dptr,#_rf_write_register_PARM_3
   13B3 74 01         [12] 4813 	mov	a,#0x01
   13B5 F0            [24] 4814 	movx	@dptr,a
   13B6 E4            [12] 4815 	clr	a
   13B7 A3            [24] 4816 	inc	dptr
   13B8 F0            [24] 4817 	movx	@dptr,a
   13B9 75 82 06      [24] 4818 	mov	dpl,#0x06
   13BC 02 01 89      [24] 4819 	ljmp	_rf_write_register
                           4820 ;------------------------------------------------------------
                           4821 ;Allocation info for local variables in function 'setAutoAck'
                           4822 ;------------------------------------------------------------
                           4823 ;enable                    Allocated with name '_setAutoAck_enable_1_238'
                           4824 ;buffer                    Allocated with name '_setAutoAck_buffer_1_239'
                           4825 ;------------------------------------------------------------
                           4826 ;	../nRFLE.c:56: void setAutoAck(unsigned char enable)
                           4827 ;	-----------------------------------------
                           4828 ;	 function setAutoAck
                           4829 ;	-----------------------------------------
   13BF                    4830 _setAutoAck:
   13BF E5 82         [12] 4831 	mov	a,dpl
                           4832 ;	../nRFLE.c:60: if (enable==1) buffer=63;
   13C1 90 00 84      [24] 4833 	mov	dptr,#_setAutoAck_enable_1_238
   13C4 F0            [24] 4834 	movx	@dptr,a
   13C5 FF            [12] 4835 	mov	r7,a
   13C6 BF 01 08      [24] 4836 	cjne	r7,#0x01,00102$
   13C9 90 00 85      [24] 4837 	mov	dptr,#_setAutoAck_buffer_1_239
   13CC 74 3F         [12] 4838 	mov	a,#0x3F
   13CE F0            [24] 4839 	movx	@dptr,a
   13CF 80 05         [24] 4840 	sjmp	00103$
   13D1                    4841 00102$:
                           4842 ;	../nRFLE.c:61: else        buffer=0;
   13D1 90 00 85      [24] 4843 	mov	dptr,#_setAutoAck_buffer_1_239
   13D4 E4            [12] 4844 	clr	a
   13D5 F0            [24] 4845 	movx	@dptr,a
   13D6                    4846 00103$:
                           4847 ;	../nRFLE.c:62: rf_write_register(RF_EN_AA, &buffer,1);
   13D6 90 00 08      [24] 4848 	mov	dptr,#_rf_write_register_PARM_2
   13D9 74 85         [12] 4849 	mov	a,#_setAutoAck_buffer_1_239
   13DB F0            [24] 4850 	movx	@dptr,a
   13DC 74 00         [12] 4851 	mov	a,#(_setAutoAck_buffer_1_239 >> 8)
   13DE A3            [24] 4852 	inc	dptr
   13DF F0            [24] 4853 	movx	@dptr,a
   13E0 E4            [12] 4854 	clr	a
   13E1 A3            [24] 4855 	inc	dptr
   13E2 F0            [24] 4856 	movx	@dptr,a
   13E3 90 00 0B      [24] 4857 	mov	dptr,#_rf_write_register_PARM_3
   13E6 74 01         [12] 4858 	mov	a,#0x01
   13E8 F0            [24] 4859 	movx	@dptr,a
   13E9 E4            [12] 4860 	clr	a
   13EA A3            [24] 4861 	inc	dptr
   13EB F0            [24] 4862 	movx	@dptr,a
   13EC 75 82 01      [24] 4863 	mov	dpl,#0x01
   13EF 02 01 89      [24] 4864 	ljmp	_rf_write_register
                           4865 ;------------------------------------------------------------
                           4866 ;Allocation info for local variables in function 'setCRCLength'
                           4867 ;------------------------------------------------------------
                           4868 ;length                    Allocated with name '_setCRCLength_length_1_240'
                           4869 ;buffer                    Allocated with name '_setCRCLength_buffer_1_241'
                           4870 ;------------------------------------------------------------
                           4871 ;	../nRFLE.c:67: void setCRCLength(unsigned char length)
                           4872 ;	-----------------------------------------
                           4873 ;	 function setCRCLength
                           4874 ;	-----------------------------------------
   13F2                    4875 _setCRCLength:
   13F2 E5 82         [12] 4876 	mov	a,dpl
   13F4 90 00 86      [24] 4877 	mov	dptr,#_setCRCLength_length_1_240
   13F7 F0            [24] 4878 	movx	@dptr,a
                           4879 ;	../nRFLE.c:71: rf_read_register(RF_CONFIG,&buffer,1);
   13F8 90 00 28      [24] 4880 	mov	dptr,#_rf_read_register_PARM_2
   13FB 74 87         [12] 4881 	mov	a,#_setCRCLength_buffer_1_241
   13FD F0            [24] 4882 	movx	@dptr,a
   13FE 74 00         [12] 4883 	mov	a,#(_setCRCLength_buffer_1_241 >> 8)
   1400 A3            [24] 4884 	inc	dptr
   1401 F0            [24] 4885 	movx	@dptr,a
   1402 E4            [12] 4886 	clr	a
   1403 A3            [24] 4887 	inc	dptr
   1404 F0            [24] 4888 	movx	@dptr,a
   1405 90 00 2B      [24] 4889 	mov	dptr,#_rf_read_register_PARM_3
   1408 74 01         [12] 4890 	mov	a,#0x01
   140A F0            [24] 4891 	movx	@dptr,a
   140B E4            [12] 4892 	clr	a
   140C A3            [24] 4893 	inc	dptr
   140D F0            [24] 4894 	movx	@dptr,a
   140E 75 82 00      [24] 4895 	mov	dpl,#0x00
   1411 12 04 3D      [24] 4896 	lcall	_rf_read_register
                           4897 ;	../nRFLE.c:73: buffer = buffer & ~( _BV(RF_CRCO) | _BV(RF_EN_CRC)) ;
   1414 90 00 87      [24] 4898 	mov	dptr,#_setCRCLength_buffer_1_241
   1417 E0            [24] 4899 	movx	a,@dptr
   1418 54 F3         [12] 4900 	anl	a,#0xF3
   141A F0            [24] 4901 	movx	@dptr,a
                           4902 ;	../nRFLE.c:75: if (length==1) buffer |= _BV(RF_EN_CRC);
   141B 90 00 86      [24] 4903 	mov	dptr,#_setCRCLength_length_1_240
   141E E0            [24] 4904 	movx	a,@dptr
   141F FF            [12] 4905 	mov	r7,a
   1420 BF 01 0A      [24] 4906 	cjne	r7,#0x01,00104$
   1423 90 00 87      [24] 4907 	mov	dptr,#_setCRCLength_buffer_1_241
   1426 E0            [24] 4908 	movx	a,@dptr
   1427 FE            [12] 4909 	mov	r6,a
   1428 44 08         [12] 4910 	orl	a,#0x08
   142A F0            [24] 4911 	movx	@dptr,a
   142B 80 0B         [24] 4912 	sjmp	00105$
   142D                    4913 00104$:
                           4914 ;	../nRFLE.c:76: else if (length==2) buffer |= _BV(RF_EN_CRC) | _BV( RF_CRCO );
   142D BF 02 08      [24] 4915 	cjne	r7,#0x02,00105$
   1430 90 00 87      [24] 4916 	mov	dptr,#_setCRCLength_buffer_1_241
   1433 E0            [24] 4917 	movx	a,@dptr
   1434 FF            [12] 4918 	mov	r7,a
   1435 44 0C         [12] 4919 	orl	a,#0x0C
   1437 F0            [24] 4920 	movx	@dptr,a
   1438                    4921 00105$:
                           4922 ;	../nRFLE.c:78: buffer |=1<<PWR_UP;
   1438 90 00 87      [24] 4923 	mov	dptr,#_setCRCLength_buffer_1_241
   143B E0            [24] 4924 	movx	a,@dptr
   143C 44 02         [12] 4925 	orl	a,#0x02
   143E F0            [24] 4926 	movx	@dptr,a
                           4927 ;	../nRFLE.c:80: rf_write_register(RF_CONFIG,&buffer,1 ) ;
   143F 90 00 08      [24] 4928 	mov	dptr,#_rf_write_register_PARM_2
   1442 74 87         [12] 4929 	mov	a,#_setCRCLength_buffer_1_241
   1444 F0            [24] 4930 	movx	@dptr,a
   1445 74 00         [12] 4931 	mov	a,#(_setCRCLength_buffer_1_241 >> 8)
   1447 A3            [24] 4932 	inc	dptr
   1448 F0            [24] 4933 	movx	@dptr,a
   1449 E4            [12] 4934 	clr	a
   144A A3            [24] 4935 	inc	dptr
   144B F0            [24] 4936 	movx	@dptr,a
   144C 90 00 0B      [24] 4937 	mov	dptr,#_rf_write_register_PARM_3
   144F 74 01         [12] 4938 	mov	a,#0x01
   1451 F0            [24] 4939 	movx	@dptr,a
   1452 E4            [12] 4940 	clr	a
   1453 A3            [24] 4941 	inc	dptr
   1454 F0            [24] 4942 	movx	@dptr,a
   1455 75 82 00      [24] 4943 	mov	dpl,#0x00
   1458 02 01 89      [24] 4944 	ljmp	_rf_write_register
                           4945 ;------------------------------------------------------------
                           4946 ;Allocation info for local variables in function 'setPALevel'
                           4947 ;------------------------------------------------------------
                           4948 ;level                     Allocated with name '_setPALevel_level_1_242'
                           4949 ;setup                     Allocated with name '_setPALevel_setup_1_243'
                           4950 ;------------------------------------------------------------
                           4951 ;	../nRFLE.c:84: void setPALevel(unsigned char level)
                           4952 ;	-----------------------------------------
                           4953 ;	 function setPALevel
                           4954 ;	-----------------------------------------
   145B                    4955 _setPALevel:
                           4956 ;	../nRFLE.c:88: rf_read_register(RF_RF_SETUP,&setup,1) ;
   145B 90 00 28      [24] 4957 	mov	dptr,#_rf_read_register_PARM_2
   145E 74 88         [12] 4958 	mov	a,#_setPALevel_setup_1_243
   1460 F0            [24] 4959 	movx	@dptr,a
   1461 74 00         [12] 4960 	mov	a,#(_setPALevel_setup_1_243 >> 8)
   1463 A3            [24] 4961 	inc	dptr
   1464 F0            [24] 4962 	movx	@dptr,a
   1465 E4            [12] 4963 	clr	a
   1466 A3            [24] 4964 	inc	dptr
   1467 F0            [24] 4965 	movx	@dptr,a
   1468 90 00 2B      [24] 4966 	mov	dptr,#_rf_read_register_PARM_3
   146B 74 01         [12] 4967 	mov	a,#0x01
   146D F0            [24] 4968 	movx	@dptr,a
   146E E4            [12] 4969 	clr	a
   146F A3            [24] 4970 	inc	dptr
   1470 F0            [24] 4971 	movx	@dptr,a
   1471 75 82 06      [24] 4972 	mov	dpl,#0x06
   1474 12 04 3D      [24] 4973 	lcall	_rf_read_register
                           4974 ;	../nRFLE.c:90: setup &= ~(_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH)) ;
   1477 90 00 88      [24] 4975 	mov	dptr,#_setPALevel_setup_1_243
   147A E0            [24] 4976 	movx	a,@dptr
   147B 54 F9         [12] 4977 	anl	a,#0xF9
   147D F0            [24] 4978 	movx	@dptr,a
                           4979 ;	../nRFLE.c:93: rf_write_register(RF_RF_SETUP,&setup,1);
   147E 90 00 08      [24] 4980 	mov	dptr,#_rf_write_register_PARM_2
   1481 74 88         [12] 4981 	mov	a,#_setPALevel_setup_1_243
   1483 F0            [24] 4982 	movx	@dptr,a
   1484 74 00         [12] 4983 	mov	a,#(_setPALevel_setup_1_243 >> 8)
   1486 A3            [24] 4984 	inc	dptr
   1487 F0            [24] 4985 	movx	@dptr,a
   1488 E4            [12] 4986 	clr	a
   1489 A3            [24] 4987 	inc	dptr
   148A F0            [24] 4988 	movx	@dptr,a
   148B 90 00 0B      [24] 4989 	mov	dptr,#_rf_write_register_PARM_3
   148E 74 01         [12] 4990 	mov	a,#0x01
   1490 F0            [24] 4991 	movx	@dptr,a
   1491 E4            [12] 4992 	clr	a
   1492 A3            [24] 4993 	inc	dptr
   1493 F0            [24] 4994 	movx	@dptr,a
   1494 75 82 06      [24] 4995 	mov	dpl,#0x06
   1497 02 01 89      [24] 4996 	ljmp	_rf_write_register
                           4997 ;------------------------------------------------------------
                           4998 ;Allocation info for local variables in function 'openAllPipe'
                           4999 ;------------------------------------------------------------
                           5000 ;buffer                    Allocated with name '_openAllPipe_buffer_1_244'
                           5001 ;setup                     Allocated with name '_openAllPipe_setup_1_244'
                           5002 ;------------------------------------------------------------
                           5003 ;	../nRFLE.c:101: void openAllPipe()
                           5004 ;	-----------------------------------------
                           5005 ;	 function openAllPipe
                           5006 ;	-----------------------------------------
   149A                    5007 _openAllPipe:
                           5008 ;	../nRFLE.c:106: buffer[1]=adr1;
   149A 90 00 8A      [24] 5009 	mov	dptr,#(_openAllPipe_buffer_1_244 + 0x0001)
   149D 74 F0         [12] 5010 	mov	a,#0xF0
   149F F0            [24] 5011 	movx	@dptr,a
                           5012 ;	../nRFLE.c:107: buffer[2]=adr2;
   14A0 90 00 8B      [24] 5013 	mov	dptr,#(_openAllPipe_buffer_1_244 + 0x0002)
   14A3 74 F0         [12] 5014 	mov	a,#0xF0
   14A5 F0            [24] 5015 	movx	@dptr,a
                           5016 ;	../nRFLE.c:108: buffer[3]=adr3;
   14A6 90 00 8C      [24] 5017 	mov	dptr,#(_openAllPipe_buffer_1_244 + 0x0003)
   14A9 74 F0         [12] 5018 	mov	a,#0xF0
   14AB F0            [24] 5019 	movx	@dptr,a
                           5020 ;	../nRFLE.c:109: buffer[4]=adr4;
   14AC 90 00 8D      [24] 5021 	mov	dptr,#(_openAllPipe_buffer_1_244 + 0x0004)
   14AF 74 F0         [12] 5022 	mov	a,#0xF0
   14B1 F0            [24] 5023 	movx	@dptr,a
                           5024 ;	../nRFLE.c:111: setup = 2; // en_rxaddr ,биты включения каналов B00000010 на прием
   14B2 90 00 8E      [24] 5025 	mov	dptr,#_openAllPipe_setup_1_244
   14B5 74 02         [12] 5026 	mov	a,#0x02
   14B7 F0            [24] 5027 	movx	@dptr,a
                           5028 ;	../nRFLE.c:112: rf_write_register(RF_EN_RXADDR, &setup, 1);
   14B8 90 00 08      [24] 5029 	mov	dptr,#_rf_write_register_PARM_2
   14BB 74 8E         [12] 5030 	mov	a,#_openAllPipe_setup_1_244
   14BD F0            [24] 5031 	movx	@dptr,a
   14BE 74 00         [12] 5032 	mov	a,#(_openAllPipe_setup_1_244 >> 8)
   14C0 A3            [24] 5033 	inc	dptr
   14C1 F0            [24] 5034 	movx	@dptr,a
   14C2 E4            [12] 5035 	clr	a
   14C3 A3            [24] 5036 	inc	dptr
   14C4 F0            [24] 5037 	movx	@dptr,a
   14C5 90 00 0B      [24] 5038 	mov	dptr,#_rf_write_register_PARM_3
   14C8 74 01         [12] 5039 	mov	a,#0x01
   14CA F0            [24] 5040 	movx	@dptr,a
   14CB E4            [12] 5041 	clr	a
   14CC A3            [24] 5042 	inc	dptr
   14CD F0            [24] 5043 	movx	@dptr,a
   14CE 75 82 02      [24] 5044 	mov	dpl,#0x02
   14D1 12 01 89      [24] 5045 	lcall	_rf_write_register
                           5046 ;	../nRFLE.c:115: buffer[0]=0xD2;
   14D4 90 00 89      [24] 5047 	mov	dptr,#_openAllPipe_buffer_1_244
   14D7 74 D2         [12] 5048 	mov	a,#0xD2
   14D9 F0            [24] 5049 	movx	@dptr,a
                           5050 ;	../nRFLE.c:117: rf_write_register(RF_RX_ADDR_P0,buffer,5);
   14DA 90 00 08      [24] 5051 	mov	dptr,#_rf_write_register_PARM_2
   14DD 74 89         [12] 5052 	mov	a,#_openAllPipe_buffer_1_244
   14DF F0            [24] 5053 	movx	@dptr,a
   14E0 74 00         [12] 5054 	mov	a,#(_openAllPipe_buffer_1_244 >> 8)
   14E2 A3            [24] 5055 	inc	dptr
   14E3 F0            [24] 5056 	movx	@dptr,a
   14E4 E4            [12] 5057 	clr	a
   14E5 A3            [24] 5058 	inc	dptr
   14E6 F0            [24] 5059 	movx	@dptr,a
   14E7 90 00 0B      [24] 5060 	mov	dptr,#_rf_write_register_PARM_3
   14EA 74 05         [12] 5061 	mov	a,#0x05
   14EC F0            [24] 5062 	movx	@dptr,a
   14ED E4            [12] 5063 	clr	a
   14EE A3            [24] 5064 	inc	dptr
   14EF F0            [24] 5065 	movx	@dptr,a
   14F0 75 82 0A      [24] 5066 	mov	dpl,#0x0A
   14F3 12 01 89      [24] 5067 	lcall	_rf_write_register
                           5068 ;	../nRFLE.c:118: rf_write_register(RF_TX_ADDR,buffer,5);
   14F6 90 00 08      [24] 5069 	mov	dptr,#_rf_write_register_PARM_2
   14F9 74 89         [12] 5070 	mov	a,#_openAllPipe_buffer_1_244
   14FB F0            [24] 5071 	movx	@dptr,a
   14FC 74 00         [12] 5072 	mov	a,#(_openAllPipe_buffer_1_244 >> 8)
   14FE A3            [24] 5073 	inc	dptr
   14FF F0            [24] 5074 	movx	@dptr,a
   1500 E4            [12] 5075 	clr	a
   1501 A3            [24] 5076 	inc	dptr
   1502 F0            [24] 5077 	movx	@dptr,a
   1503 90 00 0B      [24] 5078 	mov	dptr,#_rf_write_register_PARM_3
   1506 74 05         [12] 5079 	mov	a,#0x05
   1508 F0            [24] 5080 	movx	@dptr,a
   1509 E4            [12] 5081 	clr	a
   150A A3            [24] 5082 	inc	dptr
   150B F0            [24] 5083 	movx	@dptr,a
   150C 75 82 10      [24] 5084 	mov	dpl,#0x10
   150F 12 01 89      [24] 5085 	lcall	_rf_write_register
                           5086 ;	../nRFLE.c:122: buffer[0]=0xE1;
   1512 90 00 89      [24] 5087 	mov	dptr,#_openAllPipe_buffer_1_244
   1515 74 E1         [12] 5088 	mov	a,#0xE1
   1517 F0            [24] 5089 	movx	@dptr,a
                           5090 ;	../nRFLE.c:124: rf_write_register(RF_RX_ADDR_P0+1,buffer,5);
   1518 90 00 08      [24] 5091 	mov	dptr,#_rf_write_register_PARM_2
   151B 74 89         [12] 5092 	mov	a,#_openAllPipe_buffer_1_244
   151D F0            [24] 5093 	movx	@dptr,a
   151E 74 00         [12] 5094 	mov	a,#(_openAllPipe_buffer_1_244 >> 8)
   1520 A3            [24] 5095 	inc	dptr
   1521 F0            [24] 5096 	movx	@dptr,a
   1522 E4            [12] 5097 	clr	a
   1523 A3            [24] 5098 	inc	dptr
   1524 F0            [24] 5099 	movx	@dptr,a
   1525 90 00 0B      [24] 5100 	mov	dptr,#_rf_write_register_PARM_3
   1528 74 05         [12] 5101 	mov	a,#0x05
   152A F0            [24] 5102 	movx	@dptr,a
   152B E4            [12] 5103 	clr	a
   152C A3            [24] 5104 	inc	dptr
   152D F0            [24] 5105 	movx	@dptr,a
   152E 75 82 0B      [24] 5106 	mov	dpl,#0x0B
   1531 12 01 89      [24] 5107 	lcall	_rf_write_register
                           5108 ;	../nRFLE.c:126: setup=32; //
   1534 90 00 8E      [24] 5109 	mov	dptr,#_openAllPipe_setup_1_244
   1537 74 20         [12] 5110 	mov	a,#0x20
   1539 F0            [24] 5111 	movx	@dptr,a
                           5112 ;	../nRFLE.c:127: rf_write_register(RF_RX_PW_P0+1,&setup,1);
   153A 90 00 08      [24] 5113 	mov	dptr,#_rf_write_register_PARM_2
   153D 74 8E         [12] 5114 	mov	a,#_openAllPipe_setup_1_244
   153F F0            [24] 5115 	movx	@dptr,a
   1540 74 00         [12] 5116 	mov	a,#(_openAllPipe_setup_1_244 >> 8)
   1542 A3            [24] 5117 	inc	dptr
   1543 F0            [24] 5118 	movx	@dptr,a
   1544 E4            [12] 5119 	clr	a
   1545 A3            [24] 5120 	inc	dptr
   1546 F0            [24] 5121 	movx	@dptr,a
   1547 90 00 0B      [24] 5122 	mov	dptr,#_rf_write_register_PARM_3
   154A 74 01         [12] 5123 	mov	a,#0x01
   154C F0            [24] 5124 	movx	@dptr,a
   154D E4            [12] 5125 	clr	a
   154E A3            [24] 5126 	inc	dptr
   154F F0            [24] 5127 	movx	@dptr,a
   1550 75 82 12      [24] 5128 	mov	dpl,#0x12
   1553 02 01 89      [24] 5129 	ljmp	_rf_write_register
                           5130 ;------------------------------------------------------------
                           5131 ;Allocation info for local variables in function 'isr_ifp'
                           5132 ;------------------------------------------------------------
                           5133 ;	main.c:50: interrupt_isr_ifp()
                           5134 ;	-----------------------------------------
                           5135 ;	 function isr_ifp
                           5136 ;	-----------------------------------------
   1556                    5137 _isr_ifp:
   1556 C0 21         [24] 5138 	push	bits
   1558 C0 E0         [24] 5139 	push	acc
   155A C0 F0         [24] 5140 	push	b
   155C C0 82         [24] 5141 	push	dpl
   155E C0 83         [24] 5142 	push	dph
   1560 C0 07         [24] 5143 	push	(0+7)
   1562 C0 06         [24] 5144 	push	(0+6)
   1564 C0 05         [24] 5145 	push	(0+5)
   1566 C0 04         [24] 5146 	push	(0+4)
   1568 C0 03         [24] 5147 	push	(0+3)
   156A C0 02         [24] 5148 	push	(0+2)
   156C C0 01         [24] 5149 	push	(0+1)
   156E C0 00         [24] 5150 	push	(0+0)
   1570 C0 D0         [24] 5151 	push	psw
   1572 75 D0 00      [24] 5152 	mov	psw,#0x00
                           5153 ;	main.c:52: timer1_stop();
   1575 C2 8E         [12] 5154 	clr _TCON_SB_TR1 
                           5155 ;	main.c:53: if(clientnf.countPWM !=0) {
   1577 90 00 90      [24] 5156 	mov	dptr,#(_clientnf + 0x0001)
   157A E0            [24] 5157 	movx	a,@dptr
   157B FE            [12] 5158 	mov	r6,a
   157C A3            [24] 5159 	inc	dptr
   157D E0            [24] 5160 	movx	a,@dptr
   157E FF            [12] 5161 	mov	r7,a
   157F 4E            [12] 5162 	orl	a,r6
   1580 60 3F         [24] 5163 	jz	00102$
                           5164 ;	main.c:55: timer1_set_t1_val(65535-DIMSTART*(DIMMERSTEP-clientnf.countPWM) );
   1582 74 64         [12] 5165 	mov	a,#0x64
   1584 C3            [12] 5166 	clr	c
   1585 9E            [12] 5167 	subb	a,r6
   1586 FE            [12] 5168 	mov	r6,a
   1587 E4            [12] 5169 	clr	a
   1588 9F            [12] 5170 	subb	a,r7
   1589 FF            [12] 5171 	mov	r7,a
   158A 90 00 D2      [24] 5172 	mov	dptr,#__mullong_PARM_2
   158D EE            [12] 5173 	mov	a,r6
   158E F0            [24] 5174 	movx	@dptr,a
   158F EF            [12] 5175 	mov	a,r7
   1590 A3            [24] 5176 	inc	dptr
   1591 F0            [24] 5177 	movx	@dptr,a
   1592 EF            [12] 5178 	mov	a,r7
   1593 33            [12] 5179 	rlc	a
   1594 95 E0         [12] 5180 	subb	a,acc
   1596 A3            [24] 5181 	inc	dptr
   1597 F0            [24] 5182 	movx	@dptr,a
   1598 A3            [24] 5183 	inc	dptr
   1599 F0            [24] 5184 	movx	@dptr,a
   159A 90 00 85      [24] 5185 	mov	dptr,#(0x85&0x00ff)
   159D E4            [12] 5186 	clr	a
   159E F5 F0         [12] 5187 	mov	b,a
   15A0 12 19 EF      [24] 5188 	lcall	__mullong
   15A3 AC 82         [24] 5189 	mov	r4,dpl
   15A5 AD 83         [24] 5190 	mov	r5,dph
   15A7 AE F0         [24] 5191 	mov	r6,b
   15A9 FF            [12] 5192 	mov	r7,a
   15AA 74 FF         [12] 5193 	mov	a,#0xFF
   15AC C3            [12] 5194 	clr	c
   15AD 9C            [12] 5195 	subb	a,r4
   15AE FC            [12] 5196 	mov	r4,a
   15AF 74 FF         [12] 5197 	mov	a,#0xFF
   15B1 9D            [12] 5198 	subb	a,r5
   15B2 FD            [12] 5199 	mov	r5,a
   15B3 E4            [12] 5200 	clr	a
   15B4 9E            [12] 5201 	subb	a,r6
   15B5 FE            [12] 5202 	mov	r6,a
   15B6 E4            [12] 5203 	clr	a
   15B7 9F            [12] 5204 	subb	a,r7
   15B8 FF            [12] 5205 	mov	r7,a
   15B9 8C 8B         [24] 5206 	mov	((_T1 >> 0) & 0xFF),r4
   15BB 8D 8D         [24] 5207 	mov	((_T1 >> 8) & 0xFF),r5
                           5208 ;	main.c:57: timer1_run();
   15BD D2 8E         [12] 5209 	setb _TCON_SB_TR1 
   15BF 80 06         [24] 5210 	sjmp	00103$
   15C1                    5211 00102$:
                           5212 ;	main.c:59: else gpio_pin_val_clear(DIMMPIN);
   15C1 75 82 02      [24] 5213 	mov	dpl,#0x02
   15C4 12 08 1E      [24] 5214 	lcall	_gpio_pin_val_clear
   15C7                    5215 00103$:
                           5216 ;	main.c:60: stdimm=1;
   15C7 90 00 A1      [24] 5217 	mov	dptr,#_stdimm
   15CA 74 01         [12] 5218 	mov	a,#0x01
   15CC F0            [24] 5219 	movx	@dptr,a
   15CD D0 D0         [24] 5220 	pop	psw
   15CF D0 00         [24] 5221 	pop	(0+0)
   15D1 D0 01         [24] 5222 	pop	(0+1)
   15D3 D0 02         [24] 5223 	pop	(0+2)
   15D5 D0 03         [24] 5224 	pop	(0+3)
   15D7 D0 04         [24] 5225 	pop	(0+4)
   15D9 D0 05         [24] 5226 	pop	(0+5)
   15DB D0 06         [24] 5227 	pop	(0+6)
   15DD D0 07         [24] 5228 	pop	(0+7)
   15DF D0 83         [24] 5229 	pop	dph
   15E1 D0 82         [24] 5230 	pop	dpl
   15E3 D0 F0         [24] 5231 	pop	b
   15E5 D0 E0         [24] 5232 	pop	acc
   15E7 D0 21         [24] 5233 	pop	bits
   15E9 32            [24] 5234 	reti
                           5235 ;------------------------------------------------------------
                           5236 ;Allocation info for local variables in function 'isr_t1'
                           5237 ;------------------------------------------------------------
                           5238 ;	main.c:64: interrupt_isr_t1() {
                           5239 ;	-----------------------------------------
                           5240 ;	 function isr_t1
                           5241 ;	-----------------------------------------
   15EA                    5242 _isr_t1:
   15EA C0 21         [24] 5243 	push	bits
   15EC C0 E0         [24] 5244 	push	acc
   15EE C0 F0         [24] 5245 	push	b
   15F0 C0 82         [24] 5246 	push	dpl
   15F2 C0 83         [24] 5247 	push	dph
   15F4 C0 07         [24] 5248 	push	(0+7)
   15F6 C0 06         [24] 5249 	push	(0+6)
   15F8 C0 05         [24] 5250 	push	(0+5)
   15FA C0 04         [24] 5251 	push	(0+4)
   15FC C0 03         [24] 5252 	push	(0+3)
   15FE C0 02         [24] 5253 	push	(0+2)
   1600 C0 01         [24] 5254 	push	(0+1)
   1602 C0 00         [24] 5255 	push	(0+0)
   1604 C0 D0         [24] 5256 	push	psw
   1606 75 D0 00      [24] 5257 	mov	psw,#0x00
                           5258 ;	main.c:66: if (stdimm) {
   1609 90 00 A1      [24] 5259 	mov	dptr,#_stdimm
   160C E0            [24] 5260 	movx	a,@dptr
   160D FF            [12] 5261 	mov	r7,a
   160E 60 13         [24] 5262 	jz	00102$
                           5263 ;	main.c:67: gpio_pin_val_set(DIMMPIN); 
   1610 75 82 02      [24] 5264 	mov	dpl,#0x02
   1613 12 08 89      [24] 5265 	lcall	_gpio_pin_val_set
                           5266 ;	main.c:68: timer1_set_t1_val(65535-100);
   1616 75 8B 9B      [24] 5267 	mov	((_T1 >> 0) & 0xFF),#0x9B
   1619 75 8D FF      [24] 5268 	mov	((_T1 >> 8) & 0xFF),#0xFF
                           5269 ;	main.c:69: stdimm=0;
   161C 90 00 A1      [24] 5270 	mov	dptr,#_stdimm
   161F E4            [12] 5271 	clr	a
   1620 F0            [24] 5272 	movx	@dptr,a
   1621 80 06         [24] 5273 	sjmp	00104$
   1623                    5274 00102$:
                           5275 ;	main.c:71: gpio_pin_val_clear(DIMMPIN);
   1623 75 82 02      [24] 5276 	mov	dpl,#0x02
   1626 12 08 1E      [24] 5277 	lcall	_gpio_pin_val_clear
   1629                    5278 00104$:
   1629 D0 D0         [24] 5279 	pop	psw
   162B D0 00         [24] 5280 	pop	(0+0)
   162D D0 01         [24] 5281 	pop	(0+1)
   162F D0 02         [24] 5282 	pop	(0+2)
   1631 D0 03         [24] 5283 	pop	(0+3)
   1633 D0 04         [24] 5284 	pop	(0+4)
   1635 D0 05         [24] 5285 	pop	(0+5)
   1637 D0 06         [24] 5286 	pop	(0+6)
   1639 D0 07         [24] 5287 	pop	(0+7)
   163B D0 83         [24] 5288 	pop	dph
   163D D0 82         [24] 5289 	pop	dpl
   163F D0 F0         [24] 5290 	pop	b
   1641 D0 E0         [24] 5291 	pop	acc
   1643 D0 21         [24] 5292 	pop	bits
   1645 32            [24] 5293 	reti
                           5294 ;------------------------------------------------------------
                           5295 ;Allocation info for local variables in function 'dimmon'
                           5296 ;------------------------------------------------------------
                           5297 ;mode                      Allocated with name '_dimmon_mode_1_249'
                           5298 ;------------------------------------------------------------
                           5299 ;	main.c:74: void dimmon(uint8_t mode) // функция управлением вкл/выкл
                           5300 ;	-----------------------------------------
                           5301 ;	 function dimmon
                           5302 ;	-----------------------------------------
   1646                    5303 _dimmon:
   1646 E5 82         [12] 5304 	mov	a,dpl
                           5305 ;	main.c:76: if (mode) interrupt_control_ifp_enable();
   1648 90 00 A2      [24] 5306 	mov	dptr,#_dimmon_mode_1_249
   164B F0            [24] 5307 	movx	@dptr,a
   164C FF            [12] 5308 	mov	r7,a
   164D 60 04         [24] 5309 	jz	00102$
   164F D2 A8         [12] 5310 	setb _IEN0_SB_IFP 
   1651 80 0E         [24] 5311 	sjmp	00103$
   1653                    5312 00102$:
                           5313 ;	main.c:78: interrupt_control_ifp_disable();
   1653 C2 A8         [12] 5314 	clr _IEN0_SB_IFP 
                           5315 ;	main.c:79: timer1_stop();
   1655 C2 8E         [12] 5316 	clr _TCON_SB_TR1 
                           5317 ;	main.c:80: gpio_pin_val_clear(DIMMPIN);
   1657 75 82 02      [24] 5318 	mov	dpl,#0x02
   165A C0 07         [24] 5319 	push	ar7
   165C 12 08 1E      [24] 5320 	lcall	_gpio_pin_val_clear
   165F D0 07         [24] 5321 	pop	ar7
   1661                    5322 00103$:
                           5323 ;	main.c:82: clientnf.test_data=mode;
   1661 90 00 92      [24] 5324 	mov	dptr,#(_clientnf + 0x0003)
   1664 EF            [12] 5325 	mov	a,r7
   1665 F0            [24] 5326 	movx	@dptr,a
   1666 22            [24] 5327 	ret
                           5328 ;------------------------------------------------------------
                           5329 ;Allocation info for local variables in function 'isr_rtc2'
                           5330 ;------------------------------------------------------------
                           5331 ;	main.c:89: interrupt_isr_rtc2()
                           5332 ;	-----------------------------------------
                           5333 ;	 function isr_rtc2
                           5334 ;	-----------------------------------------
   1667                    5335 _isr_rtc2:
   1667 C0 E0         [24] 5336 	push	acc
   1669 C0 82         [24] 5337 	push	dpl
   166B C0 83         [24] 5338 	push	dph
   166D C0 D0         [24] 5339 	push	psw
                           5340 ;	main.c:91: countrtc++;
   166F 90 00 D6      [24] 5341 	mov	dptr,#_countrtc
   1672 E0            [24] 5342 	movx	a,@dptr
   1673 24 01         [12] 5343 	add	a,#0x01
   1675 F0            [24] 5344 	movx	@dptr,a
   1676 A3            [24] 5345 	inc	dptr
   1677 E0            [24] 5346 	movx	a,@dptr
   1678 34 00         [12] 5347 	addc	a,#0x00
   167A F0            [24] 5348 	movx	@dptr,a
   167B A3            [24] 5349 	inc	dptr
   167C E0            [24] 5350 	movx	a,@dptr
   167D 34 00         [12] 5351 	addc	a,#0x00
   167F F0            [24] 5352 	movx	@dptr,a
   1680 A3            [24] 5353 	inc	dptr
   1681 E0            [24] 5354 	movx	a,@dptr
   1682 34 00         [12] 5355 	addc	a,#0x00
   1684 F0            [24] 5356 	movx	@dptr,a
   1685 D0 D0         [24] 5357 	pop	psw
   1687 D0 83         [24] 5358 	pop	dph
   1689 D0 82         [24] 5359 	pop	dpl
   168B D0 E0         [24] 5360 	pop	acc
   168D 32            [24] 5361 	reti
                           5362 ;	eliminated unneeded mov psw,# (no regs used in bank)
                           5363 ;	eliminated unneeded push/pop b
                           5364 ;------------------------------------------------------------
                           5365 ;Allocation info for local variables in function 'main'
                           5366 ;------------------------------------------------------------
                           5367 ;state                     Allocated with name '_main_state_1_253'
                           5368 ;count                     Allocated with name '_main_count_1_253'
                           5369 ;dat                       Allocated with name '_main_dat_1_253'
                           5370 ;st                        Allocated with name '_main_st_1_253'
                           5371 ;countpause                Allocated with name '_main_countpause_1_253'
                           5372 ;rewers                    Allocated with name '_main_rewers_1_253'
                           5373 ;statesend                 Allocated with name '_main_statesend_1_253'
                           5374 ;radiosend                 Allocated with name '_main_radiosend_1_253'
                           5375 ;------------------------------------------------------------
                           5376 ;	main.c:96: void main()
                           5377 ;	-----------------------------------------
                           5378 ;	 function main
                           5379 ;	-----------------------------------------
   168E                    5380 _main:
                           5381 ;	main.c:106: CLKLFCTRL=1; // 0 -внешний кварц на P0.1 и P0.0. 1 - внутренний кварц.
   168E 75 AD 01      [24] 5382 	mov	_CLKLFCTRL,#0x01
                           5383 ;	main.c:107: rtc2_configure(RTC2_CONFIG_OPTION_COMPARE_MODE_0_RESET_AT_IRQ ,8191); //65535=2 сек, 32767=1 сек,16383 = 0.250 сек ,8191 = 0.125 сек
   1691 90 00 7D      [24] 5384 	mov	dptr,#_rtc2_configure_PARM_2
   1694 74 FF         [12] 5385 	mov	a,#0xFF
   1696 F0            [24] 5386 	movx	@dptr,a
   1697 74 1F         [12] 5387 	mov	a,#0x1F
   1699 A3            [24] 5388 	inc	dptr
   169A F0            [24] 5389 	movx	@dptr,a
   169B 75 82 06      [24] 5390 	mov	dpl,#0x06
   169E 12 12 E6      [24] 5391 	lcall	_rtc2_configure
                           5392 ;	main.c:108: rtc2_run();
   16A1 43 B3 01      [24] 5393 	orl	_RTC2CON,#0x01
                           5394 ;	main.c:109: pwr_clk_mgmt_wakeup_configure(PWR_CLK_MGMT_WAKEUP_CONFIG_OPTION_WAKEUP_ON_RTC2_TICK_IF_INT_ENABLED,0);
   16A4 90 00 4E      [24] 5395 	mov	dptr,#_pwr_clk_mgmt_wakeup_configure_PARM_2
   16A7 E4            [12] 5396 	clr	a
   16A8 F0            [24] 5397 	movx	@dptr,a
   16A9 E4            [12] 5398 	clr	a
   16AA A3            [24] 5399 	inc	dptr
   16AB F0            [24] 5400 	movx	@dptr,a
   16AC 75 82 00      [24] 5401 	mov	dpl,#0x00
   16AF 12 0A 68      [24] 5402 	lcall	_pwr_clk_mgmt_wakeup_configure
                           5403 ;	main.c:111: gpio_pin_configure(BUTTON,GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT|GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_PULL_UP_RESISTOR); // для кнопки на вход и подтянуть резистором. 
   16B2 90 00 38      [24] 5404 	mov	dptr,#_gpio_pin_configure_PARM_2
   16B5 74 41         [12] 5405 	mov	a,#0x41
   16B7 F0            [24] 5406 	movx	@dptr,a
   16B8 75 82 04      [24] 5407 	mov	dpl,#0x04
   16BB 12 05 8F      [24] 5408 	lcall	_gpio_pin_configure
                           5409 ;	main.c:113: gpio_pin_configure(DIMMPIN,GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);
   16BE 90 00 38      [24] 5410 	mov	dptr,#_gpio_pin_configure_PARM_2
   16C1 74 01         [12] 5411 	mov	a,#0x01
   16C3 F0            [24] 5412 	movx	@dptr,a
   16C4 75 82 02      [24] 5413 	mov	dpl,#0x02
   16C7 12 05 8F      [24] 5414 	lcall	_gpio_pin_configure
                           5415 ;	main.c:114: gpio_pin_val_set(DIMMPIN);
   16CA 75 82 02      [24] 5416 	mov	dpl,#0x02
   16CD 12 08 89      [24] 5417 	lcall	_gpio_pin_val_set
                           5418 ;	main.c:115: delay_ms(500); 
   16D0 90 01 F4      [24] 5419 	mov	dptr,#0x01F4
   16D3 12 09 8C      [24] 5420 	lcall	_delay_ms
                           5421 ;	main.c:116: gpio_pin_val_clear(DIMMPIN);
   16D6 75 82 02      [24] 5422 	mov	dpl,#0x02
   16D9 12 08 1E      [24] 5423 	lcall	_gpio_pin_val_clear
                           5424 ;	main.c:117: delay_ms(500); 
   16DC 90 01 F4      [24] 5425 	mov	dptr,#0x01F4
   16DF 12 09 8C      [24] 5426 	lcall	_delay_ms
                           5427 ;	main.c:120: radiobegin(); //
   16E2 12 13 16      [24] 5428 	lcall	_radiobegin
                           5429 ;	main.c:121: openAllPipe(); // открываем прием/передачу
   16E5 12 14 9A      [24] 5430 	lcall	_openAllPipe
                           5431 ;	main.c:123: setChannel(100);
   16E8 75 82 64      [24] 5432 	mov	dpl,#0x64
   16EB 12 13 3B      [24] 5433 	lcall	_setChannel
                           5434 ;	main.c:124: setDataRate(2); // 1 - 250кб , 2 - 1 мб , 3 -2 мб.
   16EE 75 82 02      [24] 5435 	mov	dpl,#0x02
   16F1 12 13 5D      [24] 5436 	lcall	_setDataRate
                           5437 ;	main.c:125: setAutoAck(false);
   16F4 75 82 00      [24] 5438 	mov	dpl,#0x00
   16F7 12 13 BF      [24] 5439 	lcall	_setAutoAck
                           5440 ;	main.c:126: setCRCLength(2); // 0 - crc off ,1 - 8bit ,2 - 16bit
   16FA 75 82 02      [24] 5441 	mov	dpl,#0x02
   16FD 12 13 F2      [24] 5442 	lcall	_setCRCLength
                           5443 ;	main.c:127: setPALevel(3) ; // мощность 0..3
   1700 75 82 03      [24] 5444 	mov	dpl,#0x03
   1703 12 14 5B      [24] 5445 	lcall	_setPALevel
                           5446 ;	main.c:130: clientnf.identifier=chclient;
   1706 90 00 8F      [24] 5447 	mov	dptr,#_clientnf
   1709 74 01         [12] 5448 	mov	a,#0x01
   170B F0            [24] 5449 	movx	@dptr,a
                           5450 ;	main.c:131: clientnf.countPWM=10;
   170C 90 00 90      [24] 5451 	mov	dptr,#(_clientnf + 0x0001)
   170F 74 0A         [12] 5452 	mov	a,#0x0A
   1711 F0            [24] 5453 	movx	@dptr,a
   1712 E4            [12] 5454 	clr	a
   1713 A3            [24] 5455 	inc	dptr
   1714 F0            [24] 5456 	movx	@dptr,a
                           5457 ;	main.c:133: sti();
   1715 D2 AF         [12] 5458 	setb _IEN0_SB_GLOBAL 
                           5459 ;	main.c:134: interrupt_configure_ifp(INTERRUPT_IFP_INPUT_GPINT0,INTERRUPT_IFP_CONFIG_OPTION_ENABLE | INTERRUPT_IFP_CONFIG_OPTION_TYPE_FALLING_EDGE);
   1717 90 00 59      [24] 5460 	mov	dptr,#_interrupt_configure_ifp_PARM_2
   171A 74 81         [12] 5461 	mov	a,#0x81
   171C F0            [24] 5462 	movx	@dptr,a
   171D 75 82 08      [24] 5463 	mov	dpl,#0x08
   1720 12 0B 54      [24] 5464 	lcall	_interrupt_configure_ifp
                           5465 ;	main.c:135: interrupt_control_ifp_enable();
   1723 D2 A8         [12] 5466 	setb _IEN0_SB_IFP 
                           5467 ;	main.c:137: interrupt_control_t1_enable()	;
   1725 D2 AB         [12] 5468 	setb _IEN0_SB_T1 
                           5469 ;	main.c:138: timer1_configure(TIMER1_CONFIG_OPTION_MODE_1_16_BIT_CTR_TMR,0);
   1727 90 00 63      [24] 5470 	mov	dptr,#_timer1_configure_PARM_2
   172A E4            [12] 5471 	clr	a
   172B F0            [24] 5472 	movx	@dptr,a
   172C E4            [12] 5473 	clr	a
   172D A3            [24] 5474 	inc	dptr
   172E F0            [24] 5475 	movx	@dptr,a
   172F 75 82 10      [24] 5476 	mov	dpl,#0x10
   1732 12 0C 67      [24] 5477 	lcall	_timer1_configure
                           5478 ;	main.c:139: timer1_run();
   1735 D2 8E         [12] 5479 	setb _TCON_SB_TR1 
                           5480 ;	main.c:144: while(1)
   1737                    5481 00123$:
                           5482 ;	main.c:151: if (countrtc-radiosend >timesend) {
   1737 90 00 D6      [24] 5483 	mov	dptr,#_countrtc
   173A E0            [24] 5484 	movx	a,@dptr
   173B FC            [12] 5485 	mov	r4,a
   173C A3            [24] 5486 	inc	dptr
   173D E0            [24] 5487 	movx	a,@dptr
   173E FD            [12] 5488 	mov	r5,a
   173F A3            [24] 5489 	inc	dptr
   1740 E0            [24] 5490 	movx	a,@dptr
   1741 FE            [12] 5491 	mov	r6,a
   1742 A3            [24] 5492 	inc	dptr
   1743 E0            [24] 5493 	movx	a,@dptr
   1744 FF            [12] 5494 	mov	r7,a
   1745 C3            [12] 5495 	clr	c
   1746 74 02         [12] 5496 	mov	a,#0x02
   1748 9C            [12] 5497 	subb	a,r4
   1749 E4            [12] 5498 	clr	a
   174A 9D            [12] 5499 	subb	a,r5
   174B E4            [12] 5500 	clr	a
   174C 9E            [12] 5501 	subb	a,r6
   174D E4            [12] 5502 	clr	a
   174E 9F            [12] 5503 	subb	a,r7
   174F 50 E6         [24] 5504 	jnc	00123$
                           5505 ;	main.c:153: rf_write_tx_payload((const uint8_t*)&clientnf, 32, true); //transmit received char over RF
   1751 7E 8F         [12] 5506 	mov	r6,#_clientnf
   1753 7F 00         [12] 5507 	mov	r7,#(_clientnf >> 8)
   1755 7D 00         [12] 5508 	mov	r5,#0x00
   1757 90 00 0E      [24] 5509 	mov	dptr,#_rf_write_tx_payload_PARM_2
   175A 74 20         [12] 5510 	mov	a,#0x20
   175C F0            [24] 5511 	movx	@dptr,a
   175D E4            [12] 5512 	clr	a
   175E A3            [24] 5513 	inc	dptr
   175F F0            [24] 5514 	movx	@dptr,a
   1760 90 00 10      [24] 5515 	mov	dptr,#_rf_write_tx_payload_PARM_3
   1763 74 01         [12] 5516 	mov	a,#0x01
   1765 F0            [24] 5517 	movx	@dptr,a
   1766 8E 82         [24] 5518 	mov	dpl,r6
   1768 8F 83         [24] 5519 	mov	dph,r7
   176A 8D F0         [24] 5520 	mov	b,r5
   176C 12 01 CD      [24] 5521 	lcall	_rf_write_tx_payload
                           5522 ;	main.c:156: while(!(rf_irq_pin_active() && rf_irq_tx_ds_active()));
   176F                    5523 00102$:
   176F 30 C1 FD      [24] 5524 	jnb	_IRCON_SB_RFIRQ,00102$
   1772 90 00 18      [24] 5525 	mov	dptr,#_rf_spi_execute_command_PARM_2
   1775 E4            [12] 5526 	clr	a
   1776 F0            [24] 5527 	movx	@dptr,a
   1777 E4            [12] 5528 	clr	a
   1778 A3            [24] 5529 	inc	dptr
   1779 F0            [24] 5530 	movx	@dptr,a
   177A E4            [12] 5531 	clr	a
   177B A3            [24] 5532 	inc	dptr
   177C F0            [24] 5533 	movx	@dptr,a
   177D 90 00 1B      [24] 5534 	mov	dptr,#_rf_spi_execute_command_PARM_3
   1780 E4            [12] 5535 	clr	a
   1781 F0            [24] 5536 	movx	@dptr,a
   1782 E4            [12] 5537 	clr	a
   1783 A3            [24] 5538 	inc	dptr
   1784 F0            [24] 5539 	movx	@dptr,a
   1785 90 00 1D      [24] 5540 	mov	dptr,#_rf_spi_execute_command_PARM_4
   1788 74 01         [12] 5541 	mov	a,#0x01
   178A F0            [24] 5542 	movx	@dptr,a
   178B 75 82 FF      [24] 5543 	mov	dpl,#0xFF
   178E 12 03 02      [24] 5544 	lcall	_rf_spi_execute_command
   1791 E5 82         [12] 5545 	mov	a,dpl
   1793 30 E5 D9      [24] 5546 	jnb	acc.5,00102$
                           5547 ;	main.c:158: rf_irq_clear_all(); //clear all interrupts in the 24L01
   1796 12 02 93      [24] 5548 	lcall	_rf_irq_clear_all
                           5549 ;	main.c:159: rf_set_as_rx(true); //change the device to an RX to get the character back from the other 24L01
   1799 75 82 01      [24] 5550 	mov	dpl,#0x01
   179C 12 02 33      [24] 5551 	lcall	_rf_set_as_rx
                           5552 ;	main.c:163: for(count = 0; count < 25000; count++)
   179F 7E 00         [12] 5553 	mov	r6,#0x00
   17A1 7F 00         [12] 5554 	mov	r7,#0x00
   17A3                    5555 00125$:
                           5556 ;	main.c:166: if((rf_irq_pin_active() && rf_irq_rx_dr_active()))
   17A3 20 C1 03      [24] 5557 	jb	_IRCON_SB_RFIRQ,00171$
   17A6 02 18 37      [24] 5558 	ljmp	00109$
   17A9                    5559 00171$:
   17A9 90 00 18      [24] 5560 	mov	dptr,#_rf_spi_execute_command_PARM_2
   17AC E4            [12] 5561 	clr	a
   17AD F0            [24] 5562 	movx	@dptr,a
   17AE E4            [12] 5563 	clr	a
   17AF A3            [24] 5564 	inc	dptr
   17B0 F0            [24] 5565 	movx	@dptr,a
   17B1 E4            [12] 5566 	clr	a
   17B2 A3            [24] 5567 	inc	dptr
   17B3 F0            [24] 5568 	movx	@dptr,a
   17B4 90 00 1B      [24] 5569 	mov	dptr,#_rf_spi_execute_command_PARM_3
   17B7 E4            [12] 5570 	clr	a
   17B8 F0            [24] 5571 	movx	@dptr,a
   17B9 E4            [12] 5572 	clr	a
   17BA A3            [24] 5573 	inc	dptr
   17BB F0            [24] 5574 	movx	@dptr,a
   17BC 90 00 1D      [24] 5575 	mov	dptr,#_rf_spi_execute_command_PARM_4
   17BF 74 01         [12] 5576 	mov	a,#0x01
   17C1 F0            [24] 5577 	movx	@dptr,a
   17C2 75 82 FF      [24] 5578 	mov	dpl,#0xFF
   17C5 C0 07         [24] 5579 	push	ar7
   17C7 C0 06         [24] 5580 	push	ar6
   17C9 12 03 02      [24] 5581 	lcall	_rf_spi_execute_command
   17CC E5 82         [12] 5582 	mov	a,dpl
   17CE D0 06         [24] 5583 	pop	ar6
   17D0 D0 07         [24] 5584 	pop	ar7
   17D2 30 E6 62      [24] 5585 	jnb	acc.6,00109$
                           5586 ;	main.c:169: if (clientnf.count <= 2147483646) clientnf.count++;      /// счетчик передач для контроля качества канала
   17D5 90 00 95      [24] 5587 	mov	dptr,#(_clientnf + 0x0006)
   17D8 E0            [24] 5588 	movx	a,@dptr
   17D9 FA            [12] 5589 	mov	r2,a
   17DA A3            [24] 5590 	inc	dptr
   17DB E0            [24] 5591 	movx	a,@dptr
   17DC FB            [12] 5592 	mov	r3,a
   17DD A3            [24] 5593 	inc	dptr
   17DE E0            [24] 5594 	movx	a,@dptr
   17DF FC            [12] 5595 	mov	r4,a
   17E0 A3            [24] 5596 	inc	dptr
   17E1 E0            [24] 5597 	movx	a,@dptr
   17E2 FD            [12] 5598 	mov	r5,a
   17E3 C3            [12] 5599 	clr	c
   17E4 74 FE         [12] 5600 	mov	a,#0xFE
   17E6 9A            [12] 5601 	subb	a,r2
   17E7 74 FF         [12] 5602 	mov	a,#0xFF
   17E9 9B            [12] 5603 	subb	a,r3
   17EA 74 FF         [12] 5604 	mov	a,#0xFF
   17EC 9C            [12] 5605 	subb	a,r4
   17ED 74 FF         [12] 5606 	mov	a,#(0x7F ^ 0x80)
   17EF 8D F0         [24] 5607 	mov	b,r5
   17F1 63 F0 80      [24] 5608 	xrl	b,#0x80
   17F4 95 F0         [12] 5609 	subb	a,b
   17F6 40 1D         [24] 5610 	jc	00106$
   17F8 0A            [12] 5611 	inc	r2
   17F9 BA 00 09      [24] 5612 	cjne	r2,#0x00,00174$
   17FC 0B            [12] 5613 	inc	r3
   17FD BB 00 05      [24] 5614 	cjne	r3,#0x00,00174$
   1800 0C            [12] 5615 	inc	r4
   1801 BC 00 01      [24] 5616 	cjne	r4,#0x00,00174$
   1804 0D            [12] 5617 	inc	r5
   1805                    5618 00174$:
   1805 90 00 95      [24] 5619 	mov	dptr,#(_clientnf + 0x0006)
   1808 EA            [12] 5620 	mov	a,r2
   1809 F0            [24] 5621 	movx	@dptr,a
   180A EB            [12] 5622 	mov	a,r3
   180B A3            [24] 5623 	inc	dptr
   180C F0            [24] 5624 	movx	@dptr,a
   180D EC            [12] 5625 	mov	a,r4
   180E A3            [24] 5626 	inc	dptr
   180F F0            [24] 5627 	movx	@dptr,a
   1810 ED            [12] 5628 	mov	a,r5
   1811 A3            [24] 5629 	inc	dptr
   1812 F0            [24] 5630 	movx	@dptr,a
   1813 80 0E         [24] 5631 	sjmp	00107$
   1815                    5632 00106$:
                           5633 ;	main.c:170: else clientnf.count = 0;
   1815 90 00 95      [24] 5634 	mov	dptr,#(_clientnf + 0x0006)
   1818 E4            [12] 5635 	clr	a
   1819 F0            [24] 5636 	movx	@dptr,a
   181A E4            [12] 5637 	clr	a
   181B A3            [24] 5638 	inc	dptr
   181C F0            [24] 5639 	movx	@dptr,a
   181D E4            [12] 5640 	clr	a
   181E A3            [24] 5641 	inc	dptr
   181F F0            [24] 5642 	movx	@dptr,a
   1820 E4            [12] 5643 	clr	a
   1821 A3            [24] 5644 	inc	dptr
   1822 F0            [24] 5645 	movx	@dptr,a
   1823                    5646 00107$:
                           5647 ;	main.c:172: rf_read_rx_payload((const uint8_t*)&servernf, 32); //get the payload into data
   1823 90 00 00      [24] 5648 	mov	dptr,#_rf_read_rx_payload_PARM_2
   1826 74 20         [12] 5649 	mov	a,#0x20
   1828 F0            [24] 5650 	movx	@dptr,a
   1829 E4            [12] 5651 	clr	a
   182A A3            [24] 5652 	inc	dptr
   182B F0            [24] 5653 	movx	@dptr,a
   182C 90 00 A3      [24] 5654 	mov	dptr,#_servernf
   182F 75 F0 00      [24] 5655 	mov	b,#0x00
   1832 12 00 CD      [24] 5656 	lcall	_rf_read_rx_payload
                           5657 ;	main.c:173: break;
   1835 80 2C         [24] 5658 	sjmp	00113$
   1837                    5659 00109$:
                           5660 ;	main.c:180: if(count == 24999) clientnf.Error_Message++;
   1837 BE A7 18      [24] 5661 	cjne	r6,#0xA7,00126$
   183A BF 61 15      [24] 5662 	cjne	r7,#0x61,00126$
   183D 90 00 93      [24] 5663 	mov	dptr,#(_clientnf + 0x0004)
   1840 E0            [24] 5664 	movx	a,@dptr
   1841 FC            [12] 5665 	mov	r4,a
   1842 A3            [24] 5666 	inc	dptr
   1843 E0            [24] 5667 	movx	a,@dptr
   1844 FD            [12] 5668 	mov	r5,a
   1845 0C            [12] 5669 	inc	r4
   1846 BC 00 01      [24] 5670 	cjne	r4,#0x00,00177$
   1849 0D            [12] 5671 	inc	r5
   184A                    5672 00177$:
   184A 90 00 93      [24] 5673 	mov	dptr,#(_clientnf + 0x0004)
   184D EC            [12] 5674 	mov	a,r4
   184E F0            [24] 5675 	movx	@dptr,a
   184F ED            [12] 5676 	mov	a,r5
   1850 A3            [24] 5677 	inc	dptr
   1851 F0            [24] 5678 	movx	@dptr,a
   1852                    5679 00126$:
                           5680 ;	main.c:163: for(count = 0; count < 25000; count++)
   1852 0E            [12] 5681 	inc	r6
   1853 BE 00 01      [24] 5682 	cjne	r6,#0x00,00178$
   1856 0F            [12] 5683 	inc	r7
   1857                    5684 00178$:
   1857 C3            [12] 5685 	clr	c
   1858 EE            [12] 5686 	mov	a,r6
   1859 94 A8         [12] 5687 	subb	a,#0xA8
   185B EF            [12] 5688 	mov	a,r7
   185C 94 61         [12] 5689 	subb	a,#0x61
   185E 50 03         [24] 5690 	jnc	00179$
   1860 02 17 A3      [24] 5691 	ljmp	00125$
   1863                    5692 00179$:
   1863                    5693 00113$:
                           5694 ;	main.c:185: rf_irq_clear_all(); //clear interrupts again
   1863 12 02 93      [24] 5695 	lcall	_rf_irq_clear_all
                           5696 ;	main.c:187: rf_set_as_tx(); //resume normal operation as a TX
   1866 12 02 B8      [24] 5697 	lcall	_rf_set_as_tx
                           5698 ;	main.c:190: if (servernf[0]==chclient){	
   1869 90 00 A3      [24] 5699 	mov	dptr,#_servernf
   186C E0            [24] 5700 	movx	a,@dptr
   186D FF            [12] 5701 	mov	r7,a
   186E BF 01 02      [24] 5702 	cjne	r7,#0x01,00180$
   1871 80 03         [24] 5703 	sjmp	00181$
   1873                    5704 00180$:
   1873 02 17 37      [24] 5705 	ljmp	00123$
   1876                    5706 00181$:
                           5707 ;	main.c:193: if (servernf[1]==10) {
   1876 90 00 A4      [24] 5708 	mov	dptr,#(_servernf + 0x0001)
   1879 E0            [24] 5709 	movx	a,@dptr
   187A FF            [12] 5710 	mov	r7,a
   187B BF 0A 09      [24] 5711 	cjne	r7,#0x0A,00115$
                           5712 ;	main.c:195: dimmon(servernf[3]);
   187E 90 00 A6      [24] 5713 	mov	dptr,#(_servernf + 0x0003)
   1881 E0            [24] 5714 	movx	a,@dptr
   1882 F5 82         [12] 5715 	mov	dpl,a
   1884 12 16 46      [24] 5716 	lcall	_dimmon
   1887                    5717 00115$:
                           5718 ;	main.c:198: if (servernf[1]==11) clientnf.countPWM=servernf[3];
   1887 90 00 A4      [24] 5719 	mov	dptr,#(_servernf + 0x0001)
   188A E0            [24] 5720 	movx	a,@dptr
   188B FF            [12] 5721 	mov	r7,a
   188C BF 0B 02      [24] 5722 	cjne	r7,#0x0B,00184$
   188F 80 03         [24] 5723 	sjmp	00185$
   1891                    5724 00184$:
   1891 02 17 37      [24] 5725 	ljmp	00123$
   1894                    5726 00185$:
   1894 90 00 A6      [24] 5727 	mov	dptr,#(_servernf + 0x0003)
   1897 E0            [24] 5728 	movx	a,@dptr
   1898 FF            [12] 5729 	mov	r7,a
   1899 7E 00         [12] 5730 	mov	r6,#0x00
   189B 90 00 90      [24] 5731 	mov	dptr,#(_clientnf + 0x0001)
   189E EF            [12] 5732 	mov	a,r7
   189F F0            [24] 5733 	movx	@dptr,a
   18A0 EE            [12] 5734 	mov	a,r6
   18A1 A3            [24] 5735 	inc	dptr
   18A2 F0            [24] 5736 	movx	@dptr,a
   18A3 02 17 37      [24] 5737 	ljmp	00123$
                           5738 	.area CSEG    (CODE)
                           5739 	.area CONST   (CODE)
                           5740 	.area XINIT   (CODE)
   1A7B                    5741 __xinit__countrtc:
   1A7B 00 00 00 00        5742 	.byte #0x00,#0x00,#0x00,#0x00	; 0
                           5743 	.area CABS    (ABS,CODE)
