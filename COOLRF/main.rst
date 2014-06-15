                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Jun 15 20:29:03 2014
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
                             17 	.globl _setdimmer
                             18 	.globl _openAllPipe
                             19 	.globl _setPALevel
                             20 	.globl _setCRCLength
                             21 	.globl _setAutoAck
                             22 	.globl _setDataRate
                             23 	.globl _setChannel
                             24 	.globl _radiobegin
                             25 	.globl _watchdog_start_and_set_timeout_in_ms
                             26 	.globl _watchdog_set_wdsv_count
                             27 	.globl _gpio_pin_val_write
                             28 	.globl _gpio_pin_val_set
                             29 	.globl _gpio_pin_val_clear
                             30 	.globl _gpio_pin_val_read
                             31 	.globl _FSR_SB_ENDBG
                             32 	.globl _FSR_SB_STP
                             33 	.globl _FSR_SB_WEN
                             34 	.globl _FSR_SB_RDYN
                             35 	.globl _FSR_SB_INFEN
                             36 	.globl _FSR_SB_RDISMB
                             37 	.globl _RFCON_SB_RFCKEN
                             38 	.globl _RFCON_SB_RFCSN
                             39 	.globl _RFCON_SB_RFCE
                             40 	.globl _ADCON_SB_BD
                             41 	.globl _PSW_SB_P
                             42 	.globl _PSW_SB_F1
                             43 	.globl _PSW_SB_OV
                             44 	.globl _PSW_SB_RS0
                             45 	.globl _PSW_SB_RS1
                             46 	.globl _PSW_SB_F0
                             47 	.globl _PSW_SB_AC
                             48 	.globl _PSW_SB_CY
                             49 	.globl _T2CON_SB_T2PS
                             50 	.globl _T2CON_SB_I3FR
                             51 	.globl _T2CON_SB_I2FR
                             52 	.globl _T2CON_SB_T2R1
                             53 	.globl _T2CON_SB_T2R0
                             54 	.globl _T2CON_SB_T2CM
                             55 	.globl _T2CON_SB_T2I1
                             56 	.globl _T2CON_SB_T2I0
                             57 	.globl _IRCON_SB_EXF2
                             58 	.globl _IRCON_SB_TF2
                             59 	.globl _IRCON_SB_TICK
                             60 	.globl _IRCON_SB_MISCIRQ
                             61 	.globl _IRCON_SB_WUOPIRQ
                             62 	.globl _IRCON_SB_SPI_2WIRE
                             63 	.globl _IRCON_SB_RFIRQ
                             64 	.globl _IRCON_SB_RFRDY
                             65 	.globl _IEN1_SB_T2EXTRLD
                             66 	.globl _IEN1_SB_TICK
                             67 	.globl _IEN1_SB_MISCIRQ
                             68 	.globl _IEN1_SB_WUOPIRQ
                             69 	.globl _IEN1_SB_SPI_2WIRE
                             70 	.globl _IEN1_SB_RFIRQ
                             71 	.globl _IEN1_SB_RFRDY
                             72 	.globl _P3_SB_D7
                             73 	.globl _P3_SB_D6
                             74 	.globl _P3_SB_D5
                             75 	.globl _P3_SB_D4
                             76 	.globl _P3_SB_D3
                             77 	.globl _P3_SB_D2
                             78 	.globl _P3_SB_D1
                             79 	.globl _P3_SB_D0
                             80 	.globl _IEN0_SB_GLOBAL
                             81 	.globl _IEN0_SB_T2
                             82 	.globl _IEN0_SB_UART
                             83 	.globl _IEN0_SB_T1
                             84 	.globl _IEN0_SB_POFIRQ
                             85 	.globl _IEN0_SB_T0
                             86 	.globl _IEN0_SB_IFP
                             87 	.globl _P2_SB_D7
                             88 	.globl _P2_SB_D6
                             89 	.globl _P2_SB_D5
                             90 	.globl _P2_SB_D4
                             91 	.globl _P2_SB_D3
                             92 	.globl _P2_SB_D2
                             93 	.globl _P2_SB_D1
                             94 	.globl _P2_SB_D0
                             95 	.globl _S0CON_SB_SM0
                             96 	.globl _S0CON_SB_SM1
                             97 	.globl _S0CON_SB_SM20
                             98 	.globl _S0CON_SB_REN0
                             99 	.globl _S0CON_SB_TB80
                            100 	.globl _S0CON_SB_RB80
                            101 	.globl _S0CON_SB_TI0
                            102 	.globl _S0CON_SB_RI0
                            103 	.globl _P1_SB_D7
                            104 	.globl _P1_SB_D6
                            105 	.globl _P1_SB_D5
                            106 	.globl _P1_SB_D4
                            107 	.globl _P1_SB_D3
                            108 	.globl _P1_SB_D2
                            109 	.globl _P1_SB_D1
                            110 	.globl _P1_SB_D0
                            111 	.globl _TCON_SB_TF1
                            112 	.globl _TCON_SB_TR1
                            113 	.globl _TCON_SB_TF0
                            114 	.globl _TCON_SB_TR0
                            115 	.globl _TCON_SB_IE1
                            116 	.globl _TCON_SB_IT1
                            117 	.globl _TCON_SB_IE0
                            118 	.globl _TCON_SB_IT0
                            119 	.globl _P0_SB_D7
                            120 	.globl _P0_SB_D6
                            121 	.globl _P0_SB_D5
                            122 	.globl _P0_SB_D4
                            123 	.globl _P0_SB_D3
                            124 	.globl _P0_SB_D2
                            125 	.globl _P0_SB_D1
                            126 	.globl _P0_SB_D0
                            127 	.globl _ADCDAT
                            128 	.globl _S0REL
                            129 	.globl _T2
                            130 	.globl _T1
                            131 	.globl _T0
                            132 	.globl _CRC
                            133 	.globl _CC3
                            134 	.globl _CC2
                            135 	.globl _CC1
                            136 	.globl _SPIMDAT
                            137 	.globl _SPIMSTAT
                            138 	.globl _SPIMCON1
                            139 	.globl _SPIMCON0
                            140 	.globl _FCR
                            141 	.globl _FPCR
                            142 	.globl _FSR
                            143 	.globl _B
                            144 	.globl _ARCON
                            145 	.globl _MD5
                            146 	.globl _MD4
                            147 	.globl _MD3
                            148 	.globl _MD2
                            149 	.globl _MD1
                            150 	.globl _MD0
                            151 	.globl _RFCON
                            152 	.globl _SPIRDAT
                            153 	.globl _SPIRSTAT
                            154 	.globl _SPIRCON1
                            155 	.globl _SPIRCON0
                            156 	.globl _W2CON0
                            157 	.globl _W2CON1
                            158 	.globl _ACC
                            159 	.globl _CCPDATO
                            160 	.globl _CCPDATIB
                            161 	.globl _CCPDATIA
                            162 	.globl _POFCON
                            163 	.globl _COMPCON
                            164 	.globl _W2DAT
                            165 	.globl _W2SADR
                            166 	.globl _ADCON
                            167 	.globl _RNGDAT
                            168 	.globl _RNGCTL
                            169 	.globl _ADCDATL
                            170 	.globl _ADCDATH
                            171 	.globl _ADCCON1
                            172 	.globl _ADCCON2
                            173 	.globl _ADCCON3
                            174 	.globl _PSW
                            175 	.globl _WUOPC0
                            176 	.globl _WUOPC1
                            177 	.globl _TH2
                            178 	.globl _TL2
                            179 	.globl _CRCH
                            180 	.globl _CRCL
                            181 	.globl __XPAGE
                            182 	.globl _MPAGE
                            183 	.globl _T2CON
                            184 	.globl _CCH3
                            185 	.globl _CCL3
                            186 	.globl _CCH2
                            187 	.globl _CCL2
                            188 	.globl _CCH1
                            189 	.globl _CCL1
                            190 	.globl _CCEN
                            191 	.globl _IRCON
                            192 	.globl _SPISDAT
                            193 	.globl _SPISSTAT
                            194 	.globl _SPISCON1
                            195 	.globl _SPISCON0
                            196 	.globl _S0RELH
                            197 	.globl _IP1
                            198 	.globl _IEN1
                            199 	.globl _SPISRDSZ
                            200 	.globl _RTC2CPT00
                            201 	.globl _RTC2CMP1
                            202 	.globl _RTC2CMP0
                            203 	.globl _RTC2CON
                            204 	.globl _PWMCON
                            205 	.globl _RSTREAS
                            206 	.globl _P3
                            207 	.globl _WDSV
                            208 	.globl _OPMCON
                            209 	.globl _CLKLFCTRL
                            210 	.globl _RTC2CPT10
                            211 	.globl _RTC2CPT01
                            212 	.globl _S0RELL
                            213 	.globl _IP0
                            214 	.globl _IEN0
                            215 	.globl _MEMCON
                            216 	.globl _INTEXP
                            217 	.globl _WUCON
                            218 	.globl _PWRDWN
                            219 	.globl _CLKCTRL
                            220 	.globl _PWMDC1
                            221 	.globl _PWMDC0
                            222 	.globl _P2
                            223 	.globl _P1CON
                            224 	.globl _P0CON
                            225 	.globl _S0BUF
                            226 	.globl _S0CON
                            227 	.globl _P2CON
                            228 	.globl _P3DIR
                            229 	.globl _P2DIR
                            230 	.globl _P1DIR
                            231 	.globl _P0DIR
                            232 	.globl _DPS
                            233 	.globl _P1
                            234 	.globl _P3CON
                            235 	.globl _TH1
                            236 	.globl _TH0
                            237 	.globl _TL1
                            238 	.globl _TL0
                            239 	.globl _TMOD
                            240 	.globl _TCON
                            241 	.globl _PCON
                            242 	.globl _DPH1
                            243 	.globl _DPL1
                            244 	.globl _DPH
                            245 	.globl _DPL
                            246 	.globl _SP
                            247 	.globl _P0
                            248 	.globl _countrtc
                            249 	.globl _valuepwm
                            250 	.globl _servernf
                            251 	.globl _stdimm
                            252 	.globl _clientnf
                            253 	.globl _rtc2_configure_PARM_2
                            254 	.globl _uart_configure_auto_baud_calc_PARM_2
                            255 	.globl _uart_calc_th1_value_PARM_2
                            256 	.globl _uart_calc_s0rel_value_PARM_2
                            257 	.globl _uart_calc_actual_baud_rate_from_th1_PARM_2
                            258 	.globl _uart_calc_actual_baud_rate_from_s0rel_PARM_2
                            259 	.globl _uart_configure_manual_baud_calc_PARM_2
                            260 	.globl _timer1_configure_PARM_2
                            261 	.globl _timer0_configure_PARM_2
                            262 	.globl _interrupt_configure_ifp_PARM_2
                            263 	.globl _pwr_clk_mgmt_wakeup_configure_PARM_2
                            264 	.globl _pwm_start_PARM_2
                            265 	.globl _gpio_pin_val_write_PARM_2
                            266 	.globl _gpio_pin_configure_PARM_2
                            267 	.globl _rf_set_rx_addr_PARM_3
                            268 	.globl _rf_set_rx_addr_PARM_2
                            269 	.globl _rf_read_register_PARM_3
                            270 	.globl _rf_read_register_PARM_2
                            271 	.globl _rf_power_up_param_PARM_2
                            272 	.globl _rf_spi_send_read_PARM_3
                            273 	.globl _rf_spi_send_read_PARM_2
                            274 	.globl _rf_spi_execute_command_PARM_4
                            275 	.globl _rf_spi_execute_command_PARM_3
                            276 	.globl _rf_spi_execute_command_PARM_2
                            277 	.globl _rf_write_tx_payload_PARM_3
                            278 	.globl _rf_write_tx_payload_PARM_2
                            279 	.globl _rf_write_register_PARM_3
                            280 	.globl _rf_write_register_PARM_2
                            281 	.globl _rf_configure_debug_lite_PARM_2
                            282 	.globl _rf_read_rx_payload_PARM_2
                            283 	.globl _rf_read_rx_payload
                            284 	.globl _rf_configure_debug_lite
                            285 	.globl _rf_write_register
                            286 	.globl _rf_spi_configure_enable
                            287 	.globl _rf_write_tx_payload
                            288 	.globl _rf_transmit
                            289 	.globl _rf_set_as_rx
                            290 	.globl _rf_irq_clear_all
                            291 	.globl _rf_set_as_tx
                            292 	.globl _rf_spi_execute_command
                            293 	.globl _rf_spi_send_read
                            294 	.globl _rf_power_up_param
                            295 	.globl _rf_read_register
                            296 	.globl _rf_spi_send_read_byte
                            297 	.globl _rf_set_rx_addr
                            298 	.globl _rf_power_down
                            299 	.globl _rf_power_up
                            300 	.globl _gpio_pin_configure
                            301 	.globl _delay_us
                            302 	.globl _delay_s
                            303 	.globl _delay_ms
                            304 	.globl _pwm_configure
                            305 	.globl _pwm_start
                            306 	.globl _pwr_clk_mgmt_clklf_configure
                            307 	.globl _pwr_clk_mgmt_get_cclk_freq_in_hz
                            308 	.globl _pwr_clk_mgmt_wakeup_configure
                            309 	.globl _interrupt_configure_ifp
                            310 	.globl _adc_configure
                            311 	.globl _adc_set_input_channel
                            312 	.globl _adc_start_single_conversion
                            313 	.globl _adc_start_single_conversion_get_value
                            314 	.globl _timer0_configure
                            315 	.globl _timer1_configure
                            316 	.globl _uart_configure_manual_baud_calc
                            317 	.globl _uart_calc_actual_baud_rate_from_s0rel
                            318 	.globl _uart_calc_actual_baud_rate_from_th1
                            319 	.globl _uart_calc_s0rel_value
                            320 	.globl _uart_calc_th1_value
                            321 	.globl _uart_configure_auto_baud_calc
                            322 	.globl _rtc2_configure
                            323 ;--------------------------------------------------------
                            324 ; special function registers
                            325 ;--------------------------------------------------------
                            326 	.area RSEG    (ABS,DATA)
   0000                     327 	.org 0x0000
                     0080   328 _P0	=	0x0080
                     0081   329 _SP	=	0x0081
                     0082   330 _DPL	=	0x0082
                     0083   331 _DPH	=	0x0083
                     0084   332 _DPL1	=	0x0084
                     0085   333 _DPH1	=	0x0085
                     0087   334 _PCON	=	0x0087
                     0088   335 _TCON	=	0x0088
                     0089   336 _TMOD	=	0x0089
                     008A   337 _TL0	=	0x008a
                     008B   338 _TL1	=	0x008b
                     008C   339 _TH0	=	0x008c
                     008D   340 _TH1	=	0x008d
                     008F   341 _P3CON	=	0x008f
                     0090   342 _P1	=	0x0090
                     0092   343 _DPS	=	0x0092
                     0093   344 _P0DIR	=	0x0093
                     0094   345 _P1DIR	=	0x0094
                     0095   346 _P2DIR	=	0x0095
                     0096   347 _P3DIR	=	0x0096
                     0097   348 _P2CON	=	0x0097
                     0098   349 _S0CON	=	0x0098
                     0099   350 _S0BUF	=	0x0099
                     009E   351 _P0CON	=	0x009e
                     009F   352 _P1CON	=	0x009f
                     00A0   353 _P2	=	0x00a0
                     00A1   354 _PWMDC0	=	0x00a1
                     00A2   355 _PWMDC1	=	0x00a2
                     00A3   356 _CLKCTRL	=	0x00a3
                     00A4   357 _PWRDWN	=	0x00a4
                     00A5   358 _WUCON	=	0x00a5
                     00A6   359 _INTEXP	=	0x00a6
                     00A7   360 _MEMCON	=	0x00a7
                     00A8   361 _IEN0	=	0x00a8
                     00A9   362 _IP0	=	0x00a9
                     00AA   363 _S0RELL	=	0x00aa
                     00AB   364 _RTC2CPT01	=	0x00ab
                     00AC   365 _RTC2CPT10	=	0x00ac
                     00AD   366 _CLKLFCTRL	=	0x00ad
                     00AE   367 _OPMCON	=	0x00ae
                     00AF   368 _WDSV	=	0x00af
                     00B0   369 _P3	=	0x00b0
                     00B1   370 _RSTREAS	=	0x00b1
                     00B2   371 _PWMCON	=	0x00b2
                     00B3   372 _RTC2CON	=	0x00b3
                     00B4   373 _RTC2CMP0	=	0x00b4
                     00B5   374 _RTC2CMP1	=	0x00b5
                     00B6   375 _RTC2CPT00	=	0x00b6
                     00B7   376 _SPISRDSZ	=	0x00b7
                     00B8   377 _IEN1	=	0x00b8
                     00B9   378 _IP1	=	0x00b9
                     00BA   379 _S0RELH	=	0x00ba
                     00BC   380 _SPISCON0	=	0x00bc
                     00BD   381 _SPISCON1	=	0x00bd
                     00BE   382 _SPISSTAT	=	0x00be
                     00BF   383 _SPISDAT	=	0x00bf
                     00C0   384 _IRCON	=	0x00c0
                     00C1   385 _CCEN	=	0x00c1
                     00C2   386 _CCL1	=	0x00c2
                     00C3   387 _CCH1	=	0x00c3
                     00C4   388 _CCL2	=	0x00c4
                     00C5   389 _CCH2	=	0x00c5
                     00C6   390 _CCL3	=	0x00c6
                     00C7   391 _CCH3	=	0x00c7
                     00C8   392 _T2CON	=	0x00c8
                     00C9   393 _MPAGE	=	0x00c9
                     00C9   394 __XPAGE	=	0x00c9
                     00CA   395 _CRCL	=	0x00ca
                     00CB   396 _CRCH	=	0x00cb
                     00CC   397 _TL2	=	0x00cc
                     00CD   398 _TH2	=	0x00cd
                     00CE   399 _WUOPC1	=	0x00ce
                     00CF   400 _WUOPC0	=	0x00cf
                     00D0   401 _PSW	=	0x00d0
                     00D1   402 _ADCCON3	=	0x00d1
                     00D2   403 _ADCCON2	=	0x00d2
                     00D3   404 _ADCCON1	=	0x00d3
                     00D4   405 _ADCDATH	=	0x00d4
                     00D5   406 _ADCDATL	=	0x00d5
                     00D6   407 _RNGCTL	=	0x00d6
                     00D7   408 _RNGDAT	=	0x00d7
                     00D8   409 _ADCON	=	0x00d8
                     00D9   410 _W2SADR	=	0x00d9
                     00DA   411 _W2DAT	=	0x00da
                     00DB   412 _COMPCON	=	0x00db
                     00DC   413 _POFCON	=	0x00dc
                     00DD   414 _CCPDATIA	=	0x00dd
                     00DE   415 _CCPDATIB	=	0x00de
                     00DF   416 _CCPDATO	=	0x00df
                     00E0   417 _ACC	=	0x00e0
                     00E1   418 _W2CON1	=	0x00e1
                     00E2   419 _W2CON0	=	0x00e2
                     00E4   420 _SPIRCON0	=	0x00e4
                     00E5   421 _SPIRCON1	=	0x00e5
                     00E6   422 _SPIRSTAT	=	0x00e6
                     00E7   423 _SPIRDAT	=	0x00e7
                     00E8   424 _RFCON	=	0x00e8
                     00E9   425 _MD0	=	0x00e9
                     00EA   426 _MD1	=	0x00ea
                     00EB   427 _MD2	=	0x00eb
                     00EC   428 _MD3	=	0x00ec
                     00ED   429 _MD4	=	0x00ed
                     00EE   430 _MD5	=	0x00ee
                     00EF   431 _ARCON	=	0x00ef
                     00F0   432 _B	=	0x00f0
                     00F8   433 _FSR	=	0x00f8
                     00F9   434 _FPCR	=	0x00f9
                     00FA   435 _FCR	=	0x00fa
                     00FC   436 _SPIMCON0	=	0x00fc
                     00FD   437 _SPIMCON1	=	0x00fd
                     00FE   438 _SPIMSTAT	=	0x00fe
                     00FF   439 _SPIMDAT	=	0x00ff
                     C3C2   440 _CC1	=	0xc3c2
                     C5C4   441 _CC2	=	0xc5c4
                     C7C6   442 _CC3	=	0xc7c6
                     CBCA   443 _CRC	=	0xcbca
                     8C8A   444 _T0	=	0x8c8a
                     8D8B   445 _T1	=	0x8d8b
                     CDCC   446 _T2	=	0xcdcc
                     BAAA   447 _S0REL	=	0xbaaa
                     D4D5   448 _ADCDAT	=	0xd4d5
                            449 ;--------------------------------------------------------
                            450 ; special function bits
                            451 ;--------------------------------------------------------
                            452 	.area RSEG    (ABS,DATA)
   0000                     453 	.org 0x0000
                     0080   454 _P0_SB_D0	=	0x0080
                     0081   455 _P0_SB_D1	=	0x0081
                     0082   456 _P0_SB_D2	=	0x0082
                     0083   457 _P0_SB_D3	=	0x0083
                     0084   458 _P0_SB_D4	=	0x0084
                     0085   459 _P0_SB_D5	=	0x0085
                     0086   460 _P0_SB_D6	=	0x0086
                     0087   461 _P0_SB_D7	=	0x0087
                     0088   462 _TCON_SB_IT0	=	0x0088
                     0089   463 _TCON_SB_IE0	=	0x0089
                     008A   464 _TCON_SB_IT1	=	0x008a
                     008B   465 _TCON_SB_IE1	=	0x008b
                     008C   466 _TCON_SB_TR0	=	0x008c
                     008D   467 _TCON_SB_TF0	=	0x008d
                     008E   468 _TCON_SB_TR1	=	0x008e
                     008F   469 _TCON_SB_TF1	=	0x008f
                     0090   470 _P1_SB_D0	=	0x0090
                     0091   471 _P1_SB_D1	=	0x0091
                     0092   472 _P1_SB_D2	=	0x0092
                     0093   473 _P1_SB_D3	=	0x0093
                     0094   474 _P1_SB_D4	=	0x0094
                     0095   475 _P1_SB_D5	=	0x0095
                     0096   476 _P1_SB_D6	=	0x0096
                     0097   477 _P1_SB_D7	=	0x0097
                     0098   478 _S0CON_SB_RI0	=	0x0098
                     0099   479 _S0CON_SB_TI0	=	0x0099
                     009A   480 _S0CON_SB_RB80	=	0x009a
                     009B   481 _S0CON_SB_TB80	=	0x009b
                     009C   482 _S0CON_SB_REN0	=	0x009c
                     009D   483 _S0CON_SB_SM20	=	0x009d
                     009E   484 _S0CON_SB_SM1	=	0x009e
                     009F   485 _S0CON_SB_SM0	=	0x009f
                     00A0   486 _P2_SB_D0	=	0x00a0
                     00A1   487 _P2_SB_D1	=	0x00a1
                     00A2   488 _P2_SB_D2	=	0x00a2
                     00A3   489 _P2_SB_D3	=	0x00a3
                     00A4   490 _P2_SB_D4	=	0x00a4
                     00A5   491 _P2_SB_D5	=	0x00a5
                     00A6   492 _P2_SB_D6	=	0x00a6
                     00A7   493 _P2_SB_D7	=	0x00a7
                     00A8   494 _IEN0_SB_IFP	=	0x00a8
                     00A9   495 _IEN0_SB_T0	=	0x00a9
                     00AA   496 _IEN0_SB_POFIRQ	=	0x00aa
                     00AB   497 _IEN0_SB_T1	=	0x00ab
                     00AC   498 _IEN0_SB_UART	=	0x00ac
                     00AD   499 _IEN0_SB_T2	=	0x00ad
                     00AF   500 _IEN0_SB_GLOBAL	=	0x00af
                     00B0   501 _P3_SB_D0	=	0x00b0
                     00B1   502 _P3_SB_D1	=	0x00b1
                     00B2   503 _P3_SB_D2	=	0x00b2
                     00B3   504 _P3_SB_D3	=	0x00b3
                     00B4   505 _P3_SB_D4	=	0x00b4
                     00B5   506 _P3_SB_D5	=	0x00b5
                     00B6   507 _P3_SB_D6	=	0x00b6
                     00B7   508 _P3_SB_D7	=	0x00b7
                     00B8   509 _IEN1_SB_RFRDY	=	0x00b8
                     00B9   510 _IEN1_SB_RFIRQ	=	0x00b9
                     00BA   511 _IEN1_SB_SPI_2WIRE	=	0x00ba
                     00BB   512 _IEN1_SB_WUOPIRQ	=	0x00bb
                     00BC   513 _IEN1_SB_MISCIRQ	=	0x00bc
                     00BD   514 _IEN1_SB_TICK	=	0x00bd
                     00BF   515 _IEN1_SB_T2EXTRLD	=	0x00bf
                     00C0   516 _IRCON_SB_RFRDY	=	0x00c0
                     00C1   517 _IRCON_SB_RFIRQ	=	0x00c1
                     00C2   518 _IRCON_SB_SPI_2WIRE	=	0x00c2
                     00C3   519 _IRCON_SB_WUOPIRQ	=	0x00c3
                     00C4   520 _IRCON_SB_MISCIRQ	=	0x00c4
                     00C5   521 _IRCON_SB_TICK	=	0x00c5
                     00C6   522 _IRCON_SB_TF2	=	0x00c6
                     00C7   523 _IRCON_SB_EXF2	=	0x00c7
                     00C8   524 _T2CON_SB_T2I0	=	0x00c8
                     00C9   525 _T2CON_SB_T2I1	=	0x00c9
                     00CA   526 _T2CON_SB_T2CM	=	0x00ca
                     00CB   527 _T2CON_SB_T2R0	=	0x00cb
                     00CC   528 _T2CON_SB_T2R1	=	0x00cc
                     00CD   529 _T2CON_SB_I2FR	=	0x00cd
                     00CE   530 _T2CON_SB_I3FR	=	0x00ce
                     00CF   531 _T2CON_SB_T2PS	=	0x00cf
                     00D7   532 _PSW_SB_CY	=	0x00d7
                     00D6   533 _PSW_SB_AC	=	0x00d6
                     00D5   534 _PSW_SB_F0	=	0x00d5
                     00D4   535 _PSW_SB_RS1	=	0x00d4
                     00D3   536 _PSW_SB_RS0	=	0x00d3
                     00D2   537 _PSW_SB_OV	=	0x00d2
                     00D1   538 _PSW_SB_F1	=	0x00d1
                     00D0   539 _PSW_SB_P	=	0x00d0
                     00DF   540 _ADCON_SB_BD	=	0x00df
                     00E8   541 _RFCON_SB_RFCE	=	0x00e8
                     00E9   542 _RFCON_SB_RFCSN	=	0x00e9
                     00EA   543 _RFCON_SB_RFCKEN	=	0x00ea
                     00FA   544 _FSR_SB_RDISMB	=	0x00fa
                     00FB   545 _FSR_SB_INFEN	=	0x00fb
                     00FC   546 _FSR_SB_RDYN	=	0x00fc
                     00FD   547 _FSR_SB_WEN	=	0x00fd
                     00FE   548 _FSR_SB_STP	=	0x00fe
                     00FF   549 _FSR_SB_ENDBG	=	0x00ff
                            550 ;--------------------------------------------------------
                            551 ; overlayable register banks
                            552 ;--------------------------------------------------------
                            553 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     554 	.ds 8
                            555 ;--------------------------------------------------------
                            556 ; overlayable bit register bank
                            557 ;--------------------------------------------------------
                            558 	.area BIT_BANK	(REL,OVR,DATA)
   0021                     559 bits:
   0021                     560 	.ds 1
                     8000   561 	b0 = bits[0]
                     8100   562 	b1 = bits[1]
                     8200   563 	b2 = bits[2]
                     8300   564 	b3 = bits[3]
                     8400   565 	b4 = bits[4]
                     8500   566 	b5 = bits[5]
                     8600   567 	b6 = bits[6]
                     8700   568 	b7 = bits[7]
                            569 ;--------------------------------------------------------
                            570 ; internal ram data
                            571 ;--------------------------------------------------------
                            572 	.area DSEG    (DATA)
   0008                     573 _rf_spi_send_read_sloc0_1_0:
   0008                     574 	.ds 3
   000B                     575 _rf_spi_send_read_sloc1_1_0:
   000B                     576 	.ds 1
   000C                     577 _uart_configure_auto_baud_calc_sloc0_1_0:
   000C                     578 	.ds 2
   000E                     579 _uart_configure_auto_baud_calc_sloc1_1_0:
   000E                     580 	.ds 4
   0012                     581 _uart_configure_auto_baud_calc_sloc2_1_0:
   0012                     582 	.ds 4
   0016                     583 _uart_configure_auto_baud_calc_sloc3_1_0:
   0016                     584 	.ds 4
                            585 ;--------------------------------------------------------
                            586 ; overlayable items in internal ram 
                            587 ;--------------------------------------------------------
                            588 ;--------------------------------------------------------
                            589 ; Stack segment in internal ram 
                            590 ;--------------------------------------------------------
                            591 	.area	SSEG	(DATA)
   0022                     592 __start__stack:
   0022                     593 	.ds	1
                            594 
                            595 ;--------------------------------------------------------
                            596 ; indirectly addressable internal ram data
                            597 ;--------------------------------------------------------
                            598 	.area ISEG    (DATA)
                            599 ;--------------------------------------------------------
                            600 ; absolute internal ram data
                            601 ;--------------------------------------------------------
                            602 	.area IABS    (ABS,DATA)
                            603 	.area IABS    (ABS,DATA)
                            604 ;--------------------------------------------------------
                            605 ; bit data
                            606 ;--------------------------------------------------------
                            607 	.area BSEG    (BIT)
                            608 ;--------------------------------------------------------
                            609 ; paged external ram data
                            610 ;--------------------------------------------------------
                            611 	.area PSEG    (PAG,XDATA)
                            612 ;--------------------------------------------------------
                            613 ; external ram data
                            614 ;--------------------------------------------------------
                            615 	.area XSEG    (XDATA)
   0000                     616 _rf_read_rx_payload_PARM_2:
   0000                     617 	.ds 2
   0002                     618 _rf_read_rx_payload_dataptr_1_37:
   0002                     619 	.ds 3
   0005                     620 _rf_configure_debug_lite_PARM_2:
   0005                     621 	.ds 1
   0006                     622 _rf_configure_debug_lite_rx_1_39:
   0006                     623 	.ds 1
   0007                     624 _rf_configure_debug_lite_config_1_40:
   0007                     625 	.ds 1
   0008                     626 _rf_write_register_PARM_2:
   0008                     627 	.ds 3
   000B                     628 _rf_write_register_PARM_3:
   000B                     629 	.ds 2
   000D                     630 _rf_write_register_regnumber_1_42:
   000D                     631 	.ds 1
   000E                     632 _rf_write_tx_payload_PARM_2:
   000E                     633 	.ds 2
   0010                     634 _rf_write_tx_payload_PARM_3:
   0010                     635 	.ds 1
   0011                     636 _rf_write_tx_payload_dataptr_1_45:
   0011                     637 	.ds 3
   0014                     638 _rf_set_as_rx_rx_active_mode_1_49:
   0014                     639 	.ds 1
   0015                     640 _rf_set_as_rx_config_1_50:
   0015                     641 	.ds 1
   0016                     642 _rf_irq_clear_all_dataptr_1_54:
   0016                     643 	.ds 1
   0017                     644 _rf_set_as_tx_config_1_55:
   0017                     645 	.ds 1
   0018                     646 _rf_spi_execute_command_PARM_2:
   0018                     647 	.ds 3
   001B                     648 _rf_spi_execute_command_PARM_3:
   001B                     649 	.ds 2
   001D                     650 _rf_spi_execute_command_PARM_4:
   001D                     651 	.ds 1
   001E                     652 _rf_spi_execute_command_instruction_1_57:
   001E                     653 	.ds 1
   001F                     654 _rf_spi_execute_command_status_1_58:
   001F                     655 	.ds 1
   0020                     656 _rf_spi_send_read_PARM_2:
   0020                     657 	.ds 2
   0022                     658 _rf_spi_send_read_PARM_3:
   0022                     659 	.ds 1
   0023                     660 _rf_spi_send_read_dataptr_1_59:
   0023                     661 	.ds 3
   0026                     662 _rf_power_up_param_PARM_2:
   0026                     663 	.ds 1
   0027                     664 _rf_power_up_param_rx_active_mode_1_63:
   0027                     665 	.ds 1
   0028                     666 _rf_read_register_PARM_2:
   0028                     667 	.ds 3
   002B                     668 _rf_read_register_PARM_3:
   002B                     669 	.ds 2
   002D                     670 _rf_read_register_regnumber_1_69:
   002D                     671 	.ds 1
   002E                     672 _rf_spi_send_read_byte_byte_1_71:
   002E                     673 	.ds 1
   002F                     674 _rf_set_rx_addr_PARM_2:
   002F                     675 	.ds 2
   0031                     676 _rf_set_rx_addr_PARM_3:
   0031                     677 	.ds 1
   0032                     678 _rf_set_rx_addr_address_1_73:
   0032                     679 	.ds 3
   0035                     680 _rf_power_down_config_1_76:
   0035                     681 	.ds 1
   0036                     682 _rf_power_up_rx_active_mode_1_78:
   0036                     683 	.ds 1
   0037                     684 _rf_power_up_config_1_79:
   0037                     685 	.ds 1
   0038                     686 _gpio_pin_configure_PARM_2:
   0038                     687 	.ds 1
   0039                     688 _gpio_pin_configure_gpio_pin_id_1_86:
   0039                     689 	.ds 1
   003A                     690 _gpio_pin_val_read_gpio_pin_id_1_108:
   003A                     691 	.ds 1
   003B                     692 _gpio_pin_val_read_value_1_109:
   003B                     693 	.ds 1
   003C                     694 _gpio_pin_val_clear_gpio_pin_id_1_116:
   003C                     695 	.ds 1
   003D                     696 _gpio_pin_val_set_gpio_pin_id_1_122:
   003D                     697 	.ds 1
   003E                     698 _gpio_pin_val_write_PARM_2:
   003E                     699 	.ds 1
   003F                     700 _gpio_pin_val_write_gpio_pin_id_1_128:
   003F                     701 	.ds 1
   0040                     702 _delay_us_microseconds_1_132:
   0040                     703 	.ds 2
   0042                     704 _delay_s_seconds_1_135:
   0042                     705 	.ds 2
   0044                     706 _delay_ms_milliseconds_1_138:
   0044                     707 	.ds 2
   0046                     708 _pwm_configure_pwm_config_options_1_143:
   0046                     709 	.ds 1
   0047                     710 _pwm_start_PARM_2:
   0047                     711 	.ds 1
   0048                     712 _pwm_start_pwm_channel_1_145:
   0048                     713 	.ds 1
   0049                     714 _pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154:
   0049                     715 	.ds 1
   004A                     716 _pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156:
   004A                     717 	.ds 4
   004E                     718 _pwr_clk_mgmt_wakeup_configure_PARM_2:
   004E                     719 	.ds 2
   0050                     720 _pwr_clk_mgmt_wakeup_configure_wakeup_sources_config_options_1_158:
   0050                     721 	.ds 1
   0051                     722 _watchdog_set_wdsv_count_wdsv_value_1_161:
   0051                     723 	.ds 2
   0053                     724 _watchdog_start_and_set_timeout_in_ms_milliseconds_1_163:
   0053                     725 	.ds 4
   0057                     726 _watchdog_start_and_set_timeout_in_ms_wd_value_1_164:
   0057                     727 	.ds 2
   0059                     728 _interrupt_configure_ifp_PARM_2:
   0059                     729 	.ds 1
   005A                     730 _interrupt_configure_ifp_interrupt_ifp_input_1_167:
   005A                     731 	.ds 1
   005B                     732 _adc_configure_adc_config_options_1_181:
   005B                     733 	.ds 2
   005D                     734 _adc_set_input_channel_adc_channel_1_183:
   005D                     735 	.ds 1
   005E                     736 _adc_start_single_conversion_adc_channel_1_185:
   005E                     737 	.ds 1
   005F                     738 _adc_start_single_conversion_get_value_adc_channel_1_187:
   005F                     739 	.ds 1
   0060                     740 _timer0_configure_PARM_2:
   0060                     741 	.ds 2
   0062                     742 _timer0_configure_timer0_config_options_1_190:
   0062                     743 	.ds 1
   0063                     744 _timer1_configure_PARM_2:
   0063                     745 	.ds 2
   0065                     746 _timer1_configure_timer1_config_options_1_195:
   0065                     747 	.ds 1
   0066                     748 _uart_configure_manual_baud_calc_PARM_2:
   0066                     749 	.ds 2
   0068                     750 _uart_configure_manual_baud_calc_uart_config_options_1_205:
   0068                     751 	.ds 1
   0069                     752 _uart_calc_actual_baud_rate_from_s0rel_PARM_2:
   0069                     753 	.ds 1
   006A                     754 _uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_212:
   006A                     755 	.ds 2
   006C                     756 _uart_calc_actual_baud_rate_from_th1_PARM_2:
   006C                     757 	.ds 1
   006D                     758 _uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_214:
   006D                     759 	.ds 1
   006E                     760 _uart_calc_s0rel_value_PARM_2:
   006E                     761 	.ds 1
   006F                     762 _uart_calc_s0rel_value_desired_baud_rate_1_216:
   006F                     763 	.ds 4
   0073                     764 _uart_calc_th1_value_PARM_2:
   0073                     765 	.ds 1
   0074                     766 _uart_calc_th1_value_desired_baud_rate_1_218:
   0074                     767 	.ds 4
   0078                     768 _uart_configure_auto_baud_calc_PARM_2:
   0078                     769 	.ds 4
   007C                     770 _uart_configure_auto_baud_calc_uart_config_options_1_220:
   007C                     771 	.ds 1
   007D                     772 _rtc2_configure_PARM_2:
   007D                     773 	.ds 2
   007F                     774 _rtc2_configure_rtc2_config_options_1_230:
   007F                     775 	.ds 1
   0080                     776 _radiobegin_setup_1_233:
   0080                     777 	.ds 1
   0081                     778 _setChannel_channel_1_234:
   0081                     779 	.ds 1
   0082                     780 _setDataRate_speed_1_236:
   0082                     781 	.ds 1
   0083                     782 _setDataRate_buffer_1_237:
   0083                     783 	.ds 1
   0084                     784 _setAutoAck_enable_1_238:
   0084                     785 	.ds 1
   0085                     786 _setAutoAck_buffer_1_239:
   0085                     787 	.ds 1
   0086                     788 _setCRCLength_length_1_240:
   0086                     789 	.ds 1
   0087                     790 _setCRCLength_buffer_1_241:
   0087                     791 	.ds 1
   0088                     792 _setPALevel_setup_1_243:
   0088                     793 	.ds 1
   0089                     794 _openAllPipe_buffer_1_244:
   0089                     795 	.ds 5
   008E                     796 _openAllPipe_setup_1_244:
   008E                     797 	.ds 1
   008F                     798 _clientnf::
   008F                     799 	.ds 18
   00A1                     800 _setdimmer_value_1_245:
   00A1                     801 	.ds 1
   00A2                     802 _stdimm::
   00A2                     803 	.ds 1
   00A3                     804 _dimmon_mode_1_252:
   00A3                     805 	.ds 1
   00A4                     806 _servernf::
   00A4                     807 	.ds 32
   00C4                     808 _main_st_1_256:
   00C4                     809 	.ds 1
   00C5                     810 _main_countpause_1_256:
   00C5                     811 	.ds 1
   00C6                     812 _main_rewers_1_256:
   00C6                     813 	.ds 1
   00C7                     814 _main_statesend_1_256:
   00C7                     815 	.ds 4
   00CB                     816 _main_radiosend_1_256:
   00CB                     817 	.ds 4
                            818 ;--------------------------------------------------------
                            819 ; absolute external ram data
                            820 ;--------------------------------------------------------
                            821 	.area XABS    (ABS,XDATA)
                            822 ;--------------------------------------------------------
                            823 ; external initialized ram data
                            824 ;--------------------------------------------------------
                            825 	.area XISEG   (XDATA)
   00E2                     826 _valuepwm::
   00E2                     827 	.ds 2
   00E4                     828 _countrtc::
   00E4                     829 	.ds 4
                            830 	.area HOME    (CODE)
                            831 	.area GSINIT0 (CODE)
                            832 	.area GSINIT1 (CODE)
                            833 	.area GSINIT2 (CODE)
                            834 	.area GSINIT3 (CODE)
                            835 	.area GSINIT4 (CODE)
                            836 	.area GSINIT5 (CODE)
                            837 	.area GSINIT  (CODE)
                            838 	.area GSFINAL (CODE)
                            839 	.area CSEG    (CODE)
                            840 ;--------------------------------------------------------
                            841 ; interrupt vector 
                            842 ;--------------------------------------------------------
                            843 	.area HOME    (CODE)
   0000                     844 __interrupt_vect:
   0000 02 00 71      [24]  845 	ljmp	__sdcc_gsinit_startup
   0003 02 15 C3      [24]  846 	ljmp	_isr_ifp
   0006                     847 	.ds	5
   000B 32            [24]  848 	reti
   000C                     849 	.ds	7
   0013 32            [24]  850 	reti
   0014                     851 	.ds	7
   001B 02 16 26      [24]  852 	ljmp	_isr_t1
   001E                     853 	.ds	5
   0023 32            [24]  854 	reti
   0024                     855 	.ds	7
   002B 32            [24]  856 	reti
   002C                     857 	.ds	7
   0033 32            [24]  858 	reti
   0034                     859 	.ds	7
   003B 32            [24]  860 	reti
   003C                     861 	.ds	7
   0043 32            [24]  862 	reti
   0044                     863 	.ds	7
   004B 32            [24]  864 	reti
   004C                     865 	.ds	7
   0053 32            [24]  866 	reti
   0054                     867 	.ds	7
   005B 32            [24]  868 	reti
   005C                     869 	.ds	7
   0063 32            [24]  870 	reti
   0064                     871 	.ds	7
   006B 02 16 A3      [24]  872 	ljmp	_isr_rtc2
                            873 ;--------------------------------------------------------
                            874 ; global & static initialisations
                            875 ;--------------------------------------------------------
                            876 	.area HOME    (CODE)
                            877 	.area GSINIT  (CODE)
                            878 	.area GSFINAL (CODE)
                            879 	.area GSINIT  (CODE)
                            880 	.globl __sdcc_gsinit_startup
                            881 	.globl __sdcc_program_startup
                            882 	.globl __start__stack
                            883 	.globl __mcs51_genXINIT
                            884 	.globl __mcs51_genXRAMCLEAR
                            885 	.globl __mcs51_genRAMCLEAR
                            886 	.area GSFINAL (CODE)
   00CA 02 00 6E      [24]  887 	ljmp	__sdcc_program_startup
                            888 ;--------------------------------------------------------
                            889 ; Home
                            890 ;--------------------------------------------------------
                            891 	.area HOME    (CODE)
                            892 	.area HOME    (CODE)
   006E                     893 __sdcc_program_startup:
   006E 02 16 CA      [24]  894 	ljmp	_main
                            895 ;	return from main will return to caller
                            896 ;--------------------------------------------------------
                            897 ; code
                            898 ;--------------------------------------------------------
                            899 	.area CSEG    (CODE)
                            900 ;------------------------------------------------------------
                            901 ;Allocation info for local variables in function 'rf_read_rx_payload'
                            902 ;------------------------------------------------------------
                            903 ;len                       Allocated with name '_rf_read_rx_payload_PARM_2'
                            904 ;dataptr                   Allocated with name '_rf_read_rx_payload_dataptr_1_37'
                            905 ;status                    Allocated with name '_rf_read_rx_payload_status_1_38'
                            906 ;------------------------------------------------------------
                            907 ;	../src/rf/src/rf_read_rx_payload.c:48: unsigned char rf_read_rx_payload(unsigned char * dataptr, unsigned int len)
                            908 ;	-----------------------------------------
                            909 ;	 function rf_read_rx_payload
                            910 ;	-----------------------------------------
   00CD                     911 _rf_read_rx_payload:
                     0007   912 	ar7 = 0x07
                     0006   913 	ar6 = 0x06
                     0005   914 	ar5 = 0x05
                     0004   915 	ar4 = 0x04
                     0003   916 	ar3 = 0x03
                     0002   917 	ar2 = 0x02
                     0001   918 	ar1 = 0x01
                     0000   919 	ar0 = 0x00
   00CD AF F0         [24]  920 	mov	r7,b
   00CF AE 83         [24]  921 	mov	r6,dph
   00D1 E5 82         [12]  922 	mov	a,dpl
   00D3 90 00 02      [24]  923 	mov	dptr,#_rf_read_rx_payload_dataptr_1_37
   00D6 F0            [24]  924 	movx	@dptr,a
   00D7 EE            [12]  925 	mov	a,r6
   00D8 A3            [24]  926 	inc	dptr
   00D9 F0            [24]  927 	movx	@dptr,a
   00DA EF            [12]  928 	mov	a,r7
   00DB A3            [24]  929 	inc	dptr
   00DC F0            [24]  930 	movx	@dptr,a
                            931 ;	../src/rf/src/rf_read_rx_payload.c:53: rf_clear_ce();
   00DD C2 E8         [12]  932 	clr _RFCON_SB_RFCE 
                            933 ;	../src/rf/src/rf_read_rx_payload.c:54: status = rf_spi_execute_command(RF_R_RX_PAYLOAD, dataptr, len, true);
   00DF 90 00 02      [24]  934 	mov	dptr,#_rf_read_rx_payload_dataptr_1_37
   00E2 E0            [24]  935 	movx	a,@dptr
   00E3 FD            [12]  936 	mov	r5,a
   00E4 A3            [24]  937 	inc	dptr
   00E5 E0            [24]  938 	movx	a,@dptr
   00E6 FE            [12]  939 	mov	r6,a
   00E7 A3            [24]  940 	inc	dptr
   00E8 E0            [24]  941 	movx	a,@dptr
   00E9 FF            [12]  942 	mov	r7,a
   00EA 90 00 00      [24]  943 	mov	dptr,#_rf_read_rx_payload_PARM_2
   00ED E0            [24]  944 	movx	a,@dptr
   00EE FB            [12]  945 	mov	r3,a
   00EF A3            [24]  946 	inc	dptr
   00F0 E0            [24]  947 	movx	a,@dptr
   00F1 FC            [12]  948 	mov	r4,a
   00F2 90 00 18      [24]  949 	mov	dptr,#_rf_spi_execute_command_PARM_2
   00F5 ED            [12]  950 	mov	a,r5
   00F6 F0            [24]  951 	movx	@dptr,a
   00F7 EE            [12]  952 	mov	a,r6
   00F8 A3            [24]  953 	inc	dptr
   00F9 F0            [24]  954 	movx	@dptr,a
   00FA EF            [12]  955 	mov	a,r7
   00FB A3            [24]  956 	inc	dptr
   00FC F0            [24]  957 	movx	@dptr,a
   00FD 90 00 1B      [24]  958 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0100 EB            [12]  959 	mov	a,r3
   0101 F0            [24]  960 	movx	@dptr,a
   0102 EC            [12]  961 	mov	a,r4
   0103 A3            [24]  962 	inc	dptr
   0104 F0            [24]  963 	movx	@dptr,a
   0105 90 00 1D      [24]  964 	mov	dptr,#_rf_spi_execute_command_PARM_4
   0108 74 01         [12]  965 	mov	a,#0x01
   010A F0            [24]  966 	movx	@dptr,a
   010B 75 82 61      [24]  967 	mov	dpl,#0x61
   010E 12 03 02      [24]  968 	lcall	_rf_spi_execute_command
   0111 AF 82         [24]  969 	mov	r7,dpl
                            970 ;	../src/rf/src/rf_read_rx_payload.c:55: rf_set_ce();
   0113 D2 E8         [12]  971 	setb _RFCON_SB_RFCE 
   0115 90 00 04      [24]  972 	mov	dptr,#0x0004
   0118 C0 07         [24]  973 	push	ar7
   011A 12 09 0F      [24]  974 	lcall	_delay_us
   011D D0 07         [24]  975 	pop	ar7
                            976 ;	../src/rf/src/rf_read_rx_payload.c:57: return status; //Return the STATUS register value
   011F 8F 82         [24]  977 	mov	dpl,r7
   0121 22            [24]  978 	ret
                            979 ;------------------------------------------------------------
                            980 ;Allocation info for local variables in function 'rf_configure_debug_lite'
                            981 ;------------------------------------------------------------
                            982 ;p0_payload_width          Allocated with name '_rf_configure_debug_lite_PARM_2'
                            983 ;rx                        Allocated with name '_rf_configure_debug_lite_rx_1_39'
                            984 ;config                    Allocated with name '_rf_configure_debug_lite_config_1_40'
                            985 ;------------------------------------------------------------
                            986 ;	../src/rf/src/rf_configure_debug_lite.c:48: void rf_configure_debug_lite(bool rx, unsigned char p0_payload_width)
                            987 ;	-----------------------------------------
                            988 ;	 function rf_configure_debug_lite
                            989 ;	-----------------------------------------
   0122                     990 _rf_configure_debug_lite:
   0122 E5 82         [12]  991 	mov	a,dpl
   0124 90 00 06      [24]  992 	mov	dptr,#_rf_configure_debug_lite_rx_1_39
   0127 F0            [24]  993 	movx	@dptr,a
                            994 ;	../src/rf/src/rf_configure_debug_lite.c:52: rf_spi_configure_enable(); //Enable RF SPI
   0128 12 01 C6      [24]  995 	lcall	_rf_spi_configure_enable
                            996 ;	../src/rf/src/rf_configure_debug_lite.c:55: config = 0;
   012B 90 00 07      [24]  997 	mov	dptr,#_rf_configure_debug_lite_config_1_40
   012E E4            [12]  998 	clr	a
   012F F0            [24]  999 	movx	@dptr,a
                           1000 ;	../src/rf/src/rf_configure_debug_lite.c:56: rf_write_register(RF_EN_AA, &config, 1); //Turn auto-acknowledge off
   0130 90 00 08      [24] 1001 	mov	dptr,#_rf_write_register_PARM_2
   0133 74 07         [12] 1002 	mov	a,#_rf_configure_debug_lite_config_1_40
   0135 F0            [24] 1003 	movx	@dptr,a
   0136 74 00         [12] 1004 	mov	a,#(_rf_configure_debug_lite_config_1_40 >> 8)
   0138 A3            [24] 1005 	inc	dptr
   0139 F0            [24] 1006 	movx	@dptr,a
   013A E4            [12] 1007 	clr	a
   013B A3            [24] 1008 	inc	dptr
   013C F0            [24] 1009 	movx	@dptr,a
   013D 90 00 0B      [24] 1010 	mov	dptr,#_rf_write_register_PARM_3
   0140 74 01         [12] 1011 	mov	a,#0x01
   0142 F0            [24] 1012 	movx	@dptr,a
   0143 E4            [12] 1013 	clr	a
   0144 A3            [24] 1014 	inc	dptr
   0145 F0            [24] 1015 	movx	@dptr,a
   0146 75 82 01      [24] 1016 	mov	dpl,#0x01
   0149 12 01 89      [24] 1017 	lcall	_rf_write_register
                           1018 ;	../src/rf/src/rf_configure_debug_lite.c:59: config = RF_CONFIG_DEFAULT_VAL; //Set config to the default value of the CONFIG register
   014C 90 00 07      [24] 1019 	mov	dptr,#_rf_configure_debug_lite_config_1_40
   014F 74 08         [12] 1020 	mov	a,#0x08
   0151 F0            [24] 1021 	movx	@dptr,a
                           1022 ;	../src/rf/src/rf_configure_debug_lite.c:62: rf_write_register(RF_RX_PW_P0, &p0_payload_width, 1);
   0152 90 00 08      [24] 1023 	mov	dptr,#_rf_write_register_PARM_2
   0155 74 05         [12] 1024 	mov	a,#_rf_configure_debug_lite_PARM_2
   0157 F0            [24] 1025 	movx	@dptr,a
   0158 74 00         [12] 1026 	mov	a,#(_rf_configure_debug_lite_PARM_2 >> 8)
   015A A3            [24] 1027 	inc	dptr
   015B F0            [24] 1028 	movx	@dptr,a
   015C E4            [12] 1029 	clr	a
   015D A3            [24] 1030 	inc	dptr
   015E F0            [24] 1031 	movx	@dptr,a
   015F 90 00 0B      [24] 1032 	mov	dptr,#_rf_write_register_PARM_3
   0162 74 01         [12] 1033 	mov	a,#0x01
   0164 F0            [24] 1034 	movx	@dptr,a
   0165 E4            [12] 1035 	clr	a
   0166 A3            [24] 1036 	inc	dptr
   0167 F0            [24] 1037 	movx	@dptr,a
   0168 75 82 11      [24] 1038 	mov	dpl,#0x11
   016B 12 01 89      [24] 1039 	lcall	_rf_write_register
                           1040 ;	../src/rf/src/rf_configure_debug_lite.c:65: if(rx != false)
   016E 90 00 06      [24] 1041 	mov	dptr,#_rf_configure_debug_lite_rx_1_39
   0171 E0            [24] 1042 	movx	a,@dptr
   0172 FF            [12] 1043 	mov	r7,a
   0173 60 06         [24] 1044 	jz	00102$
                           1045 ;	../src/rf/src/rf_configure_debug_lite.c:67: config |= RF_CONFIG_PRIM_RX;
   0175 90 00 07      [24] 1046 	mov	dptr,#_rf_configure_debug_lite_config_1_40
   0178 74 09         [12] 1047 	mov	a,#0x09
   017A F0            [24] 1048 	movx	@dptr,a
   017B                    1049 00102$:
                           1050 ;	../src/rf/src/rf_configure_debug_lite.c:70: rf_power_up_param(true, config);
   017B 90 00 07      [24] 1051 	mov	dptr,#_rf_configure_debug_lite_config_1_40
   017E E0            [24] 1052 	movx	a,@dptr
   017F 90 00 26      [24] 1053 	mov	dptr,#_rf_power_up_param_PARM_2
   0182 F0            [24] 1054 	movx	@dptr,a
   0183 75 82 01      [24] 1055 	mov	dpl,#0x01
   0186 02 03 F1      [24] 1056 	ljmp	_rf_power_up_param
                           1057 ;------------------------------------------------------------
                           1058 ;Allocation info for local variables in function 'rf_write_register'
                           1059 ;------------------------------------------------------------
                           1060 ;dataptr                   Allocated with name '_rf_write_register_PARM_2'
                           1061 ;len                       Allocated with name '_rf_write_register_PARM_3'
                           1062 ;regnumber                 Allocated with name '_rf_write_register_regnumber_1_42'
                           1063 ;------------------------------------------------------------
                           1064 ;	../src/rf/src/rf_write_register.c:49: unsigned char rf_write_register(unsigned char regnumber, unsigned char * dataptr, unsigned int len)
                           1065 ;	-----------------------------------------
                           1066 ;	 function rf_write_register
                           1067 ;	-----------------------------------------
   0189                    1068 _rf_write_register:
   0189 E5 82         [12] 1069 	mov	a,dpl
                           1070 ;	../src/rf/src/rf_write_register.c:52: return rf_spi_execute_command(RF_W_REGISTER | (regnumber & RF_W_REGISTER_DATA), dataptr, len, false);
   018B 90 00 0D      [24] 1071 	mov	dptr,#_rf_write_register_regnumber_1_42
   018E F0            [24] 1072 	movx	@dptr,a
   018F FF            [12] 1073 	mov	r7,a
   0190 74 1F         [12] 1074 	mov	a,#0x1F
   0192 5F            [12] 1075 	anl	a,r7
   0193 44 20         [12] 1076 	orl	a,#0x20
   0195 FF            [12] 1077 	mov	r7,a
   0196 90 00 08      [24] 1078 	mov	dptr,#_rf_write_register_PARM_2
   0199 E0            [24] 1079 	movx	a,@dptr
   019A FC            [12] 1080 	mov	r4,a
   019B A3            [24] 1081 	inc	dptr
   019C E0            [24] 1082 	movx	a,@dptr
   019D FD            [12] 1083 	mov	r5,a
   019E A3            [24] 1084 	inc	dptr
   019F E0            [24] 1085 	movx	a,@dptr
   01A0 FE            [12] 1086 	mov	r6,a
   01A1 90 00 0B      [24] 1087 	mov	dptr,#_rf_write_register_PARM_3
   01A4 E0            [24] 1088 	movx	a,@dptr
   01A5 FA            [12] 1089 	mov	r2,a
   01A6 A3            [24] 1090 	inc	dptr
   01A7 E0            [24] 1091 	movx	a,@dptr
   01A8 FB            [12] 1092 	mov	r3,a
   01A9 90 00 18      [24] 1093 	mov	dptr,#_rf_spi_execute_command_PARM_2
   01AC EC            [12] 1094 	mov	a,r4
   01AD F0            [24] 1095 	movx	@dptr,a
   01AE ED            [12] 1096 	mov	a,r5
   01AF A3            [24] 1097 	inc	dptr
   01B0 F0            [24] 1098 	movx	@dptr,a
   01B1 EE            [12] 1099 	mov	a,r6
   01B2 A3            [24] 1100 	inc	dptr
   01B3 F0            [24] 1101 	movx	@dptr,a
   01B4 90 00 1B      [24] 1102 	mov	dptr,#_rf_spi_execute_command_PARM_3
   01B7 EA            [12] 1103 	mov	a,r2
   01B8 F0            [24] 1104 	movx	@dptr,a
   01B9 EB            [12] 1105 	mov	a,r3
   01BA A3            [24] 1106 	inc	dptr
   01BB F0            [24] 1107 	movx	@dptr,a
   01BC 90 00 1D      [24] 1108 	mov	dptr,#_rf_spi_execute_command_PARM_4
   01BF E4            [12] 1109 	clr	a
   01C0 F0            [24] 1110 	movx	@dptr,a
   01C1 8F 82         [24] 1111 	mov	dpl,r7
   01C3 02 03 02      [24] 1112 	ljmp	_rf_spi_execute_command
                           1113 ;------------------------------------------------------------
                           1114 ;Allocation info for local variables in function 'rf_spi_configure_enable'
                           1115 ;------------------------------------------------------------
                           1116 ;	../src/rf/src/rf_spi_configure_enable.c:47: void rf_spi_configure_enable()
                           1117 ;	-----------------------------------------
                           1118 ;	 function rf_spi_configure_enable
                           1119 ;	-----------------------------------------
   01C6                    1120 _rf_spi_configure_enable:
                           1121 ;	../src/rf/src/rf_spi_configure_enable.c:50: RFCON = 0x02;
   01C6 75 E8 02      [24] 1122 	mov	_RFCON,#0x02
                           1123 ;	../src/rf/src/rf_spi_configure_enable.c:51: RFCON = RFCON_RFCKEN;
   01C9 75 E8 04      [24] 1124 	mov	_RFCON,#0x04
   01CC 22            [24] 1125 	ret
                           1126 ;------------------------------------------------------------
                           1127 ;Allocation info for local variables in function 'rf_write_tx_payload'
                           1128 ;------------------------------------------------------------
                           1129 ;len                       Allocated with name '_rf_write_tx_payload_PARM_2'
                           1130 ;transmit                  Allocated with name '_rf_write_tx_payload_PARM_3'
                           1131 ;dataptr                   Allocated with name '_rf_write_tx_payload_dataptr_1_45'
                           1132 ;status                    Allocated with name '_rf_write_tx_payload_status_1_46'
                           1133 ;------------------------------------------------------------
                           1134 ;	../src/rf/src/rf_write_tx_payload.c:49: unsigned char rf_write_tx_payload(unsigned char * dataptr, unsigned int len, bool transmit)
                           1135 ;	-----------------------------------------
                           1136 ;	 function rf_write_tx_payload
                           1137 ;	-----------------------------------------
   01CD                    1138 _rf_write_tx_payload:
   01CD AF F0         [24] 1139 	mov	r7,b
   01CF AE 83         [24] 1140 	mov	r6,dph
   01D1 E5 82         [12] 1141 	mov	a,dpl
   01D3 90 00 11      [24] 1142 	mov	dptr,#_rf_write_tx_payload_dataptr_1_45
   01D6 F0            [24] 1143 	movx	@dptr,a
   01D7 EE            [12] 1144 	mov	a,r6
   01D8 A3            [24] 1145 	inc	dptr
   01D9 F0            [24] 1146 	movx	@dptr,a
   01DA EF            [12] 1147 	mov	a,r7
   01DB A3            [24] 1148 	inc	dptr
   01DC F0            [24] 1149 	movx	@dptr,a
                           1150 ;	../src/rf/src/rf_write_tx_payload.c:53: status = rf_spi_execute_command(RF_W_TX_PAYLOAD, dataptr, len, false); //Write the payload
   01DD 90 00 11      [24] 1151 	mov	dptr,#_rf_write_tx_payload_dataptr_1_45
   01E0 E0            [24] 1152 	movx	a,@dptr
   01E1 FD            [12] 1153 	mov	r5,a
   01E2 A3            [24] 1154 	inc	dptr
   01E3 E0            [24] 1155 	movx	a,@dptr
   01E4 FE            [12] 1156 	mov	r6,a
   01E5 A3            [24] 1157 	inc	dptr
   01E6 E0            [24] 1158 	movx	a,@dptr
   01E7 FF            [12] 1159 	mov	r7,a
   01E8 90 00 0E      [24] 1160 	mov	dptr,#_rf_write_tx_payload_PARM_2
   01EB E0            [24] 1161 	movx	a,@dptr
   01EC FB            [12] 1162 	mov	r3,a
   01ED A3            [24] 1163 	inc	dptr
   01EE E0            [24] 1164 	movx	a,@dptr
   01EF FC            [12] 1165 	mov	r4,a
   01F0 90 00 18      [24] 1166 	mov	dptr,#_rf_spi_execute_command_PARM_2
   01F3 ED            [12] 1167 	mov	a,r5
   01F4 F0            [24] 1168 	movx	@dptr,a
   01F5 EE            [12] 1169 	mov	a,r6
   01F6 A3            [24] 1170 	inc	dptr
   01F7 F0            [24] 1171 	movx	@dptr,a
   01F8 EF            [12] 1172 	mov	a,r7
   01F9 A3            [24] 1173 	inc	dptr
   01FA F0            [24] 1174 	movx	@dptr,a
   01FB 90 00 1B      [24] 1175 	mov	dptr,#_rf_spi_execute_command_PARM_3
   01FE EB            [12] 1176 	mov	a,r3
   01FF F0            [24] 1177 	movx	@dptr,a
   0200 EC            [12] 1178 	mov	a,r4
   0201 A3            [24] 1179 	inc	dptr
   0202 F0            [24] 1180 	movx	@dptr,a
   0203 90 00 1D      [24] 1181 	mov	dptr,#_rf_spi_execute_command_PARM_4
   0206 E4            [12] 1182 	clr	a
   0207 F0            [24] 1183 	movx	@dptr,a
   0208 75 82 A0      [24] 1184 	mov	dpl,#0xA0
   020B 12 03 02      [24] 1185 	lcall	_rf_spi_execute_command
   020E AF 82         [24] 1186 	mov	r7,dpl
                           1187 ;	../src/rf/src/rf_write_tx_payload.c:56: if(transmit == true)
   0210 90 00 10      [24] 1188 	mov	dptr,#_rf_write_tx_payload_PARM_3
   0213 E0            [24] 1189 	movx	a,@dptr
   0214 FE            [12] 1190 	mov	r6,a
   0215 BE 01 07      [24] 1191 	cjne	r6,#0x01,00102$
                           1192 ;	../src/rf/src/rf_write_tx_payload.c:58: rf_transmit();
   0218 C0 07         [24] 1193 	push	ar7
   021A 12 02 22      [24] 1194 	lcall	_rf_transmit
   021D D0 07         [24] 1195 	pop	ar7
   021F                    1196 00102$:
                           1197 ;	../src/rf/src/rf_write_tx_payload.c:61: return status; //Return the value of STATUS
   021F 8F 82         [24] 1198 	mov	dpl,r7
   0221 22            [24] 1199 	ret
                           1200 ;------------------------------------------------------------
                           1201 ;Allocation info for local variables in function 'rf_transmit'
                           1202 ;------------------------------------------------------------
                           1203 ;	../src/rf/src/rf_transmit.c:47: void rf_transmit()
                           1204 ;	-----------------------------------------
                           1205 ;	 function rf_transmit
                           1206 ;	-----------------------------------------
   0222                    1207 _rf_transmit:
                           1208 ;	../src/rf/src/rf_transmit.c:50: rf_set_ce();
   0222 D2 E8         [12] 1209 	setb _RFCON_SB_RFCE 
   0224 90 00 04      [24] 1210 	mov	dptr,#0x0004
   0227 12 09 0F      [24] 1211 	lcall	_delay_us
                           1212 ;	../src/rf/src/rf_transmit.c:51: delay_us(10);
   022A 90 00 0A      [24] 1213 	mov	dptr,#0x000A
   022D 12 09 0F      [24] 1214 	lcall	_delay_us
                           1215 ;	../src/rf/src/rf_transmit.c:52: rf_clear_ce();
   0230 C2 E8         [12] 1216 	clr _RFCON_SB_RFCE 
   0232 22            [24] 1217 	ret
                           1218 ;------------------------------------------------------------
                           1219 ;Allocation info for local variables in function 'rf_set_as_rx'
                           1220 ;------------------------------------------------------------
                           1221 ;rx_active_mode            Allocated with name '_rf_set_as_rx_rx_active_mode_1_49'
                           1222 ;config                    Allocated with name '_rf_set_as_rx_config_1_50'
                           1223 ;------------------------------------------------------------
                           1224 ;	../src/rf/src/rf_set_as_rx.c:47: void rf_set_as_rx(bool rx_active_mode)
                           1225 ;	-----------------------------------------
                           1226 ;	 function rf_set_as_rx
                           1227 ;	-----------------------------------------
   0233                    1228 _rf_set_as_rx:
   0233 E5 82         [12] 1229 	mov	a,dpl
   0235 90 00 14      [24] 1230 	mov	dptr,#_rf_set_as_rx_rx_active_mode_1_49
   0238 F0            [24] 1231 	movx	@dptr,a
                           1232 ;	../src/rf/src/rf_set_as_rx.c:51: rf_read_register(RF_CONFIG, &config, 1); //Read the current CONFIG value
   0239 90 00 28      [24] 1233 	mov	dptr,#_rf_read_register_PARM_2
   023C 74 15         [12] 1234 	mov	a,#_rf_set_as_rx_config_1_50
   023E F0            [24] 1235 	movx	@dptr,a
   023F 74 00         [12] 1236 	mov	a,#(_rf_set_as_rx_config_1_50 >> 8)
   0241 A3            [24] 1237 	inc	dptr
   0242 F0            [24] 1238 	movx	@dptr,a
   0243 E4            [12] 1239 	clr	a
   0244 A3            [24] 1240 	inc	dptr
   0245 F0            [24] 1241 	movx	@dptr,a
   0246 90 00 2B      [24] 1242 	mov	dptr,#_rf_read_register_PARM_3
   0249 74 01         [12] 1243 	mov	a,#0x01
   024B F0            [24] 1244 	movx	@dptr,a
   024C E4            [12] 1245 	clr	a
   024D A3            [24] 1246 	inc	dptr
   024E F0            [24] 1247 	movx	@dptr,a
   024F 75 82 00      [24] 1248 	mov	dpl,#0x00
   0252 12 04 3D      [24] 1249 	lcall	_rf_read_register
                           1250 ;	../src/rf/src/rf_set_as_rx.c:54: if((config & RF_CONFIG_PRIM_RX) != 0)
   0255 90 00 15      [24] 1251 	mov	dptr,#_rf_set_as_rx_config_1_50
   0258 E0            [24] 1252 	movx	a,@dptr
   0259 FF            [12] 1253 	mov	r7,a
   025A 30 E0 01      [24] 1254 	jnb	acc.0,00102$
                           1255 ;	../src/rf/src/rf_set_as_rx.c:56: return;
   025D 22            [24] 1256 	ret
   025E                    1257 00102$:
                           1258 ;	../src/rf/src/rf_set_as_rx.c:60: config |= RF_CONFIG_PRIM_RX;
   025E 90 00 15      [24] 1259 	mov	dptr,#_rf_set_as_rx_config_1_50
   0261 74 01         [12] 1260 	mov	a,#0x01
   0263 4F            [12] 1261 	orl	a,r7
   0264 F0            [24] 1262 	movx	@dptr,a
                           1263 ;	../src/rf/src/rf_set_as_rx.c:61: rf_write_register(RF_CONFIG, &config, 1);
   0265 90 00 08      [24] 1264 	mov	dptr,#_rf_write_register_PARM_2
   0268 74 15         [12] 1265 	mov	a,#_rf_set_as_rx_config_1_50
   026A F0            [24] 1266 	movx	@dptr,a
   026B 74 00         [12] 1267 	mov	a,#(_rf_set_as_rx_config_1_50 >> 8)
   026D A3            [24] 1268 	inc	dptr
   026E F0            [24] 1269 	movx	@dptr,a
   026F E4            [12] 1270 	clr	a
   0270 A3            [24] 1271 	inc	dptr
   0271 F0            [24] 1272 	movx	@dptr,a
   0272 90 00 0B      [24] 1273 	mov	dptr,#_rf_write_register_PARM_3
   0275 74 01         [12] 1274 	mov	a,#0x01
   0277 F0            [24] 1275 	movx	@dptr,a
   0278 E4            [12] 1276 	clr	a
   0279 A3            [24] 1277 	inc	dptr
   027A F0            [24] 1278 	movx	@dptr,a
   027B 75 82 00      [24] 1279 	mov	dpl,#0x00
   027E 12 01 89      [24] 1280 	lcall	_rf_write_register
                           1281 ;	../src/rf/src/rf_set_as_rx.c:64: if(rx_active_mode != false)
   0281 90 00 14      [24] 1282 	mov	dptr,#_rf_set_as_rx_rx_active_mode_1_49
   0284 E0            [24] 1283 	movx	a,@dptr
   0285 FF            [12] 1284 	mov	r7,a
   0286 60 08         [24] 1285 	jz	00104$
                           1286 ;	../src/rf/src/rf_set_as_rx.c:66: rf_set_ce();
   0288 D2 E8         [12] 1287 	setb _RFCON_SB_RFCE 
   028A 90 00 04      [24] 1288 	mov	dptr,#0x0004
   028D 02 09 0F      [24] 1289 	ljmp	_delay_us
   0290                    1290 00104$:
                           1291 ;	../src/rf/src/rf_set_as_rx.c:70: rf_clear_ce();
   0290 C2 E8         [12] 1292 	clr _RFCON_SB_RFCE 
   0292 22            [24] 1293 	ret
                           1294 ;------------------------------------------------------------
                           1295 ;Allocation info for local variables in function 'rf_irq_clear_all'
                           1296 ;------------------------------------------------------------
                           1297 ;dataptr                   Allocated with name '_rf_irq_clear_all_dataptr_1_54'
                           1298 ;------------------------------------------------------------
                           1299 ;	../src/rf/src/rf_irq_clear_all.c:47: void rf_irq_clear_all()
                           1300 ;	-----------------------------------------
                           1301 ;	 function rf_irq_clear_all
                           1302 ;	-----------------------------------------
   0293                    1303 _rf_irq_clear_all:
                           1304 ;	../src/rf/src/rf_irq_clear_all.c:50: unsigned char dataptr = RF_STATUS_RX_DR | RF_STATUS_TX_DS | RF_STATUS_MAX_RT;
   0293 90 00 16      [24] 1305 	mov	dptr,#_rf_irq_clear_all_dataptr_1_54
   0296 74 70         [12] 1306 	mov	a,#0x70
   0298 F0            [24] 1307 	movx	@dptr,a
                           1308 ;	../src/rf/src/rf_irq_clear_all.c:52: rf_write_register(RF_STATUS, &dataptr, 1);
   0299 90 00 08      [24] 1309 	mov	dptr,#_rf_write_register_PARM_2
   029C 74 16         [12] 1310 	mov	a,#_rf_irq_clear_all_dataptr_1_54
   029E F0            [24] 1311 	movx	@dptr,a
   029F 74 00         [12] 1312 	mov	a,#(_rf_irq_clear_all_dataptr_1_54 >> 8)
   02A1 A3            [24] 1313 	inc	dptr
   02A2 F0            [24] 1314 	movx	@dptr,a
   02A3 E4            [12] 1315 	clr	a
   02A4 A3            [24] 1316 	inc	dptr
   02A5 F0            [24] 1317 	movx	@dptr,a
   02A6 90 00 0B      [24] 1318 	mov	dptr,#_rf_write_register_PARM_3
   02A9 74 01         [12] 1319 	mov	a,#0x01
   02AB F0            [24] 1320 	movx	@dptr,a
   02AC E4            [12] 1321 	clr	a
   02AD A3            [24] 1322 	inc	dptr
   02AE F0            [24] 1323 	movx	@dptr,a
   02AF 75 82 07      [24] 1324 	mov	dpl,#0x07
   02B2 12 01 89      [24] 1325 	lcall	_rf_write_register
                           1326 ;	../src/rf/src/rf_irq_clear_all.c:54: sbit_clear(IRCON_SB_RFIRQ); //Clear the master interrupt
   02B5 C2 C1         [12] 1327 	clr _IRCON_SB_RFIRQ 
   02B7 22            [24] 1328 	ret
                           1329 ;------------------------------------------------------------
                           1330 ;Allocation info for local variables in function 'rf_set_as_tx'
                           1331 ;------------------------------------------------------------
                           1332 ;config                    Allocated with name '_rf_set_as_tx_config_1_55'
                           1333 ;------------------------------------------------------------
                           1334 ;	../src/rf/src/rf_set_as_tx.c:47: void rf_set_as_tx()
                           1335 ;	-----------------------------------------
                           1336 ;	 function rf_set_as_tx
                           1337 ;	-----------------------------------------
   02B8                    1338 _rf_set_as_tx:
                           1339 ;	../src/rf/src/rf_set_as_tx.c:51: rf_read_register(RF_CONFIG, &config, 1); //Read the current CONFIG value
   02B8 90 00 28      [24] 1340 	mov	dptr,#_rf_read_register_PARM_2
   02BB 74 17         [12] 1341 	mov	a,#_rf_set_as_tx_config_1_55
   02BD F0            [24] 1342 	movx	@dptr,a
   02BE 74 00         [12] 1343 	mov	a,#(_rf_set_as_tx_config_1_55 >> 8)
   02C0 A3            [24] 1344 	inc	dptr
   02C1 F0            [24] 1345 	movx	@dptr,a
   02C2 E4            [12] 1346 	clr	a
   02C3 A3            [24] 1347 	inc	dptr
   02C4 F0            [24] 1348 	movx	@dptr,a
   02C5 90 00 2B      [24] 1349 	mov	dptr,#_rf_read_register_PARM_3
   02C8 74 01         [12] 1350 	mov	a,#0x01
   02CA F0            [24] 1351 	movx	@dptr,a
   02CB E4            [12] 1352 	clr	a
   02CC A3            [24] 1353 	inc	dptr
   02CD F0            [24] 1354 	movx	@dptr,a
   02CE 75 82 00      [24] 1355 	mov	dpl,#0x00
   02D1 12 04 3D      [24] 1356 	lcall	_rf_read_register
                           1357 ;	../src/rf/src/rf_set_as_tx.c:54: if((config & RF_CONFIG_PRIM_RX) == 0)
   02D4 90 00 17      [24] 1358 	mov	dptr,#_rf_set_as_tx_config_1_55
   02D7 E0            [24] 1359 	movx	a,@dptr
   02D8 FF            [12] 1360 	mov	r7,a
   02D9 20 E0 01      [24] 1361 	jb	acc.0,00102$
                           1362 ;	../src/rf/src/rf_set_as_tx.c:56: return;
   02DC 22            [24] 1363 	ret
   02DD                    1364 00102$:
                           1365 ;	../src/rf/src/rf_set_as_tx.c:59: rf_clear_ce(); //Clear the CE pin
   02DD C2 E8         [12] 1366 	clr _RFCON_SB_RFCE 
                           1367 ;	../src/rf/src/rf_set_as_tx.c:62: config &= (~RF_CONFIG_PRIM_RX);
   02DF 90 00 17      [24] 1368 	mov	dptr,#_rf_set_as_tx_config_1_55
   02E2 74 FE         [12] 1369 	mov	a,#0xFE
   02E4 5F            [12] 1370 	anl	a,r7
   02E5 F0            [24] 1371 	movx	@dptr,a
                           1372 ;	../src/rf/src/rf_set_as_tx.c:63: rf_write_register(RF_CONFIG, &config, 1);
   02E6 90 00 08      [24] 1373 	mov	dptr,#_rf_write_register_PARM_2
   02E9 74 17         [12] 1374 	mov	a,#_rf_set_as_tx_config_1_55
   02EB F0            [24] 1375 	movx	@dptr,a
   02EC 74 00         [12] 1376 	mov	a,#(_rf_set_as_tx_config_1_55 >> 8)
   02EE A3            [24] 1377 	inc	dptr
   02EF F0            [24] 1378 	movx	@dptr,a
   02F0 E4            [12] 1379 	clr	a
   02F1 A3            [24] 1380 	inc	dptr
   02F2 F0            [24] 1381 	movx	@dptr,a
   02F3 90 00 0B      [24] 1382 	mov	dptr,#_rf_write_register_PARM_3
   02F6 74 01         [12] 1383 	mov	a,#0x01
   02F8 F0            [24] 1384 	movx	@dptr,a
   02F9 E4            [12] 1385 	clr	a
   02FA A3            [24] 1386 	inc	dptr
   02FB F0            [24] 1387 	movx	@dptr,a
   02FC 75 82 00      [24] 1388 	mov	dpl,#0x00
   02FF 02 01 89      [24] 1389 	ljmp	_rf_write_register
                           1390 ;------------------------------------------------------------
                           1391 ;Allocation info for local variables in function 'rf_spi_execute_command'
                           1392 ;------------------------------------------------------------
                           1393 ;dataptr                   Allocated with name '_rf_spi_execute_command_PARM_2'
                           1394 ;len                       Allocated with name '_rf_spi_execute_command_PARM_3'
                           1395 ;copydata                  Allocated with name '_rf_spi_execute_command_PARM_4'
                           1396 ;instruction               Allocated with name '_rf_spi_execute_command_instruction_1_57'
                           1397 ;status                    Allocated with name '_rf_spi_execute_command_status_1_58'
                           1398 ;------------------------------------------------------------
                           1399 ;	../src/rf/src/rf_spi_execute_command.c:50: unsigned char rf_spi_execute_command(unsigned char instruction, unsigned char * dataptr, unsigned int len, bool copydata)
                           1400 ;	-----------------------------------------
                           1401 ;	 function rf_spi_execute_command
                           1402 ;	-----------------------------------------
   0302                    1403 _rf_spi_execute_command:
   0302 E5 82         [12] 1404 	mov	a,dpl
                           1405 ;	../src/rf/src/rf_spi_execute_command.c:52: unsigned char status = instruction; //status writes the instruction, then reads the current STATUS value
   0304 90 00 1E      [24] 1406 	mov	dptr,#_rf_spi_execute_command_instruction_1_57
   0307 F0            [24] 1407 	movx	@dptr,a
   0308 FF            [12] 1408 	mov	r7,a
   0309 90 00 1F      [24] 1409 	mov	dptr,#_rf_spi_execute_command_status_1_58
   030C F0            [24] 1410 	movx	@dptr,a
                           1411 ;	../src/rf/src/rf_spi_execute_command.c:54: rf_clear_csn(); //Clear CSN to start the transaction
   030D C2 E9         [12] 1412 	clr _RFCON_SB_RFCSN 
                           1413 ;	../src/rf/src/rf_spi_execute_command.c:57: rf_spi_send_read(&status, 1, true);
   030F 90 00 20      [24] 1414 	mov	dptr,#_rf_spi_send_read_PARM_2
   0312 74 01         [12] 1415 	mov	a,#0x01
   0314 F0            [24] 1416 	movx	@dptr,a
   0315 E4            [12] 1417 	clr	a
   0316 A3            [24] 1418 	inc	dptr
   0317 F0            [24] 1419 	movx	@dptr,a
   0318 90 00 22      [24] 1420 	mov	dptr,#_rf_spi_send_read_PARM_3
   031B 74 01         [12] 1421 	mov	a,#0x01
   031D F0            [24] 1422 	movx	@dptr,a
   031E 90 00 1F      [24] 1423 	mov	dptr,#_rf_spi_execute_command_status_1_58
   0321 75 F0 00      [24] 1424 	mov	b,#0x00
   0324 12 03 5E      [24] 1425 	lcall	_rf_spi_send_read
                           1426 ;	../src/rf/src/rf_spi_execute_command.c:58: rf_spi_send_read(dataptr, len, copydata);
   0327 90 00 18      [24] 1427 	mov	dptr,#_rf_spi_execute_command_PARM_2
   032A E0            [24] 1428 	movx	a,@dptr
   032B FD            [12] 1429 	mov	r5,a
   032C A3            [24] 1430 	inc	dptr
   032D E0            [24] 1431 	movx	a,@dptr
   032E FE            [12] 1432 	mov	r6,a
   032F A3            [24] 1433 	inc	dptr
   0330 E0            [24] 1434 	movx	a,@dptr
   0331 FF            [12] 1435 	mov	r7,a
   0332 90 00 1B      [24] 1436 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0335 E0            [24] 1437 	movx	a,@dptr
   0336 FB            [12] 1438 	mov	r3,a
   0337 A3            [24] 1439 	inc	dptr
   0338 E0            [24] 1440 	movx	a,@dptr
   0339 FC            [12] 1441 	mov	r4,a
   033A 90 00 1D      [24] 1442 	mov	dptr,#_rf_spi_execute_command_PARM_4
   033D E0            [24] 1443 	movx	a,@dptr
   033E FA            [12] 1444 	mov	r2,a
   033F 90 00 20      [24] 1445 	mov	dptr,#_rf_spi_send_read_PARM_2
   0342 EB            [12] 1446 	mov	a,r3
   0343 F0            [24] 1447 	movx	@dptr,a
   0344 EC            [12] 1448 	mov	a,r4
   0345 A3            [24] 1449 	inc	dptr
   0346 F0            [24] 1450 	movx	@dptr,a
   0347 90 00 22      [24] 1451 	mov	dptr,#_rf_spi_send_read_PARM_3
   034A EA            [12] 1452 	mov	a,r2
   034B F0            [24] 1453 	movx	@dptr,a
   034C 8D 82         [24] 1454 	mov	dpl,r5
   034E 8E 83         [24] 1455 	mov	dph,r6
   0350 8F F0         [24] 1456 	mov	b,r7
   0352 12 03 5E      [24] 1457 	lcall	_rf_spi_send_read
                           1458 ;	../src/rf/src/rf_spi_execute_command.c:60: rf_set_csn(); //Set CSN to end the transaction
   0355 D2 E9         [12] 1459 	setb _RFCON_SB_RFCSN 
                           1460 ;	../src/rf/src/rf_spi_execute_command.c:62: return status; //Return the value of STATUS
   0357 90 00 1F      [24] 1461 	mov	dptr,#_rf_spi_execute_command_status_1_58
   035A E0            [24] 1462 	movx	a,@dptr
   035B F5 82         [12] 1463 	mov	dpl,a
   035D 22            [24] 1464 	ret
                           1465 ;------------------------------------------------------------
                           1466 ;Allocation info for local variables in function 'rf_spi_send_read'
                           1467 ;------------------------------------------------------------
                           1468 ;sloc0                     Allocated with name '_rf_spi_send_read_sloc0_1_0'
                           1469 ;sloc1                     Allocated with name '_rf_spi_send_read_sloc1_1_0'
                           1470 ;len                       Allocated with name '_rf_spi_send_read_PARM_2'
                           1471 ;copydata                  Allocated with name '_rf_spi_send_read_PARM_3'
                           1472 ;dataptr                   Allocated with name '_rf_spi_send_read_dataptr_1_59'
                           1473 ;i                         Allocated with name '_rf_spi_send_read_i_1_60'
                           1474 ;tempbyte                  Allocated with name '_rf_spi_send_read_tempbyte_1_60'
                           1475 ;------------------------------------------------------------
                           1476 ;	../src/rf/src/rf_spi_send_read.c:49: void rf_spi_send_read(unsigned char * dataptr, unsigned int len, bool copydata)
                           1477 ;	-----------------------------------------
                           1478 ;	 function rf_spi_send_read
                           1479 ;	-----------------------------------------
   035E                    1480 _rf_spi_send_read:
   035E AF F0         [24] 1481 	mov	r7,b
   0360 AE 83         [24] 1482 	mov	r6,dph
   0362 E5 82         [12] 1483 	mov	a,dpl
   0364 90 00 23      [24] 1484 	mov	dptr,#_rf_spi_send_read_dataptr_1_59
   0367 F0            [24] 1485 	movx	@dptr,a
   0368 EE            [12] 1486 	mov	a,r6
   0369 A3            [24] 1487 	inc	dptr
   036A F0            [24] 1488 	movx	@dptr,a
   036B EF            [12] 1489 	mov	a,r7
   036C A3            [24] 1490 	inc	dptr
   036D F0            [24] 1491 	movx	@dptr,a
                           1492 ;	../src/rf/src/rf_spi_send_read.c:55: for(i = 0; i < len; i++)
   036E 90 00 23      [24] 1493 	mov	dptr,#_rf_spi_send_read_dataptr_1_59
   0371 E0            [24] 1494 	movx	a,@dptr
   0372 FD            [12] 1495 	mov	r5,a
   0373 A3            [24] 1496 	inc	dptr
   0374 E0            [24] 1497 	movx	a,@dptr
   0375 FE            [12] 1498 	mov	r6,a
   0376 A3            [24] 1499 	inc	dptr
   0377 E0            [24] 1500 	movx	a,@dptr
   0378 FF            [12] 1501 	mov	r7,a
   0379 90 00 22      [24] 1502 	mov	dptr,#_rf_spi_send_read_PARM_3
   037C E0            [24] 1503 	movx	a,@dptr
   037D FC            [12] 1504 	mov	r4,a
   037E 90 00 20      [24] 1505 	mov	dptr,#_rf_spi_send_read_PARM_2
   0381 E0            [24] 1506 	movx	a,@dptr
   0382 FA            [12] 1507 	mov	r2,a
   0383 A3            [24] 1508 	inc	dptr
   0384 E0            [24] 1509 	movx	a,@dptr
   0385 FB            [12] 1510 	mov	r3,a
   0386 78 00         [12] 1511 	mov	r0,#0x00
   0388 79 00         [12] 1512 	mov	r1,#0x00
   038A                    1513 00105$:
   038A C3            [12] 1514 	clr	c
   038B E8            [12] 1515 	mov	a,r0
   038C 9A            [12] 1516 	subb	a,r2
   038D E9            [12] 1517 	mov	a,r1
   038E 9B            [12] 1518 	subb	a,r3
   038F 50 5F         [24] 1519 	jnc	00107$
                           1520 ;	../src/rf/src/rf_spi_send_read.c:57: tempbyte = rf_spi_send_read_byte(dataptr[i]); //Send the value, and then save the received value
   0391 C0 02         [24] 1521 	push	ar2
   0393 C0 03         [24] 1522 	push	ar3
   0395 E8            [12] 1523 	mov	a,r0
   0396 2D            [12] 1524 	add	a,r5
   0397 F5 08         [12] 1525 	mov	_rf_spi_send_read_sloc0_1_0,a
   0399 E9            [12] 1526 	mov	a,r1
   039A 3E            [12] 1527 	addc	a,r6
   039B F5 09         [12] 1528 	mov	(_rf_spi_send_read_sloc0_1_0 + 1),a
   039D 8F 0A         [24] 1529 	mov	(_rf_spi_send_read_sloc0_1_0 + 2),r7
   039F 85 08 82      [24] 1530 	mov	dpl,_rf_spi_send_read_sloc0_1_0
   03A2 85 09 83      [24] 1531 	mov	dph,(_rf_spi_send_read_sloc0_1_0 + 1)
   03A5 85 0A F0      [24] 1532 	mov	b,(_rf_spi_send_read_sloc0_1_0 + 2)
   03A8 12 1C 45      [24] 1533 	lcall	__gptrget
   03AB FB            [12] 1534 	mov	r3,a
   03AC F5 82         [12] 1535 	mov	dpl,a
   03AE C0 07         [24] 1536 	push	ar7
   03B0 C0 06         [24] 1537 	push	ar6
   03B2 C0 05         [24] 1538 	push	ar5
   03B4 C0 04         [24] 1539 	push	ar4
   03B6 C0 03         [24] 1540 	push	ar3
   03B8 C0 02         [24] 1541 	push	ar2
   03BA C0 01         [24] 1542 	push	ar1
   03BC C0 00         [24] 1543 	push	ar0
   03BE 12 04 78      [24] 1544 	lcall	_rf_spi_send_read_byte
   03C1 85 82 0B      [24] 1545 	mov	_rf_spi_send_read_sloc1_1_0,dpl
   03C4 D0 00         [24] 1546 	pop	ar0
   03C6 D0 01         [24] 1547 	pop	ar1
   03C8 D0 02         [24] 1548 	pop	ar2
   03CA D0 03         [24] 1549 	pop	ar3
   03CC D0 04         [24] 1550 	pop	ar4
   03CE D0 05         [24] 1551 	pop	ar5
   03D0 D0 06         [24] 1552 	pop	ar6
   03D2 D0 07         [24] 1553 	pop	ar7
                           1554 ;	../src/rf/src/rf_spi_send_read.c:60: if(copydata != false)
   03D4 D0 03         [24] 1555 	pop	ar3
   03D6 D0 02         [24] 1556 	pop	ar2
   03D8 EC            [12] 1557 	mov	a,r4
   03D9 60 0E         [24] 1558 	jz	00106$
                           1559 ;	../src/rf/src/rf_spi_send_read.c:62: dataptr[i] = tempbyte;
   03DB 85 08 82      [24] 1560 	mov	dpl,_rf_spi_send_read_sloc0_1_0
   03DE 85 09 83      [24] 1561 	mov	dph,(_rf_spi_send_read_sloc0_1_0 + 1)
   03E1 85 0A F0      [24] 1562 	mov	b,(_rf_spi_send_read_sloc0_1_0 + 2)
   03E4 E5 0B         [12] 1563 	mov	a,_rf_spi_send_read_sloc1_1_0
   03E6 12 1B 9E      [24] 1564 	lcall	__gptrput
   03E9                    1565 00106$:
                           1566 ;	../src/rf/src/rf_spi_send_read.c:55: for(i = 0; i < len; i++)
   03E9 08            [12] 1567 	inc	r0
   03EA B8 00 9D      [24] 1568 	cjne	r0,#0x00,00105$
   03ED 09            [12] 1569 	inc	r1
   03EE 80 9A         [24] 1570 	sjmp	00105$
   03F0                    1571 00107$:
   03F0 22            [24] 1572 	ret
                           1573 ;------------------------------------------------------------
                           1574 ;Allocation info for local variables in function 'rf_power_up_param'
                           1575 ;------------------------------------------------------------
                           1576 ;config                    Allocated with name '_rf_power_up_param_PARM_2'
                           1577 ;rx_active_mode            Allocated with name '_rf_power_up_param_rx_active_mode_1_63'
                           1578 ;------------------------------------------------------------
                           1579 ;	../src/rf/src/rf_power_up_param.c:49: void rf_power_up_param(bool rx_active_mode, unsigned char config)
                           1580 ;	-----------------------------------------
                           1581 ;	 function rf_power_up_param
                           1582 ;	-----------------------------------------
   03F1                    1583 _rf_power_up_param:
   03F1 E5 82         [12] 1584 	mov	a,dpl
   03F3 90 00 27      [24] 1585 	mov	dptr,#_rf_power_up_param_rx_active_mode_1_63
   03F6 F0            [24] 1586 	movx	@dptr,a
                           1587 ;	../src/rf/src/rf_power_up_param.c:52: config |= RF_CONFIG_PWR_UP;
   03F7 90 00 26      [24] 1588 	mov	dptr,#_rf_power_up_param_PARM_2
   03FA E0            [24] 1589 	movx	a,@dptr
   03FB 44 02         [12] 1590 	orl	a,#0x02
   03FD F0            [24] 1591 	movx	@dptr,a
                           1592 ;	../src/rf/src/rf_power_up_param.c:53: rf_write_register(RF_CONFIG, &config, 1);
   03FE 90 00 08      [24] 1593 	mov	dptr,#_rf_write_register_PARM_2
   0401 74 26         [12] 1594 	mov	a,#_rf_power_up_param_PARM_2
   0403 F0            [24] 1595 	movx	@dptr,a
   0404 74 00         [12] 1596 	mov	a,#(_rf_power_up_param_PARM_2 >> 8)
   0406 A3            [24] 1597 	inc	dptr
   0407 F0            [24] 1598 	movx	@dptr,a
   0408 E4            [12] 1599 	clr	a
   0409 A3            [24] 1600 	inc	dptr
   040A F0            [24] 1601 	movx	@dptr,a
   040B 90 00 0B      [24] 1602 	mov	dptr,#_rf_write_register_PARM_3
   040E 74 01         [12] 1603 	mov	a,#0x01
   0410 F0            [24] 1604 	movx	@dptr,a
   0411 E4            [12] 1605 	clr	a
   0412 A3            [24] 1606 	inc	dptr
   0413 F0            [24] 1607 	movx	@dptr,a
   0414 75 82 00      [24] 1608 	mov	dpl,#0x00
   0417 12 01 89      [24] 1609 	lcall	_rf_write_register
                           1610 ;	../src/rf/src/rf_power_up_param.c:55: delay_us(1); //Delay for power up
   041A 90 00 01      [24] 1611 	mov	dptr,#0x0001
   041D 12 09 0F      [24] 1612 	lcall	_delay_us
                           1613 ;	../src/rf/src/rf_power_up_param.c:58: if((config & RF_CONFIG_PRIM_RX) == 0)
   0420 90 00 26      [24] 1614 	mov	dptr,#_rf_power_up_param_PARM_2
   0423 E0            [24] 1615 	movx	a,@dptr
   0424 FF            [12] 1616 	mov	r7,a
   0425 20 E0 03      [24] 1617 	jb	acc.0,00105$
                           1618 ;	../src/rf/src/rf_power_up_param.c:60: rf_clear_ce(); //Clear CE for TX mode
   0428 C2 E8         [12] 1619 	clr _RFCON_SB_RFCE 
   042A 22            [24] 1620 	ret
   042B                    1621 00105$:
                           1622 ;	../src/rf/src/rf_power_up_param.c:65: if(rx_active_mode != false)
   042B 90 00 27      [24] 1623 	mov	dptr,#_rf_power_up_param_rx_active_mode_1_63
   042E E0            [24] 1624 	movx	a,@dptr
   042F FF            [12] 1625 	mov	r7,a
   0430 60 08         [24] 1626 	jz	00102$
                           1627 ;	../src/rf/src/rf_power_up_param.c:67: rf_set_ce();
   0432 D2 E8         [12] 1628 	setb _RFCON_SB_RFCE 
   0434 90 00 04      [24] 1629 	mov	dptr,#0x0004
   0437 02 09 0F      [24] 1630 	ljmp	_delay_us
   043A                    1631 00102$:
                           1632 ;	../src/rf/src/rf_power_up_param.c:71: rf_clear_ce();
   043A C2 E8         [12] 1633 	clr _RFCON_SB_RFCE 
   043C 22            [24] 1634 	ret
                           1635 ;------------------------------------------------------------
                           1636 ;Allocation info for local variables in function 'rf_read_register'
                           1637 ;------------------------------------------------------------
                           1638 ;dataptr                   Allocated with name '_rf_read_register_PARM_2'
                           1639 ;len                       Allocated with name '_rf_read_register_PARM_3'
                           1640 ;regnumber                 Allocated with name '_rf_read_register_regnumber_1_69'
                           1641 ;------------------------------------------------------------
                           1642 ;	../src/rf/src/rf_read_register.c:49: unsigned char rf_read_register(unsigned char regnumber, unsigned char * dataptr, unsigned int len)
                           1643 ;	-----------------------------------------
                           1644 ;	 function rf_read_register
                           1645 ;	-----------------------------------------
   043D                    1646 _rf_read_register:
   043D E5 82         [12] 1647 	mov	a,dpl
                           1648 ;	../src/rf/src/rf_read_register.c:52: return rf_spi_execute_command(regnumber & RF_R_REGISTER_DATA, dataptr, len, true);
   043F 90 00 2D      [24] 1649 	mov	dptr,#_rf_read_register_regnumber_1_69
   0442 F0            [24] 1650 	movx	@dptr,a
   0443 FF            [12] 1651 	mov	r7,a
   0444 53 07 1F      [24] 1652 	anl	ar7,#0x1F
   0447 90 00 28      [24] 1653 	mov	dptr,#_rf_read_register_PARM_2
   044A E0            [24] 1654 	movx	a,@dptr
   044B FC            [12] 1655 	mov	r4,a
   044C A3            [24] 1656 	inc	dptr
   044D E0            [24] 1657 	movx	a,@dptr
   044E FD            [12] 1658 	mov	r5,a
   044F A3            [24] 1659 	inc	dptr
   0450 E0            [24] 1660 	movx	a,@dptr
   0451 FE            [12] 1661 	mov	r6,a
   0452 90 00 2B      [24] 1662 	mov	dptr,#_rf_read_register_PARM_3
   0455 E0            [24] 1663 	movx	a,@dptr
   0456 FA            [12] 1664 	mov	r2,a
   0457 A3            [24] 1665 	inc	dptr
   0458 E0            [24] 1666 	movx	a,@dptr
   0459 FB            [12] 1667 	mov	r3,a
   045A 90 00 18      [24] 1668 	mov	dptr,#_rf_spi_execute_command_PARM_2
   045D EC            [12] 1669 	mov	a,r4
   045E F0            [24] 1670 	movx	@dptr,a
   045F ED            [12] 1671 	mov	a,r5
   0460 A3            [24] 1672 	inc	dptr
   0461 F0            [24] 1673 	movx	@dptr,a
   0462 EE            [12] 1674 	mov	a,r6
   0463 A3            [24] 1675 	inc	dptr
   0464 F0            [24] 1676 	movx	@dptr,a
   0465 90 00 1B      [24] 1677 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0468 EA            [12] 1678 	mov	a,r2
   0469 F0            [24] 1679 	movx	@dptr,a
   046A EB            [12] 1680 	mov	a,r3
   046B A3            [24] 1681 	inc	dptr
   046C F0            [24] 1682 	movx	@dptr,a
   046D 90 00 1D      [24] 1683 	mov	dptr,#_rf_spi_execute_command_PARM_4
   0470 74 01         [12] 1684 	mov	a,#0x01
   0472 F0            [24] 1685 	movx	@dptr,a
   0473 8F 82         [24] 1686 	mov	dpl,r7
   0475 02 03 02      [24] 1687 	ljmp	_rf_spi_execute_command
                           1688 ;------------------------------------------------------------
                           1689 ;Allocation info for local variables in function 'rf_spi_send_read_byte'
                           1690 ;------------------------------------------------------------
                           1691 ;byte                      Allocated with name '_rf_spi_send_read_byte_byte_1_71'
                           1692 ;------------------------------------------------------------
                           1693 ;	../src/rf/src/rf_spi_send_read_byte.c:47: unsigned char rf_spi_send_read_byte(unsigned char byte)
                           1694 ;	-----------------------------------------
                           1695 ;	 function rf_spi_send_read_byte
                           1696 ;	-----------------------------------------
   0478                    1697 _rf_spi_send_read_byte:
   0478 E5 82         [12] 1698 	mov	a,dpl
                           1699 ;	../src/rf/src/rf_spi_send_read_byte.c:49: SPIRDAT = byte; //Send byte over SPI
   047A 90 00 2E      [24] 1700 	mov	dptr,#_rf_spi_send_read_byte_byte_1_71
   047D F0            [24] 1701 	movx	@dptr,a
   047E F5 E7         [12] 1702 	mov	_SPIRDAT,a
                           1703 ;	../src/rf/src/rf_spi_send_read_byte.c:51: while(!(SPIRSTAT & SPIRSTAT_IRQ_RX_FIFO_READY)); //Wait for the transaction to finish
   0480                    1704 00101$:
   0480 E5 E6         [12] 1705 	mov	a,_SPIRSTAT
   0482 30 E2 FB      [24] 1706 	jnb	acc.2,00101$
                           1707 ;	../src/rf/src/rf_spi_send_read_byte.c:53: IRCON_SB_RFRDY = BIT_FALSE; //Clear the IRQ bit
   0485 C2 C0         [12] 1708 	clr	_IRCON_SB_RFRDY
                           1709 ;	../src/rf/src/rf_spi_send_read_byte.c:55: return SPIRDAT; //Return the received value
   0487 85 E7 82      [24] 1710 	mov	dpl,_SPIRDAT
   048A 22            [24] 1711 	ret
                           1712 ;------------------------------------------------------------
                           1713 ;Allocation info for local variables in function 'rf_set_rx_addr'
                           1714 ;------------------------------------------------------------
                           1715 ;len                       Allocated with name '_rf_set_rx_addr_PARM_2'
                           1716 ;rxpipenum                 Allocated with name '_rf_set_rx_addr_PARM_3'
                           1717 ;address                   Allocated with name '_rf_set_rx_addr_address_1_73'
                           1718 ;------------------------------------------------------------
                           1719 ;	../src/rf/src/rf_set_rx_addr.c:49: void rf_set_rx_addr(unsigned char * address, unsigned int len, unsigned char rxpipenum)
                           1720 ;	-----------------------------------------
                           1721 ;	 function rf_set_rx_addr
                           1722 ;	-----------------------------------------
   048B                    1723 _rf_set_rx_addr:
   048B AF F0         [24] 1724 	mov	r7,b
   048D AE 83         [24] 1725 	mov	r6,dph
   048F E5 82         [12] 1726 	mov	a,dpl
   0491 90 00 32      [24] 1727 	mov	dptr,#_rf_set_rx_addr_address_1_73
   0494 F0            [24] 1728 	movx	@dptr,a
   0495 EE            [12] 1729 	mov	a,r6
   0496 A3            [24] 1730 	inc	dptr
   0497 F0            [24] 1731 	movx	@dptr,a
   0498 EF            [12] 1732 	mov	a,r7
   0499 A3            [24] 1733 	inc	dptr
   049A F0            [24] 1734 	movx	@dptr,a
                           1735 ;	../src/rf/src/rf_set_rx_addr.c:52: if(rxpipenum > 5)
   049B 90 00 31      [24] 1736 	mov	dptr,#_rf_set_rx_addr_PARM_3
   049E E0            [24] 1737 	movx	a,@dptr
   049F FF            [12] 1738 	mov  r7,a
   04A0 24 FA         [12] 1739 	add	a,#0xff - 0x05
   04A2 50 01         [24] 1740 	jnc	00102$
                           1741 ;	../src/rf/src/rf_set_rx_addr.c:54: return;
   04A4 22            [24] 1742 	ret
   04A5                    1743 00102$:
                           1744 ;	../src/rf/src/rf_set_rx_addr.c:57: rf_write_register(RF_RX_ADDR_P0 + rxpipenum, address, len); //Write the requested address to the requested RX pipe
   04A5 74 0A         [12] 1745 	mov	a,#0x0A
   04A7 2F            [12] 1746 	add	a,r7
   04A8 FF            [12] 1747 	mov	r7,a
   04A9 90 00 32      [24] 1748 	mov	dptr,#_rf_set_rx_addr_address_1_73
   04AC E0            [24] 1749 	movx	a,@dptr
   04AD FC            [12] 1750 	mov	r4,a
   04AE A3            [24] 1751 	inc	dptr
   04AF E0            [24] 1752 	movx	a,@dptr
   04B0 FD            [12] 1753 	mov	r5,a
   04B1 A3            [24] 1754 	inc	dptr
   04B2 E0            [24] 1755 	movx	a,@dptr
   04B3 FE            [12] 1756 	mov	r6,a
   04B4 90 00 2F      [24] 1757 	mov	dptr,#_rf_set_rx_addr_PARM_2
   04B7 E0            [24] 1758 	movx	a,@dptr
   04B8 FA            [12] 1759 	mov	r2,a
   04B9 A3            [24] 1760 	inc	dptr
   04BA E0            [24] 1761 	movx	a,@dptr
   04BB FB            [12] 1762 	mov	r3,a
   04BC 90 00 08      [24] 1763 	mov	dptr,#_rf_write_register_PARM_2
   04BF EC            [12] 1764 	mov	a,r4
   04C0 F0            [24] 1765 	movx	@dptr,a
   04C1 ED            [12] 1766 	mov	a,r5
   04C2 A3            [24] 1767 	inc	dptr
   04C3 F0            [24] 1768 	movx	@dptr,a
   04C4 EE            [12] 1769 	mov	a,r6
   04C5 A3            [24] 1770 	inc	dptr
   04C6 F0            [24] 1771 	movx	@dptr,a
   04C7 90 00 0B      [24] 1772 	mov	dptr,#_rf_write_register_PARM_3
   04CA EA            [12] 1773 	mov	a,r2
   04CB F0            [24] 1774 	movx	@dptr,a
   04CC EB            [12] 1775 	mov	a,r3
   04CD A3            [24] 1776 	inc	dptr
   04CE F0            [24] 1777 	movx	@dptr,a
   04CF 8F 82         [24] 1778 	mov	dpl,r7
   04D1 02 01 89      [24] 1779 	ljmp	_rf_write_register
                           1780 ;------------------------------------------------------------
                           1781 ;Allocation info for local variables in function 'rf_power_down'
                           1782 ;------------------------------------------------------------
                           1783 ;config                    Allocated with name '_rf_power_down_config_1_76'
                           1784 ;------------------------------------------------------------
                           1785 ;	../src/rf/src/rf_power_down.c:47: void rf_power_down()
                           1786 ;	-----------------------------------------
                           1787 ;	 function rf_power_down
                           1788 ;	-----------------------------------------
   04D4                    1789 _rf_power_down:
                           1790 ;	../src/rf/src/rf_power_down.c:51: rf_clear_ce(); //Clear the CE pin
   04D4 C2 E8         [12] 1791 	clr _RFCON_SB_RFCE 
                           1792 ;	../src/rf/src/rf_power_down.c:53: rf_read_register(RF_CONFIG, &config, 1); //Read the current value of the CONFIG register
   04D6 90 00 28      [24] 1793 	mov	dptr,#_rf_read_register_PARM_2
   04D9 74 35         [12] 1794 	mov	a,#_rf_power_down_config_1_76
   04DB F0            [24] 1795 	movx	@dptr,a
   04DC 74 00         [12] 1796 	mov	a,#(_rf_power_down_config_1_76 >> 8)
   04DE A3            [24] 1797 	inc	dptr
   04DF F0            [24] 1798 	movx	@dptr,a
   04E0 E4            [12] 1799 	clr	a
   04E1 A3            [24] 1800 	inc	dptr
   04E2 F0            [24] 1801 	movx	@dptr,a
   04E3 90 00 2B      [24] 1802 	mov	dptr,#_rf_read_register_PARM_3
   04E6 74 01         [12] 1803 	mov	a,#0x01
   04E8 F0            [24] 1804 	movx	@dptr,a
   04E9 E4            [12] 1805 	clr	a
   04EA A3            [24] 1806 	inc	dptr
   04EB F0            [24] 1807 	movx	@dptr,a
   04EC 75 82 00      [24] 1808 	mov	dpl,#0x00
   04EF 12 04 3D      [24] 1809 	lcall	_rf_read_register
                           1810 ;	../src/rf/src/rf_power_down.c:56: if((config & RF_CONFIG_PWR_UP) == 0)
   04F2 90 00 35      [24] 1811 	mov	dptr,#_rf_power_down_config_1_76
   04F5 E0            [24] 1812 	movx	a,@dptr
   04F6 FF            [12] 1813 	mov	r7,a
   04F7 20 E1 01      [24] 1814 	jb	acc.1,00102$
                           1815 ;	../src/rf/src/rf_power_down.c:58: return;
   04FA 22            [24] 1816 	ret
   04FB                    1817 00102$:
                           1818 ;	../src/rf/src/rf_power_down.c:62: config &= (~RF_CONFIG_PWR_UP);
   04FB 90 00 35      [24] 1819 	mov	dptr,#_rf_power_down_config_1_76
   04FE 74 FD         [12] 1820 	mov	a,#0xFD
   0500 5F            [12] 1821 	anl	a,r7
   0501 F0            [24] 1822 	movx	@dptr,a
                           1823 ;	../src/rf/src/rf_power_down.c:63: rf_write_register(RF_CONFIG, &config, 1);
   0502 90 00 08      [24] 1824 	mov	dptr,#_rf_write_register_PARM_2
   0505 74 35         [12] 1825 	mov	a,#_rf_power_down_config_1_76
   0507 F0            [24] 1826 	movx	@dptr,a
   0508 74 00         [12] 1827 	mov	a,#(_rf_power_down_config_1_76 >> 8)
   050A A3            [24] 1828 	inc	dptr
   050B F0            [24] 1829 	movx	@dptr,a
   050C E4            [12] 1830 	clr	a
   050D A3            [24] 1831 	inc	dptr
   050E F0            [24] 1832 	movx	@dptr,a
   050F 90 00 0B      [24] 1833 	mov	dptr,#_rf_write_register_PARM_3
   0512 74 01         [12] 1834 	mov	a,#0x01
   0514 F0            [24] 1835 	movx	@dptr,a
   0515 E4            [12] 1836 	clr	a
   0516 A3            [24] 1837 	inc	dptr
   0517 F0            [24] 1838 	movx	@dptr,a
   0518 75 82 00      [24] 1839 	mov	dpl,#0x00
   051B 02 01 89      [24] 1840 	ljmp	_rf_write_register
                           1841 ;------------------------------------------------------------
                           1842 ;Allocation info for local variables in function 'rf_power_up'
                           1843 ;------------------------------------------------------------
                           1844 ;rx_active_mode            Allocated with name '_rf_power_up_rx_active_mode_1_78'
                           1845 ;config                    Allocated with name '_rf_power_up_config_1_79'
                           1846 ;------------------------------------------------------------
                           1847 ;	../src/rf/src/rf_power_up.c:47: void rf_power_up(bool rx_active_mode)
                           1848 ;	-----------------------------------------
                           1849 ;	 function rf_power_up
                           1850 ;	-----------------------------------------
   051E                    1851 _rf_power_up:
   051E E5 82         [12] 1852 	mov	a,dpl
   0520 90 00 36      [24] 1853 	mov	dptr,#_rf_power_up_rx_active_mode_1_78
   0523 F0            [24] 1854 	movx	@dptr,a
                           1855 ;	../src/rf/src/rf_power_up.c:51: rf_read_register(RF_CONFIG, &config, 1); //Get the current value of the CONFIG register
   0524 90 00 28      [24] 1856 	mov	dptr,#_rf_read_register_PARM_2
   0527 74 37         [12] 1857 	mov	a,#_rf_power_up_config_1_79
   0529 F0            [24] 1858 	movx	@dptr,a
   052A 74 00         [12] 1859 	mov	a,#(_rf_power_up_config_1_79 >> 8)
   052C A3            [24] 1860 	inc	dptr
   052D F0            [24] 1861 	movx	@dptr,a
   052E E4            [12] 1862 	clr	a
   052F A3            [24] 1863 	inc	dptr
   0530 F0            [24] 1864 	movx	@dptr,a
   0531 90 00 2B      [24] 1865 	mov	dptr,#_rf_read_register_PARM_3
   0534 74 01         [12] 1866 	mov	a,#0x01
   0536 F0            [24] 1867 	movx	@dptr,a
   0537 E4            [12] 1868 	clr	a
   0538 A3            [24] 1869 	inc	dptr
   0539 F0            [24] 1870 	movx	@dptr,a
   053A 75 82 00      [24] 1871 	mov	dpl,#0x00
   053D 12 04 3D      [24] 1872 	lcall	_rf_read_register
                           1873 ;	../src/rf/src/rf_power_up.c:54: if((config & RF_CONFIG_PWR_UP) != 0)
   0540 90 00 37      [24] 1874 	mov	dptr,#_rf_power_up_config_1_79
   0543 E0            [24] 1875 	movx	a,@dptr
   0544 FF            [12] 1876 	mov	r7,a
   0545 30 E1 01      [24] 1877 	jnb	acc.1,00102$
                           1878 ;	../src/rf/src/rf_power_up.c:56: return;
   0548 22            [24] 1879 	ret
   0549                    1880 00102$:
                           1881 ;	../src/rf/src/rf_power_up.c:60: config |= RF_CONFIG_PWR_UP;
   0549 90 00 37      [24] 1882 	mov	dptr,#_rf_power_up_config_1_79
   054C 74 02         [12] 1883 	mov	a,#0x02
   054E 4F            [12] 1884 	orl	a,r7
   054F F0            [24] 1885 	movx	@dptr,a
                           1886 ;	../src/rf/src/rf_power_up.c:61: rf_write_register(RF_CONFIG, &config, 1);
   0550 90 00 08      [24] 1887 	mov	dptr,#_rf_write_register_PARM_2
   0553 74 37         [12] 1888 	mov	a,#_rf_power_up_config_1_79
   0555 F0            [24] 1889 	movx	@dptr,a
   0556 74 00         [12] 1890 	mov	a,#(_rf_power_up_config_1_79 >> 8)
   0558 A3            [24] 1891 	inc	dptr
   0559 F0            [24] 1892 	movx	@dptr,a
   055A E4            [12] 1893 	clr	a
   055B A3            [24] 1894 	inc	dptr
   055C F0            [24] 1895 	movx	@dptr,a
   055D 90 00 0B      [24] 1896 	mov	dptr,#_rf_write_register_PARM_3
   0560 74 01         [12] 1897 	mov	a,#0x01
   0562 F0            [24] 1898 	movx	@dptr,a
   0563 E4            [12] 1899 	clr	a
   0564 A3            [24] 1900 	inc	dptr
   0565 F0            [24] 1901 	movx	@dptr,a
   0566 75 82 00      [24] 1902 	mov	dpl,#0x00
   0569 12 01 89      [24] 1903 	lcall	_rf_write_register
                           1904 ;	../src/rf/src/rf_power_up.c:63: delay_us(1); //Delay for power up
   056C 90 00 01      [24] 1905 	mov	dptr,#0x0001
   056F 12 09 0F      [24] 1906 	lcall	_delay_us
                           1907 ;	../src/rf/src/rf_power_up.c:66: if((config & RF_CONFIG_PRIM_RX) == 0)
   0572 90 00 37      [24] 1908 	mov	dptr,#_rf_power_up_config_1_79
   0575 E0            [24] 1909 	movx	a,@dptr
   0576 FF            [12] 1910 	mov	r7,a
   0577 20 E0 03      [24] 1911 	jb	acc.0,00107$
                           1912 ;	../src/rf/src/rf_power_up.c:68: rf_clear_ce(); //Clear CE for TX mode
   057A C2 E8         [12] 1913 	clr _RFCON_SB_RFCE 
   057C 22            [24] 1914 	ret
   057D                    1915 00107$:
                           1916 ;	../src/rf/src/rf_power_up.c:73: if(rx_active_mode != false)
   057D 90 00 36      [24] 1917 	mov	dptr,#_rf_power_up_rx_active_mode_1_78
   0580 E0            [24] 1918 	movx	a,@dptr
   0581 FF            [12] 1919 	mov	r7,a
   0582 60 08         [24] 1920 	jz	00104$
                           1921 ;	../src/rf/src/rf_power_up.c:75: rf_set_ce();
   0584 D2 E8         [12] 1922 	setb _RFCON_SB_RFCE 
   0586 90 00 04      [24] 1923 	mov	dptr,#0x0004
   0589 02 09 0F      [24] 1924 	ljmp	_delay_us
   058C                    1925 00104$:
                           1926 ;	../src/rf/src/rf_power_up.c:79: rf_clear_ce();
   058C C2 E8         [12] 1927 	clr _RFCON_SB_RFCE 
   058E 22            [24] 1928 	ret
                           1929 ;------------------------------------------------------------
                           1930 ;Allocation info for local variables in function 'gpio_pin_configure'
                           1931 ;------------------------------------------------------------
                           1932 ;gpio_pin_config_options   Allocated with name '_gpio_pin_configure_PARM_2'
                           1933 ;gpio_pin_id               Allocated with name '_gpio_pin_configure_gpio_pin_id_1_86'
                           1934 ;------------------------------------------------------------
                           1935 ;	../src/gpio/src/gpio_pin_configure.c:47: void gpio_pin_configure(gpio_pin_id_t gpio_pin_id, uint8_t gpio_pin_config_options)
                           1936 ;	-----------------------------------------
                           1937 ;	 function gpio_pin_configure
                           1938 ;	-----------------------------------------
   058F                    1939 _gpio_pin_configure:
   058F E5 82         [12] 1940 	mov	a,dpl
                           1941 ;	../src/gpio/src/gpio_pin_configure.c:50: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   0591 90 00 39      [24] 1942 	mov	dptr,#_gpio_pin_configure_gpio_pin_id_1_86
   0594 F0            [24] 1943 	movx	@dptr,a
   0595 FF            [12] 1944 	mov  r7,a
   0596 24 F8         [12] 1945 	add	a,#0xff - 0x07
   0598 50 03         [24] 1946 	jnc	00174$
   059A 02 06 13      [24] 1947 	ljmp	00134$
   059D                    1948 00174$:
                           1949 ;	../src/gpio/src/gpio_pin_configure.c:53: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   059D 90 00 38      [24] 1950 	mov	dptr,#_gpio_pin_configure_PARM_2
   05A0 E0            [24] 1951 	movx	a,@dptr
   05A1 FE            [12] 1952 	mov	r6,a
   05A2 FD            [12] 1953 	mov	r5,a
   05A3 ED            [12] 1954 	mov	a,r5
   05A4 30 E0 4C      [24] 1955 	jnb	acc.0,00105$
                           1956 ;	../src/gpio/src/gpio_pin_configure.c:56: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   05A7 EE            [12] 1957 	mov	a,r6
   05A8 30 E1 15      [24] 1958 	jnb	acc.1,00102$
                           1959 ;	../src/gpio/src/gpio_pin_configure.c:58: gpio_pins_val_set(P0, (1 << (gpio_pin_id % 8)));
   05AB 74 07         [12] 1960 	mov	a,#0x07
   05AD 5F            [12] 1961 	anl	a,r7
   05AE F5 F0         [12] 1962 	mov	b,a
   05B0 05 F0         [12] 1963 	inc	b
   05B2 74 01         [12] 1964 	mov	a,#0x01
   05B4 80 02         [24] 1965 	sjmp	00179$
   05B6                    1966 00177$:
   05B6 25 E0         [12] 1967 	add	a,acc
   05B8                    1968 00179$:
   05B8 D5 F0 FB      [24] 1969 	djnz	b,00177$
   05BB FD            [12] 1970 	mov	r5,a
   05BC 42 80         [12] 1971 	orl	_P0,a
   05BE 80 14         [24] 1972 	sjmp	00103$
   05C0                    1973 00102$:
                           1974 ;	../src/gpio/src/gpio_pin_configure.c:62: gpio_pins_val_clear(P0, (1 << (gpio_pin_id % 8)));
   05C0 74 07         [12] 1975 	mov	a,#0x07
   05C2 5F            [12] 1976 	anl	a,r7
   05C3 F5 F0         [12] 1977 	mov	b,a
   05C5 05 F0         [12] 1978 	inc	b
   05C7 74 01         [12] 1979 	mov	a,#0x01
   05C9 80 02         [24] 1980 	sjmp	00182$
   05CB                    1981 00180$:
   05CB 25 E0         [12] 1982 	add	a,acc
   05CD                    1983 00182$:
   05CD D5 F0 FB      [24] 1984 	djnz	b,00180$
   05D0 F4            [12] 1985 	cpl	a
   05D1 FD            [12] 1986 	mov	r5,a
   05D2 52 80         [12] 1987 	anl	_P0,a
   05D4                    1988 00103$:
                           1989 ;	../src/gpio/src/gpio_pin_configure.c:66: P0CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   05D4 74 07         [12] 1990 	mov	a,#0x07
   05D6 5F            [12] 1991 	anl	a,r7
   05D7 FD            [12] 1992 	mov	r5,a
   05D8 74 07         [12] 1993 	mov	a,#0x07
   05DA 5D            [12] 1994 	anl	a,r5
   05DB FC            [12] 1995 	mov	r4,a
                           1996 ;	../src/gpio/src/gpio_pin_configure.c:67: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   05DC 74 E0         [12] 1997 	mov	a,#0xE0
   05DE 5E            [12] 1998 	anl	a,r6
   05DF 4C            [12] 1999 	orl	a,r4
   05E0 F5 9E         [12] 2000 	mov	_P0CON,a
                           2001 ;	../src/gpio/src/gpio_pin_configure.c:70: gpio_pins_dir_output(P0DIR, (1 << (gpio_pin_id % 8)));
   05E2 8D F0         [24] 2002 	mov	b,r5
   05E4 05 F0         [12] 2003 	inc	b
   05E6 74 01         [12] 2004 	mov	a,#0x01
   05E8 80 02         [24] 2005 	sjmp	00185$
   05EA                    2006 00183$:
   05EA 25 E0         [12] 2007 	add	a,acc
   05EC                    2008 00185$:
   05EC D5 F0 FB      [24] 2009 	djnz	b,00183$
   05EF F4            [12] 2010 	cpl	a
   05F0 52 93         [12] 2011 	anl	_P0DIR,a
   05F2 22            [24] 2012 	ret
   05F3                    2013 00105$:
                           2014 ;	../src/gpio/src/gpio_pin_configure.c:75: P0CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   05F3 74 07         [12] 2015 	mov	a,#0x07
   05F5 5F            [12] 2016 	anl	a,r7
   05F6 FD            [12] 2017 	mov	r5,a
   05F7 74 07         [12] 2018 	mov	a,#0x07
   05F9 5D            [12] 2019 	anl	a,r5
   05FA 44 10         [12] 2020 	orl	a,#0x10
   05FC FC            [12] 2021 	mov	r4,a
                           2022 ;	../src/gpio/src/gpio_pin_configure.c:77: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   05FD 74 E0         [12] 2023 	mov	a,#0xE0
   05FF 5E            [12] 2024 	anl	a,r6
   0600 4C            [12] 2025 	orl	a,r4
   0601 F5 9E         [12] 2026 	mov	_P0CON,a
                           2027 ;	../src/gpio/src/gpio_pin_configure.c:80: gpio_pins_dir_input(P0DIR, (1 << (gpio_pin_id % 8)));
   0603 8D F0         [24] 2028 	mov	b,r5
   0605 05 F0         [12] 2029 	inc	b
   0607 74 01         [12] 2030 	mov	a,#0x01
   0609 80 02         [24] 2031 	sjmp	00188$
   060B                    2032 00186$:
   060B 25 E0         [12] 2033 	add	a,acc
   060D                    2034 00188$:
   060D D5 F0 FB      [24] 2035 	djnz	b,00186$
   0610 42 93         [12] 2036 	orl	_P0DIR,a
   0612 22            [24] 2037 	ret
   0613                    2038 00134$:
                           2039 ;	../src/gpio/src/gpio_pin_configure.c:83: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   0613 EF            [12] 2040 	mov	a,r7
   0614 24 F0         [12] 2041 	add	a,#0xff - 0x0F
   0616 50 03         [24] 2042 	jnc	00189$
   0618 02 06 91      [24] 2043 	ljmp	00131$
   061B                    2044 00189$:
                           2045 ;	../src/gpio/src/gpio_pin_configure.c:86: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   061B 90 00 38      [24] 2046 	mov	dptr,#_gpio_pin_configure_PARM_2
   061E E0            [24] 2047 	movx	a,@dptr
   061F FE            [12] 2048 	mov	r6,a
   0620 FD            [12] 2049 	mov	r5,a
   0621 ED            [12] 2050 	mov	a,r5
   0622 30 E0 4C      [24] 2051 	jnb	acc.0,00111$
                           2052 ;	../src/gpio/src/gpio_pin_configure.c:89: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   0625 EE            [12] 2053 	mov	a,r6
   0626 30 E1 15      [24] 2054 	jnb	acc.1,00108$
                           2055 ;	../src/gpio/src/gpio_pin_configure.c:91: gpio_pins_val_set(P1, (1 << (gpio_pin_id % 8)));
   0629 74 07         [12] 2056 	mov	a,#0x07
   062B 5F            [12] 2057 	anl	a,r7
   062C F5 F0         [12] 2058 	mov	b,a
   062E 05 F0         [12] 2059 	inc	b
   0630 74 01         [12] 2060 	mov	a,#0x01
   0632 80 02         [24] 2061 	sjmp	00194$
   0634                    2062 00192$:
   0634 25 E0         [12] 2063 	add	a,acc
   0636                    2064 00194$:
   0636 D5 F0 FB      [24] 2065 	djnz	b,00192$
   0639 FD            [12] 2066 	mov	r5,a
   063A 42 90         [12] 2067 	orl	_P1,a
   063C 80 14         [24] 2068 	sjmp	00109$
   063E                    2069 00108$:
                           2070 ;	../src/gpio/src/gpio_pin_configure.c:95: gpio_pins_val_clear(P1, (1 << (gpio_pin_id % 8)));
   063E 74 07         [12] 2071 	mov	a,#0x07
   0640 5F            [12] 2072 	anl	a,r7
   0641 F5 F0         [12] 2073 	mov	b,a
   0643 05 F0         [12] 2074 	inc	b
   0645 74 01         [12] 2075 	mov	a,#0x01
   0647 80 02         [24] 2076 	sjmp	00197$
   0649                    2077 00195$:
   0649 25 E0         [12] 2078 	add	a,acc
   064B                    2079 00197$:
   064B D5 F0 FB      [24] 2080 	djnz	b,00195$
   064E F4            [12] 2081 	cpl	a
   064F FD            [12] 2082 	mov	r5,a
   0650 52 90         [12] 2083 	anl	_P1,a
   0652                    2084 00109$:
                           2085 ;	../src/gpio/src/gpio_pin_configure.c:99: P1CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   0652 74 07         [12] 2086 	mov	a,#0x07
   0654 5F            [12] 2087 	anl	a,r7
   0655 FD            [12] 2088 	mov	r5,a
   0656 74 07         [12] 2089 	mov	a,#0x07
   0658 5D            [12] 2090 	anl	a,r5
   0659 FC            [12] 2091 	mov	r4,a
                           2092 ;	../src/gpio/src/gpio_pin_configure.c:100: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   065A 74 E0         [12] 2093 	mov	a,#0xE0
   065C 5E            [12] 2094 	anl	a,r6
   065D 4C            [12] 2095 	orl	a,r4
   065E F5 9F         [12] 2096 	mov	_P1CON,a
                           2097 ;	../src/gpio/src/gpio_pin_configure.c:103: gpio_pins_dir_output(P1DIR, (1 << (gpio_pin_id % 8)));
   0660 8D F0         [24] 2098 	mov	b,r5
   0662 05 F0         [12] 2099 	inc	b
   0664 74 01         [12] 2100 	mov	a,#0x01
   0666 80 02         [24] 2101 	sjmp	00200$
   0668                    2102 00198$:
   0668 25 E0         [12] 2103 	add	a,acc
   066A                    2104 00200$:
   066A D5 F0 FB      [24] 2105 	djnz	b,00198$
   066D F4            [12] 2106 	cpl	a
   066E 52 94         [12] 2107 	anl	_P1DIR,a
   0670 22            [24] 2108 	ret
   0671                    2109 00111$:
                           2110 ;	../src/gpio/src/gpio_pin_configure.c:108: P1CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   0671 74 07         [12] 2111 	mov	a,#0x07
   0673 5F            [12] 2112 	anl	a,r7
   0674 FD            [12] 2113 	mov	r5,a
   0675 74 07         [12] 2114 	mov	a,#0x07
   0677 5D            [12] 2115 	anl	a,r5
   0678 44 10         [12] 2116 	orl	a,#0x10
   067A FC            [12] 2117 	mov	r4,a
                           2118 ;	../src/gpio/src/gpio_pin_configure.c:110: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   067B 74 E0         [12] 2119 	mov	a,#0xE0
   067D 5E            [12] 2120 	anl	a,r6
   067E 4C            [12] 2121 	orl	a,r4
   067F F5 9F         [12] 2122 	mov	_P1CON,a
                           2123 ;	../src/gpio/src/gpio_pin_configure.c:113: gpio_pins_dir_input(P1DIR, (1 << (gpio_pin_id % 8)));
   0681 8D F0         [24] 2124 	mov	b,r5
   0683 05 F0         [12] 2125 	inc	b
   0685 74 01         [12] 2126 	mov	a,#0x01
   0687 80 02         [24] 2127 	sjmp	00203$
   0689                    2128 00201$:
   0689 25 E0         [12] 2129 	add	a,acc
   068B                    2130 00203$:
   068B D5 F0 FB      [24] 2131 	djnz	b,00201$
   068E 42 94         [12] 2132 	orl	_P1DIR,a
   0690 22            [24] 2133 	ret
   0691                    2134 00131$:
                           2135 ;	../src/gpio/src/gpio_pin_configure.c:116: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   0691 EF            [12] 2136 	mov	a,r7
   0692 24 E8         [12] 2137 	add	a,#0xff - 0x17
   0694 50 03         [24] 2138 	jnc	00204$
   0696 02 07 0F      [24] 2139 	ljmp	00128$
   0699                    2140 00204$:
                           2141 ;	../src/gpio/src/gpio_pin_configure.c:119: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   0699 90 00 38      [24] 2142 	mov	dptr,#_gpio_pin_configure_PARM_2
   069C E0            [24] 2143 	movx	a,@dptr
   069D FE            [12] 2144 	mov	r6,a
   069E FD            [12] 2145 	mov	r5,a
   069F ED            [12] 2146 	mov	a,r5
   06A0 30 E0 4C      [24] 2147 	jnb	acc.0,00117$
                           2148 ;	../src/gpio/src/gpio_pin_configure.c:122: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   06A3 EE            [12] 2149 	mov	a,r6
   06A4 30 E1 15      [24] 2150 	jnb	acc.1,00114$
                           2151 ;	../src/gpio/src/gpio_pin_configure.c:124: gpio_pins_val_set(P2, (1 << (gpio_pin_id % 8)));
   06A7 74 07         [12] 2152 	mov	a,#0x07
   06A9 5F            [12] 2153 	anl	a,r7
   06AA F5 F0         [12] 2154 	mov	b,a
   06AC 05 F0         [12] 2155 	inc	b
   06AE 74 01         [12] 2156 	mov	a,#0x01
   06B0 80 02         [24] 2157 	sjmp	00209$
   06B2                    2158 00207$:
   06B2 25 E0         [12] 2159 	add	a,acc
   06B4                    2160 00209$:
   06B4 D5 F0 FB      [24] 2161 	djnz	b,00207$
   06B7 FD            [12] 2162 	mov	r5,a
   06B8 42 A0         [12] 2163 	orl	_P2,a
   06BA 80 14         [24] 2164 	sjmp	00115$
   06BC                    2165 00114$:
                           2166 ;	../src/gpio/src/gpio_pin_configure.c:128: gpio_pins_val_clear(P2, (1 << (gpio_pin_id % 8)));
   06BC 74 07         [12] 2167 	mov	a,#0x07
   06BE 5F            [12] 2168 	anl	a,r7
   06BF F5 F0         [12] 2169 	mov	b,a
   06C1 05 F0         [12] 2170 	inc	b
   06C3 74 01         [12] 2171 	mov	a,#0x01
   06C5 80 02         [24] 2172 	sjmp	00212$
   06C7                    2173 00210$:
   06C7 25 E0         [12] 2174 	add	a,acc
   06C9                    2175 00212$:
   06C9 D5 F0 FB      [24] 2176 	djnz	b,00210$
   06CC F4            [12] 2177 	cpl	a
   06CD FD            [12] 2178 	mov	r5,a
   06CE 52 A0         [12] 2179 	anl	_P2,a
   06D0                    2180 00115$:
                           2181 ;	../src/gpio/src/gpio_pin_configure.c:132: P2CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   06D0 74 07         [12] 2182 	mov	a,#0x07
   06D2 5F            [12] 2183 	anl	a,r7
   06D3 FD            [12] 2184 	mov	r5,a
   06D4 74 07         [12] 2185 	mov	a,#0x07
   06D6 5D            [12] 2186 	anl	a,r5
   06D7 FC            [12] 2187 	mov	r4,a
                           2188 ;	../src/gpio/src/gpio_pin_configure.c:133: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   06D8 74 E0         [12] 2189 	mov	a,#0xE0
   06DA 5E            [12] 2190 	anl	a,r6
   06DB 4C            [12] 2191 	orl	a,r4
   06DC F5 97         [12] 2192 	mov	_P2CON,a
                           2193 ;	../src/gpio/src/gpio_pin_configure.c:136: gpio_pins_dir_output(P2DIR, (1 << (gpio_pin_id % 8)));
   06DE 8D F0         [24] 2194 	mov	b,r5
   06E0 05 F0         [12] 2195 	inc	b
   06E2 74 01         [12] 2196 	mov	a,#0x01
   06E4 80 02         [24] 2197 	sjmp	00215$
   06E6                    2198 00213$:
   06E6 25 E0         [12] 2199 	add	a,acc
   06E8                    2200 00215$:
   06E8 D5 F0 FB      [24] 2201 	djnz	b,00213$
   06EB F4            [12] 2202 	cpl	a
   06EC 52 95         [12] 2203 	anl	_P2DIR,a
   06EE 22            [24] 2204 	ret
   06EF                    2205 00117$:
                           2206 ;	../src/gpio/src/gpio_pin_configure.c:141: P2CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   06EF 74 07         [12] 2207 	mov	a,#0x07
   06F1 5F            [12] 2208 	anl	a,r7
   06F2 FD            [12] 2209 	mov	r5,a
   06F3 74 07         [12] 2210 	mov	a,#0x07
   06F5 5D            [12] 2211 	anl	a,r5
   06F6 44 10         [12] 2212 	orl	a,#0x10
   06F8 FC            [12] 2213 	mov	r4,a
                           2214 ;	../src/gpio/src/gpio_pin_configure.c:143: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   06F9 74 E0         [12] 2215 	mov	a,#0xE0
   06FB 5E            [12] 2216 	anl	a,r6
   06FC 4C            [12] 2217 	orl	a,r4
   06FD F5 97         [12] 2218 	mov	_P2CON,a
                           2219 ;	../src/gpio/src/gpio_pin_configure.c:146: gpio_pins_dir_input(P2DIR, (1 << (gpio_pin_id % 8)));
   06FF 8D F0         [24] 2220 	mov	b,r5
   0701 05 F0         [12] 2221 	inc	b
   0703 74 01         [12] 2222 	mov	a,#0x01
   0705 80 02         [24] 2223 	sjmp	00218$
   0707                    2224 00216$:
   0707 25 E0         [12] 2225 	add	a,acc
   0709                    2226 00218$:
   0709 D5 F0 FB      [24] 2227 	djnz	b,00216$
   070C 42 95         [12] 2228 	orl	_P2DIR,a
   070E 22            [24] 2229 	ret
   070F                    2230 00128$:
                           2231 ;	../src/gpio/src/gpio_pin_configure.c:149: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   070F EF            [12] 2232 	mov	a,r7
   0710 24 E1         [12] 2233 	add	a,#0xff - 0x1E
   0712 40 75         [24] 2234 	jc	00136$
                           2235 ;	../src/gpio/src/gpio_pin_configure.c:152: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   0714 90 00 38      [24] 2236 	mov	dptr,#_gpio_pin_configure_PARM_2
   0717 E0            [24] 2237 	movx	a,@dptr
   0718 FE            [12] 2238 	mov	r6,a
   0719 FD            [12] 2239 	mov	r5,a
   071A ED            [12] 2240 	mov	a,r5
   071B 30 E0 4C      [24] 2241 	jnb	acc.0,00123$
                           2242 ;	../src/gpio/src/gpio_pin_configure.c:155: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   071E EE            [12] 2243 	mov	a,r6
   071F 30 E1 15      [24] 2244 	jnb	acc.1,00120$
                           2245 ;	../src/gpio/src/gpio_pin_configure.c:157: gpio_pins_val_set(P3, (1 << (gpio_pin_id % 8)));
   0722 74 07         [12] 2246 	mov	a,#0x07
   0724 5F            [12] 2247 	anl	a,r7
   0725 F5 F0         [12] 2248 	mov	b,a
   0727 05 F0         [12] 2249 	inc	b
   0729 74 01         [12] 2250 	mov	a,#0x01
   072B 80 02         [24] 2251 	sjmp	00224$
   072D                    2252 00222$:
   072D 25 E0         [12] 2253 	add	a,acc
   072F                    2254 00224$:
   072F D5 F0 FB      [24] 2255 	djnz	b,00222$
   0732 FD            [12] 2256 	mov	r5,a
   0733 42 B0         [12] 2257 	orl	_P3,a
   0735 80 14         [24] 2258 	sjmp	00121$
   0737                    2259 00120$:
                           2260 ;	../src/gpio/src/gpio_pin_configure.c:161: gpio_pins_val_clear(P3, (1 << (gpio_pin_id % 8)));
   0737 74 07         [12] 2261 	mov	a,#0x07
   0739 5F            [12] 2262 	anl	a,r7
   073A F5 F0         [12] 2263 	mov	b,a
   073C 05 F0         [12] 2264 	inc	b
   073E 74 01         [12] 2265 	mov	a,#0x01
   0740 80 02         [24] 2266 	sjmp	00227$
   0742                    2267 00225$:
   0742 25 E0         [12] 2268 	add	a,acc
   0744                    2269 00227$:
   0744 D5 F0 FB      [24] 2270 	djnz	b,00225$
   0747 F4            [12] 2271 	cpl	a
   0748 FD            [12] 2272 	mov	r5,a
   0749 52 B0         [12] 2273 	anl	_P3,a
   074B                    2274 00121$:
                           2275 ;	../src/gpio/src/gpio_pin_configure.c:165: P3CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   074B 74 07         [12] 2276 	mov	a,#0x07
   074D 5F            [12] 2277 	anl	a,r7
   074E FD            [12] 2278 	mov	r5,a
   074F 74 07         [12] 2279 	mov	a,#0x07
   0751 5D            [12] 2280 	anl	a,r5
   0752 FC            [12] 2281 	mov	r4,a
                           2282 ;	../src/gpio/src/gpio_pin_configure.c:166: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   0753 74 E0         [12] 2283 	mov	a,#0xE0
   0755 5E            [12] 2284 	anl	a,r6
   0756 4C            [12] 2285 	orl	a,r4
   0757 F5 8F         [12] 2286 	mov	_P3CON,a
                           2287 ;	../src/gpio/src/gpio_pin_configure.c:169: gpio_pins_dir_output(P3DIR, (1 << (gpio_pin_id % 8)));
   0759 8D F0         [24] 2288 	mov	b,r5
   075B 05 F0         [12] 2289 	inc	b
   075D 74 01         [12] 2290 	mov	a,#0x01
   075F 80 02         [24] 2291 	sjmp	00230$
   0761                    2292 00228$:
   0761 25 E0         [12] 2293 	add	a,acc
   0763                    2294 00230$:
   0763 D5 F0 FB      [24] 2295 	djnz	b,00228$
   0766 F4            [12] 2296 	cpl	a
   0767 52 96         [12] 2297 	anl	_P3DIR,a
   0769 22            [24] 2298 	ret
   076A                    2299 00123$:
                           2300 ;	../src/gpio/src/gpio_pin_configure.c:174: P3CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   076A 53 07 07      [24] 2301 	anl	ar7,#0x07
   076D 74 07         [12] 2302 	mov	a,#0x07
   076F 5F            [12] 2303 	anl	a,r7
   0770 44 10         [12] 2304 	orl	a,#0x10
   0772 FD            [12] 2305 	mov	r5,a
                           2306 ;	../src/gpio/src/gpio_pin_configure.c:176: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   0773 74 E0         [12] 2307 	mov	a,#0xE0
   0775 5E            [12] 2308 	anl	a,r6
   0776 4D            [12] 2309 	orl	a,r5
   0777 F5 8F         [12] 2310 	mov	_P3CON,a
                           2311 ;	../src/gpio/src/gpio_pin_configure.c:179: gpio_pins_dir_input(P3DIR, (1 << (gpio_pin_id % 8)));
   0779 8F F0         [24] 2312 	mov	b,r7
   077B 05 F0         [12] 2313 	inc	b
   077D 74 01         [12] 2314 	mov	a,#0x01
   077F 80 02         [24] 2315 	sjmp	00233$
   0781                    2316 00231$:
   0781 25 E0         [12] 2317 	add	a,acc
   0783                    2318 00233$:
   0783 D5 F0 FB      [24] 2319 	djnz	b,00231$
   0786 FF            [12] 2320 	mov	r7,a
   0787 42 96         [12] 2321 	orl	_P3DIR,a
   0789                    2322 00136$:
   0789 22            [24] 2323 	ret
                           2324 ;------------------------------------------------------------
                           2325 ;Allocation info for local variables in function 'gpio_pin_val_read'
                           2326 ;------------------------------------------------------------
                           2327 ;gpio_pin_id               Allocated with name '_gpio_pin_val_read_gpio_pin_id_1_108'
                           2328 ;value                     Allocated with name '_gpio_pin_val_read_value_1_109'
                           2329 ;------------------------------------------------------------
                           2330 ;	../src/gpio/src/gpio_pin_val_read.c:46: bool gpio_pin_val_read(gpio_pin_id_t gpio_pin_id)
                           2331 ;	-----------------------------------------
                           2332 ;	 function gpio_pin_val_read
                           2333 ;	-----------------------------------------
   078A                    2334 _gpio_pin_val_read:
   078A E5 82         [12] 2335 	mov	a,dpl
   078C 90 00 3A      [24] 2336 	mov	dptr,#_gpio_pin_val_read_gpio_pin_id_1_108
   078F F0            [24] 2337 	movx	@dptr,a
                           2338 ;	../src/gpio/src/gpio_pin_val_read.c:48: bool value = false;
   0790 90 00 3B      [24] 2339 	mov	dptr,#_gpio_pin_val_read_value_1_109
   0793 E4            [12] 2340 	clr	a
   0794 F0            [24] 2341 	movx	@dptr,a
                           2342 ;	../src/gpio/src/gpio_pin_val_read.c:51: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   0795 90 00 3A      [24] 2343 	mov	dptr,#_gpio_pin_val_read_gpio_pin_id_1_108
   0798 E0            [24] 2344 	movx	a,@dptr
   0799 FF            [12] 2345 	mov  r7,a
   079A 24 F8         [12] 2346 	add	a,#0xff - 0x07
   079C 40 19         [24] 2347 	jc	00110$
                           2348 ;	../src/gpio/src/gpio_pin_val_read.c:53: value = P0 & (1 << (gpio_pin_id % 8));
   079E 74 07         [12] 2349 	mov	a,#0x07
   07A0 5F            [12] 2350 	anl	a,r7
   07A1 F5 F0         [12] 2351 	mov	b,a
   07A3 05 F0         [12] 2352 	inc	b
   07A5 74 01         [12] 2353 	mov	a,#0x01
   07A7 80 02         [24] 2354 	sjmp	00135$
   07A9                    2355 00133$:
   07A9 25 E0         [12] 2356 	add	a,acc
   07AB                    2357 00135$:
   07AB D5 F0 FB      [24] 2358 	djnz	b,00133$
   07AE FE            [12] 2359 	mov	r6,a
   07AF 90 00 3B      [24] 2360 	mov	dptr,#_gpio_pin_val_read_value_1_109
   07B2 55 80         [12] 2361 	anl	a,_P0
   07B4 F0            [24] 2362 	movx	@dptr,a
   07B5 80 58         [24] 2363 	sjmp	00111$
   07B7                    2364 00110$:
                           2365 ;	../src/gpio/src/gpio_pin_val_read.c:55: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   07B7 EF            [12] 2366 	mov	a,r7
   07B8 24 F0         [12] 2367 	add	a,#0xff - 0x0F
   07BA 40 19         [24] 2368 	jc	00107$
                           2369 ;	../src/gpio/src/gpio_pin_val_read.c:57: value = P1 & (1 << (gpio_pin_id % 8));
   07BC 74 07         [12] 2370 	mov	a,#0x07
   07BE 5F            [12] 2371 	anl	a,r7
   07BF F5 F0         [12] 2372 	mov	b,a
   07C1 05 F0         [12] 2373 	inc	b
   07C3 74 01         [12] 2374 	mov	a,#0x01
   07C5 80 02         [24] 2375 	sjmp	00139$
   07C7                    2376 00137$:
   07C7 25 E0         [12] 2377 	add	a,acc
   07C9                    2378 00139$:
   07C9 D5 F0 FB      [24] 2379 	djnz	b,00137$
   07CC FE            [12] 2380 	mov	r6,a
   07CD 90 00 3B      [24] 2381 	mov	dptr,#_gpio_pin_val_read_value_1_109
   07D0 55 90         [12] 2382 	anl	a,_P1
   07D2 F0            [24] 2383 	movx	@dptr,a
   07D3 80 3A         [24] 2384 	sjmp	00111$
   07D5                    2385 00107$:
                           2386 ;	../src/gpio/src/gpio_pin_val_read.c:59: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   07D5 EF            [12] 2387 	mov	a,r7
   07D6 24 E8         [12] 2388 	add	a,#0xff - 0x17
   07D8 40 19         [24] 2389 	jc	00104$
                           2390 ;	../src/gpio/src/gpio_pin_val_read.c:61: value = P2 & (1 << (gpio_pin_id % 8));
   07DA 74 07         [12] 2391 	mov	a,#0x07
   07DC 5F            [12] 2392 	anl	a,r7
   07DD F5 F0         [12] 2393 	mov	b,a
   07DF 05 F0         [12] 2394 	inc	b
   07E1 74 01         [12] 2395 	mov	a,#0x01
   07E3 80 02         [24] 2396 	sjmp	00143$
   07E5                    2397 00141$:
   07E5 25 E0         [12] 2398 	add	a,acc
   07E7                    2399 00143$:
   07E7 D5 F0 FB      [24] 2400 	djnz	b,00141$
   07EA FE            [12] 2401 	mov	r6,a
   07EB 90 00 3B      [24] 2402 	mov	dptr,#_gpio_pin_val_read_value_1_109
   07EE 55 A0         [12] 2403 	anl	a,_P2
   07F0 F0            [24] 2404 	movx	@dptr,a
   07F1 80 1C         [24] 2405 	sjmp	00111$
   07F3                    2406 00104$:
                           2407 ;	../src/gpio/src/gpio_pin_val_read.c:63: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   07F3 EF            [12] 2408 	mov	a,r7
   07F4 24 E1         [12] 2409 	add	a,#0xff - 0x1E
   07F6 40 17         [24] 2410 	jc	00111$
                           2411 ;	../src/gpio/src/gpio_pin_val_read.c:65: value = P3 & (1 << (gpio_pin_id % 8));
   07F8 74 07         [12] 2412 	mov	a,#0x07
   07FA 5F            [12] 2413 	anl	a,r7
   07FB F5 F0         [12] 2414 	mov	b,a
   07FD 05 F0         [12] 2415 	inc	b
   07FF 74 01         [12] 2416 	mov	a,#0x01
   0801 80 02         [24] 2417 	sjmp	00147$
   0803                    2418 00145$:
   0803 25 E0         [12] 2419 	add	a,acc
   0805                    2420 00147$:
   0805 D5 F0 FB      [24] 2421 	djnz	b,00145$
   0808 FF            [12] 2422 	mov	r7,a
   0809 90 00 3B      [24] 2423 	mov	dptr,#_gpio_pin_val_read_value_1_109
   080C 55 B0         [12] 2424 	anl	a,_P3
   080E F0            [24] 2425 	movx	@dptr,a
   080F                    2426 00111$:
                           2427 ;	../src/gpio/src/gpio_pin_val_read.c:68: if(value)
   080F 90 00 3B      [24] 2428 	mov	dptr,#_gpio_pin_val_read_value_1_109
   0812 E0            [24] 2429 	movx	a,@dptr
   0813 FF            [12] 2430 	mov	r7,a
   0814 60 04         [24] 2431 	jz	00113$
                           2432 ;	../src/gpio/src/gpio_pin_val_read.c:70: return true;
   0816 75 82 01      [24] 2433 	mov	dpl,#0x01
   0819 22            [24] 2434 	ret
   081A                    2435 00113$:
                           2436 ;	../src/gpio/src/gpio_pin_val_read.c:74: return false;
   081A 75 82 00      [24] 2437 	mov	dpl,#0x00
   081D 22            [24] 2438 	ret
                           2439 ;------------------------------------------------------------
                           2440 ;Allocation info for local variables in function 'gpio_pin_val_clear'
                           2441 ;------------------------------------------------------------
                           2442 ;gpio_pin_id               Allocated with name '_gpio_pin_val_clear_gpio_pin_id_1_116'
                           2443 ;------------------------------------------------------------
                           2444 ;	../src/gpio/src/gpio_pin_val_clear.c:46: void gpio_pin_val_clear(gpio_pin_id_t gpio_pin_id)
                           2445 ;	-----------------------------------------
                           2446 ;	 function gpio_pin_val_clear
                           2447 ;	-----------------------------------------
   081E                    2448 _gpio_pin_val_clear:
   081E E5 82         [12] 2449 	mov	a,dpl
                           2450 ;	../src/gpio/src/gpio_pin_val_clear.c:49: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   0820 90 00 3C      [24] 2451 	mov	dptr,#_gpio_pin_val_clear_gpio_pin_id_1_116
   0823 F0            [24] 2452 	movx	@dptr,a
   0824 FF            [12] 2453 	mov  r7,a
   0825 24 F8         [12] 2454 	add	a,#0xff - 0x07
   0827 40 14         [24] 2455 	jc	00110$
                           2456 ;	../src/gpio/src/gpio_pin_val_clear.c:51: gpio_pins_val_clear(P0, (1 << (gpio_pin_id % 8)));
   0829 74 07         [12] 2457 	mov	a,#0x07
   082B 5F            [12] 2458 	anl	a,r7
   082C F5 F0         [12] 2459 	mov	b,a
   082E 05 F0         [12] 2460 	inc	b
   0830 74 01         [12] 2461 	mov	a,#0x01
   0832 80 02         [24] 2462 	sjmp	00129$
   0834                    2463 00127$:
   0834 25 E0         [12] 2464 	add	a,acc
   0836                    2465 00129$:
   0836 D5 F0 FB      [24] 2466 	djnz	b,00127$
   0839 F4            [12] 2467 	cpl	a
   083A 52 80         [12] 2468 	anl	_P0,a
   083C 22            [24] 2469 	ret
   083D                    2470 00110$:
                           2471 ;	../src/gpio/src/gpio_pin_val_clear.c:53: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   083D EF            [12] 2472 	mov	a,r7
   083E 24 F0         [12] 2473 	add	a,#0xff - 0x0F
   0840 40 14         [24] 2474 	jc	00107$
                           2475 ;	../src/gpio/src/gpio_pin_val_clear.c:55: gpio_pins_val_clear(P1, (1 << (gpio_pin_id % 8)));
   0842 74 07         [12] 2476 	mov	a,#0x07
   0844 5F            [12] 2477 	anl	a,r7
   0845 F5 F0         [12] 2478 	mov	b,a
   0847 05 F0         [12] 2479 	inc	b
   0849 74 01         [12] 2480 	mov	a,#0x01
   084B 80 02         [24] 2481 	sjmp	00133$
   084D                    2482 00131$:
   084D 25 E0         [12] 2483 	add	a,acc
   084F                    2484 00133$:
   084F D5 F0 FB      [24] 2485 	djnz	b,00131$
   0852 F4            [12] 2486 	cpl	a
   0853 52 90         [12] 2487 	anl	_P1,a
   0855 22            [24] 2488 	ret
   0856                    2489 00107$:
                           2490 ;	../src/gpio/src/gpio_pin_val_clear.c:57: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   0856 EF            [12] 2491 	mov	a,r7
   0857 24 E8         [12] 2492 	add	a,#0xff - 0x17
   0859 40 14         [24] 2493 	jc	00104$
                           2494 ;	../src/gpio/src/gpio_pin_val_clear.c:59: gpio_pins_val_clear(P2, (1 << (gpio_pin_id % 8)));
   085B 74 07         [12] 2495 	mov	a,#0x07
   085D 5F            [12] 2496 	anl	a,r7
   085E F5 F0         [12] 2497 	mov	b,a
   0860 05 F0         [12] 2498 	inc	b
   0862 74 01         [12] 2499 	mov	a,#0x01
   0864 80 02         [24] 2500 	sjmp	00137$
   0866                    2501 00135$:
   0866 25 E0         [12] 2502 	add	a,acc
   0868                    2503 00137$:
   0868 D5 F0 FB      [24] 2504 	djnz	b,00135$
   086B F4            [12] 2505 	cpl	a
   086C 52 A0         [12] 2506 	anl	_P2,a
   086E 22            [24] 2507 	ret
   086F                    2508 00104$:
                           2509 ;	../src/gpio/src/gpio_pin_val_clear.c:61: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   086F EF            [12] 2510 	mov	a,r7
   0870 24 E1         [12] 2511 	add	a,#0xff - 0x1E
   0872 40 14         [24] 2512 	jc	00112$
                           2513 ;	../src/gpio/src/gpio_pin_val_clear.c:63: gpio_pins_val_clear(P3, (1 << (gpio_pin_id % 8)));
   0874 74 07         [12] 2514 	mov	a,#0x07
   0876 5F            [12] 2515 	anl	a,r7
   0877 F5 F0         [12] 2516 	mov	b,a
   0879 05 F0         [12] 2517 	inc	b
   087B 74 01         [12] 2518 	mov	a,#0x01
   087D 80 02         [24] 2519 	sjmp	00141$
   087F                    2520 00139$:
   087F 25 E0         [12] 2521 	add	a,acc
   0881                    2522 00141$:
   0881 D5 F0 FB      [24] 2523 	djnz	b,00139$
   0884 F4            [12] 2524 	cpl	a
   0885 FF            [12] 2525 	mov	r7,a
   0886 52 B0         [12] 2526 	anl	_P3,a
   0888                    2527 00112$:
   0888 22            [24] 2528 	ret
                           2529 ;------------------------------------------------------------
                           2530 ;Allocation info for local variables in function 'gpio_pin_val_set'
                           2531 ;------------------------------------------------------------
                           2532 ;gpio_pin_id               Allocated with name '_gpio_pin_val_set_gpio_pin_id_1_122'
                           2533 ;------------------------------------------------------------
                           2534 ;	../src/gpio/src/gpio_pin_val_set.c:46: void gpio_pin_val_set(gpio_pin_id_t gpio_pin_id)
                           2535 ;	-----------------------------------------
                           2536 ;	 function gpio_pin_val_set
                           2537 ;	-----------------------------------------
   0889                    2538 _gpio_pin_val_set:
   0889 E5 82         [12] 2539 	mov	a,dpl
                           2540 ;	../src/gpio/src/gpio_pin_val_set.c:49: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   088B 90 00 3D      [24] 2541 	mov	dptr,#_gpio_pin_val_set_gpio_pin_id_1_122
   088E F0            [24] 2542 	movx	@dptr,a
   088F FF            [12] 2543 	mov  r7,a
   0890 24 F8         [12] 2544 	add	a,#0xff - 0x07
   0892 40 13         [24] 2545 	jc	00110$
                           2546 ;	../src/gpio/src/gpio_pin_val_set.c:51: gpio_pins_val_set(P0, (1 << (gpio_pin_id % 8)));
   0894 74 07         [12] 2547 	mov	a,#0x07
   0896 5F            [12] 2548 	anl	a,r7
   0897 F5 F0         [12] 2549 	mov	b,a
   0899 05 F0         [12] 2550 	inc	b
   089B 74 01         [12] 2551 	mov	a,#0x01
   089D 80 02         [24] 2552 	sjmp	00129$
   089F                    2553 00127$:
   089F 25 E0         [12] 2554 	add	a,acc
   08A1                    2555 00129$:
   08A1 D5 F0 FB      [24] 2556 	djnz	b,00127$
   08A4 42 80         [12] 2557 	orl	_P0,a
   08A6 22            [24] 2558 	ret
   08A7                    2559 00110$:
                           2560 ;	../src/gpio/src/gpio_pin_val_set.c:53: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   08A7 EF            [12] 2561 	mov	a,r7
   08A8 24 F0         [12] 2562 	add	a,#0xff - 0x0F
   08AA 40 13         [24] 2563 	jc	00107$
                           2564 ;	../src/gpio/src/gpio_pin_val_set.c:55: gpio_pins_val_set(P1, (1 << (gpio_pin_id % 8)));
   08AC 74 07         [12] 2565 	mov	a,#0x07
   08AE 5F            [12] 2566 	anl	a,r7
   08AF F5 F0         [12] 2567 	mov	b,a
   08B1 05 F0         [12] 2568 	inc	b
   08B3 74 01         [12] 2569 	mov	a,#0x01
   08B5 80 02         [24] 2570 	sjmp	00133$
   08B7                    2571 00131$:
   08B7 25 E0         [12] 2572 	add	a,acc
   08B9                    2573 00133$:
   08B9 D5 F0 FB      [24] 2574 	djnz	b,00131$
   08BC 42 90         [12] 2575 	orl	_P1,a
   08BE 22            [24] 2576 	ret
   08BF                    2577 00107$:
                           2578 ;	../src/gpio/src/gpio_pin_val_set.c:57: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   08BF EF            [12] 2579 	mov	a,r7
   08C0 24 E8         [12] 2580 	add	a,#0xff - 0x17
   08C2 40 13         [24] 2581 	jc	00104$
                           2582 ;	../src/gpio/src/gpio_pin_val_set.c:59: gpio_pins_val_set(P2, (1 << (gpio_pin_id % 8)));
   08C4 74 07         [12] 2583 	mov	a,#0x07
   08C6 5F            [12] 2584 	anl	a,r7
   08C7 F5 F0         [12] 2585 	mov	b,a
   08C9 05 F0         [12] 2586 	inc	b
   08CB 74 01         [12] 2587 	mov	a,#0x01
   08CD 80 02         [24] 2588 	sjmp	00137$
   08CF                    2589 00135$:
   08CF 25 E0         [12] 2590 	add	a,acc
   08D1                    2591 00137$:
   08D1 D5 F0 FB      [24] 2592 	djnz	b,00135$
   08D4 42 A0         [12] 2593 	orl	_P2,a
   08D6 22            [24] 2594 	ret
   08D7                    2595 00104$:
                           2596 ;	../src/gpio/src/gpio_pin_val_set.c:61: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   08D7 EF            [12] 2597 	mov	a,r7
   08D8 24 E1         [12] 2598 	add	a,#0xff - 0x1E
   08DA 40 13         [24] 2599 	jc	00112$
                           2600 ;	../src/gpio/src/gpio_pin_val_set.c:63: gpio_pins_val_set(P3, (1 << (gpio_pin_id % 8)));
   08DC 74 07         [12] 2601 	mov	a,#0x07
   08DE 5F            [12] 2602 	anl	a,r7
   08DF F5 F0         [12] 2603 	mov	b,a
   08E1 05 F0         [12] 2604 	inc	b
   08E3 74 01         [12] 2605 	mov	a,#0x01
   08E5 80 02         [24] 2606 	sjmp	00141$
   08E7                    2607 00139$:
   08E7 25 E0         [12] 2608 	add	a,acc
   08E9                    2609 00141$:
   08E9 D5 F0 FB      [24] 2610 	djnz	b,00139$
   08EC FF            [12] 2611 	mov	r7,a
   08ED 42 B0         [12] 2612 	orl	_P3,a
   08EF                    2613 00112$:
   08EF 22            [24] 2614 	ret
                           2615 ;------------------------------------------------------------
                           2616 ;Allocation info for local variables in function 'gpio_pin_val_write'
                           2617 ;------------------------------------------------------------
                           2618 ;value                     Allocated with name '_gpio_pin_val_write_PARM_2'
                           2619 ;gpio_pin_id               Allocated with name '_gpio_pin_val_write_gpio_pin_id_1_128'
                           2620 ;------------------------------------------------------------
                           2621 ;	../src/gpio/src/gpio_pin_val_write.c:47: void gpio_pin_val_write(gpio_pin_id_t gpio_pin_id, bool value)
                           2622 ;	-----------------------------------------
                           2623 ;	 function gpio_pin_val_write
                           2624 ;	-----------------------------------------
   08F0                    2625 _gpio_pin_val_write:
   08F0 E5 82         [12] 2626 	mov	a,dpl
   08F2 90 00 3F      [24] 2627 	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_128
   08F5 F0            [24] 2628 	movx	@dptr,a
                           2629 ;	../src/gpio/src/gpio_pin_val_write.c:50: if(value)
   08F6 90 00 3E      [24] 2630 	mov	dptr,#_gpio_pin_val_write_PARM_2
   08F9 E0            [24] 2631 	movx	a,@dptr
   08FA FF            [12] 2632 	mov	r7,a
   08FB 60 09         [24] 2633 	jz	00102$
                           2634 ;	../src/gpio/src/gpio_pin_val_write.c:52: gpio_pin_val_set(gpio_pin_id);
   08FD 90 00 3F      [24] 2635 	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_128
   0900 E0            [24] 2636 	movx	a,@dptr
   0901 F5 82         [12] 2637 	mov	dpl,a
   0903 02 08 89      [24] 2638 	ljmp	_gpio_pin_val_set
   0906                    2639 00102$:
                           2640 ;	../src/gpio/src/gpio_pin_val_write.c:56: gpio_pin_val_clear(gpio_pin_id);
   0906 90 00 3F      [24] 2641 	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_128
   0909 E0            [24] 2642 	movx	a,@dptr
   090A F5 82         [12] 2643 	mov	dpl,a
   090C 02 08 1E      [24] 2644 	ljmp	_gpio_pin_val_clear
                           2645 ;------------------------------------------------------------
                           2646 ;Allocation info for local variables in function 'delay_us'
                           2647 ;------------------------------------------------------------
                           2648 ;microseconds              Allocated with name '_delay_us_microseconds_1_132'
                           2649 ;count                     Allocated with name '_delay_us_count_1_133'
                           2650 ;------------------------------------------------------------
                           2651 ;	../src/delay/src/delay_us.c:46: void delay_us(uint16_t microseconds)
                           2652 ;	-----------------------------------------
                           2653 ;	 function delay_us
                           2654 ;	-----------------------------------------
   090F                    2655 _delay_us:
   090F AF 83         [24] 2656 	mov	r7,dph
   0911 E5 82         [12] 2657 	mov	a,dpl
   0913 90 00 40      [24] 2658 	mov	dptr,#_delay_us_microseconds_1_132
   0916 F0            [24] 2659 	movx	@dptr,a
   0917 EF            [12] 2660 	mov	a,r7
   0918 A3            [24] 2661 	inc	dptr
   0919 F0            [24] 2662 	movx	@dptr,a
                           2663 ;	../src/delay/src/delay_us.c:51: if(microseconds == 0)
   091A 90 00 40      [24] 2664 	mov	dptr,#_delay_us_microseconds_1_132
   091D E0            [24] 2665 	movx	a,@dptr
   091E FE            [12] 2666 	mov	r6,a
   091F A3            [24] 2667 	inc	dptr
   0920 E0            [24] 2668 	movx	a,@dptr
   0921 FF            [12] 2669 	mov	r7,a
   0922 4E            [12] 2670 	orl	a,r6
   0923 70 01         [24] 2671 	jnz	00102$
                           2672 ;	../src/delay/src/delay_us.c:52: return;
   0925 22            [24] 2673 	ret
   0926                    2674 00102$:
                           2675 ;	../src/delay/src/delay_us.c:54: microseconds -= 1;
   0926 1E            [12] 2676 	dec	r6
   0927 BE FF 01      [24] 2677 	cjne	r6,#0xFF,00121$
   092A 1F            [12] 2678 	dec	r7
   092B                    2679 00121$:
   092B 90 00 40      [24] 2680 	mov	dptr,#_delay_us_microseconds_1_132
   092E EE            [12] 2681 	mov	a,r6
   092F F0            [24] 2682 	movx	@dptr,a
   0930 EF            [12] 2683 	mov	a,r7
   0931 A3            [24] 2684 	inc	dptr
   0932 F0            [24] 2685 	movx	@dptr,a
                           2686 ;	../src/delay/src/delay_us.c:56: for(count = 0; count < microseconds; count++)
   0933 90 00 40      [24] 2687 	mov	dptr,#_delay_us_microseconds_1_132
   0936 E0            [24] 2688 	movx	a,@dptr
   0937 FE            [12] 2689 	mov	r6,a
   0938 A3            [24] 2690 	inc	dptr
   0939 E0            [24] 2691 	movx	a,@dptr
   093A FF            [12] 2692 	mov	r7,a
   093B 7C 00         [12] 2693 	mov	r4,#0x00
   093D 7D 00         [12] 2694 	mov	r5,#0x00
   093F                    2695 00106$:
   093F C3            [12] 2696 	clr	c
   0940 EC            [12] 2697 	mov	a,r4
   0941 9E            [12] 2698 	subb	a,r6
   0942 ED            [12] 2699 	mov	a,r5
   0943 9F            [12] 2700 	subb	a,r7
   0944 50 09         [24] 2701 	jnc	00108$
                           2702 ;	../src/delay/src/delay_us.c:58: nop();
   0946 00            [12] 2703 	nop 
                           2704 ;	../src/delay/src/delay_us.c:59: nop();
   0947 00            [12] 2705 	nop 
                           2706 ;	../src/delay/src/delay_us.c:56: for(count = 0; count < microseconds; count++)
   0948 0C            [12] 2707 	inc	r4
   0949 BC 00 F3      [24] 2708 	cjne	r4,#0x00,00106$
   094C 0D            [12] 2709 	inc	r5
   094D 80 F0         [24] 2710 	sjmp	00106$
   094F                    2711 00108$:
   094F 22            [24] 2712 	ret
                           2713 ;------------------------------------------------------------
                           2714 ;Allocation info for local variables in function 'delay_s'
                           2715 ;------------------------------------------------------------
                           2716 ;seconds                   Allocated with name '_delay_s_seconds_1_135'
                           2717 ;count                     Allocated with name '_delay_s_count_1_136'
                           2718 ;------------------------------------------------------------
                           2719 ;	../src/delay/src/delay_s.c:46: void delay_s(uint16_t seconds)
                           2720 ;	-----------------------------------------
                           2721 ;	 function delay_s
                           2722 ;	-----------------------------------------
   0950                    2723 _delay_s:
   0950 AF 83         [24] 2724 	mov	r7,dph
   0952 E5 82         [12] 2725 	mov	a,dpl
   0954 90 00 42      [24] 2726 	mov	dptr,#_delay_s_seconds_1_135
   0957 F0            [24] 2727 	movx	@dptr,a
   0958 EF            [12] 2728 	mov	a,r7
   0959 A3            [24] 2729 	inc	dptr
   095A F0            [24] 2730 	movx	@dptr,a
                           2731 ;	../src/delay/src/delay_s.c:51: for(count = 0; count < seconds; count++)
   095B 90 00 42      [24] 2732 	mov	dptr,#_delay_s_seconds_1_135
   095E E0            [24] 2733 	movx	a,@dptr
   095F FE            [12] 2734 	mov	r6,a
   0960 A3            [24] 2735 	inc	dptr
   0961 E0            [24] 2736 	movx	a,@dptr
   0962 FF            [12] 2737 	mov	r7,a
   0963 7C 00         [12] 2738 	mov	r4,#0x00
   0965 7D 00         [12] 2739 	mov	r5,#0x00
   0967                    2740 00103$:
   0967 C3            [12] 2741 	clr	c
   0968 EC            [12] 2742 	mov	a,r4
   0969 9E            [12] 2743 	subb	a,r6
   096A ED            [12] 2744 	mov	a,r5
   096B 9F            [12] 2745 	subb	a,r7
   096C 50 1D         [24] 2746 	jnc	00105$
                           2747 ;	../src/delay/src/delay_s.c:53: delay_ms(1000);
   096E 90 03 E8      [24] 2748 	mov	dptr,#0x03E8
   0971 C0 07         [24] 2749 	push	ar7
   0973 C0 06         [24] 2750 	push	ar6
   0975 C0 05         [24] 2751 	push	ar5
   0977 C0 04         [24] 2752 	push	ar4
   0979 12 09 8C      [24] 2753 	lcall	_delay_ms
   097C D0 04         [24] 2754 	pop	ar4
   097E D0 05         [24] 2755 	pop	ar5
   0980 D0 06         [24] 2756 	pop	ar6
   0982 D0 07         [24] 2757 	pop	ar7
                           2758 ;	../src/delay/src/delay_s.c:51: for(count = 0; count < seconds; count++)
   0984 0C            [12] 2759 	inc	r4
   0985 BC 00 DF      [24] 2760 	cjne	r4,#0x00,00103$
   0988 0D            [12] 2761 	inc	r5
   0989 80 DC         [24] 2762 	sjmp	00103$
   098B                    2763 00105$:
   098B 22            [24] 2764 	ret
                           2765 ;------------------------------------------------------------
                           2766 ;Allocation info for local variables in function 'delay_ms'
                           2767 ;------------------------------------------------------------
                           2768 ;milliseconds              Allocated with name '_delay_ms_milliseconds_1_138'
                           2769 ;count                     Allocated with name '_delay_ms_count_1_139'
                           2770 ;------------------------------------------------------------
                           2771 ;	../src/delay/src/delay_ms.c:46: void delay_ms(uint16_t milliseconds)
                           2772 ;	-----------------------------------------
                           2773 ;	 function delay_ms
                           2774 ;	-----------------------------------------
   098C                    2775 _delay_ms:
   098C AF 83         [24] 2776 	mov	r7,dph
   098E E5 82         [12] 2777 	mov	a,dpl
   0990 90 00 44      [24] 2778 	mov	dptr,#_delay_ms_milliseconds_1_138
   0993 F0            [24] 2779 	movx	@dptr,a
   0994 EF            [12] 2780 	mov	a,r7
   0995 A3            [24] 2781 	inc	dptr
   0996 F0            [24] 2782 	movx	@dptr,a
                           2783 ;	../src/delay/src/delay_ms.c:51: for(count = 0; count < milliseconds; count++)
   0997 90 00 44      [24] 2784 	mov	dptr,#_delay_ms_milliseconds_1_138
   099A E0            [24] 2785 	movx	a,@dptr
   099B FE            [12] 2786 	mov	r6,a
   099C A3            [24] 2787 	inc	dptr
   099D E0            [24] 2788 	movx	a,@dptr
   099E FF            [12] 2789 	mov	r7,a
   099F 7C 00         [12] 2790 	mov	r4,#0x00
   09A1 7D 00         [12] 2791 	mov	r5,#0x00
   09A3                    2792 00103$:
   09A3 C3            [12] 2793 	clr	c
   09A4 EC            [12] 2794 	mov	a,r4
   09A5 9E            [12] 2795 	subb	a,r6
   09A6 ED            [12] 2796 	mov	a,r5
   09A7 9F            [12] 2797 	subb	a,r7
   09A8 50 1D         [24] 2798 	jnc	00105$
                           2799 ;	../src/delay/src/delay_ms.c:53: delay_us(1000);
   09AA 90 03 E8      [24] 2800 	mov	dptr,#0x03E8
   09AD C0 07         [24] 2801 	push	ar7
   09AF C0 06         [24] 2802 	push	ar6
   09B1 C0 05         [24] 2803 	push	ar5
   09B3 C0 04         [24] 2804 	push	ar4
   09B5 12 09 0F      [24] 2805 	lcall	_delay_us
   09B8 D0 04         [24] 2806 	pop	ar4
   09BA D0 05         [24] 2807 	pop	ar5
   09BC D0 06         [24] 2808 	pop	ar6
   09BE D0 07         [24] 2809 	pop	ar7
                           2810 ;	../src/delay/src/delay_ms.c:51: for(count = 0; count < milliseconds; count++)
   09C0 0C            [12] 2811 	inc	r4
   09C1 BC 00 DF      [24] 2812 	cjne	r4,#0x00,00103$
   09C4 0D            [12] 2813 	inc	r5
   09C5 80 DC         [24] 2814 	sjmp	00103$
   09C7                    2815 00105$:
   09C7 22            [24] 2816 	ret
                           2817 ;------------------------------------------------------------
                           2818 ;Allocation info for local variables in function 'pwm_configure'
                           2819 ;------------------------------------------------------------
                           2820 ;pwm_config_options        Allocated with name '_pwm_configure_pwm_config_options_1_143'
                           2821 ;------------------------------------------------------------
                           2822 ;	../src/pwm/src/pwm_configure.c:52: void pwm_configure(uint8_t pwm_config_options)
                           2823 ;	-----------------------------------------
                           2824 ;	 function pwm_configure
                           2825 ;	-----------------------------------------
   09C8                    2826 _pwm_configure:
   09C8 E5 82         [12] 2827 	mov	a,dpl
   09CA 90 00 46      [24] 2828 	mov	dptr,#_pwm_configure_pwm_config_options_1_143
   09CD F0            [24] 2829 	movx	@dptr,a
                           2830 ;	../src/pwm/src/pwm_configure.c:55: PWMCON = (PWMCON & ~PWM_CONFIG_OPTION_PWMCON_MASK) | (pwm_config_options & PWM_CONFIG_OPTION_PWMCON_MASK);
   09CE AF B2         [24] 2831 	mov	r7,_PWMCON
   09D0 53 07 03      [24] 2832 	anl	ar7,#0x03
   09D3 90 00 46      [24] 2833 	mov	dptr,#_pwm_configure_pwm_config_options_1_143
   09D6 E0            [24] 2834 	movx	a,@dptr
   09D7 54 FC         [12] 2835 	anl	a,#0xFC
   09D9 4F            [12] 2836 	orl	a,r7
   09DA F5 B2         [12] 2837 	mov	_PWMCON,a
   09DC 22            [24] 2838 	ret
                           2839 ;------------------------------------------------------------
                           2840 ;Allocation info for local variables in function 'pwm_start'
                           2841 ;------------------------------------------------------------
                           2842 ;pwm_duty_cycle            Allocated with name '_pwm_start_PARM_2'
                           2843 ;pwm_channel               Allocated with name '_pwm_start_pwm_channel_1_145'
                           2844 ;------------------------------------------------------------
                           2845 ;	../src/pwm/src/pwm_start.c:47: void pwm_start(pwm_channel_t pwm_channel, uint8_t pwm_duty_cycle)
                           2846 ;	-----------------------------------------
                           2847 ;	 function pwm_start
                           2848 ;	-----------------------------------------
   09DD                    2849 _pwm_start:
   09DD E5 82         [12] 2850 	mov	a,dpl
                           2851 ;	../src/pwm/src/pwm_start.c:50: if(pwm_channel == PWM_CHANNEL_0)
   09DF 90 00 48      [24] 2852 	mov	dptr,#_pwm_start_pwm_channel_1_145
   09E2 F0            [24] 2853 	movx	@dptr,a
   09E3 FF            [12] 2854 	mov	r7,a
   09E4 70 0A         [24] 2855 	jnz	00102$
                           2856 ;	../src/pwm/src/pwm_start.c:52: PWMDC0 = pwm_duty_cycle;
   09E6 90 00 47      [24] 2857 	mov	dptr,#_pwm_start_PARM_2
   09E9 E0            [24] 2858 	movx	a,@dptr
   09EA F5 A1         [12] 2859 	mov	_PWMDC0,a
                           2860 ;	../src/pwm/src/pwm_start.c:53: reg_bits_set(PWMCON, PWMCON_PWM0_ENABLE);
   09EC 43 B2 01      [24] 2861 	orl	_PWMCON,#0x01
   09EF 22            [24] 2862 	ret
   09F0                    2863 00102$:
                           2864 ;	../src/pwm/src/pwm_start.c:57: PWMDC1 = pwm_duty_cycle;
   09F0 90 00 47      [24] 2865 	mov	dptr,#_pwm_start_PARM_2
   09F3 E0            [24] 2866 	movx	a,@dptr
   09F4 F5 A2         [12] 2867 	mov	_PWMDC1,a
                           2868 ;	../src/pwm/src/pwm_start.c:58: reg_bits_set(PWMCON, PWMCON_PWM1_ENABLE);
   09F6 43 B2 02      [24] 2869 	orl	_PWMCON,#0x02
   09F9 22            [24] 2870 	ret
                           2871 ;------------------------------------------------------------
                           2872 ;Allocation info for local variables in function 'pwr_clk_mgmt_clklf_configure'
                           2873 ;------------------------------------------------------------
                           2874 ;clklf_config_options      Allocated with name '_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154'
                           2875 ;------------------------------------------------------------
                           2876 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_clklf_configure.c:52: void pwr_clk_mgmt_clklf_configure(uint8_t clklf_config_options)
                           2877 ;	-----------------------------------------
                           2878 ;	 function pwr_clk_mgmt_clklf_configure
                           2879 ;	-----------------------------------------
   09FA                    2880 _pwr_clk_mgmt_clklf_configure:
   09FA E5 82         [12] 2881 	mov	a,dpl
   09FC 90 00 49      [24] 2882 	mov	dptr,#_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154
   09FF F0            [24] 2883 	movx	@dptr,a
                           2884 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_clklf_configure.c:55: CLKLFCTRL = (CLKLFCTRL & ~PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLKLFCTRL_MASK) | (clklf_config_options & PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLKLFCTRL_MASK);
   0A00 AF AD         [24] 2885 	mov	r7,_CLKLFCTRL
   0A02 53 07 F8      [24] 2886 	anl	ar7,#0xF8
   0A05 90 00 49      [24] 2887 	mov	dptr,#_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154
   0A08 E0            [24] 2888 	movx	a,@dptr
   0A09 54 07         [12] 2889 	anl	a,#0x07
   0A0B 4F            [12] 2890 	orl	a,r7
   0A0C F5 AD         [12] 2891 	mov	_CLKLFCTRL,a
   0A0E 22            [24] 2892 	ret
                           2893 ;------------------------------------------------------------
                           2894 ;Allocation info for local variables in function 'pwr_clk_mgmt_get_cclk_freq_in_hz'
                           2895 ;------------------------------------------------------------
                           2896 ;divider                   Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_divider_1_156'
                           2897 ;i                         Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_i_1_156'
                           2898 ;cclk_freq_hz              Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156'
                           2899 ;------------------------------------------------------------
                           2900 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:46: uint32_t pwr_clk_mgmt_get_cclk_freq_in_hz()
                           2901 ;	-----------------------------------------
                           2902 ;	 function pwr_clk_mgmt_get_cclk_freq_in_hz
                           2903 ;	-----------------------------------------
   0A0F                    2904 _pwr_clk_mgmt_get_cclk_freq_in_hz:
                           2905 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:48: uint8_t divider = (CLKCTRL & CLKCTRL_CLK_FREQ_MASK) >> CLKCTRL_CLK_FREQ_SHIFT;
   0A0F 74 07         [12] 2906 	mov	a,#0x07
   0A11 55 A3         [12] 2907 	anl	a,_CLKCTRL
   0A13 FF            [12] 2908 	mov	r7,a
                           2909 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:50: uint32_t cclk_freq_hz = CCLK_MAX_FREQ_HZ;
   0A14 90 00 4A      [24] 2910 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
   0A17 E4            [12] 2911 	clr	a
   0A18 F0            [24] 2912 	movx	@dptr,a
   0A19 74 24         [12] 2913 	mov	a,#0x24
   0A1B A3            [24] 2914 	inc	dptr
   0A1C F0            [24] 2915 	movx	@dptr,a
   0A1D 74 F4         [12] 2916 	mov	a,#0xF4
   0A1F A3            [24] 2917 	inc	dptr
   0A20 F0            [24] 2918 	movx	@dptr,a
   0A21 E4            [12] 2919 	clr	a
   0A22 A3            [24] 2920 	inc	dptr
   0A23 F0            [24] 2921 	movx	@dptr,a
                           2922 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:52: for(i = 0; i < divider; i++)
   0A24 7E 00         [12] 2923 	mov	r6,#0x00
   0A26                    2924 00103$:
   0A26 C3            [12] 2925 	clr	c
   0A27 EE            [12] 2926 	mov	a,r6
   0A28 9F            [12] 2927 	subb	a,r7
   0A29 50 29         [24] 2928 	jnc	00101$
                           2929 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:54: cclk_freq_hz /= 2;
   0A2B 90 00 4A      [24] 2930 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
   0A2E E0            [24] 2931 	movx	a,@dptr
   0A2F FA            [12] 2932 	mov	r2,a
   0A30 A3            [24] 2933 	inc	dptr
   0A31 E0            [24] 2934 	movx	a,@dptr
   0A32 FB            [12] 2935 	mov	r3,a
   0A33 A3            [24] 2936 	inc	dptr
   0A34 E0            [24] 2937 	movx	a,@dptr
   0A35 FC            [12] 2938 	mov	r4,a
   0A36 A3            [24] 2939 	inc	dptr
   0A37 E0            [24] 2940 	movx	a,@dptr
   0A38 C3            [12] 2941 	clr	c
   0A39 13            [12] 2942 	rrc	a
   0A3A FD            [12] 2943 	mov	r5,a
   0A3B EC            [12] 2944 	mov	a,r4
   0A3C 13            [12] 2945 	rrc	a
   0A3D FC            [12] 2946 	mov	r4,a
   0A3E EB            [12] 2947 	mov	a,r3
   0A3F 13            [12] 2948 	rrc	a
   0A40 FB            [12] 2949 	mov	r3,a
   0A41 EA            [12] 2950 	mov	a,r2
   0A42 13            [12] 2951 	rrc	a
   0A43 FA            [12] 2952 	mov	r2,a
   0A44 90 00 4A      [24] 2953 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
   0A47 F0            [24] 2954 	movx	@dptr,a
   0A48 EB            [12] 2955 	mov	a,r3
   0A49 A3            [24] 2956 	inc	dptr
   0A4A F0            [24] 2957 	movx	@dptr,a
   0A4B EC            [12] 2958 	mov	a,r4
   0A4C A3            [24] 2959 	inc	dptr
   0A4D F0            [24] 2960 	movx	@dptr,a
   0A4E ED            [12] 2961 	mov	a,r5
   0A4F A3            [24] 2962 	inc	dptr
   0A50 F0            [24] 2963 	movx	@dptr,a
                           2964 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:52: for(i = 0; i < divider; i++)
   0A51 0E            [12] 2965 	inc	r6
   0A52 80 D2         [24] 2966 	sjmp	00103$
   0A54                    2967 00101$:
                           2968 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:57: return cclk_freq_hz;
   0A54 90 00 4A      [24] 2969 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
   0A57 E0            [24] 2970 	movx	a,@dptr
   0A58 FC            [12] 2971 	mov	r4,a
   0A59 A3            [24] 2972 	inc	dptr
   0A5A E0            [24] 2973 	movx	a,@dptr
   0A5B FD            [12] 2974 	mov	r5,a
   0A5C A3            [24] 2975 	inc	dptr
   0A5D E0            [24] 2976 	movx	a,@dptr
   0A5E FE            [12] 2977 	mov	r6,a
   0A5F A3            [24] 2978 	inc	dptr
   0A60 E0            [24] 2979 	movx	a,@dptr
   0A61 8C 82         [24] 2980 	mov	dpl,r4
   0A63 8D 83         [24] 2981 	mov	dph,r5
   0A65 8E F0         [24] 2982 	mov	b,r6
   0A67 22            [24] 2983 	ret
                           2984 ;------------------------------------------------------------
                           2985 ;Allocation info for local variables in function 'pwr_clk_mgmt_wakeup_configure'
                           2986 ;------------------------------------------------------------
                           2987 ;wakeup_on_pin_config_options Allocated with name '_pwr_clk_mgmt_wakeup_configure_PARM_2'
                           2988 ;wakeup_sources_config_options Allocated with name '_pwr_clk_mgmt_wakeup_configure_wakeup_sources_config_options_1_158'
                           2989 ;------------------------------------------------------------
                           2990 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_wakeup_configure.c:47: void pwr_clk_mgmt_wakeup_configure(unsigned char wakeup_sources_config_options, unsigned int wakeup_on_pin_config_options)
                           2991 ;	-----------------------------------------
                           2992 ;	 function pwr_clk_mgmt_wakeup_configure
                           2993 ;	-----------------------------------------
   0A68                    2994 _pwr_clk_mgmt_wakeup_configure:
   0A68 E5 82         [12] 2995 	mov	a,dpl
                           2996 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_wakeup_configure.c:50: WUCON = wakeup_sources_config_options;
   0A6A 90 00 50      [24] 2997 	mov	dptr,#_pwr_clk_mgmt_wakeup_configure_wakeup_sources_config_options_1_158
   0A6D F0            [24] 2998 	movx	@dptr,a
   0A6E F5 A5         [12] 2999 	mov	_WUCON,a
                           3000 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_wakeup_configure.c:53: WUOPC0 = wakeup_on_pin_config_options & 0xFF;
   0A70 90 00 4E      [24] 3001 	mov	dptr,#_pwr_clk_mgmt_wakeup_configure_PARM_2
   0A73 E0            [24] 3002 	movx	a,@dptr
   0A74 FE            [12] 3003 	mov	r6,a
   0A75 A3            [24] 3004 	inc	dptr
   0A76 E0            [24] 3005 	movx	a,@dptr
   0A77 FF            [12] 3006 	mov	r7,a
   0A78 8E 04         [24] 3007 	mov	ar4,r6
   0A7A 8C CF         [24] 3008 	mov	_WUOPC0,r4
                           3009 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_wakeup_configure.c:54: WUOPC1 = (wakeup_on_pin_config_options >> 8) & 0xFF;
   0A7C 8F 06         [24] 3010 	mov	ar6,r7
   0A7E 8E CE         [24] 3011 	mov	_WUOPC1,r6
   0A80 22            [24] 3012 	ret
                           3013 ;------------------------------------------------------------
                           3014 ;Allocation info for local variables in function 'watchdog_set_wdsv_count'
                           3015 ;------------------------------------------------------------
                           3016 ;wdsv_value                Allocated with name '_watchdog_set_wdsv_count_wdsv_value_1_161'
                           3017 ;------------------------------------------------------------
                           3018 ;	../src/watchdog/src/watchdog_set_wdsv_count.c:46: void watchdog_set_wdsv_count(uint16_t wdsv_value)
                           3019 ;	-----------------------------------------
                           3020 ;	 function watchdog_set_wdsv_count
                           3021 ;	-----------------------------------------
   0A81                    3022 _watchdog_set_wdsv_count:
   0A81 AF 83         [24] 3023 	mov	r7,dph
   0A83 E5 82         [12] 3024 	mov	a,dpl
   0A85 90 00 51      [24] 3025 	mov	dptr,#_watchdog_set_wdsv_count_wdsv_value_1_161
   0A88 F0            [24] 3026 	movx	@dptr,a
   0A89 EF            [12] 3027 	mov	a,r7
   0A8A A3            [24] 3028 	inc	dptr
   0A8B F0            [24] 3029 	movx	@dptr,a
                           3030 ;	../src/watchdog/src/watchdog_set_wdsv_count.c:49: WDSV = (uint8_t)wdsv_value;
   0A8C 90 00 51      [24] 3031 	mov	dptr,#_watchdog_set_wdsv_count_wdsv_value_1_161
   0A8F E0            [24] 3032 	movx	a,@dptr
   0A90 FE            [12] 3033 	mov	r6,a
   0A91 A3            [24] 3034 	inc	dptr
   0A92 E0            [24] 3035 	movx	a,@dptr
   0A93 FF            [12] 3036 	mov	r7,a
   0A94 8E AF         [24] 3037 	mov	_WDSV,r6
                           3038 ;	../src/watchdog/src/watchdog_set_wdsv_count.c:50: WDSV = (uint8_t)(wdsv_value >> 8);
   0A96 8F AF         [24] 3039 	mov	_WDSV,r7
   0A98 22            [24] 3040 	ret
                           3041 ;------------------------------------------------------------
                           3042 ;Allocation info for local variables in function 'watchdog_start_and_set_timeout_in_ms'
                           3043 ;------------------------------------------------------------
                           3044 ;milliseconds              Allocated with name '_watchdog_start_and_set_timeout_in_ms_milliseconds_1_163'
                           3045 ;wd_value                  Allocated with name '_watchdog_start_and_set_timeout_in_ms_wd_value_1_164'
                           3046 ;------------------------------------------------------------
                           3047 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:50: uint16_t watchdog_start_and_set_timeout_in_ms(uint32_t milliseconds)
                           3048 ;	-----------------------------------------
                           3049 ;	 function watchdog_start_and_set_timeout_in_ms
                           3050 ;	-----------------------------------------
   0A99                    3051 _watchdog_start_and_set_timeout_in_ms:
   0A99 AF 82         [24] 3052 	mov	r7,dpl
   0A9B AE 83         [24] 3053 	mov	r6,dph
   0A9D AD F0         [24] 3054 	mov	r5,b
   0A9F FC            [12] 3055 	mov	r4,a
   0AA0 90 00 53      [24] 3056 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_milliseconds_1_163
   0AA3 EF            [12] 3057 	mov	a,r7
   0AA4 F0            [24] 3058 	movx	@dptr,a
   0AA5 EE            [12] 3059 	mov	a,r6
   0AA6 A3            [24] 3060 	inc	dptr
   0AA7 F0            [24] 3061 	movx	@dptr,a
   0AA8 ED            [12] 3062 	mov	a,r5
   0AA9 A3            [24] 3063 	inc	dptr
   0AAA F0            [24] 3064 	movx	@dptr,a
   0AAB EC            [12] 3065 	mov	a,r4
   0AAC A3            [24] 3066 	inc	dptr
   0AAD F0            [24] 3067 	movx	@dptr,a
                           3068 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:52: uint16_t wd_value = 0;
   0AAE 90 00 57      [24] 3069 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_164
   0AB1 E4            [12] 3070 	clr	a
   0AB2 F0            [24] 3071 	movx	@dptr,a
   0AB3 E4            [12] 3072 	clr	a
   0AB4 A3            [24] 3073 	inc	dptr
   0AB5 F0            [24] 3074 	movx	@dptr,a
                           3075 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:55: if(!pwr_clk_mgmt_is_clklf_enabled())
   0AB6 74 07         [12] 3076 	mov	a,#0x07
   0AB8 55 AD         [12] 3077 	anl	a,_CLKLFCTRL
   0ABA FF            [12] 3078 	mov	r7,a
   0ABB BF 07 0B      [24] 3079 	cjne	r7,#0x07,00105$
                           3080 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:58: pwr_clk_mgmt_clklf_configure(PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLK_SRC_XOSC16M);
   0ABE 75 82 02      [24] 3081 	mov	dpl,#0x02
   0AC1 12 09 FA      [24] 3082 	lcall	_pwr_clk_mgmt_clklf_configure
                           3083 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:59: pwr_clk_mgmt_wait_until_clklf_is_ready();
   0AC4                    3084 00101$:
   0AC4 E5 AD         [12] 3085 	mov	a,_CLKLFCTRL
   0AC6 30 E6 FB      [24] 3086 	jnb	acc.6,00101$
   0AC9                    3087 00105$:
                           3088 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:63: if(milliseconds < 511992)
   0AC9 90 00 53      [24] 3089 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_milliseconds_1_163
   0ACC E0            [24] 3090 	movx	a,@dptr
   0ACD FC            [12] 3091 	mov	r4,a
   0ACE A3            [24] 3092 	inc	dptr
   0ACF E0            [24] 3093 	movx	a,@dptr
   0AD0 FD            [12] 3094 	mov	r5,a
   0AD1 A3            [24] 3095 	inc	dptr
   0AD2 E0            [24] 3096 	movx	a,@dptr
   0AD3 FE            [12] 3097 	mov	r6,a
   0AD4 A3            [24] 3098 	inc	dptr
   0AD5 E0            [24] 3099 	movx	a,@dptr
   0AD6 FF            [12] 3100 	mov	r7,a
   0AD7 C3            [12] 3101 	clr	c
   0AD8 EC            [12] 3102 	mov	a,r4
   0AD9 94 F8         [12] 3103 	subb	a,#0xF8
   0ADB ED            [12] 3104 	mov	a,r5
   0ADC 94 CF         [12] 3105 	subb	a,#0xCF
   0ADE EE            [12] 3106 	mov	a,r6
   0ADF 94 07         [12] 3107 	subb	a,#0x07
   0AE1 EF            [12] 3108 	mov	a,r7
   0AE2 94 00         [12] 3109 	subb	a,#0x00
   0AE4 50 52         [24] 3110 	jnc	00107$
                           3111 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:90: wd_value = (uint16_t)(((uint32_t)(milliseconds * ((uint32_t)128)) + (uint32_t)500) / ((uint32_t)1000));
   0AE6 EF            [12] 3112 	mov	a,r7
   0AE7 54 01         [12] 3113 	anl	a,#0x01
   0AE9 A2 E0         [12] 3114 	mov	c,acc.0
   0AEB CE            [12] 3115 	xch	a,r6
   0AEC 13            [12] 3116 	rrc	a
   0AED CE            [12] 3117 	xch	a,r6
   0AEE 13            [12] 3118 	rrc	a
   0AEF CE            [12] 3119 	xch	a,r6
   0AF0 FF            [12] 3120 	mov	r7,a
   0AF1 ED            [12] 3121 	mov	a,r5
   0AF2 C3            [12] 3122 	clr	c
   0AF3 13            [12] 3123 	rrc	a
   0AF4 4E            [12] 3124 	orl	a,r6
   0AF5 FE            [12] 3125 	mov	r6,a
   0AF6 ED            [12] 3126 	mov	a,r5
   0AF7 54 01         [12] 3127 	anl	a,#0x01
   0AF9 A2 E0         [12] 3128 	mov	c,acc.0
   0AFB CC            [12] 3129 	xch	a,r4
   0AFC 13            [12] 3130 	rrc	a
   0AFD CC            [12] 3131 	xch	a,r4
   0AFE 13            [12] 3132 	rrc	a
   0AFF CC            [12] 3133 	xch	a,r4
   0B00 FD            [12] 3134 	mov	r5,a
   0B01 74 F4         [12] 3135 	mov	a,#0xF4
   0B03 2C            [12] 3136 	add	a,r4
   0B04 FC            [12] 3137 	mov	r4,a
   0B05 74 01         [12] 3138 	mov	a,#0x01
   0B07 3D            [12] 3139 	addc	a,r5
   0B08 FD            [12] 3140 	mov	r5,a
   0B09 E4            [12] 3141 	clr	a
   0B0A 3E            [12] 3142 	addc	a,r6
   0B0B FE            [12] 3143 	mov	r6,a
   0B0C E4            [12] 3144 	clr	a
   0B0D 3F            [12] 3145 	addc	a,r7
   0B0E FF            [12] 3146 	mov	r7,a
   0B0F 90 00 CF      [24] 3147 	mov	dptr,#__divulong_PARM_2
   0B12 74 E8         [12] 3148 	mov	a,#0xE8
   0B14 F0            [24] 3149 	movx	@dptr,a
   0B15 74 03         [12] 3150 	mov	a,#0x03
   0B17 A3            [24] 3151 	inc	dptr
   0B18 F0            [24] 3152 	movx	@dptr,a
   0B19 E4            [12] 3153 	clr	a
   0B1A A3            [24] 3154 	inc	dptr
   0B1B F0            [24] 3155 	movx	@dptr,a
   0B1C E4            [12] 3156 	clr	a
   0B1D A3            [24] 3157 	inc	dptr
   0B1E F0            [24] 3158 	movx	@dptr,a
   0B1F 8C 82         [24] 3159 	mov	dpl,r4
   0B21 8D 83         [24] 3160 	mov	dph,r5
   0B23 8E F0         [24] 3161 	mov	b,r6
   0B25 EF            [12] 3162 	mov	a,r7
   0B26 12 1A 90      [24] 3163 	lcall	__divulong
   0B29 AC 82         [24] 3164 	mov	r4,dpl
   0B2B AD 83         [24] 3165 	mov	r5,dph
   0B2D AE F0         [24] 3166 	mov	r6,b
   0B2F FF            [12] 3167 	mov	r7,a
   0B30 90 00 57      [24] 3168 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_164
   0B33 EC            [12] 3169 	mov	a,r4
   0B34 F0            [24] 3170 	movx	@dptr,a
   0B35 ED            [12] 3171 	mov	a,r5
   0B36 A3            [24] 3172 	inc	dptr
   0B37 F0            [24] 3173 	movx	@dptr,a
   0B38                    3174 00107$:
                           3175 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:93: watchdog_set_wdsv_count(wd_value);
   0B38 90 00 57      [24] 3176 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_164
   0B3B E0            [24] 3177 	movx	a,@dptr
   0B3C FE            [12] 3178 	mov	r6,a
   0B3D A3            [24] 3179 	inc	dptr
   0B3E E0            [24] 3180 	movx	a,@dptr
   0B3F FF            [12] 3181 	mov	r7,a
   0B40 8E 82         [24] 3182 	mov	dpl,r6
   0B42 8F 83         [24] 3183 	mov	dph,r7
   0B44 C0 07         [24] 3184 	push	ar7
   0B46 C0 06         [24] 3185 	push	ar6
   0B48 12 0A 81      [24] 3186 	lcall	_watchdog_set_wdsv_count
   0B4B D0 06         [24] 3187 	pop	ar6
   0B4D D0 07         [24] 3188 	pop	ar7
                           3189 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:95: return wd_value;
   0B4F 8E 82         [24] 3190 	mov	dpl,r6
   0B51 8F 83         [24] 3191 	mov	dph,r7
   0B53 22            [24] 3192 	ret
                           3193 ;------------------------------------------------------------
                           3194 ;Allocation info for local variables in function 'interrupt_configure_ifp'
                           3195 ;------------------------------------------------------------
                           3196 ;ifp_int_config_options    Allocated with name '_interrupt_configure_ifp_PARM_2'
                           3197 ;interrupt_ifp_input       Allocated with name '_interrupt_configure_ifp_interrupt_ifp_input_1_167'
                           3198 ;------------------------------------------------------------
                           3199 ;	../src/interrupt/src/interrupt_configure_ifp.c:57: bool interrupt_configure_ifp(interrupt_ifp_input_t interrupt_ifp_input, uint8_t ifp_int_config_options)
                           3200 ;	-----------------------------------------
                           3201 ;	 function interrupt_configure_ifp
                           3202 ;	-----------------------------------------
   0B54                    3203 _interrupt_configure_ifp:
   0B54 E5 82         [12] 3204 	mov	a,dpl
   0B56 90 00 5A      [24] 3205 	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_167
   0B59 F0            [24] 3206 	movx	@dptr,a
                           3207 ;	../src/interrupt/src/interrupt_configure_ifp.c:60: if(ifp_int_config_options & INTERRUPT_IFP_CONFIG_OPTION_ENABLE)
   0B5A 90 00 59      [24] 3208 	mov	dptr,#_interrupt_configure_ifp_PARM_2
   0B5D E0            [24] 3209 	movx	a,@dptr
   0B5E FF            [12] 3210 	mov	r7,a
   0B5F 30 E7 41      [24] 3211 	jnb	acc.7,00116$
                           3212 ;	../src/interrupt/src/interrupt_configure_ifp.c:63: if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT0)
   0B62 90 00 5A      [24] 3213 	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_167
   0B65 E0            [24] 3214 	movx	a,@dptr
   0B66 FE            [12] 3215 	mov	r6,a
   0B67 BE 08 0B      [24] 3216 	cjne	r6,#0x08,00108$
                           3217 ;	../src/interrupt/src/interrupt_configure_ifp.c:65: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT0;
   0B6A AD A6         [24] 3218 	mov	r5,_INTEXP
   0B6C 74 C7         [12] 3219 	mov	a,#0xC7
   0B6E 5D            [12] 3220 	anl	a,r5
   0B6F 44 08         [12] 3221 	orl	a,#0x08
   0B71 F5 A6         [12] 3222 	mov	_INTEXP,a
   0B73 80 20         [24] 3223 	sjmp	00109$
   0B75                    3224 00108$:
                           3225 ;	../src/interrupt/src/interrupt_configure_ifp.c:67: else if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT1)
   0B75 BE 10 0B      [24] 3226 	cjne	r6,#0x10,00105$
                           3227 ;	../src/interrupt/src/interrupt_configure_ifp.c:69: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT1;
   0B78 AD A6         [24] 3228 	mov	r5,_INTEXP
   0B7A 74 C7         [12] 3229 	mov	a,#0xC7
   0B7C 5D            [12] 3230 	anl	a,r5
   0B7D 44 10         [12] 3231 	orl	a,#0x10
   0B7F F5 A6         [12] 3232 	mov	_INTEXP,a
   0B81 80 12         [24] 3233 	sjmp	00109$
   0B83                    3234 00105$:
                           3235 ;	../src/interrupt/src/interrupt_configure_ifp.c:71: else if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT2)
   0B83 BE 20 0B      [24] 3236 	cjne	r6,#0x20,00102$
                           3237 ;	../src/interrupt/src/interrupt_configure_ifp.c:73: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT2;
   0B86 AE A6         [24] 3238 	mov	r6,_INTEXP
   0B88 74 C7         [12] 3239 	mov	a,#0xC7
   0B8A 5E            [12] 3240 	anl	a,r6
   0B8B 44 20         [12] 3241 	orl	a,#0x20
   0B8D F5 A6         [12] 3242 	mov	_INTEXP,a
   0B8F 80 04         [24] 3243 	sjmp	00109$
   0B91                    3244 00102$:
                           3245 ;	../src/interrupt/src/interrupt_configure_ifp.c:78: return false;
   0B91 75 82 00      [24] 3246 	mov	dpl,#0x00
   0B94 22            [24] 3247 	ret
   0B95                    3248 00109$:
                           3249 ;	../src/interrupt/src/interrupt_configure_ifp.c:82: TCON = (TCON & ~INTERRUPT_IFP_CONFIG_TCON_MASK) | (ifp_int_config_options & INTERRUPT_IFP_CONFIG_TCON_MASK);
   0B95 AE 88         [24] 3250 	mov	r6,_TCON
   0B97 53 06 FE      [24] 3251 	anl	ar6,#0xFE
   0B9A 53 07 01      [24] 3252 	anl	ar7,#0x01
   0B9D EF            [12] 3253 	mov	a,r7
   0B9E 4E            [12] 3254 	orl	a,r6
   0B9F F5 88         [12] 3255 	mov	_TCON,a
   0BA1 80 1F         [24] 3256 	sjmp	00117$
   0BA3                    3257 00116$:
                           3258 ;	../src/interrupt/src/interrupt_configure_ifp.c:87: if((interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT0) || (interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT1) || (interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT2))
   0BA3 90 00 5A      [24] 3259 	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_167
   0BA6 E0            [24] 3260 	movx	a,@dptr
   0BA7 FF            [12] 3261 	mov	r7,a
   0BA8 BF 08 02      [24] 3262 	cjne	r7,#0x08,00145$
   0BAB 80 08         [24] 3263 	sjmp	00110$
   0BAD                    3264 00145$:
   0BAD BF 10 02      [24] 3265 	cjne	r7,#0x10,00146$
   0BB0 80 03         [24] 3266 	sjmp	00110$
   0BB2                    3267 00146$:
   0BB2 BF 20 09      [24] 3268 	cjne	r7,#0x20,00111$
   0BB5                    3269 00110$:
                           3270 ;	../src/interrupt/src/interrupt_configure_ifp.c:89: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK);
   0BB5 AF A6         [24] 3271 	mov	r7,_INTEXP
   0BB7 74 C7         [12] 3272 	mov	a,#0xC7
   0BB9 5F            [12] 3273 	anl	a,r7
   0BBA F5 A6         [12] 3274 	mov	_INTEXP,a
   0BBC 80 04         [24] 3275 	sjmp	00117$
   0BBE                    3276 00111$:
                           3277 ;	../src/interrupt/src/interrupt_configure_ifp.c:94: return false;
   0BBE 75 82 00      [24] 3278 	mov	dpl,#0x00
   0BC1 22            [24] 3279 	ret
   0BC2                    3280 00117$:
                           3281 ;	../src/interrupt/src/interrupt_configure_ifp.c:98: return true;
   0BC2 75 82 01      [24] 3282 	mov	dpl,#0x01
   0BC5 22            [24] 3283 	ret
                           3284 ;------------------------------------------------------------
                           3285 ;Allocation info for local variables in function 'adc_configure'
                           3286 ;------------------------------------------------------------
                           3287 ;adc_config_options        Allocated with name '_adc_configure_adc_config_options_1_181'
                           3288 ;------------------------------------------------------------
                           3289 ;	../src/adc/src/adc_configure.c:54: void adc_configure(unsigned int adc_config_options)
                           3290 ;	-----------------------------------------
                           3291 ;	 function adc_configure
                           3292 ;	-----------------------------------------
   0BC6                    3293 _adc_configure:
   0BC6 AF 83         [24] 3294 	mov	r7,dph
   0BC8 E5 82         [12] 3295 	mov	a,dpl
   0BCA 90 00 5B      [24] 3296 	mov	dptr,#_adc_configure_adc_config_options_1_181
   0BCD F0            [24] 3297 	movx	@dptr,a
   0BCE EF            [12] 3298 	mov	a,r7
   0BCF A3            [24] 3299 	inc	dptr
   0BD0 F0            [24] 3300 	movx	@dptr,a
                           3301 ;	../src/adc/src/adc_configure.c:57: ADCCON1 = (adc_config_options >> 8) & ADC_CONFIG_OPTION_ADCCON1_WRITE_MASK;
   0BD1 90 00 5B      [24] 3302 	mov	dptr,#_adc_configure_adc_config_options_1_181
   0BD4 E0            [24] 3303 	movx	a,@dptr
   0BD5 FE            [12] 3304 	mov	r6,a
   0BD6 A3            [24] 3305 	inc	dptr
   0BD7 E0            [24] 3306 	movx	a,@dptr
   0BD8 FD            [12] 3307 	mov	r5,a
   0BD9 74 03         [12] 3308 	mov	a,#0x03
   0BDB 5D            [12] 3309 	anl	a,r5
   0BDC F5 D3         [12] 3310 	mov	_ADCCON1,a
                           3311 ;	../src/adc/src/adc_configure.c:58: ADCCON2 = (adc_config_options)      & ADC_CONFIG_OPTION_ADCCON2_WRITE_MASK;
   0BDE 8E D2         [24] 3312 	mov	_ADCCON2,r6
                           3313 ;	../src/adc/src/adc_configure.c:59: ADCCON3 = (adc_config_options >> 8) & ADC_CONFIG_OPTION_ADCCON3_WRITE_MASK;
   0BE0 74 E0         [12] 3314 	mov	a,#0xE0
   0BE2 5D            [12] 3315 	anl	a,r5
   0BE3 F5 D1         [12] 3316 	mov	_ADCCON3,a
   0BE5 22            [24] 3317 	ret
                           3318 ;------------------------------------------------------------
                           3319 ;Allocation info for local variables in function 'adc_set_input_channel'
                           3320 ;------------------------------------------------------------
                           3321 ;adc_channel               Allocated with name '_adc_set_input_channel_adc_channel_1_183'
                           3322 ;------------------------------------------------------------
                           3323 ;	../src/adc/src/adc_set_input_channel.c:46: void adc_set_input_channel(adc_channel_t adc_channel)
                           3324 ;	-----------------------------------------
                           3325 ;	 function adc_set_input_channel
                           3326 ;	-----------------------------------------
   0BE6                    3327 _adc_set_input_channel:
   0BE6 E5 82         [12] 3328 	mov	a,dpl
                           3329 ;	../src/adc/src/adc_set_input_channel.c:49: adc_channel &= (ADCCON1_CHAN_SEL_MASK >> ADCCON1_CHAN_SEL_SHIFT);
   0BE8 90 00 5D      [24] 3330 	mov	dptr,#_adc_set_input_channel_adc_channel_1_183
   0BEB F0            [24] 3331 	movx	@dptr,a
   0BEC FF            [12] 3332 	mov	r7,a
   0BED 90 00 5D      [24] 3333 	mov	dptr,#_adc_set_input_channel_adc_channel_1_183
   0BF0 74 0F         [12] 3334 	mov	a,#0x0F
   0BF2 5F            [12] 3335 	anl	a,r7
   0BF3 F0            [24] 3336 	movx	@dptr,a
                           3337 ;	../src/adc/src/adc_set_input_channel.c:52: ADCCON1 = (ADCCON1 & ~ADCCON1_CHAN_SEL_MASK) | (adc_channel << ADCCON1_CHAN_SEL_SHIFT);
   0BF4 AF D3         [24] 3338 	mov	r7,_ADCCON1
   0BF6 53 07 C3      [24] 3339 	anl	ar7,#0xC3
   0BF9 90 00 5D      [24] 3340 	mov	dptr,#_adc_set_input_channel_adc_channel_1_183
   0BFC E0            [24] 3341 	movx	a,@dptr
   0BFD 25 E0         [12] 3342 	add	a,acc
   0BFF 25 E0         [12] 3343 	add	a,acc
   0C01 4F            [12] 3344 	orl	a,r7
   0C02 F5 D3         [12] 3345 	mov	_ADCCON1,a
   0C04 22            [24] 3346 	ret
                           3347 ;------------------------------------------------------------
                           3348 ;Allocation info for local variables in function 'adc_start_single_conversion'
                           3349 ;------------------------------------------------------------
                           3350 ;adc_channel               Allocated with name '_adc_start_single_conversion_adc_channel_1_185'
                           3351 ;------------------------------------------------------------
                           3352 ;	../src/adc/src/adc_start_single_conversion.c:47: void adc_start_single_conversion(adc_channel_t adc_channel)
                           3353 ;	-----------------------------------------
                           3354 ;	 function adc_start_single_conversion
                           3355 ;	-----------------------------------------
   0C05                    3356 _adc_start_single_conversion:
   0C05 E5 82         [12] 3357 	mov	a,dpl
                           3358 ;	../src/adc/src/adc_start_single_conversion.c:49: adc_set_input_channel(adc_channel);
   0C07 90 00 5E      [24] 3359 	mov	dptr,#_adc_start_single_conversion_adc_channel_1_185
   0C0A F0            [24] 3360 	movx	@dptr,a
   0C0B F5 82         [12] 3361 	mov	dpl,a
   0C0D 12 0B E6      [24] 3362 	lcall	_adc_set_input_channel
                           3363 ;	../src/adc/src/adc_start_single_conversion.c:52: adc_power_up();
   0C10 43 D3 80      [24] 3364 	orl	_ADCCON1,#0x80
                           3365 ;	../src/adc/src/adc_start_single_conversion.c:53: nop(); nop(); nop(); nop(); //4 clock cycles must elapse before busy flag is set (datasheet v1.3, p. 165)
   0C13 00            [12] 3366 	nop 
   0C14 00            [12] 3367 	nop 
   0C15 00            [12] 3368 	nop 
   0C16 00            [12] 3369 	nop 
   0C17 22            [24] 3370 	ret
                           3371 ;------------------------------------------------------------
                           3372 ;Allocation info for local variables in function 'adc_start_single_conversion_get_value'
                           3373 ;------------------------------------------------------------
                           3374 ;adc_channel               Allocated with name '_adc_start_single_conversion_get_value_adc_channel_1_187'
                           3375 ;------------------------------------------------------------
                           3376 ;	../src/adc/src/adc_start_single_conversion_get_value.c:48: uint16_t adc_start_single_conversion_get_value(adc_channel_t adc_channel)
                           3377 ;	-----------------------------------------
                           3378 ;	 function adc_start_single_conversion_get_value
                           3379 ;	-----------------------------------------
   0C18                    3380 _adc_start_single_conversion_get_value:
   0C18 E5 82         [12] 3381 	mov	a,dpl
                           3382 ;	../src/adc/src/adc_start_single_conversion_get_value.c:50: adc_start_single_conversion(adc_channel);
   0C1A 90 00 5F      [24] 3383 	mov	dptr,#_adc_start_single_conversion_get_value_adc_channel_1_187
   0C1D F0            [24] 3384 	movx	@dptr,a
   0C1E F5 82         [12] 3385 	mov	dpl,a
   0C20 12 0C 05      [24] 3386 	lcall	_adc_start_single_conversion
                           3387 ;	../src/adc/src/adc_start_single_conversion_get_value.c:52: while(adc_is_conversion_in_progress());
   0C23                    3388 00101$:
   0C23 74 40         [12] 3389 	mov	a,#0x40
   0C25 55 D3         [12] 3390 	anl	a,_ADCCON1
   0C27 FF            [12] 3391 	mov	r7,a
   0C28 BF 40 02      [24] 3392 	cjne	r7,#0x40,00112$
   0C2B 80 F6         [24] 3393 	sjmp	00101$
   0C2D                    3394 00112$:
                           3395 ;	../src/adc/src/adc_start_single_conversion_get_value.c:54: return adc_get_result();
   0C2D 85 D5 82      [24] 3396 	mov	dpl,((_ADCDAT >> 0) & 0xFF)
   0C30 85 D4 83      [24] 3397 	mov	dph,((_ADCDAT >> 8) & 0xFF)
   0C33 22            [24] 3398 	ret
                           3399 ;------------------------------------------------------------
                           3400 ;Allocation info for local variables in function 'timer0_configure'
                           3401 ;------------------------------------------------------------
                           3402 ;t0_val                    Allocated with name '_timer0_configure_PARM_2'
                           3403 ;timer0_config_options     Allocated with name '_timer0_configure_timer0_config_options_1_190'
                           3404 ;------------------------------------------------------------
                           3405 ;	../src/timer0/src/timer0_configure.c:53: void timer0_configure(uint8_t timer0_config_options, uint16_t t0_val)
                           3406 ;	-----------------------------------------
                           3407 ;	 function timer0_configure
                           3408 ;	-----------------------------------------
   0C34                    3409 _timer0_configure:
   0C34 E5 82         [12] 3410 	mov	a,dpl
                           3411 ;	../src/timer0/src/timer0_configure.c:56: if((timer0_config_options & TMOD_MODE0_MASK) == TIMER0_CONFIG_OPTION_MODE_2_8_BIT_AUTO_RLD_TMR)
   0C36 90 00 62      [24] 3412 	mov	dptr,#_timer0_configure_timer0_config_options_1_190
   0C39 F0            [24] 3413 	movx	@dptr,a
   0C3A FF            [12] 3414 	mov	r7,a
   0C3B 74 03         [12] 3415 	mov	a,#0x03
   0C3D 5F            [12] 3416 	anl	a,r7
   0C3E FE            [12] 3417 	mov	r6,a
   0C3F BE 02 0E      [24] 3418 	cjne	r6,#0x02,00102$
                           3419 ;	../src/timer0/src/timer0_configure.c:58: TH0 = (uint8_t)t0_val;
   0C42 90 00 60      [24] 3420 	mov	dptr,#_timer0_configure_PARM_2
   0C45 E0            [24] 3421 	movx	a,@dptr
   0C46 FD            [12] 3422 	mov	r5,a
   0C47 A3            [24] 3423 	inc	dptr
   0C48 E0            [24] 3424 	movx	a,@dptr
   0C49 FE            [12] 3425 	mov	r6,a
   0C4A 8D 8C         [24] 3426 	mov	_TH0,r5
                           3427 ;	../src/timer0/src/timer0_configure.c:59: TL0 = (uint8_t)t0_val;
   0C4C 8D 8A         [24] 3428 	mov	_TL0,r5
   0C4E 80 0A         [24] 3429 	sjmp	00103$
   0C50                    3430 00102$:
                           3431 ;	../src/timer0/src/timer0_configure.c:63: timer0_set_t0_val(t0_val);
   0C50 90 00 60      [24] 3432 	mov	dptr,#_timer0_configure_PARM_2
   0C53 E0            [24] 3433 	movx	a,@dptr
   0C54 F5 8A         [12] 3434 	mov	((_T0 >> 0) & 0xFF),a
   0C56 A3            [24] 3435 	inc	dptr
   0C57 E0            [24] 3436 	movx	a,@dptr
   0C58 F5 8C         [12] 3437 	mov	((_T0 >> 8) & 0xFF),a
   0C5A                    3438 00103$:
                           3439 ;	../src/timer0/src/timer0_configure.c:67: TMOD = (TMOD & ~TIMER0_CONFIG_OPTION_TMOD_MASK) | (timer0_config_options & TIMER0_CONFIG_OPTION_TMOD_MASK);
   0C5A AE 89         [24] 3440 	mov	r6,_TMOD
   0C5C 53 06 F0      [24] 3441 	anl	ar6,#0xF0
   0C5F 53 07 0F      [24] 3442 	anl	ar7,#0x0F
   0C62 EF            [12] 3443 	mov	a,r7
   0C63 4E            [12] 3444 	orl	a,r6
   0C64 F5 89         [12] 3445 	mov	_TMOD,a
   0C66 22            [24] 3446 	ret
                           3447 ;------------------------------------------------------------
                           3448 ;Allocation info for local variables in function 'timer1_configure'
                           3449 ;------------------------------------------------------------
                           3450 ;t1_val                    Allocated with name '_timer1_configure_PARM_2'
                           3451 ;timer1_config_options     Allocated with name '_timer1_configure_timer1_config_options_1_195'
                           3452 ;------------------------------------------------------------
                           3453 ;	../src/timer1/src/timer1_configure.c:53: void timer1_configure(uint8_t timer1_config_options, uint16_t t1_val)
                           3454 ;	-----------------------------------------
                           3455 ;	 function timer1_configure
                           3456 ;	-----------------------------------------
   0C67                    3457 _timer1_configure:
   0C67 E5 82         [12] 3458 	mov	a,dpl
                           3459 ;	../src/timer1/src/timer1_configure.c:56: if((timer1_config_options & TMOD_MODE1_MASK) == TIMER1_CONFIG_OPTION_MODE_2_8_BIT_AUTO_RLD_TMR)
   0C69 90 00 65      [24] 3460 	mov	dptr,#_timer1_configure_timer1_config_options_1_195
   0C6C F0            [24] 3461 	movx	@dptr,a
   0C6D FF            [12] 3462 	mov	r7,a
   0C6E 74 30         [12] 3463 	mov	a,#0x30
   0C70 5F            [12] 3464 	anl	a,r7
   0C71 FE            [12] 3465 	mov	r6,a
   0C72 BE 20 0E      [24] 3466 	cjne	r6,#0x20,00102$
                           3467 ;	../src/timer1/src/timer1_configure.c:58: TH1 = (uint8_t)t1_val;
   0C75 90 00 63      [24] 3468 	mov	dptr,#_timer1_configure_PARM_2
   0C78 E0            [24] 3469 	movx	a,@dptr
   0C79 FD            [12] 3470 	mov	r5,a
   0C7A A3            [24] 3471 	inc	dptr
   0C7B E0            [24] 3472 	movx	a,@dptr
   0C7C FE            [12] 3473 	mov	r6,a
   0C7D 8D 8D         [24] 3474 	mov	_TH1,r5
                           3475 ;	../src/timer1/src/timer1_configure.c:59: TL1 = (uint8_t)t1_val;
   0C7F 8D 8B         [24] 3476 	mov	_TL1,r5
   0C81 80 0A         [24] 3477 	sjmp	00103$
   0C83                    3478 00102$:
                           3479 ;	../src/timer1/src/timer1_configure.c:63: timer1_set_t1_val(t1_val);
   0C83 90 00 63      [24] 3480 	mov	dptr,#_timer1_configure_PARM_2
   0C86 E0            [24] 3481 	movx	a,@dptr
   0C87 F5 8B         [12] 3482 	mov	((_T1 >> 0) & 0xFF),a
   0C89 A3            [24] 3483 	inc	dptr
   0C8A E0            [24] 3484 	movx	a,@dptr
   0C8B F5 8D         [12] 3485 	mov	((_T1 >> 8) & 0xFF),a
   0C8D                    3486 00103$:
                           3487 ;	../src/timer1/src/timer1_configure.c:67: TMOD = (TMOD & ~TIMER1_CONFIG_OPTION_TMOD_MASK) | (timer1_config_options & TIMER1_CONFIG_OPTION_TMOD_MASK);
   0C8D AE 89         [24] 3488 	mov	r6,_TMOD
   0C8F 53 06 0F      [24] 3489 	anl	ar6,#0x0F
   0C92 53 07 F0      [24] 3490 	anl	ar7,#0xF0
   0C95 EF            [12] 3491 	mov	a,r7
   0C96 4E            [12] 3492 	orl	a,r6
   0C97 F5 89         [12] 3493 	mov	_TMOD,a
   0C99 22            [24] 3494 	ret
                           3495 ;------------------------------------------------------------
                           3496 ;Allocation info for local variables in function 'uart_configure_manual_baud_calc'
                           3497 ;------------------------------------------------------------
                           3498 ;s0rel_val_if_br_gen_or_th1_val_if_tmr1 Allocated with name '_uart_configure_manual_baud_calc_PARM_2'
                           3499 ;uart_config_options       Allocated with name '_uart_configure_manual_baud_calc_uart_config_options_1_205'
                           3500 ;------------------------------------------------------------
                           3501 ;	../src/uart/src/uart_configure_manual_baud_calc.c:55: void uart_configure_manual_baud_calc(uint8_t uart_config_options, uint16_t s0rel_val_if_br_gen_or_th1_val_if_tmr1)
                           3502 ;	-----------------------------------------
                           3503 ;	 function uart_configure_manual_baud_calc
                           3504 ;	-----------------------------------------
   0C9A                    3505 _uart_configure_manual_baud_calc:
   0C9A E5 82         [12] 3506 	mov	a,dpl
                           3507 ;	../src/uart/src/uart_configure_manual_baud_calc.c:58: if(uart_config_options & UART_CONFIG_OPTION_BIT_SMOD_SET)
   0C9C 90 00 68      [24] 3508 	mov	dptr,#_uart_configure_manual_baud_calc_uart_config_options_1_205
   0C9F F0            [24] 3509 	movx	@dptr,a
   0CA0 FF            [12] 3510 	mov	r7,a
   0CA1 30 E2 05      [24] 3511 	jnb	acc.2,00102$
                           3512 ;	../src/uart/src/uart_configure_manual_baud_calc.c:60: reg_bits_set(PCON, PCON_SMOD);
   0CA4 43 87 80      [24] 3513 	orl	_PCON,#0x80
   0CA7 80 07         [24] 3514 	sjmp	00103$
   0CA9                    3515 00102$:
                           3516 ;	../src/uart/src/uart_configure_manual_baud_calc.c:64: reg_bits_clear(PCON, PCON_SMOD);
   0CA9 AE 87         [24] 3517 	mov	r6,_PCON
   0CAB 74 7F         [12] 3518 	mov	a,#0x7F
   0CAD 5E            [12] 3519 	anl	a,r6
   0CAE F5 87         [12] 3520 	mov	_PCON,a
   0CB0                    3521 00103$:
                           3522 ;	../src/uart/src/uart_configure_manual_baud_calc.c:68: if(((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_1_UART_8_BIT) ||
   0CB0 74 C0         [12] 3523 	mov	a,#0xC0
   0CB2 5F            [12] 3524 	anl	a,r7
   0CB3 FE            [12] 3525 	mov	r6,a
   0CB4 BE 40 02      [24] 3526 	cjne	r6,#0x40,00122$
   0CB7 80 07         [24] 3527 	sjmp	00107$
   0CB9                    3528 00122$:
                           3529 ;	../src/uart/src/uart_configure_manual_baud_calc.c:69: ((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_3_UART_9_BIT))
   0CB9 74 C0         [12] 3530 	mov	a,#0xC0
   0CBB 5F            [12] 3531 	anl	a,r7
   0CBC FE            [12] 3532 	mov	r6,a
   0CBD BE C0 32      [24] 3533 	cjne	r6,#0xC0,00108$
   0CC0                    3534 00107$:
                           3535 ;	../src/uart/src/uart_configure_manual_baud_calc.c:72: if((uart_config_options & UART_CONFIG_OPTION_CLOCK_MASK) == UART_CONFIG_OPTION_CLOCK_FOR_MODES_1_3_USE_BR_GEN)
   0CC0 74 02         [12] 3536 	mov	a,#0x02
   0CC2 5F            [12] 3537 	anl	a,r7
   0CC3 FE            [12] 3538 	mov	r6,a
   0CC4 BE 02 0E      [24] 3539 	cjne	r6,#0x02,00105$
                           3540 ;	../src/uart/src/uart_configure_manual_baud_calc.c:74: S0REL = s0rel_val_if_br_gen_or_th1_val_if_tmr1; //set S0REL to the value requested
   0CC7 90 00 66      [24] 3541 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   0CCA E0            [24] 3542 	movx	a,@dptr
   0CCB F5 AA         [12] 3543 	mov	((_S0REL >> 0) & 0xFF),a
   0CCD A3            [24] 3544 	inc	dptr
   0CCE E0            [24] 3545 	movx	a,@dptr
   0CCF F5 BA         [12] 3546 	mov	((_S0REL >> 8) & 0xFF),a
                           3547 ;	../src/uart/src/uart_configure_manual_baud_calc.c:75: sbit_set(ADCON_SB_BD); //enable BR generator
   0CD1 D2 DF         [12] 3548 	setb _ADCON_SB_BD 
   0CD3 80 1D         [24] 3549 	sjmp	00108$
   0CD5                    3550 00105$:
                           3551 ;	../src/uart/src/uart_configure_manual_baud_calc.c:79: sbit_clear(ADCON_SB_BD); //disable BR generator and use TMR1 overflow
   0CD5 C2 DF         [12] 3552 	clr _ADCON_SB_BD 
                           3553 ;	../src/uart/src/uart_configure_manual_baud_calc.c:85: (uint8_t)s0rel_val_if_br_gen_or_th1_val_if_tmr1);
   0CD7 90 00 66      [24] 3554 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   0CDA E0            [24] 3555 	movx	a,@dptr
   0CDB FD            [12] 3556 	mov	r5,a
   0CDC A3            [24] 3557 	inc	dptr
   0CDD E0            [24] 3558 	movx	a,@dptr
   0CDE 90 00 63      [24] 3559 	mov	dptr,#_timer1_configure_PARM_2
   0CE1 ED            [12] 3560 	mov	a,r5
   0CE2 F0            [24] 3561 	movx	@dptr,a
   0CE3 E4            [12] 3562 	clr	a
   0CE4 A3            [24] 3563 	inc	dptr
   0CE5 F0            [24] 3564 	movx	@dptr,a
   0CE6 75 82 20      [24] 3565 	mov	dpl,#0x20
   0CE9 C0 07         [24] 3566 	push	ar7
   0CEB 12 0C 67      [24] 3567 	lcall	_timer1_configure
   0CEE D0 07         [24] 3568 	pop	ar7
                           3569 ;	../src/uart/src/uart_configure_manual_baud_calc.c:87: timer1_run(); //enable the timer
   0CF0 D2 8E         [12] 3570 	setb _TCON_SB_TR1 
   0CF2                    3571 00108$:
                           3572 ;	../src/uart/src/uart_configure_manual_baud_calc.c:92: S0CON = uart_config_options & UART_CONFIG_OPTION_S0CON_MASK;
   0CF2 74 F0         [12] 3573 	mov	a,#0xF0
   0CF4 5F            [12] 3574 	anl	a,r7
   0CF5 F5 98         [12] 3575 	mov	_S0CON,a
   0CF7 22            [24] 3576 	ret
                           3577 ;------------------------------------------------------------
                           3578 ;Allocation info for local variables in function 'uart_calc_actual_baud_rate_from_s0rel'
                           3579 ;------------------------------------------------------------
                           3580 ;smod_bit_value            Allocated with name '_uart_calc_actual_baud_rate_from_s0rel_PARM_2'
                           3581 ;s0rel_reg_value           Allocated with name '_uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_212'
                           3582 ;------------------------------------------------------------
                           3583 ;	../src/uart/src/uart_calc_actual_baud_rate_from_s0rel.c:48: uint32_t uart_calc_actual_baud_rate_from_s0rel(uint16_t s0rel_reg_value, bool smod_bit_value)
                           3584 ;	-----------------------------------------
                           3585 ;	 function uart_calc_actual_baud_rate_from_s0rel
                           3586 ;	-----------------------------------------
   0CF8                    3587 _uart_calc_actual_baud_rate_from_s0rel:
   0CF8 AF 83         [24] 3588 	mov	r7,dph
   0CFA E5 82         [12] 3589 	mov	a,dpl
   0CFC 90 00 6A      [24] 3590 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_212
   0CFF F0            [24] 3591 	movx	@dptr,a
   0D00 EF            [12] 3592 	mov	a,r7
   0D01 A3            [24] 3593 	inc	dptr
   0D02 F0            [24] 3594 	movx	@dptr,a
                           3595 ;	../src/uart/src/uart_calc_actual_baud_rate_from_s0rel.c:57: return (uint32_t)(((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(64 * (1024 - s0rel_reg_value)))) + 1) / 2);
   0D03 90 00 69      [24] 3596 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
   0D06 E0            [24] 3597 	movx	a,@dptr
   0D07 FF            [12] 3598 	mov	r7,a
   0D08 60 04         [24] 3599 	jz	00103$
   0D0A 7F 02         [12] 3600 	mov	r7,#0x02
   0D0C 80 02         [24] 3601 	sjmp	00104$
   0D0E                    3602 00103$:
   0D0E 7F 01         [12] 3603 	mov	r7,#0x01
   0D10                    3604 00104$:
   0D10 EF            [12] 3605 	mov	a,r7
   0D11 75 F0 02      [24] 3606 	mov	b,#0x02
   0D14 A4            [48] 3607 	mul	ab
   0D15 FF            [12] 3608 	mov	r7,a
   0D16 AE F0         [24] 3609 	mov	r6,b
   0D18 C0 07         [24] 3610 	push	ar7
   0D1A C0 06         [24] 3611 	push	ar6
   0D1C 12 0A 0F      [24] 3612 	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
   0D1F AA 82         [24] 3613 	mov	r2,dpl
   0D21 AB 83         [24] 3614 	mov	r3,dph
   0D23 AC F0         [24] 3615 	mov	r4,b
   0D25 FD            [12] 3616 	mov	r5,a
   0D26 D0 06         [24] 3617 	pop	ar6
   0D28 D0 07         [24] 3618 	pop	ar7
   0D2A 8F 00         [24] 3619 	mov	ar0,r7
   0D2C EE            [12] 3620 	mov	a,r6
   0D2D F9            [12] 3621 	mov	r1,a
   0D2E 33            [12] 3622 	rlc	a
   0D2F 95 E0         [12] 3623 	subb	a,acc
   0D31 FE            [12] 3624 	mov	r6,a
   0D32 FF            [12] 3625 	mov	r7,a
   0D33 90 00 DE      [24] 3626 	mov	dptr,#__mullong_PARM_2
   0D36 EA            [12] 3627 	mov	a,r2
   0D37 F0            [24] 3628 	movx	@dptr,a
   0D38 EB            [12] 3629 	mov	a,r3
   0D39 A3            [24] 3630 	inc	dptr
   0D3A F0            [24] 3631 	movx	@dptr,a
   0D3B EC            [12] 3632 	mov	a,r4
   0D3C A3            [24] 3633 	inc	dptr
   0D3D F0            [24] 3634 	movx	@dptr,a
   0D3E ED            [12] 3635 	mov	a,r5
   0D3F A3            [24] 3636 	inc	dptr
   0D40 F0            [24] 3637 	movx	@dptr,a
   0D41 88 82         [24] 3638 	mov	dpl,r0
   0D43 89 83         [24] 3639 	mov	dph,r1
   0D45 8E F0         [24] 3640 	mov	b,r6
   0D47 EF            [12] 3641 	mov	a,r7
   0D48 12 1B D9      [24] 3642 	lcall	__mullong
   0D4B AC 82         [24] 3643 	mov	r4,dpl
   0D4D AD 83         [24] 3644 	mov	r5,dph
   0D4F AE F0         [24] 3645 	mov	r6,b
   0D51 FF            [12] 3646 	mov	r7,a
   0D52 90 00 6A      [24] 3647 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_212
   0D55 E0            [24] 3648 	movx	a,@dptr
   0D56 FA            [12] 3649 	mov	r2,a
   0D57 A3            [24] 3650 	inc	dptr
   0D58 E0            [24] 3651 	movx	a,@dptr
   0D59 FB            [12] 3652 	mov	r3,a
   0D5A E4            [12] 3653 	clr	a
   0D5B C3            [12] 3654 	clr	c
   0D5C 9A            [12] 3655 	subb	a,r2
   0D5D FA            [12] 3656 	mov	r2,a
   0D5E 74 04         [12] 3657 	mov	a,#0x04
   0D60 9B            [12] 3658 	subb	a,r3
   0D61 54 03         [12] 3659 	anl	a,#0x03
   0D63 A2 E0         [12] 3660 	mov	c,acc.0
   0D65 CA            [12] 3661 	xch	a,r2
   0D66 13            [12] 3662 	rrc	a
   0D67 CA            [12] 3663 	xch	a,r2
   0D68 13            [12] 3664 	rrc	a
   0D69 A2 E0         [12] 3665 	mov	c,acc.0
   0D6B CA            [12] 3666 	xch	a,r2
   0D6C 13            [12] 3667 	rrc	a
   0D6D CA            [12] 3668 	xch	a,r2
   0D6E 13            [12] 3669 	rrc	a
   0D6F CA            [12] 3670 	xch	a,r2
   0D70 FB            [12] 3671 	mov	r3,a
   0D71 90 00 CF      [24] 3672 	mov	dptr,#__divulong_PARM_2
   0D74 EA            [12] 3673 	mov	a,r2
   0D75 F0            [24] 3674 	movx	@dptr,a
   0D76 EB            [12] 3675 	mov	a,r3
   0D77 A3            [24] 3676 	inc	dptr
   0D78 F0            [24] 3677 	movx	@dptr,a
   0D79 E4            [12] 3678 	clr	a
   0D7A A3            [24] 3679 	inc	dptr
   0D7B F0            [24] 3680 	movx	@dptr,a
   0D7C E4            [12] 3681 	clr	a
   0D7D A3            [24] 3682 	inc	dptr
   0D7E F0            [24] 3683 	movx	@dptr,a
   0D7F 8C 82         [24] 3684 	mov	dpl,r4
   0D81 8D 83         [24] 3685 	mov	dph,r5
   0D83 8E F0         [24] 3686 	mov	b,r6
   0D85 EF            [12] 3687 	mov	a,r7
   0D86 12 1A 90      [24] 3688 	lcall	__divulong
   0D89 AC 82         [24] 3689 	mov	r4,dpl
   0D8B AD 83         [24] 3690 	mov	r5,dph
   0D8D AE F0         [24] 3691 	mov	r6,b
   0D8F FF            [12] 3692 	mov	r7,a
   0D90 0C            [12] 3693 	inc	r4
   0D91 BC 00 09      [24] 3694 	cjne	r4,#0x00,00109$
   0D94 0D            [12] 3695 	inc	r5
   0D95 BD 00 05      [24] 3696 	cjne	r5,#0x00,00109$
   0D98 0E            [12] 3697 	inc	r6
   0D99 BE 00 01      [24] 3698 	cjne	r6,#0x00,00109$
   0D9C 0F            [12] 3699 	inc	r7
   0D9D                    3700 00109$:
   0D9D EF            [12] 3701 	mov	a,r7
   0D9E C3            [12] 3702 	clr	c
   0D9F 13            [12] 3703 	rrc	a
   0DA0 FF            [12] 3704 	mov	r7,a
   0DA1 EE            [12] 3705 	mov	a,r6
   0DA2 13            [12] 3706 	rrc	a
   0DA3 FE            [12] 3707 	mov	r6,a
   0DA4 ED            [12] 3708 	mov	a,r5
   0DA5 13            [12] 3709 	rrc	a
   0DA6 FD            [12] 3710 	mov	r5,a
   0DA7 EC            [12] 3711 	mov	a,r4
   0DA8 13            [12] 3712 	rrc	a
   0DA9 F5 82         [12] 3713 	mov	dpl,a
   0DAB 8D 83         [24] 3714 	mov	dph,r5
   0DAD 8E F0         [24] 3715 	mov	b,r6
   0DAF EF            [12] 3716 	mov	a,r7
   0DB0 22            [24] 3717 	ret
                           3718 ;------------------------------------------------------------
                           3719 ;Allocation info for local variables in function 'uart_calc_actual_baud_rate_from_th1'
                           3720 ;------------------------------------------------------------
                           3721 ;smod_bit_value            Allocated with name '_uart_calc_actual_baud_rate_from_th1_PARM_2'
                           3722 ;th1_reg_value             Allocated with name '_uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_214'
                           3723 ;------------------------------------------------------------
                           3724 ;	../src/uart/src/uart_calc_actual_baud_rate_from_th1.c:48: uint32_t uart_calc_actual_baud_rate_from_th1(uint8_t th1_reg_value, bool smod_bit_value)
                           3725 ;	-----------------------------------------
                           3726 ;	 function uart_calc_actual_baud_rate_from_th1
                           3727 ;	-----------------------------------------
   0DB1                    3728 _uart_calc_actual_baud_rate_from_th1:
   0DB1 E5 82         [12] 3729 	mov	a,dpl
   0DB3 90 00 6D      [24] 3730 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_214
   0DB6 F0            [24] 3731 	movx	@dptr,a
                           3732 ;	../src/uart/src/uart_calc_actual_baud_rate_from_th1.c:57: return (uint32_t)(((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(384 * (256 - th1_reg_value)))) + 1) / 2);
   0DB7 90 00 6C      [24] 3733 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
   0DBA E0            [24] 3734 	movx	a,@dptr
   0DBB FF            [12] 3735 	mov	r7,a
   0DBC 60 04         [24] 3736 	jz	00103$
   0DBE 7F 02         [12] 3737 	mov	r7,#0x02
   0DC0 80 02         [24] 3738 	sjmp	00104$
   0DC2                    3739 00103$:
   0DC2 7F 01         [12] 3740 	mov	r7,#0x01
   0DC4                    3741 00104$:
   0DC4 EF            [12] 3742 	mov	a,r7
   0DC5 75 F0 02      [24] 3743 	mov	b,#0x02
   0DC8 A4            [48] 3744 	mul	ab
   0DC9 FF            [12] 3745 	mov	r7,a
   0DCA AE F0         [24] 3746 	mov	r6,b
   0DCC C0 07         [24] 3747 	push	ar7
   0DCE C0 06         [24] 3748 	push	ar6
   0DD0 12 0A 0F      [24] 3749 	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
   0DD3 AA 82         [24] 3750 	mov	r2,dpl
   0DD5 AB 83         [24] 3751 	mov	r3,dph
   0DD7 AC F0         [24] 3752 	mov	r4,b
   0DD9 FD            [12] 3753 	mov	r5,a
   0DDA D0 06         [24] 3754 	pop	ar6
   0DDC D0 07         [24] 3755 	pop	ar7
   0DDE 8F 00         [24] 3756 	mov	ar0,r7
   0DE0 EE            [12] 3757 	mov	a,r6
   0DE1 F9            [12] 3758 	mov	r1,a
   0DE2 33            [12] 3759 	rlc	a
   0DE3 95 E0         [12] 3760 	subb	a,acc
   0DE5 FE            [12] 3761 	mov	r6,a
   0DE6 FF            [12] 3762 	mov	r7,a
   0DE7 90 00 DE      [24] 3763 	mov	dptr,#__mullong_PARM_2
   0DEA EA            [12] 3764 	mov	a,r2
   0DEB F0            [24] 3765 	movx	@dptr,a
   0DEC EB            [12] 3766 	mov	a,r3
   0DED A3            [24] 3767 	inc	dptr
   0DEE F0            [24] 3768 	movx	@dptr,a
   0DEF EC            [12] 3769 	mov	a,r4
   0DF0 A3            [24] 3770 	inc	dptr
   0DF1 F0            [24] 3771 	movx	@dptr,a
   0DF2 ED            [12] 3772 	mov	a,r5
   0DF3 A3            [24] 3773 	inc	dptr
   0DF4 F0            [24] 3774 	movx	@dptr,a
   0DF5 88 82         [24] 3775 	mov	dpl,r0
   0DF7 89 83         [24] 3776 	mov	dph,r1
   0DF9 8E F0         [24] 3777 	mov	b,r6
   0DFB EF            [12] 3778 	mov	a,r7
   0DFC 12 1B D9      [24] 3779 	lcall	__mullong
   0DFF AC 82         [24] 3780 	mov	r4,dpl
   0E01 AD 83         [24] 3781 	mov	r5,dph
   0E03 AE F0         [24] 3782 	mov	r6,b
   0E05 FF            [12] 3783 	mov	r7,a
   0E06 90 00 6D      [24] 3784 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_214
   0E09 E0            [24] 3785 	movx	a,@dptr
   0E0A FB            [12] 3786 	mov	r3,a
   0E0B 7A 00         [12] 3787 	mov	r2,#0x00
   0E0D 90 00 DC      [24] 3788 	mov	dptr,#__mulint_PARM_2
   0E10 E4            [12] 3789 	clr	a
   0E11 C3            [12] 3790 	clr	c
   0E12 9B            [12] 3791 	subb	a,r3
   0E13 F0            [24] 3792 	movx	@dptr,a
   0E14 74 01         [12] 3793 	mov	a,#0x01
   0E16 9A            [12] 3794 	subb	a,r2
   0E17 A3            [24] 3795 	inc	dptr
   0E18 F0            [24] 3796 	movx	@dptr,a
   0E19 90 01 80      [24] 3797 	mov	dptr,#0x0180
   0E1C C0 07         [24] 3798 	push	ar7
   0E1E C0 06         [24] 3799 	push	ar6
   0E20 C0 05         [24] 3800 	push	ar5
   0E22 C0 04         [24] 3801 	push	ar4
   0E24 12 1B B9      [24] 3802 	lcall	__mulint
   0E27 AA 82         [24] 3803 	mov	r2,dpl
   0E29 AB 83         [24] 3804 	mov	r3,dph
   0E2B D0 04         [24] 3805 	pop	ar4
   0E2D D0 05         [24] 3806 	pop	ar5
   0E2F D0 06         [24] 3807 	pop	ar6
   0E31 D0 07         [24] 3808 	pop	ar7
   0E33 90 00 CF      [24] 3809 	mov	dptr,#__divulong_PARM_2
   0E36 EA            [12] 3810 	mov	a,r2
   0E37 F0            [24] 3811 	movx	@dptr,a
   0E38 EB            [12] 3812 	mov	a,r3
   0E39 A3            [24] 3813 	inc	dptr
   0E3A F0            [24] 3814 	movx	@dptr,a
   0E3B EB            [12] 3815 	mov	a,r3
   0E3C 33            [12] 3816 	rlc	a
   0E3D 95 E0         [12] 3817 	subb	a,acc
   0E3F A3            [24] 3818 	inc	dptr
   0E40 F0            [24] 3819 	movx	@dptr,a
   0E41 A3            [24] 3820 	inc	dptr
   0E42 F0            [24] 3821 	movx	@dptr,a
   0E43 8C 82         [24] 3822 	mov	dpl,r4
   0E45 8D 83         [24] 3823 	mov	dph,r5
   0E47 8E F0         [24] 3824 	mov	b,r6
   0E49 EF            [12] 3825 	mov	a,r7
   0E4A 12 1A 90      [24] 3826 	lcall	__divulong
   0E4D AC 82         [24] 3827 	mov	r4,dpl
   0E4F AD 83         [24] 3828 	mov	r5,dph
   0E51 AE F0         [24] 3829 	mov	r6,b
   0E53 FF            [12] 3830 	mov	r7,a
   0E54 0C            [12] 3831 	inc	r4
   0E55 BC 00 09      [24] 3832 	cjne	r4,#0x00,00109$
   0E58 0D            [12] 3833 	inc	r5
   0E59 BD 00 05      [24] 3834 	cjne	r5,#0x00,00109$
   0E5C 0E            [12] 3835 	inc	r6
   0E5D BE 00 01      [24] 3836 	cjne	r6,#0x00,00109$
   0E60 0F            [12] 3837 	inc	r7
   0E61                    3838 00109$:
   0E61 EF            [12] 3839 	mov	a,r7
   0E62 C3            [12] 3840 	clr	c
   0E63 13            [12] 3841 	rrc	a
   0E64 FF            [12] 3842 	mov	r7,a
   0E65 EE            [12] 3843 	mov	a,r6
   0E66 13            [12] 3844 	rrc	a
   0E67 FE            [12] 3845 	mov	r6,a
   0E68 ED            [12] 3846 	mov	a,r5
   0E69 13            [12] 3847 	rrc	a
   0E6A FD            [12] 3848 	mov	r5,a
   0E6B EC            [12] 3849 	mov	a,r4
   0E6C 13            [12] 3850 	rrc	a
   0E6D F5 82         [12] 3851 	mov	dpl,a
   0E6F 8D 83         [24] 3852 	mov	dph,r5
   0E71 8E F0         [24] 3853 	mov	b,r6
   0E73 EF            [12] 3854 	mov	a,r7
   0E74 22            [24] 3855 	ret
                           3856 ;------------------------------------------------------------
                           3857 ;Allocation info for local variables in function 'uart_calc_s0rel_value'
                           3858 ;------------------------------------------------------------
                           3859 ;smod_bit_value            Allocated with name '_uart_calc_s0rel_value_PARM_2'
                           3860 ;desired_baud_rate         Allocated with name '_uart_calc_s0rel_value_desired_baud_rate_1_216'
                           3861 ;------------------------------------------------------------
                           3862 ;	../src/uart/src/uart_calc_s0rel_value.c:48: uint16_t uart_calc_s0rel_value(uint32_t desired_baud_rate, bool smod_bit_value)
                           3863 ;	-----------------------------------------
                           3864 ;	 function uart_calc_s0rel_value
                           3865 ;	-----------------------------------------
   0E75                    3866 _uart_calc_s0rel_value:
   0E75 AF 82         [24] 3867 	mov	r7,dpl
   0E77 AE 83         [24] 3868 	mov	r6,dph
   0E79 AD F0         [24] 3869 	mov	r5,b
   0E7B FC            [12] 3870 	mov	r4,a
   0E7C 90 00 6F      [24] 3871 	mov	dptr,#_uart_calc_s0rel_value_desired_baud_rate_1_216
   0E7F EF            [12] 3872 	mov	a,r7
   0E80 F0            [24] 3873 	movx	@dptr,a
   0E81 EE            [12] 3874 	mov	a,r6
   0E82 A3            [24] 3875 	inc	dptr
   0E83 F0            [24] 3876 	movx	@dptr,a
   0E84 ED            [12] 3877 	mov	a,r5
   0E85 A3            [24] 3878 	inc	dptr
   0E86 F0            [24] 3879 	movx	@dptr,a
   0E87 EC            [12] 3880 	mov	a,r4
   0E88 A3            [24] 3881 	inc	dptr
   0E89 F0            [24] 3882 	movx	@dptr,a
                           3883 ;	../src/uart/src/uart_calc_s0rel_value.c:57: return (uint16_t)(1024 - (((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(64 * desired_baud_rate))) + 1) / 2));
   0E8A 90 00 6E      [24] 3884 	mov	dptr,#_uart_calc_s0rel_value_PARM_2
   0E8D E0            [24] 3885 	movx	a,@dptr
   0E8E FF            [12] 3886 	mov	r7,a
   0E8F 60 04         [24] 3887 	jz	00103$
   0E91 7F 02         [12] 3888 	mov	r7,#0x02
   0E93 80 02         [24] 3889 	sjmp	00104$
   0E95                    3890 00103$:
   0E95 7F 01         [12] 3891 	mov	r7,#0x01
   0E97                    3892 00104$:
   0E97 EF            [12] 3893 	mov	a,r7
   0E98 75 F0 02      [24] 3894 	mov	b,#0x02
   0E9B A4            [48] 3895 	mul	ab
   0E9C FF            [12] 3896 	mov	r7,a
   0E9D AE F0         [24] 3897 	mov	r6,b
   0E9F C0 07         [24] 3898 	push	ar7
   0EA1 C0 06         [24] 3899 	push	ar6
   0EA3 12 0A 0F      [24] 3900 	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
   0EA6 AA 82         [24] 3901 	mov	r2,dpl
   0EA8 AB 83         [24] 3902 	mov	r3,dph
   0EAA AC F0         [24] 3903 	mov	r4,b
   0EAC FD            [12] 3904 	mov	r5,a
   0EAD D0 06         [24] 3905 	pop	ar6
   0EAF D0 07         [24] 3906 	pop	ar7
   0EB1 8F 00         [24] 3907 	mov	ar0,r7
   0EB3 EE            [12] 3908 	mov	a,r6
   0EB4 F9            [12] 3909 	mov	r1,a
   0EB5 33            [12] 3910 	rlc	a
   0EB6 95 E0         [12] 3911 	subb	a,acc
   0EB8 FE            [12] 3912 	mov	r6,a
   0EB9 FF            [12] 3913 	mov	r7,a
   0EBA 90 00 DE      [24] 3914 	mov	dptr,#__mullong_PARM_2
   0EBD EA            [12] 3915 	mov	a,r2
   0EBE F0            [24] 3916 	movx	@dptr,a
   0EBF EB            [12] 3917 	mov	a,r3
   0EC0 A3            [24] 3918 	inc	dptr
   0EC1 F0            [24] 3919 	movx	@dptr,a
   0EC2 EC            [12] 3920 	mov	a,r4
   0EC3 A3            [24] 3921 	inc	dptr
   0EC4 F0            [24] 3922 	movx	@dptr,a
   0EC5 ED            [12] 3923 	mov	a,r5
   0EC6 A3            [24] 3924 	inc	dptr
   0EC7 F0            [24] 3925 	movx	@dptr,a
   0EC8 88 82         [24] 3926 	mov	dpl,r0
   0ECA 89 83         [24] 3927 	mov	dph,r1
   0ECC 8E F0         [24] 3928 	mov	b,r6
   0ECE EF            [12] 3929 	mov	a,r7
   0ECF 12 1B D9      [24] 3930 	lcall	__mullong
   0ED2 AC 82         [24] 3931 	mov	r4,dpl
   0ED4 AD 83         [24] 3932 	mov	r5,dph
   0ED6 AE F0         [24] 3933 	mov	r6,b
   0ED8 FF            [12] 3934 	mov	r7,a
   0ED9 90 00 6F      [24] 3935 	mov	dptr,#_uart_calc_s0rel_value_desired_baud_rate_1_216
   0EDC E0            [24] 3936 	movx	a,@dptr
   0EDD F8            [12] 3937 	mov	r0,a
   0EDE A3            [24] 3938 	inc	dptr
   0EDF E0            [24] 3939 	movx	a,@dptr
   0EE0 F9            [12] 3940 	mov	r1,a
   0EE1 A3            [24] 3941 	inc	dptr
   0EE2 E0            [24] 3942 	movx	a,@dptr
   0EE3 FA            [12] 3943 	mov	r2,a
   0EE4 A3            [24] 3944 	inc	dptr
   0EE5 E0            [24] 3945 	movx	a,@dptr
   0EE6 54 03         [12] 3946 	anl	a,#0x03
   0EE8 A2 E0         [12] 3947 	mov	c,acc.0
   0EEA CA            [12] 3948 	xch	a,r2
   0EEB 13            [12] 3949 	rrc	a
   0EEC CA            [12] 3950 	xch	a,r2
   0EED 13            [12] 3951 	rrc	a
   0EEE A2 E0         [12] 3952 	mov	c,acc.0
   0EF0 CA            [12] 3953 	xch	a,r2
   0EF1 13            [12] 3954 	rrc	a
   0EF2 CA            [12] 3955 	xch	a,r2
   0EF3 13            [12] 3956 	rrc	a
   0EF4 CA            [12] 3957 	xch	a,r2
   0EF5 FB            [12] 3958 	mov	r3,a
   0EF6 E9            [12] 3959 	mov	a,r1
   0EF7 03            [12] 3960 	rr	a
   0EF8 03            [12] 3961 	rr	a
   0EF9 54 3F         [12] 3962 	anl	a,#0x3F
   0EFB 4A            [12] 3963 	orl	a,r2
   0EFC FA            [12] 3964 	mov	r2,a
   0EFD E9            [12] 3965 	mov	a,r1
   0EFE 54 03         [12] 3966 	anl	a,#0x03
   0F00 A2 E0         [12] 3967 	mov	c,acc.0
   0F02 C8            [12] 3968 	xch	a,r0
   0F03 13            [12] 3969 	rrc	a
   0F04 C8            [12] 3970 	xch	a,r0
   0F05 13            [12] 3971 	rrc	a
   0F06 A2 E0         [12] 3972 	mov	c,acc.0
   0F08 C8            [12] 3973 	xch	a,r0
   0F09 13            [12] 3974 	rrc	a
   0F0A C8            [12] 3975 	xch	a,r0
   0F0B 13            [12] 3976 	rrc	a
   0F0C C8            [12] 3977 	xch	a,r0
   0F0D F9            [12] 3978 	mov	r1,a
   0F0E 90 00 CF      [24] 3979 	mov	dptr,#__divulong_PARM_2
   0F11 E8            [12] 3980 	mov	a,r0
   0F12 F0            [24] 3981 	movx	@dptr,a
   0F13 E9            [12] 3982 	mov	a,r1
   0F14 A3            [24] 3983 	inc	dptr
   0F15 F0            [24] 3984 	movx	@dptr,a
   0F16 EA            [12] 3985 	mov	a,r2
   0F17 A3            [24] 3986 	inc	dptr
   0F18 F0            [24] 3987 	movx	@dptr,a
   0F19 EB            [12] 3988 	mov	a,r3
   0F1A A3            [24] 3989 	inc	dptr
   0F1B F0            [24] 3990 	movx	@dptr,a
   0F1C 8C 82         [24] 3991 	mov	dpl,r4
   0F1E 8D 83         [24] 3992 	mov	dph,r5
   0F20 8E F0         [24] 3993 	mov	b,r6
   0F22 EF            [12] 3994 	mov	a,r7
   0F23 12 1A 90      [24] 3995 	lcall	__divulong
   0F26 AC 82         [24] 3996 	mov	r4,dpl
   0F28 AD 83         [24] 3997 	mov	r5,dph
   0F2A AE F0         [24] 3998 	mov	r6,b
   0F2C FF            [12] 3999 	mov	r7,a
   0F2D 0C            [12] 4000 	inc	r4
   0F2E BC 00 09      [24] 4001 	cjne	r4,#0x00,00109$
   0F31 0D            [12] 4002 	inc	r5
   0F32 BD 00 05      [24] 4003 	cjne	r5,#0x00,00109$
   0F35 0E            [12] 4004 	inc	r6
   0F36 BE 00 01      [24] 4005 	cjne	r6,#0x00,00109$
   0F39 0F            [12] 4006 	inc	r7
   0F3A                    4007 00109$:
   0F3A EF            [12] 4008 	mov	a,r7
   0F3B C3            [12] 4009 	clr	c
   0F3C 13            [12] 4010 	rrc	a
   0F3D FF            [12] 4011 	mov	r7,a
   0F3E EE            [12] 4012 	mov	a,r6
   0F3F 13            [12] 4013 	rrc	a
   0F40 FE            [12] 4014 	mov	r6,a
   0F41 ED            [12] 4015 	mov	a,r5
   0F42 13            [12] 4016 	rrc	a
   0F43 FD            [12] 4017 	mov	r5,a
   0F44 EC            [12] 4018 	mov	a,r4
   0F45 13            [12] 4019 	rrc	a
   0F46 FC            [12] 4020 	mov	r4,a
   0F47 E4            [12] 4021 	clr	a
   0F48 C3            [12] 4022 	clr	c
   0F49 9C            [12] 4023 	subb	a,r4
   0F4A FC            [12] 4024 	mov	r4,a
   0F4B 74 04         [12] 4025 	mov	a,#0x04
   0F4D 9D            [12] 4026 	subb	a,r5
   0F4E FD            [12] 4027 	mov	r5,a
   0F4F E4            [12] 4028 	clr	a
   0F50 9E            [12] 4029 	subb	a,r6
   0F51 E4            [12] 4030 	clr	a
   0F52 9F            [12] 4031 	subb	a,r7
   0F53 8C 82         [24] 4032 	mov	dpl,r4
   0F55 8D 83         [24] 4033 	mov	dph,r5
   0F57 22            [24] 4034 	ret
                           4035 ;------------------------------------------------------------
                           4036 ;Allocation info for local variables in function 'uart_calc_th1_value'
                           4037 ;------------------------------------------------------------
                           4038 ;smod_bit_value            Allocated with name '_uart_calc_th1_value_PARM_2'
                           4039 ;desired_baud_rate         Allocated with name '_uart_calc_th1_value_desired_baud_rate_1_218'
                           4040 ;------------------------------------------------------------
                           4041 ;	../src/uart/src/uart_calc_th1_value.c:48: uint8_t uart_calc_th1_value(uint32_t desired_baud_rate, bool smod_bit_value)
                           4042 ;	-----------------------------------------
                           4043 ;	 function uart_calc_th1_value
                           4044 ;	-----------------------------------------
   0F58                    4045 _uart_calc_th1_value:
   0F58 AF 82         [24] 4046 	mov	r7,dpl
   0F5A AE 83         [24] 4047 	mov	r6,dph
   0F5C AD F0         [24] 4048 	mov	r5,b
   0F5E FC            [12] 4049 	mov	r4,a
   0F5F 90 00 74      [24] 4050 	mov	dptr,#_uart_calc_th1_value_desired_baud_rate_1_218
   0F62 EF            [12] 4051 	mov	a,r7
   0F63 F0            [24] 4052 	movx	@dptr,a
   0F64 EE            [12] 4053 	mov	a,r6
   0F65 A3            [24] 4054 	inc	dptr
   0F66 F0            [24] 4055 	movx	@dptr,a
   0F67 ED            [12] 4056 	mov	a,r5
   0F68 A3            [24] 4057 	inc	dptr
   0F69 F0            [24] 4058 	movx	@dptr,a
   0F6A EC            [12] 4059 	mov	a,r4
   0F6B A3            [24] 4060 	inc	dptr
   0F6C F0            [24] 4061 	movx	@dptr,a
                           4062 ;	../src/uart/src/uart_calc_th1_value.c:57: return (uint8_t)(256 - (((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(384 * desired_baud_rate))) + 1) / 2));
   0F6D 90 00 73      [24] 4063 	mov	dptr,#_uart_calc_th1_value_PARM_2
   0F70 E0            [24] 4064 	movx	a,@dptr
   0F71 FF            [12] 4065 	mov	r7,a
   0F72 60 04         [24] 4066 	jz	00103$
   0F74 7F 02         [12] 4067 	mov	r7,#0x02
   0F76 80 02         [24] 4068 	sjmp	00104$
   0F78                    4069 00103$:
   0F78 7F 01         [12] 4070 	mov	r7,#0x01
   0F7A                    4071 00104$:
   0F7A EF            [12] 4072 	mov	a,r7
   0F7B 75 F0 02      [24] 4073 	mov	b,#0x02
   0F7E A4            [48] 4074 	mul	ab
   0F7F FF            [12] 4075 	mov	r7,a
   0F80 AE F0         [24] 4076 	mov	r6,b
   0F82 C0 07         [24] 4077 	push	ar7
   0F84 C0 06         [24] 4078 	push	ar6
   0F86 12 0A 0F      [24] 4079 	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
   0F89 AA 82         [24] 4080 	mov	r2,dpl
   0F8B AB 83         [24] 4081 	mov	r3,dph
   0F8D AC F0         [24] 4082 	mov	r4,b
   0F8F FD            [12] 4083 	mov	r5,a
   0F90 D0 06         [24] 4084 	pop	ar6
   0F92 D0 07         [24] 4085 	pop	ar7
   0F94 8F 00         [24] 4086 	mov	ar0,r7
   0F96 EE            [12] 4087 	mov	a,r6
   0F97 F9            [12] 4088 	mov	r1,a
   0F98 33            [12] 4089 	rlc	a
   0F99 95 E0         [12] 4090 	subb	a,acc
   0F9B FE            [12] 4091 	mov	r6,a
   0F9C FF            [12] 4092 	mov	r7,a
   0F9D 90 00 DE      [24] 4093 	mov	dptr,#__mullong_PARM_2
   0FA0 EA            [12] 4094 	mov	a,r2
   0FA1 F0            [24] 4095 	movx	@dptr,a
   0FA2 EB            [12] 4096 	mov	a,r3
   0FA3 A3            [24] 4097 	inc	dptr
   0FA4 F0            [24] 4098 	movx	@dptr,a
   0FA5 EC            [12] 4099 	mov	a,r4
   0FA6 A3            [24] 4100 	inc	dptr
   0FA7 F0            [24] 4101 	movx	@dptr,a
   0FA8 ED            [12] 4102 	mov	a,r5
   0FA9 A3            [24] 4103 	inc	dptr
   0FAA F0            [24] 4104 	movx	@dptr,a
   0FAB 88 82         [24] 4105 	mov	dpl,r0
   0FAD 89 83         [24] 4106 	mov	dph,r1
   0FAF 8E F0         [24] 4107 	mov	b,r6
   0FB1 EF            [12] 4108 	mov	a,r7
   0FB2 12 1B D9      [24] 4109 	lcall	__mullong
   0FB5 AC 82         [24] 4110 	mov	r4,dpl
   0FB7 AD 83         [24] 4111 	mov	r5,dph
   0FB9 AE F0         [24] 4112 	mov	r6,b
   0FBB FF            [12] 4113 	mov	r7,a
   0FBC 90 00 74      [24] 4114 	mov	dptr,#_uart_calc_th1_value_desired_baud_rate_1_218
   0FBF E0            [24] 4115 	movx	a,@dptr
   0FC0 F8            [12] 4116 	mov	r0,a
   0FC1 A3            [24] 4117 	inc	dptr
   0FC2 E0            [24] 4118 	movx	a,@dptr
   0FC3 F9            [12] 4119 	mov	r1,a
   0FC4 A3            [24] 4120 	inc	dptr
   0FC5 E0            [24] 4121 	movx	a,@dptr
   0FC6 FA            [12] 4122 	mov	r2,a
   0FC7 A3            [24] 4123 	inc	dptr
   0FC8 E0            [24] 4124 	movx	a,@dptr
   0FC9 FB            [12] 4125 	mov	r3,a
   0FCA 90 00 DE      [24] 4126 	mov	dptr,#__mullong_PARM_2
   0FCD E8            [12] 4127 	mov	a,r0
   0FCE F0            [24] 4128 	movx	@dptr,a
   0FCF E9            [12] 4129 	mov	a,r1
   0FD0 A3            [24] 4130 	inc	dptr
   0FD1 F0            [24] 4131 	movx	@dptr,a
   0FD2 EA            [12] 4132 	mov	a,r2
   0FD3 A3            [24] 4133 	inc	dptr
   0FD4 F0            [24] 4134 	movx	@dptr,a
   0FD5 EB            [12] 4135 	mov	a,r3
   0FD6 A3            [24] 4136 	inc	dptr
   0FD7 F0            [24] 4137 	movx	@dptr,a
   0FD8 90 01 80      [24] 4138 	mov	dptr,#0x0180
   0FDB E4            [12] 4139 	clr	a
   0FDC F5 F0         [12] 4140 	mov	b,a
   0FDE C0 07         [24] 4141 	push	ar7
   0FE0 C0 06         [24] 4142 	push	ar6
   0FE2 C0 05         [24] 4143 	push	ar5
   0FE4 C0 04         [24] 4144 	push	ar4
   0FE6 12 1B D9      [24] 4145 	lcall	__mullong
   0FE9 A8 82         [24] 4146 	mov	r0,dpl
   0FEB A9 83         [24] 4147 	mov	r1,dph
   0FED AA F0         [24] 4148 	mov	r2,b
   0FEF FB            [12] 4149 	mov	r3,a
   0FF0 D0 04         [24] 4150 	pop	ar4
   0FF2 D0 05         [24] 4151 	pop	ar5
   0FF4 D0 06         [24] 4152 	pop	ar6
   0FF6 D0 07         [24] 4153 	pop	ar7
   0FF8 90 00 CF      [24] 4154 	mov	dptr,#__divulong_PARM_2
   0FFB E8            [12] 4155 	mov	a,r0
   0FFC F0            [24] 4156 	movx	@dptr,a
   0FFD E9            [12] 4157 	mov	a,r1
   0FFE A3            [24] 4158 	inc	dptr
   0FFF F0            [24] 4159 	movx	@dptr,a
   1000 EA            [12] 4160 	mov	a,r2
   1001 A3            [24] 4161 	inc	dptr
   1002 F0            [24] 4162 	movx	@dptr,a
   1003 EB            [12] 4163 	mov	a,r3
   1004 A3            [24] 4164 	inc	dptr
   1005 F0            [24] 4165 	movx	@dptr,a
   1006 8C 82         [24] 4166 	mov	dpl,r4
   1008 8D 83         [24] 4167 	mov	dph,r5
   100A 8E F0         [24] 4168 	mov	b,r6
   100C EF            [12] 4169 	mov	a,r7
   100D 12 1A 90      [24] 4170 	lcall	__divulong
   1010 AC 82         [24] 4171 	mov	r4,dpl
   1012 AD 83         [24] 4172 	mov	r5,dph
   1014 AE F0         [24] 4173 	mov	r6,b
   1016 FF            [12] 4174 	mov	r7,a
   1017 0C            [12] 4175 	inc	r4
   1018 BC 00 09      [24] 4176 	cjne	r4,#0x00,00109$
   101B 0D            [12] 4177 	inc	r5
   101C BD 00 05      [24] 4178 	cjne	r5,#0x00,00109$
   101F 0E            [12] 4179 	inc	r6
   1020 BE 00 01      [24] 4180 	cjne	r6,#0x00,00109$
   1023 0F            [12] 4181 	inc	r7
   1024                    4182 00109$:
   1024 EF            [12] 4183 	mov	a,r7
   1025 C3            [12] 4184 	clr	c
   1026 13            [12] 4185 	rrc	a
   1027 EE            [12] 4186 	mov	a,r6
   1028 13            [12] 4187 	rrc	a
   1029 ED            [12] 4188 	mov	a,r5
   102A 13            [12] 4189 	rrc	a
   102B EC            [12] 4190 	mov	a,r4
   102C 13            [12] 4191 	rrc	a
   102D FC            [12] 4192 	mov	r4,a
   102E C3            [12] 4193 	clr	c
   102F E4            [12] 4194 	clr	a
   1030 9C            [12] 4195 	subb	a,r4
   1031 F5 82         [12] 4196 	mov	dpl,a
   1033 22            [24] 4197 	ret
                           4198 ;------------------------------------------------------------
                           4199 ;Allocation info for local variables in function 'uart_configure_auto_baud_calc'
                           4200 ;------------------------------------------------------------
                           4201 ;sloc0                     Allocated with name '_uart_configure_auto_baud_calc_sloc0_1_0'
                           4202 ;sloc1                     Allocated with name '_uart_configure_auto_baud_calc_sloc1_1_0'
                           4203 ;sloc2                     Allocated with name '_uart_configure_auto_baud_calc_sloc2_1_0'
                           4204 ;sloc3                     Allocated with name '_uart_configure_auto_baud_calc_sloc3_1_0'
                           4205 ;baud_rate                 Allocated with name '_uart_configure_auto_baud_calc_PARM_2'
                           4206 ;uart_config_options       Allocated with name '_uart_configure_auto_baud_calc_uart_config_options_1_220'
                           4207 ;calc_br_with_smod_cleared Allocated with name '_uart_configure_auto_baud_calc_calc_br_with_smod_cleared_2_222'
                           4208 ;calc_br_with_smod_set     Allocated with name '_uart_configure_auto_baud_calc_calc_br_with_smod_set_2_222'
                           4209 ;error_calc_br_with_smod_cleared Allocated with name '_uart_configure_auto_baud_calc_error_calc_br_with_smod_cleared_2_222'
                           4210 ;error_calc_br_with_smod_set Allocated with name '_uart_configure_auto_baud_calc_error_calc_br_with_smod_set_2_222'
                           4211 ;s0rel_with_smod_cleared   Allocated with name '_uart_configure_auto_baud_calc_s0rel_with_smod_cleared_3_223'
                           4212 ;s0rel_with_smod_set       Allocated with name '_uart_configure_auto_baud_calc_s0rel_with_smod_set_3_223'
                           4213 ;th1_with_smod_cleared     Allocated with name '_uart_configure_auto_baud_calc_th1_with_smod_cleared_3_226'
                           4214 ;th1_with_smod_set         Allocated with name '_uart_configure_auto_baud_calc_th1_with_smod_set_3_226'
                           4215 ;------------------------------------------------------------
                           4216 ;	../src/uart/src/uart_configure_auto_baud_calc.c:48: void uart_configure_auto_baud_calc(uint8_t uart_config_options, uint32_t baud_rate)
                           4217 ;	-----------------------------------------
                           4218 ;	 function uart_configure_auto_baud_calc
                           4219 ;	-----------------------------------------
   1034                    4220 _uart_configure_auto_baud_calc:
   1034 E5 82         [12] 4221 	mov	a,dpl
                           4222 ;	../src/uart/src/uart_configure_auto_baud_calc.c:51: if(((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_1_UART_8_BIT) ||
   1036 90 00 7C      [24] 4223 	mov	dptr,#_uart_configure_auto_baud_calc_uart_config_options_1_220
   1039 F0            [24] 4224 	movx	@dptr,a
   103A FF            [12] 4225 	mov	r7,a
   103B 74 C0         [12] 4226 	mov	a,#0xC0
   103D 5F            [12] 4227 	anl	a,r7
   103E FE            [12] 4228 	mov	r6,a
   103F BE 40 02      [24] 4229 	cjne	r6,#0x40,00147$
   1042 80 0A         [24] 4230 	sjmp	00110$
   1044                    4231 00147$:
                           4232 ;	../src/uart/src/uart_configure_auto_baud_calc.c:52: ((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_3_UART_9_BIT))
   1044 74 C0         [12] 4233 	mov	a,#0xC0
   1046 5F            [12] 4234 	anl	a,r7
   1047 FE            [12] 4235 	mov	r6,a
   1048 BE C0 02      [24] 4236 	cjne	r6,#0xC0,00148$
   104B 80 01         [24] 4237 	sjmp	00149$
   104D                    4238 00148$:
   104D 22            [24] 4239 	ret
   104E                    4240 00149$:
   104E                    4241 00110$:
                           4242 ;	../src/uart/src/uart_configure_auto_baud_calc.c:58: if((uart_config_options & UART_CONFIG_OPTION_CLOCK_MASK) == UART_CONFIG_OPTION_CLOCK_FOR_MODES_1_3_USE_BR_GEN)
   104E 74 02         [12] 4243 	mov	a,#0x02
   1050 5F            [12] 4244 	anl	a,r7
   1051 FE            [12] 4245 	mov	r6,a
   1052 BE 02 02      [24] 4246 	cjne	r6,#0x02,00150$
   1055 80 03         [24] 4247 	sjmp	00151$
   1057                    4248 00150$:
   1057 02 11 A8      [24] 4249 	ljmp	00108$
   105A                    4250 00151$:
                           4251 ;	../src/uart/src/uart_configure_auto_baud_calc.c:63: s0rel_with_smod_cleared = uart_calc_s0rel_value(baud_rate, 0);
   105A 90 00 78      [24] 4252 	mov	dptr,#_uart_configure_auto_baud_calc_PARM_2
   105D E0            [24] 4253 	movx	a,@dptr
   105E FB            [12] 4254 	mov	r3,a
   105F A3            [24] 4255 	inc	dptr
   1060 E0            [24] 4256 	movx	a,@dptr
   1061 FC            [12] 4257 	mov	r4,a
   1062 A3            [24] 4258 	inc	dptr
   1063 E0            [24] 4259 	movx	a,@dptr
   1064 FD            [12] 4260 	mov	r5,a
   1065 A3            [24] 4261 	inc	dptr
   1066 E0            [24] 4262 	movx	a,@dptr
   1067 FE            [12] 4263 	mov	r6,a
   1068 90 00 6E      [24] 4264 	mov	dptr,#_uart_calc_s0rel_value_PARM_2
   106B E4            [12] 4265 	clr	a
   106C F0            [24] 4266 	movx	@dptr,a
   106D 8B 82         [24] 4267 	mov	dpl,r3
   106F 8C 83         [24] 4268 	mov	dph,r4
   1071 8D F0         [24] 4269 	mov	b,r5
   1073 EE            [12] 4270 	mov	a,r6
   1074 C0 07         [24] 4271 	push	ar7
   1076 C0 06         [24] 4272 	push	ar6
   1078 C0 05         [24] 4273 	push	ar5
   107A C0 04         [24] 4274 	push	ar4
   107C C0 03         [24] 4275 	push	ar3
   107E 12 0E 75      [24] 4276 	lcall	_uart_calc_s0rel_value
   1081 A9 82         [24] 4277 	mov	r1,dpl
   1083 AA 83         [24] 4278 	mov	r2,dph
   1085 D0 03         [24] 4279 	pop	ar3
   1087 D0 04         [24] 4280 	pop	ar4
   1089 D0 05         [24] 4281 	pop	ar5
   108B D0 06         [24] 4282 	pop	ar6
                           4283 ;	../src/uart/src/uart_configure_auto_baud_calc.c:64: s0rel_with_smod_set = uart_calc_s0rel_value(baud_rate, 1);
   108D 90 00 6E      [24] 4284 	mov	dptr,#_uart_calc_s0rel_value_PARM_2
   1090 74 01         [12] 4285 	mov	a,#0x01
   1092 F0            [24] 4286 	movx	@dptr,a
   1093 8B 82         [24] 4287 	mov	dpl,r3
   1095 8C 83         [24] 4288 	mov	dph,r4
   1097 8D F0         [24] 4289 	mov	b,r5
   1099 EE            [12] 4290 	mov	a,r6
   109A C0 06         [24] 4291 	push	ar6
   109C C0 05         [24] 4292 	push	ar5
   109E C0 04         [24] 4293 	push	ar4
   10A0 C0 03         [24] 4294 	push	ar3
   10A2 C0 02         [24] 4295 	push	ar2
   10A4 C0 01         [24] 4296 	push	ar1
   10A6 12 0E 75      [24] 4297 	lcall	_uart_calc_s0rel_value
   10A9 85 82 0C      [24] 4298 	mov	_uart_configure_auto_baud_calc_sloc0_1_0,dpl
   10AC 85 83 0D      [24] 4299 	mov	(_uart_configure_auto_baud_calc_sloc0_1_0 + 1),dph
   10AF D0 01         [24] 4300 	pop	ar1
   10B1 D0 02         [24] 4301 	pop	ar2
                           4302 ;	../src/uart/src/uart_configure_auto_baud_calc.c:67: calc_br_with_smod_cleared = uart_calc_actual_baud_rate_from_s0rel(s0rel_with_smod_cleared, false);
   10B3 90 00 69      [24] 4303 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
   10B6 E4            [12] 4304 	clr	a
   10B7 F0            [24] 4305 	movx	@dptr,a
   10B8 89 82         [24] 4306 	mov	dpl,r1
   10BA 8A 83         [24] 4307 	mov	dph,r2
   10BC C0 02         [24] 4308 	push	ar2
   10BE C0 01         [24] 4309 	push	ar1
   10C0 12 0C F8      [24] 4310 	lcall	_uart_calc_actual_baud_rate_from_s0rel
   10C3 85 82 0E      [24] 4311 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,dpl
   10C6 85 83 0F      [24] 4312 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),dph
   10C9 85 F0 10      [24] 4313 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),b
   10CC F5 11         [12] 4314 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
                           4315 ;	../src/uart/src/uart_configure_auto_baud_calc.c:68: calc_br_with_smod_set = uart_calc_actual_baud_rate_from_s0rel(s0rel_with_smod_set, true);
   10CE 90 00 69      [24] 4316 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
   10D1 74 01         [12] 4317 	mov	a,#0x01
   10D3 F0            [24] 4318 	movx	@dptr,a
   10D4 85 0C 82      [24] 4319 	mov	dpl,_uart_configure_auto_baud_calc_sloc0_1_0
   10D7 85 0D 83      [24] 4320 	mov	dph,(_uart_configure_auto_baud_calc_sloc0_1_0 + 1)
   10DA 12 0C F8      [24] 4321 	lcall	_uart_calc_actual_baud_rate_from_s0rel
   10DD 85 82 12      [24] 4322 	mov	_uart_configure_auto_baud_calc_sloc2_1_0,dpl
   10E0 85 83 13      [24] 4323 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 1),dph
   10E3 85 F0 14      [24] 4324 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 2),b
   10E6 F5 15         [12] 4325 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 3),a
   10E8 D0 01         [24] 4326 	pop	ar1
   10EA D0 02         [24] 4327 	pop	ar2
   10EC D0 03         [24] 4328 	pop	ar3
   10EE D0 04         [24] 4329 	pop	ar4
   10F0 D0 05         [24] 4330 	pop	ar5
   10F2 D0 06         [24] 4331 	pop	ar6
   10F4 D0 07         [24] 4332 	pop	ar7
                           4333 ;	../src/uart/src/uart_configure_auto_baud_calc.c:71: error_calc_br_with_smod_cleared = (calc_br_with_smod_cleared > baud_rate) ? (calc_br_with_smod_cleared - baud_rate) : (baud_rate - calc_br_with_smod_cleared);
   10F6 C3            [12] 4334 	clr	c
   10F7 EB            [12] 4335 	mov	a,r3
   10F8 95 0E         [12] 4336 	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
   10FA EC            [12] 4337 	mov	a,r4
   10FB 95 0F         [12] 4338 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   10FD ED            [12] 4339 	mov	a,r5
   10FE 95 10         [12] 4340 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   1100 EE            [12] 4341 	mov	a,r6
   1101 95 11         [12] 4342 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   1103 50 17         [24] 4343 	jnc	00115$
   1105 E5 0E         [12] 4344 	mov	a,_uart_configure_auto_baud_calc_sloc1_1_0
   1107 C3            [12] 4345 	clr	c
   1108 9B            [12] 4346 	subb	a,r3
   1109 F5 16         [12] 4347 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
   110B E5 0F         [12] 4348 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   110D 9C            [12] 4349 	subb	a,r4
   110E F5 17         [12] 4350 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
   1110 E5 10         [12] 4351 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   1112 9D            [12] 4352 	subb	a,r5
   1113 F5 18         [12] 4353 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
   1115 E5 11         [12] 4354 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   1117 9E            [12] 4355 	subb	a,r6
   1118 F5 19         [12] 4356 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   111A 80 15         [24] 4357 	sjmp	00116$
   111C                    4358 00115$:
   111C EB            [12] 4359 	mov	a,r3
   111D C3            [12] 4360 	clr	c
   111E 95 0E         [12] 4361 	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
   1120 F5 16         [12] 4362 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
   1122 EC            [12] 4363 	mov	a,r4
   1123 95 0F         [12] 4364 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   1125 F5 17         [12] 4365 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
   1127 ED            [12] 4366 	mov	a,r5
   1128 95 10         [12] 4367 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   112A F5 18         [12] 4368 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
   112C EE            [12] 4369 	mov	a,r6
   112D 95 11         [12] 4370 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   112F F5 19         [12] 4371 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   1131                    4372 00116$:
                           4373 ;	../src/uart/src/uart_configure_auto_baud_calc.c:72: error_calc_br_with_smod_set = (calc_br_with_smod_set > baud_rate) ? (calc_br_with_smod_set - baud_rate) : (baud_rate - calc_br_with_smod_set);
   1131 C3            [12] 4374 	clr	c
   1132 EB            [12] 4375 	mov	a,r3
   1133 95 12         [12] 4376 	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
   1135 EC            [12] 4377 	mov	a,r4
   1136 95 13         [12] 4378 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   1138 ED            [12] 4379 	mov	a,r5
   1139 95 14         [12] 4380 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   113B EE            [12] 4381 	mov	a,r6
   113C 95 15         [12] 4382 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   113E 50 17         [24] 4383 	jnc	00117$
   1140 E5 12         [12] 4384 	mov	a,_uart_configure_auto_baud_calc_sloc2_1_0
   1142 C3            [12] 4385 	clr	c
   1143 9B            [12] 4386 	subb	a,r3
   1144 F5 0E         [12] 4387 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
   1146 E5 13         [12] 4388 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   1148 9C            [12] 4389 	subb	a,r4
   1149 F5 0F         [12] 4390 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
   114B E5 14         [12] 4391 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   114D 9D            [12] 4392 	subb	a,r5
   114E F5 10         [12] 4393 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
   1150 E5 15         [12] 4394 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   1152 9E            [12] 4395 	subb	a,r6
   1153 F5 11         [12] 4396 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
   1155 80 15         [24] 4397 	sjmp	00118$
   1157                    4398 00117$:
   1157 EB            [12] 4399 	mov	a,r3
   1158 C3            [12] 4400 	clr	c
   1159 95 12         [12] 4401 	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
   115B F5 0E         [12] 4402 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
   115D EC            [12] 4403 	mov	a,r4
   115E 95 13         [12] 4404 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   1160 F5 0F         [12] 4405 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
   1162 ED            [12] 4406 	mov	a,r5
   1163 95 14         [12] 4407 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   1165 F5 10         [12] 4408 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
   1167 EE            [12] 4409 	mov	a,r6
   1168 95 15         [12] 4410 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   116A F5 11         [12] 4411 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
   116C                    4412 00118$:
                           4413 ;	../src/uart/src/uart_configure_auto_baud_calc.c:75: if(error_calc_br_with_smod_cleared < error_calc_br_with_smod_set)
   116C C3            [12] 4414 	clr	c
   116D E5 16         [12] 4415 	mov	a,_uart_configure_auto_baud_calc_sloc3_1_0
   116F 95 0E         [12] 4416 	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
   1171 E5 17         [12] 4417 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   1173 95 0F         [12] 4418 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   1175 E5 18         [12] 4419 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   1177 95 10         [12] 4420 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   1179 E5 19         [12] 4421 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   117B 95 11         [12] 4422 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   117D 50 12         [24] 4423 	jnc	00102$
                           4424 ;	../src/uart/src/uart_configure_auto_baud_calc.c:77: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_CLEAR),
   117F 8F 06         [24] 4425 	mov	ar6,r7
   1181 53 06 FB      [24] 4426 	anl	ar6,#0xFB
                           4427 ;	../src/uart/src/uart_configure_auto_baud_calc.c:78: s0rel_with_smod_cleared);
   1184 90 00 66      [24] 4428 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   1187 E9            [12] 4429 	mov	a,r1
   1188 F0            [24] 4430 	movx	@dptr,a
   1189 EA            [12] 4431 	mov	a,r2
   118A A3            [24] 4432 	inc	dptr
   118B F0            [24] 4433 	movx	@dptr,a
   118C 8E 82         [24] 4434 	mov	dpl,r6
   118E 02 0C 9A      [24] 4435 	ljmp	_uart_configure_manual_baud_calc
   1191                    4436 00102$:
                           4437 ;	../src/uart/src/uart_configure_auto_baud_calc.c:82: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_SET),
   1191 8F 06         [24] 4438 	mov	ar6,r7
   1193 74 FB         [12] 4439 	mov	a,#0xFB
   1195 5E            [12] 4440 	anl	a,r6
   1196 44 04         [12] 4441 	orl	a,#0x04
   1198 FE            [12] 4442 	mov	r6,a
                           4443 ;	../src/uart/src/uart_configure_auto_baud_calc.c:83: s0rel_with_smod_set);
   1199 90 00 66      [24] 4444 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   119C E5 0C         [12] 4445 	mov	a,_uart_configure_auto_baud_calc_sloc0_1_0
   119E F0            [24] 4446 	movx	@dptr,a
   119F E5 0D         [12] 4447 	mov	a,(_uart_configure_auto_baud_calc_sloc0_1_0 + 1)
   11A1 A3            [24] 4448 	inc	dptr
   11A2 F0            [24] 4449 	movx	@dptr,a
   11A3 8E 82         [24] 4450 	mov	dpl,r6
   11A5 02 0C 9A      [24] 4451 	ljmp	_uart_configure_manual_baud_calc
   11A8                    4452 00108$:
                           4453 ;	../src/uart/src/uart_configure_auto_baud_calc.c:91: th1_with_smod_cleared = uart_calc_th1_value(baud_rate, 0);
   11A8 90 00 78      [24] 4454 	mov	dptr,#_uart_configure_auto_baud_calc_PARM_2
   11AB E0            [24] 4455 	movx	a,@dptr
   11AC FB            [12] 4456 	mov	r3,a
   11AD A3            [24] 4457 	inc	dptr
   11AE E0            [24] 4458 	movx	a,@dptr
   11AF FC            [12] 4459 	mov	r4,a
   11B0 A3            [24] 4460 	inc	dptr
   11B1 E0            [24] 4461 	movx	a,@dptr
   11B2 FD            [12] 4462 	mov	r5,a
   11B3 A3            [24] 4463 	inc	dptr
   11B4 E0            [24] 4464 	movx	a,@dptr
   11B5 FE            [12] 4465 	mov	r6,a
   11B6 90 00 73      [24] 4466 	mov	dptr,#_uart_calc_th1_value_PARM_2
   11B9 E4            [12] 4467 	clr	a
   11BA F0            [24] 4468 	movx	@dptr,a
   11BB 8B 82         [24] 4469 	mov	dpl,r3
   11BD 8C 83         [24] 4470 	mov	dph,r4
   11BF 8D F0         [24] 4471 	mov	b,r5
   11C1 EE            [12] 4472 	mov	a,r6
   11C2 C0 07         [24] 4473 	push	ar7
   11C4 C0 06         [24] 4474 	push	ar6
   11C6 C0 05         [24] 4475 	push	ar5
   11C8 C0 04         [24] 4476 	push	ar4
   11CA C0 03         [24] 4477 	push	ar3
   11CC 12 0F 58      [24] 4478 	lcall	_uart_calc_th1_value
   11CF AA 82         [24] 4479 	mov	r2,dpl
   11D1 D0 03         [24] 4480 	pop	ar3
   11D3 D0 04         [24] 4481 	pop	ar4
   11D5 D0 05         [24] 4482 	pop	ar5
   11D7 D0 06         [24] 4483 	pop	ar6
                           4484 ;	../src/uart/src/uart_configure_auto_baud_calc.c:92: th1_with_smod_set = uart_calc_th1_value(baud_rate, 1);
   11D9 90 00 73      [24] 4485 	mov	dptr,#_uart_calc_th1_value_PARM_2
   11DC 74 01         [12] 4486 	mov	a,#0x01
   11DE F0            [24] 4487 	movx	@dptr,a
   11DF 8B 82         [24] 4488 	mov	dpl,r3
   11E1 8C 83         [24] 4489 	mov	dph,r4
   11E3 8D F0         [24] 4490 	mov	b,r5
   11E5 EE            [12] 4491 	mov	a,r6
   11E6 C0 06         [24] 4492 	push	ar6
   11E8 C0 05         [24] 4493 	push	ar5
   11EA C0 04         [24] 4494 	push	ar4
   11EC C0 03         [24] 4495 	push	ar3
   11EE C0 02         [24] 4496 	push	ar2
   11F0 12 0F 58      [24] 4497 	lcall	_uart_calc_th1_value
   11F3 A9 82         [24] 4498 	mov	r1,dpl
   11F5 D0 02         [24] 4499 	pop	ar2
                           4500 ;	../src/uart/src/uart_configure_auto_baud_calc.c:95: calc_br_with_smod_cleared = uart_calc_actual_baud_rate_from_th1(th1_with_smod_cleared, false);
   11F7 90 00 6C      [24] 4501 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
   11FA E4            [12] 4502 	clr	a
   11FB F0            [24] 4503 	movx	@dptr,a
   11FC 8A 82         [24] 4504 	mov	dpl,r2
   11FE C0 02         [24] 4505 	push	ar2
   1200 C0 01         [24] 4506 	push	ar1
   1202 12 0D B1      [24] 4507 	lcall	_uart_calc_actual_baud_rate_from_th1
   1205 85 82 16      [24] 4508 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,dpl
   1208 85 83 17      [24] 4509 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),dph
   120B 85 F0 18      [24] 4510 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),b
   120E F5 19         [12] 4511 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   1210 D0 01         [24] 4512 	pop	ar1
                           4513 ;	../src/uart/src/uart_configure_auto_baud_calc.c:96: calc_br_with_smod_set = uart_calc_actual_baud_rate_from_th1(th1_with_smod_set, true);
   1212 90 00 6C      [24] 4514 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
   1215 74 01         [12] 4515 	mov	a,#0x01
   1217 F0            [24] 4516 	movx	@dptr,a
   1218 89 82         [24] 4517 	mov	dpl,r1
   121A C0 01         [24] 4518 	push	ar1
   121C 12 0D B1      [24] 4519 	lcall	_uart_calc_actual_baud_rate_from_th1
   121F 85 82 12      [24] 4520 	mov	_uart_configure_auto_baud_calc_sloc2_1_0,dpl
   1222 85 83 13      [24] 4521 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 1),dph
   1225 85 F0 14      [24] 4522 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 2),b
   1228 F5 15         [12] 4523 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 3),a
   122A D0 01         [24] 4524 	pop	ar1
   122C D0 02         [24] 4525 	pop	ar2
   122E D0 03         [24] 4526 	pop	ar3
   1230 D0 04         [24] 4527 	pop	ar4
   1232 D0 05         [24] 4528 	pop	ar5
   1234 D0 06         [24] 4529 	pop	ar6
   1236 D0 07         [24] 4530 	pop	ar7
                           4531 ;	../src/uart/src/uart_configure_auto_baud_calc.c:99: error_calc_br_with_smod_cleared = (calc_br_with_smod_cleared > baud_rate) ? (calc_br_with_smod_cleared - baud_rate) : (baud_rate - calc_br_with_smod_cleared);
   1238 C3            [12] 4532 	clr	c
   1239 EB            [12] 4533 	mov	a,r3
   123A 95 16         [12] 4534 	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
   123C EC            [12] 4535 	mov	a,r4
   123D 95 17         [12] 4536 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   123F ED            [12] 4537 	mov	a,r5
   1240 95 18         [12] 4538 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   1242 EE            [12] 4539 	mov	a,r6
   1243 95 19         [12] 4540 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   1245 50 17         [24] 4541 	jnc	00119$
   1247 E5 16         [12] 4542 	mov	a,_uart_configure_auto_baud_calc_sloc3_1_0
   1249 C3            [12] 4543 	clr	c
   124A 9B            [12] 4544 	subb	a,r3
   124B F5 0E         [12] 4545 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
   124D E5 17         [12] 4546 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   124F 9C            [12] 4547 	subb	a,r4
   1250 F5 0F         [12] 4548 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
   1252 E5 18         [12] 4549 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   1254 9D            [12] 4550 	subb	a,r5
   1255 F5 10         [12] 4551 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
   1257 E5 19         [12] 4552 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   1259 9E            [12] 4553 	subb	a,r6
   125A F5 11         [12] 4554 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
   125C 80 15         [24] 4555 	sjmp	00120$
   125E                    4556 00119$:
   125E EB            [12] 4557 	mov	a,r3
   125F C3            [12] 4558 	clr	c
   1260 95 16         [12] 4559 	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
   1262 F5 0E         [12] 4560 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
   1264 EC            [12] 4561 	mov	a,r4
   1265 95 17         [12] 4562 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   1267 F5 0F         [12] 4563 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
   1269 ED            [12] 4564 	mov	a,r5
   126A 95 18         [12] 4565 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   126C F5 10         [12] 4566 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
   126E EE            [12] 4567 	mov	a,r6
   126F 95 19         [12] 4568 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   1271 F5 11         [12] 4569 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
   1273                    4570 00120$:
                           4571 ;	../src/uart/src/uart_configure_auto_baud_calc.c:100: error_calc_br_with_smod_set = (calc_br_with_smod_set > baud_rate) ? (calc_br_with_smod_set - baud_rate) : (baud_rate - calc_br_with_smod_set);
   1273 C3            [12] 4572 	clr	c
   1274 EB            [12] 4573 	mov	a,r3
   1275 95 12         [12] 4574 	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
   1277 EC            [12] 4575 	mov	a,r4
   1278 95 13         [12] 4576 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   127A ED            [12] 4577 	mov	a,r5
   127B 95 14         [12] 4578 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   127D EE            [12] 4579 	mov	a,r6
   127E 95 15         [12] 4580 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   1280 50 17         [24] 4581 	jnc	00121$
   1282 E5 12         [12] 4582 	mov	a,_uart_configure_auto_baud_calc_sloc2_1_0
   1284 C3            [12] 4583 	clr	c
   1285 9B            [12] 4584 	subb	a,r3
   1286 F5 16         [12] 4585 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
   1288 E5 13         [12] 4586 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   128A 9C            [12] 4587 	subb	a,r4
   128B F5 17         [12] 4588 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
   128D E5 14         [12] 4589 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   128F 9D            [12] 4590 	subb	a,r5
   1290 F5 18         [12] 4591 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
   1292 E5 15         [12] 4592 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   1294 9E            [12] 4593 	subb	a,r6
   1295 F5 19         [12] 4594 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   1297 80 15         [24] 4595 	sjmp	00122$
   1299                    4596 00121$:
   1299 EB            [12] 4597 	mov	a,r3
   129A C3            [12] 4598 	clr	c
   129B 95 12         [12] 4599 	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
   129D F5 16         [12] 4600 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
   129F EC            [12] 4601 	mov	a,r4
   12A0 95 13         [12] 4602 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   12A2 F5 17         [12] 4603 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
   12A4 ED            [12] 4604 	mov	a,r5
   12A5 95 14         [12] 4605 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   12A7 F5 18         [12] 4606 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
   12A9 EE            [12] 4607 	mov	a,r6
   12AA 95 15         [12] 4608 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   12AC F5 19         [12] 4609 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   12AE                    4610 00122$:
                           4611 ;	../src/uart/src/uart_configure_auto_baud_calc.c:103: if(error_calc_br_with_smod_cleared < error_calc_br_with_smod_set)
   12AE C3            [12] 4612 	clr	c
   12AF E5 0E         [12] 4613 	mov	a,_uart_configure_auto_baud_calc_sloc1_1_0
   12B1 95 16         [12] 4614 	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
   12B3 E5 0F         [12] 4615 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   12B5 95 17         [12] 4616 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   12B7 E5 10         [12] 4617 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   12B9 95 18         [12] 4618 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   12BB E5 11         [12] 4619 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   12BD 95 19         [12] 4620 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   12BF 50 12         [24] 4621 	jnc	00105$
                           4622 ;	../src/uart/src/uart_configure_auto_baud_calc.c:105: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_CLEAR),
   12C1 8F 06         [24] 4623 	mov	ar6,r7
   12C3 53 06 FB      [24] 4624 	anl	ar6,#0xFB
                           4625 ;	../src/uart/src/uart_configure_auto_baud_calc.c:106: (uint16_t)th1_with_smod_cleared);
   12C6 90 00 66      [24] 4626 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   12C9 EA            [12] 4627 	mov	a,r2
   12CA F0            [24] 4628 	movx	@dptr,a
   12CB E4            [12] 4629 	clr	a
   12CC A3            [24] 4630 	inc	dptr
   12CD F0            [24] 4631 	movx	@dptr,a
   12CE 8E 82         [24] 4632 	mov	dpl,r6
   12D0 02 0C 9A      [24] 4633 	ljmp	_uart_configure_manual_baud_calc
   12D3                    4634 00105$:
                           4635 ;	../src/uart/src/uart_configure_auto_baud_calc.c:110: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_SET),
   12D3 74 FB         [12] 4636 	mov	a,#0xFB
   12D5 5F            [12] 4637 	anl	a,r7
   12D6 44 04         [12] 4638 	orl	a,#0x04
   12D8 FF            [12] 4639 	mov	r7,a
                           4640 ;	../src/uart/src/uart_configure_auto_baud_calc.c:111: (uint16_t)th1_with_smod_set);
   12D9 90 00 66      [24] 4641 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   12DC E9            [12] 4642 	mov	a,r1
   12DD F0            [24] 4643 	movx	@dptr,a
   12DE E4            [12] 4644 	clr	a
   12DF A3            [24] 4645 	inc	dptr
   12E0 F0            [24] 4646 	movx	@dptr,a
   12E1 8F 82         [24] 4647 	mov	dpl,r7
   12E3 02 0C 9A      [24] 4648 	ljmp	_uart_configure_manual_baud_calc
                           4649 ;------------------------------------------------------------
                           4650 ;Allocation info for local variables in function 'rtc2_configure'
                           4651 ;------------------------------------------------------------
                           4652 ;compare_value             Allocated with name '_rtc2_configure_PARM_2'
                           4653 ;rtc2_config_options       Allocated with name '_rtc2_configure_rtc2_config_options_1_230'
                           4654 ;------------------------------------------------------------
                           4655 ;	../src/rtc2/src/rtc2_configure.c:53: void rtc2_configure(unsigned char rtc2_config_options, unsigned int compare_value)
                           4656 ;	-----------------------------------------
                           4657 ;	 function rtc2_configure
                           4658 ;	-----------------------------------------
   12E6                    4659 _rtc2_configure:
   12E6 E5 82         [12] 4660 	mov	a,dpl
                           4661 ;	../src/rtc2/src/rtc2_configure.c:56: if(((rtc2_config_options & RTC2CON_COMPARE_MODE_MASK) == RTC2_CONFIG_OPTION_COMPARE_MODE_0_RESET_AT_IRQ) ||
   12E8 90 00 7F      [24] 4662 	mov	dptr,#_rtc2_configure_rtc2_config_options_1_230
   12EB F0            [24] 4663 	movx	@dptr,a
   12EC FF            [12] 4664 	mov	r7,a
   12ED 74 06         [12] 4665 	mov	a,#0x06
   12EF 5F            [12] 4666 	anl	a,r7
   12F0 FE            [12] 4667 	mov	r6,a
   12F1 BE 06 02      [24] 4668 	cjne	r6,#0x06,00109$
   12F4 80 07         [24] 4669 	sjmp	00101$
   12F6                    4670 00109$:
                           4671 ;	../src/rtc2/src/rtc2_configure.c:57: ((rtc2_config_options & RTC2CON_COMPARE_MODE_MASK) == RTC2_CONFIG_OPTION_COMPARE_MODE_1_WRAP_AT_IRQ))
   12F6 74 06         [12] 4672 	mov	a,#0x06
   12F8 5F            [12] 4673 	anl	a,r7
   12F9 FE            [12] 4674 	mov	r6,a
   12FA BE 04 0C      [24] 4675 	cjne	r6,#0x04,00102$
   12FD                    4676 00101$:
                           4677 ;	../src/rtc2/src/rtc2_configure.c:59: RTC2CMP0 = (unsigned char)compare_value;
   12FD 90 00 7D      [24] 4678 	mov	dptr,#_rtc2_configure_PARM_2
   1300 E0            [24] 4679 	movx	a,@dptr
   1301 FD            [12] 4680 	mov	r5,a
   1302 A3            [24] 4681 	inc	dptr
   1303 E0            [24] 4682 	movx	a,@dptr
   1304 FE            [12] 4683 	mov	r6,a
   1305 8D B4         [24] 4684 	mov	_RTC2CMP0,r5
                           4685 ;	../src/rtc2/src/rtc2_configure.c:60: RTC2CMP1 = (unsigned char)(compare_value >> 8);
   1307 8E B5         [24] 4686 	mov	_RTC2CMP1,r6
   1309                    4687 00102$:
                           4688 ;	../src/rtc2/src/rtc2_configure.c:64: RTC2CON = (RTC2CON & ~RTC2_CONFIG_OPTION_RTC2CON_MASK) | (rtc2_config_options & RTC2_CONFIG_OPTION_RTC2CON_MASK);
   1309 AE B3         [24] 4689 	mov	r6,_RTC2CON
   130B 53 06 F0      [24] 4690 	anl	ar6,#0xF0
   130E 53 07 0F      [24] 4691 	anl	ar7,#0x0F
   1311 EF            [12] 4692 	mov	a,r7
   1312 4E            [12] 4693 	orl	a,r6
   1313 F5 B3         [12] 4694 	mov	_RTC2CON,a
   1315 22            [24] 4695 	ret
                           4696 ;------------------------------------------------------------
                           4697 ;Allocation info for local variables in function 'radiobegin'
                           4698 ;------------------------------------------------------------
                           4699 ;setup                     Allocated with name '_radiobegin_setup_1_233'
                           4700 ;------------------------------------------------------------
                           4701 ;	../nRFLE.c:22: void radiobegin() {
                           4702 ;	-----------------------------------------
                           4703 ;	 function radiobegin
                           4704 ;	-----------------------------------------
   1316                    4705 _radiobegin:
                           4706 ;	../nRFLE.c:26: rf_spi_configure_enable();
   1316 12 01 C6      [24] 4707 	lcall	_rf_spi_configure_enable
                           4708 ;	../nRFLE.c:28: setup = 255; // setup_retr setRetries 15*16+15
   1319 90 00 80      [24] 4709 	mov	dptr,#_radiobegin_setup_1_233
   131C 74 FF         [12] 4710 	mov	a,#0xFF
   131E F0            [24] 4711 	movx	@dptr,a
                           4712 ;	../nRFLE.c:29: rf_write_register(RF_SETUP_RETR, &setup, 1);
   131F 90 00 08      [24] 4713 	mov	dptr,#_rf_write_register_PARM_2
   1322 74 80         [12] 4714 	mov	a,#_radiobegin_setup_1_233
   1324 F0            [24] 4715 	movx	@dptr,a
   1325 74 00         [12] 4716 	mov	a,#(_radiobegin_setup_1_233 >> 8)
   1327 A3            [24] 4717 	inc	dptr
   1328 F0            [24] 4718 	movx	@dptr,a
   1329 E4            [12] 4719 	clr	a
   132A A3            [24] 4720 	inc	dptr
   132B F0            [24] 4721 	movx	@dptr,a
   132C 90 00 0B      [24] 4722 	mov	dptr,#_rf_write_register_PARM_3
   132F 74 01         [12] 4723 	mov	a,#0x01
   1331 F0            [24] 4724 	movx	@dptr,a
   1332 E4            [12] 4725 	clr	a
   1333 A3            [24] 4726 	inc	dptr
   1334 F0            [24] 4727 	movx	@dptr,a
   1335 75 82 04      [24] 4728 	mov	dpl,#0x04
   1338 02 01 89      [24] 4729 	ljmp	_rf_write_register
                           4730 ;------------------------------------------------------------
                           4731 ;Allocation info for local variables in function 'setChannel'
                           4732 ;------------------------------------------------------------
                           4733 ;channel                   Allocated with name '_setChannel_channel_1_234'
                           4734 ;------------------------------------------------------------
                           4735 ;	../nRFLE.c:35: void setChannel(unsigned char channel){
                           4736 ;	-----------------------------------------
                           4737 ;	 function setChannel
                           4738 ;	-----------------------------------------
   133B                    4739 _setChannel:
   133B E5 82         [12] 4740 	mov	a,dpl
   133D 90 00 81      [24] 4741 	mov	dptr,#_setChannel_channel_1_234
   1340 F0            [24] 4742 	movx	@dptr,a
                           4743 ;	../nRFLE.c:36: rf_write_register(RF_RF_CH, &channel, 1);
   1341 90 00 08      [24] 4744 	mov	dptr,#_rf_write_register_PARM_2
   1344 74 81         [12] 4745 	mov	a,#_setChannel_channel_1_234
   1346 F0            [24] 4746 	movx	@dptr,a
   1347 74 00         [12] 4747 	mov	a,#(_setChannel_channel_1_234 >> 8)
   1349 A3            [24] 4748 	inc	dptr
   134A F0            [24] 4749 	movx	@dptr,a
   134B E4            [12] 4750 	clr	a
   134C A3            [24] 4751 	inc	dptr
   134D F0            [24] 4752 	movx	@dptr,a
   134E 90 00 0B      [24] 4753 	mov	dptr,#_rf_write_register_PARM_3
   1351 74 01         [12] 4754 	mov	a,#0x01
   1353 F0            [24] 4755 	movx	@dptr,a
   1354 E4            [12] 4756 	clr	a
   1355 A3            [24] 4757 	inc	dptr
   1356 F0            [24] 4758 	movx	@dptr,a
   1357 75 82 05      [24] 4759 	mov	dpl,#0x05
   135A 02 01 89      [24] 4760 	ljmp	_rf_write_register
                           4761 ;------------------------------------------------------------
                           4762 ;Allocation info for local variables in function 'setDataRate'
                           4763 ;------------------------------------------------------------
                           4764 ;speed                     Allocated with name '_setDataRate_speed_1_236'
                           4765 ;buffer                    Allocated with name '_setDataRate_buffer_1_237'
                           4766 ;------------------------------------------------------------
                           4767 ;	../nRFLE.c:41: void setDataRate(unsigned char speed){
                           4768 ;	-----------------------------------------
                           4769 ;	 function setDataRate
                           4770 ;	-----------------------------------------
   135D                    4771 _setDataRate:
   135D E5 82         [12] 4772 	mov	a,dpl
   135F 90 00 82      [24] 4773 	mov	dptr,#_setDataRate_speed_1_236
   1362 F0            [24] 4774 	movx	@dptr,a
                           4775 ;	../nRFLE.c:43: rf_read_register(RF_RF_SETUP,&buffer,1);
   1363 90 00 28      [24] 4776 	mov	dptr,#_rf_read_register_PARM_2
   1366 74 83         [12] 4777 	mov	a,#_setDataRate_buffer_1_237
   1368 F0            [24] 4778 	movx	@dptr,a
   1369 74 00         [12] 4779 	mov	a,#(_setDataRate_buffer_1_237 >> 8)
   136B A3            [24] 4780 	inc	dptr
   136C F0            [24] 4781 	movx	@dptr,a
   136D E4            [12] 4782 	clr	a
   136E A3            [24] 4783 	inc	dptr
   136F F0            [24] 4784 	movx	@dptr,a
   1370 90 00 2B      [24] 4785 	mov	dptr,#_rf_read_register_PARM_3
   1373 74 01         [12] 4786 	mov	a,#0x01
   1375 F0            [24] 4787 	movx	@dptr,a
   1376 E4            [12] 4788 	clr	a
   1377 A3            [24] 4789 	inc	dptr
   1378 F0            [24] 4790 	movx	@dptr,a
   1379 75 82 06      [24] 4791 	mov	dpl,#0x06
   137C 12 04 3D      [24] 4792 	lcall	_rf_read_register
                           4793 ;	../nRFLE.c:45: buffer &= ~(_BV(RF_DR_LOW) | _BV(RF_DR_HIGH)) ;
   137F 90 00 83      [24] 4794 	mov	dptr,#_setDataRate_buffer_1_237
   1382 E0            [24] 4795 	movx	a,@dptr
   1383 54 D7         [12] 4796 	anl	a,#0xD7
   1385 F0            [24] 4797 	movx	@dptr,a
                           4798 ;	../nRFLE.c:47: if( speed == 1 )	 buffer |= _BV(RF_DR_LOW);
   1386 90 00 82      [24] 4799 	mov	dptr,#_setDataRate_speed_1_236
   1389 E0            [24] 4800 	movx	a,@dptr
   138A FF            [12] 4801 	mov	r7,a
   138B BF 01 0A      [24] 4802 	cjne	r7,#0x01,00104$
   138E 90 00 83      [24] 4803 	mov	dptr,#_setDataRate_buffer_1_237
   1391 E0            [24] 4804 	movx	a,@dptr
   1392 FE            [12] 4805 	mov	r6,a
   1393 44 20         [12] 4806 	orl	a,#0x20
   1395 F0            [24] 4807 	movx	@dptr,a
   1396 80 0B         [24] 4808 	sjmp	00105$
   1398                    4809 00104$:
                           4810 ;	../nRFLE.c:49: else if ( speed == 3 ) buffer |= _BV(RF_DR_HIGH);
   1398 BF 03 08      [24] 4811 	cjne	r7,#0x03,00105$
   139B 90 00 83      [24] 4812 	mov	dptr,#_setDataRate_buffer_1_237
   139E E0            [24] 4813 	movx	a,@dptr
   139F FF            [12] 4814 	mov	r7,a
   13A0 44 08         [12] 4815 	orl	a,#0x08
   13A2 F0            [24] 4816 	movx	@dptr,a
   13A3                    4817 00105$:
                           4818 ;	../nRFLE.c:51: rf_write_register(RF_RF_SETUP,&buffer,1 ) ;
   13A3 90 00 08      [24] 4819 	mov	dptr,#_rf_write_register_PARM_2
   13A6 74 83         [12] 4820 	mov	a,#_setDataRate_buffer_1_237
   13A8 F0            [24] 4821 	movx	@dptr,a
   13A9 74 00         [12] 4822 	mov	a,#(_setDataRate_buffer_1_237 >> 8)
   13AB A3            [24] 4823 	inc	dptr
   13AC F0            [24] 4824 	movx	@dptr,a
   13AD E4            [12] 4825 	clr	a
   13AE A3            [24] 4826 	inc	dptr
   13AF F0            [24] 4827 	movx	@dptr,a
   13B0 90 00 0B      [24] 4828 	mov	dptr,#_rf_write_register_PARM_3
   13B3 74 01         [12] 4829 	mov	a,#0x01
   13B5 F0            [24] 4830 	movx	@dptr,a
   13B6 E4            [12] 4831 	clr	a
   13B7 A3            [24] 4832 	inc	dptr
   13B8 F0            [24] 4833 	movx	@dptr,a
   13B9 75 82 06      [24] 4834 	mov	dpl,#0x06
   13BC 02 01 89      [24] 4835 	ljmp	_rf_write_register
                           4836 ;------------------------------------------------------------
                           4837 ;Allocation info for local variables in function 'setAutoAck'
                           4838 ;------------------------------------------------------------
                           4839 ;enable                    Allocated with name '_setAutoAck_enable_1_238'
                           4840 ;buffer                    Allocated with name '_setAutoAck_buffer_1_239'
                           4841 ;------------------------------------------------------------
                           4842 ;	../nRFLE.c:56: void setAutoAck(unsigned char enable)
                           4843 ;	-----------------------------------------
                           4844 ;	 function setAutoAck
                           4845 ;	-----------------------------------------
   13BF                    4846 _setAutoAck:
   13BF E5 82         [12] 4847 	mov	a,dpl
                           4848 ;	../nRFLE.c:60: if (enable==1) buffer=63;
   13C1 90 00 84      [24] 4849 	mov	dptr,#_setAutoAck_enable_1_238
   13C4 F0            [24] 4850 	movx	@dptr,a
   13C5 FF            [12] 4851 	mov	r7,a
   13C6 BF 01 08      [24] 4852 	cjne	r7,#0x01,00102$
   13C9 90 00 85      [24] 4853 	mov	dptr,#_setAutoAck_buffer_1_239
   13CC 74 3F         [12] 4854 	mov	a,#0x3F
   13CE F0            [24] 4855 	movx	@dptr,a
   13CF 80 05         [24] 4856 	sjmp	00103$
   13D1                    4857 00102$:
                           4858 ;	../nRFLE.c:61: else        buffer=0;
   13D1 90 00 85      [24] 4859 	mov	dptr,#_setAutoAck_buffer_1_239
   13D4 E4            [12] 4860 	clr	a
   13D5 F0            [24] 4861 	movx	@dptr,a
   13D6                    4862 00103$:
                           4863 ;	../nRFLE.c:62: rf_write_register(RF_EN_AA, &buffer,1);
   13D6 90 00 08      [24] 4864 	mov	dptr,#_rf_write_register_PARM_2
   13D9 74 85         [12] 4865 	mov	a,#_setAutoAck_buffer_1_239
   13DB F0            [24] 4866 	movx	@dptr,a
   13DC 74 00         [12] 4867 	mov	a,#(_setAutoAck_buffer_1_239 >> 8)
   13DE A3            [24] 4868 	inc	dptr
   13DF F0            [24] 4869 	movx	@dptr,a
   13E0 E4            [12] 4870 	clr	a
   13E1 A3            [24] 4871 	inc	dptr
   13E2 F0            [24] 4872 	movx	@dptr,a
   13E3 90 00 0B      [24] 4873 	mov	dptr,#_rf_write_register_PARM_3
   13E6 74 01         [12] 4874 	mov	a,#0x01
   13E8 F0            [24] 4875 	movx	@dptr,a
   13E9 E4            [12] 4876 	clr	a
   13EA A3            [24] 4877 	inc	dptr
   13EB F0            [24] 4878 	movx	@dptr,a
   13EC 75 82 01      [24] 4879 	mov	dpl,#0x01
   13EF 02 01 89      [24] 4880 	ljmp	_rf_write_register
                           4881 ;------------------------------------------------------------
                           4882 ;Allocation info for local variables in function 'setCRCLength'
                           4883 ;------------------------------------------------------------
                           4884 ;length                    Allocated with name '_setCRCLength_length_1_240'
                           4885 ;buffer                    Allocated with name '_setCRCLength_buffer_1_241'
                           4886 ;------------------------------------------------------------
                           4887 ;	../nRFLE.c:67: void setCRCLength(unsigned char length)
                           4888 ;	-----------------------------------------
                           4889 ;	 function setCRCLength
                           4890 ;	-----------------------------------------
   13F2                    4891 _setCRCLength:
   13F2 E5 82         [12] 4892 	mov	a,dpl
   13F4 90 00 86      [24] 4893 	mov	dptr,#_setCRCLength_length_1_240
   13F7 F0            [24] 4894 	movx	@dptr,a
                           4895 ;	../nRFLE.c:71: rf_read_register(RF_CONFIG,&buffer,1);
   13F8 90 00 28      [24] 4896 	mov	dptr,#_rf_read_register_PARM_2
   13FB 74 87         [12] 4897 	mov	a,#_setCRCLength_buffer_1_241
   13FD F0            [24] 4898 	movx	@dptr,a
   13FE 74 00         [12] 4899 	mov	a,#(_setCRCLength_buffer_1_241 >> 8)
   1400 A3            [24] 4900 	inc	dptr
   1401 F0            [24] 4901 	movx	@dptr,a
   1402 E4            [12] 4902 	clr	a
   1403 A3            [24] 4903 	inc	dptr
   1404 F0            [24] 4904 	movx	@dptr,a
   1405 90 00 2B      [24] 4905 	mov	dptr,#_rf_read_register_PARM_3
   1408 74 01         [12] 4906 	mov	a,#0x01
   140A F0            [24] 4907 	movx	@dptr,a
   140B E4            [12] 4908 	clr	a
   140C A3            [24] 4909 	inc	dptr
   140D F0            [24] 4910 	movx	@dptr,a
   140E 75 82 00      [24] 4911 	mov	dpl,#0x00
   1411 12 04 3D      [24] 4912 	lcall	_rf_read_register
                           4913 ;	../nRFLE.c:73: buffer = buffer & ~( _BV(RF_CRCO) | _BV(RF_EN_CRC)) ;
   1414 90 00 87      [24] 4914 	mov	dptr,#_setCRCLength_buffer_1_241
   1417 E0            [24] 4915 	movx	a,@dptr
   1418 54 F3         [12] 4916 	anl	a,#0xF3
   141A F0            [24] 4917 	movx	@dptr,a
                           4918 ;	../nRFLE.c:75: if (length==1) buffer |= _BV(RF_EN_CRC);
   141B 90 00 86      [24] 4919 	mov	dptr,#_setCRCLength_length_1_240
   141E E0            [24] 4920 	movx	a,@dptr
   141F FF            [12] 4921 	mov	r7,a
   1420 BF 01 0A      [24] 4922 	cjne	r7,#0x01,00104$
   1423 90 00 87      [24] 4923 	mov	dptr,#_setCRCLength_buffer_1_241
   1426 E0            [24] 4924 	movx	a,@dptr
   1427 FE            [12] 4925 	mov	r6,a
   1428 44 08         [12] 4926 	orl	a,#0x08
   142A F0            [24] 4927 	movx	@dptr,a
   142B 80 0B         [24] 4928 	sjmp	00105$
   142D                    4929 00104$:
                           4930 ;	../nRFLE.c:76: else if (length==2) buffer |= _BV(RF_EN_CRC) | _BV( RF_CRCO );
   142D BF 02 08      [24] 4931 	cjne	r7,#0x02,00105$
   1430 90 00 87      [24] 4932 	mov	dptr,#_setCRCLength_buffer_1_241
   1433 E0            [24] 4933 	movx	a,@dptr
   1434 FF            [12] 4934 	mov	r7,a
   1435 44 0C         [12] 4935 	orl	a,#0x0C
   1437 F0            [24] 4936 	movx	@dptr,a
   1438                    4937 00105$:
                           4938 ;	../nRFLE.c:78: buffer |=1<<PWR_UP;
   1438 90 00 87      [24] 4939 	mov	dptr,#_setCRCLength_buffer_1_241
   143B E0            [24] 4940 	movx	a,@dptr
   143C 44 02         [12] 4941 	orl	a,#0x02
   143E F0            [24] 4942 	movx	@dptr,a
                           4943 ;	../nRFLE.c:80: rf_write_register(RF_CONFIG,&buffer,1 ) ;
   143F 90 00 08      [24] 4944 	mov	dptr,#_rf_write_register_PARM_2
   1442 74 87         [12] 4945 	mov	a,#_setCRCLength_buffer_1_241
   1444 F0            [24] 4946 	movx	@dptr,a
   1445 74 00         [12] 4947 	mov	a,#(_setCRCLength_buffer_1_241 >> 8)
   1447 A3            [24] 4948 	inc	dptr
   1448 F0            [24] 4949 	movx	@dptr,a
   1449 E4            [12] 4950 	clr	a
   144A A3            [24] 4951 	inc	dptr
   144B F0            [24] 4952 	movx	@dptr,a
   144C 90 00 0B      [24] 4953 	mov	dptr,#_rf_write_register_PARM_3
   144F 74 01         [12] 4954 	mov	a,#0x01
   1451 F0            [24] 4955 	movx	@dptr,a
   1452 E4            [12] 4956 	clr	a
   1453 A3            [24] 4957 	inc	dptr
   1454 F0            [24] 4958 	movx	@dptr,a
   1455 75 82 00      [24] 4959 	mov	dpl,#0x00
   1458 02 01 89      [24] 4960 	ljmp	_rf_write_register
                           4961 ;------------------------------------------------------------
                           4962 ;Allocation info for local variables in function 'setPALevel'
                           4963 ;------------------------------------------------------------
                           4964 ;level                     Allocated with name '_setPALevel_level_1_242'
                           4965 ;setup                     Allocated with name '_setPALevel_setup_1_243'
                           4966 ;------------------------------------------------------------
                           4967 ;	../nRFLE.c:84: void setPALevel(unsigned char level)
                           4968 ;	-----------------------------------------
                           4969 ;	 function setPALevel
                           4970 ;	-----------------------------------------
   145B                    4971 _setPALevel:
                           4972 ;	../nRFLE.c:88: rf_read_register(RF_RF_SETUP,&setup,1) ;
   145B 90 00 28      [24] 4973 	mov	dptr,#_rf_read_register_PARM_2
   145E 74 88         [12] 4974 	mov	a,#_setPALevel_setup_1_243
   1460 F0            [24] 4975 	movx	@dptr,a
   1461 74 00         [12] 4976 	mov	a,#(_setPALevel_setup_1_243 >> 8)
   1463 A3            [24] 4977 	inc	dptr
   1464 F0            [24] 4978 	movx	@dptr,a
   1465 E4            [12] 4979 	clr	a
   1466 A3            [24] 4980 	inc	dptr
   1467 F0            [24] 4981 	movx	@dptr,a
   1468 90 00 2B      [24] 4982 	mov	dptr,#_rf_read_register_PARM_3
   146B 74 01         [12] 4983 	mov	a,#0x01
   146D F0            [24] 4984 	movx	@dptr,a
   146E E4            [12] 4985 	clr	a
   146F A3            [24] 4986 	inc	dptr
   1470 F0            [24] 4987 	movx	@dptr,a
   1471 75 82 06      [24] 4988 	mov	dpl,#0x06
   1474 12 04 3D      [24] 4989 	lcall	_rf_read_register
                           4990 ;	../nRFLE.c:90: setup &= ~(_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH)) ;
   1477 90 00 88      [24] 4991 	mov	dptr,#_setPALevel_setup_1_243
   147A E0            [24] 4992 	movx	a,@dptr
   147B 54 F9         [12] 4993 	anl	a,#0xF9
   147D F0            [24] 4994 	movx	@dptr,a
                           4995 ;	../nRFLE.c:93: rf_write_register(RF_RF_SETUP,&setup,1);
   147E 90 00 08      [24] 4996 	mov	dptr,#_rf_write_register_PARM_2
   1481 74 88         [12] 4997 	mov	a,#_setPALevel_setup_1_243
   1483 F0            [24] 4998 	movx	@dptr,a
   1484 74 00         [12] 4999 	mov	a,#(_setPALevel_setup_1_243 >> 8)
   1486 A3            [24] 5000 	inc	dptr
   1487 F0            [24] 5001 	movx	@dptr,a
   1488 E4            [12] 5002 	clr	a
   1489 A3            [24] 5003 	inc	dptr
   148A F0            [24] 5004 	movx	@dptr,a
   148B 90 00 0B      [24] 5005 	mov	dptr,#_rf_write_register_PARM_3
   148E 74 01         [12] 5006 	mov	a,#0x01
   1490 F0            [24] 5007 	movx	@dptr,a
   1491 E4            [12] 5008 	clr	a
   1492 A3            [24] 5009 	inc	dptr
   1493 F0            [24] 5010 	movx	@dptr,a
   1494 75 82 06      [24] 5011 	mov	dpl,#0x06
   1497 02 01 89      [24] 5012 	ljmp	_rf_write_register
                           5013 ;------------------------------------------------------------
                           5014 ;Allocation info for local variables in function 'openAllPipe'
                           5015 ;------------------------------------------------------------
                           5016 ;buffer                    Allocated with name '_openAllPipe_buffer_1_244'
                           5017 ;setup                     Allocated with name '_openAllPipe_setup_1_244'
                           5018 ;------------------------------------------------------------
                           5019 ;	../nRFLE.c:101: void openAllPipe()
                           5020 ;	-----------------------------------------
                           5021 ;	 function openAllPipe
                           5022 ;	-----------------------------------------
   149A                    5023 _openAllPipe:
                           5024 ;	../nRFLE.c:106: buffer[1]=adr1;
   149A 90 00 8A      [24] 5025 	mov	dptr,#(_openAllPipe_buffer_1_244 + 0x0001)
   149D 74 F0         [12] 5026 	mov	a,#0xF0
   149F F0            [24] 5027 	movx	@dptr,a
                           5028 ;	../nRFLE.c:107: buffer[2]=adr2;
   14A0 90 00 8B      [24] 5029 	mov	dptr,#(_openAllPipe_buffer_1_244 + 0x0002)
   14A3 74 F0         [12] 5030 	mov	a,#0xF0
   14A5 F0            [24] 5031 	movx	@dptr,a
                           5032 ;	../nRFLE.c:108: buffer[3]=adr3;
   14A6 90 00 8C      [24] 5033 	mov	dptr,#(_openAllPipe_buffer_1_244 + 0x0003)
   14A9 74 F0         [12] 5034 	mov	a,#0xF0
   14AB F0            [24] 5035 	movx	@dptr,a
                           5036 ;	../nRFLE.c:109: buffer[4]=adr4;
   14AC 90 00 8D      [24] 5037 	mov	dptr,#(_openAllPipe_buffer_1_244 + 0x0004)
   14AF 74 F0         [12] 5038 	mov	a,#0xF0
   14B1 F0            [24] 5039 	movx	@dptr,a
                           5040 ;	../nRFLE.c:111: setup = 2; // en_rxaddr ,биты включения каналов B00000010 на прием
   14B2 90 00 8E      [24] 5041 	mov	dptr,#_openAllPipe_setup_1_244
   14B5 74 02         [12] 5042 	mov	a,#0x02
   14B7 F0            [24] 5043 	movx	@dptr,a
                           5044 ;	../nRFLE.c:112: rf_write_register(RF_EN_RXADDR, &setup, 1);
   14B8 90 00 08      [24] 5045 	mov	dptr,#_rf_write_register_PARM_2
   14BB 74 8E         [12] 5046 	mov	a,#_openAllPipe_setup_1_244
   14BD F0            [24] 5047 	movx	@dptr,a
   14BE 74 00         [12] 5048 	mov	a,#(_openAllPipe_setup_1_244 >> 8)
   14C0 A3            [24] 5049 	inc	dptr
   14C1 F0            [24] 5050 	movx	@dptr,a
   14C2 E4            [12] 5051 	clr	a
   14C3 A3            [24] 5052 	inc	dptr
   14C4 F0            [24] 5053 	movx	@dptr,a
   14C5 90 00 0B      [24] 5054 	mov	dptr,#_rf_write_register_PARM_3
   14C8 74 01         [12] 5055 	mov	a,#0x01
   14CA F0            [24] 5056 	movx	@dptr,a
   14CB E4            [12] 5057 	clr	a
   14CC A3            [24] 5058 	inc	dptr
   14CD F0            [24] 5059 	movx	@dptr,a
   14CE 75 82 02      [24] 5060 	mov	dpl,#0x02
   14D1 12 01 89      [24] 5061 	lcall	_rf_write_register
                           5062 ;	../nRFLE.c:115: buffer[0]=0xD2;
   14D4 90 00 89      [24] 5063 	mov	dptr,#_openAllPipe_buffer_1_244
   14D7 74 D2         [12] 5064 	mov	a,#0xD2
   14D9 F0            [24] 5065 	movx	@dptr,a
                           5066 ;	../nRFLE.c:117: rf_write_register(RF_RX_ADDR_P0,buffer,5);
   14DA 90 00 08      [24] 5067 	mov	dptr,#_rf_write_register_PARM_2
   14DD 74 89         [12] 5068 	mov	a,#_openAllPipe_buffer_1_244
   14DF F0            [24] 5069 	movx	@dptr,a
   14E0 74 00         [12] 5070 	mov	a,#(_openAllPipe_buffer_1_244 >> 8)
   14E2 A3            [24] 5071 	inc	dptr
   14E3 F0            [24] 5072 	movx	@dptr,a
   14E4 E4            [12] 5073 	clr	a
   14E5 A3            [24] 5074 	inc	dptr
   14E6 F0            [24] 5075 	movx	@dptr,a
   14E7 90 00 0B      [24] 5076 	mov	dptr,#_rf_write_register_PARM_3
   14EA 74 05         [12] 5077 	mov	a,#0x05
   14EC F0            [24] 5078 	movx	@dptr,a
   14ED E4            [12] 5079 	clr	a
   14EE A3            [24] 5080 	inc	dptr
   14EF F0            [24] 5081 	movx	@dptr,a
   14F0 75 82 0A      [24] 5082 	mov	dpl,#0x0A
   14F3 12 01 89      [24] 5083 	lcall	_rf_write_register
                           5084 ;	../nRFLE.c:118: rf_write_register(RF_TX_ADDR,buffer,5);
   14F6 90 00 08      [24] 5085 	mov	dptr,#_rf_write_register_PARM_2
   14F9 74 89         [12] 5086 	mov	a,#_openAllPipe_buffer_1_244
   14FB F0            [24] 5087 	movx	@dptr,a
   14FC 74 00         [12] 5088 	mov	a,#(_openAllPipe_buffer_1_244 >> 8)
   14FE A3            [24] 5089 	inc	dptr
   14FF F0            [24] 5090 	movx	@dptr,a
   1500 E4            [12] 5091 	clr	a
   1501 A3            [24] 5092 	inc	dptr
   1502 F0            [24] 5093 	movx	@dptr,a
   1503 90 00 0B      [24] 5094 	mov	dptr,#_rf_write_register_PARM_3
   1506 74 05         [12] 5095 	mov	a,#0x05
   1508 F0            [24] 5096 	movx	@dptr,a
   1509 E4            [12] 5097 	clr	a
   150A A3            [24] 5098 	inc	dptr
   150B F0            [24] 5099 	movx	@dptr,a
   150C 75 82 10      [24] 5100 	mov	dpl,#0x10
   150F 12 01 89      [24] 5101 	lcall	_rf_write_register
                           5102 ;	../nRFLE.c:122: buffer[0]=0xE1;
   1512 90 00 89      [24] 5103 	mov	dptr,#_openAllPipe_buffer_1_244
   1515 74 E1         [12] 5104 	mov	a,#0xE1
   1517 F0            [24] 5105 	movx	@dptr,a
                           5106 ;	../nRFLE.c:124: rf_write_register(RF_RX_ADDR_P0+1,buffer,5);
   1518 90 00 08      [24] 5107 	mov	dptr,#_rf_write_register_PARM_2
   151B 74 89         [12] 5108 	mov	a,#_openAllPipe_buffer_1_244
   151D F0            [24] 5109 	movx	@dptr,a
   151E 74 00         [12] 5110 	mov	a,#(_openAllPipe_buffer_1_244 >> 8)
   1520 A3            [24] 5111 	inc	dptr
   1521 F0            [24] 5112 	movx	@dptr,a
   1522 E4            [12] 5113 	clr	a
   1523 A3            [24] 5114 	inc	dptr
   1524 F0            [24] 5115 	movx	@dptr,a
   1525 90 00 0B      [24] 5116 	mov	dptr,#_rf_write_register_PARM_3
   1528 74 05         [12] 5117 	mov	a,#0x05
   152A F0            [24] 5118 	movx	@dptr,a
   152B E4            [12] 5119 	clr	a
   152C A3            [24] 5120 	inc	dptr
   152D F0            [24] 5121 	movx	@dptr,a
   152E 75 82 0B      [24] 5122 	mov	dpl,#0x0B
   1531 12 01 89      [24] 5123 	lcall	_rf_write_register
                           5124 ;	../nRFLE.c:126: setup=32; //
   1534 90 00 8E      [24] 5125 	mov	dptr,#_openAllPipe_setup_1_244
   1537 74 20         [12] 5126 	mov	a,#0x20
   1539 F0            [24] 5127 	movx	@dptr,a
                           5128 ;	../nRFLE.c:127: rf_write_register(RF_RX_PW_P0+1,&setup,1);
   153A 90 00 08      [24] 5129 	mov	dptr,#_rf_write_register_PARM_2
   153D 74 8E         [12] 5130 	mov	a,#_openAllPipe_setup_1_244
   153F F0            [24] 5131 	movx	@dptr,a
   1540 74 00         [12] 5132 	mov	a,#(_openAllPipe_setup_1_244 >> 8)
   1542 A3            [24] 5133 	inc	dptr
   1543 F0            [24] 5134 	movx	@dptr,a
   1544 E4            [12] 5135 	clr	a
   1545 A3            [24] 5136 	inc	dptr
   1546 F0            [24] 5137 	movx	@dptr,a
   1547 90 00 0B      [24] 5138 	mov	dptr,#_rf_write_register_PARM_3
   154A 74 01         [12] 5139 	mov	a,#0x01
   154C F0            [24] 5140 	movx	@dptr,a
   154D E4            [12] 5141 	clr	a
   154E A3            [24] 5142 	inc	dptr
   154F F0            [24] 5143 	movx	@dptr,a
   1550 75 82 12      [24] 5144 	mov	dpl,#0x12
   1553 02 01 89      [24] 5145 	ljmp	_rf_write_register
                           5146 ;------------------------------------------------------------
                           5147 ;Allocation info for local variables in function 'setdimmer'
                           5148 ;------------------------------------------------------------
                           5149 ;value                     Allocated with name '_setdimmer_value_1_245'
                           5150 ;------------------------------------------------------------
                           5151 ;	main.c:44: void setdimmer(uint8_t value){
                           5152 ;	-----------------------------------------
                           5153 ;	 function setdimmer
                           5154 ;	-----------------------------------------
   1556                    5155 _setdimmer:
   1556 E5 82         [12] 5156 	mov	a,dpl
                           5157 ;	main.c:45: valuepwm=65535-DIMSTART*(MAXSTEP-value);
   1558 90 00 A1      [24] 5158 	mov	dptr,#_setdimmer_value_1_245
   155B F0            [24] 5159 	movx	@dptr,a
   155C FF            [12] 5160 	mov	r7,a
   155D FD            [12] 5161 	mov	r5,a
   155E 7E 00         [12] 5162 	mov	r6,#0x00
   1560 74 64         [12] 5163 	mov	a,#0x64
   1562 C3            [12] 5164 	clr	c
   1563 9D            [12] 5165 	subb	a,r5
   1564 FD            [12] 5166 	mov	r5,a
   1565 E4            [12] 5167 	clr	a
   1566 9E            [12] 5168 	subb	a,r6
   1567 FE            [12] 5169 	mov	r6,a
   1568 90 00 DE      [24] 5170 	mov	dptr,#__mullong_PARM_2
   156B ED            [12] 5171 	mov	a,r5
   156C F0            [24] 5172 	movx	@dptr,a
   156D EE            [12] 5173 	mov	a,r6
   156E A3            [24] 5174 	inc	dptr
   156F F0            [24] 5175 	movx	@dptr,a
   1570 EE            [12] 5176 	mov	a,r6
   1571 33            [12] 5177 	rlc	a
   1572 95 E0         [12] 5178 	subb	a,acc
   1574 A3            [24] 5179 	inc	dptr
   1575 F0            [24] 5180 	movx	@dptr,a
   1576 A3            [24] 5181 	inc	dptr
   1577 F0            [24] 5182 	movx	@dptr,a
   1578 90 00 85      [24] 5183 	mov	dptr,#(0x85&0x00ff)
   157B E4            [12] 5184 	clr	a
   157C F5 F0         [12] 5185 	mov	b,a
   157E C0 07         [24] 5186 	push	ar7
   1580 12 1B D9      [24] 5187 	lcall	__mullong
   1583 AB 82         [24] 5188 	mov	r3,dpl
   1585 AC 83         [24] 5189 	mov	r4,dph
   1587 AD F0         [24] 5190 	mov	r5,b
   1589 FE            [12] 5191 	mov	r6,a
   158A D0 07         [24] 5192 	pop	ar7
   158C 74 FF         [12] 5193 	mov	a,#0xFF
   158E C3            [12] 5194 	clr	c
   158F 9B            [12] 5195 	subb	a,r3
   1590 FB            [12] 5196 	mov	r3,a
   1591 74 FF         [12] 5197 	mov	a,#0xFF
   1593 9C            [12] 5198 	subb	a,r4
   1594 FC            [12] 5199 	mov	r4,a
   1595 E4            [12] 5200 	clr	a
   1596 9D            [12] 5201 	subb	a,r5
   1597 FD            [12] 5202 	mov	r5,a
   1598 E4            [12] 5203 	clr	a
   1599 9E            [12] 5204 	subb	a,r6
   159A FE            [12] 5205 	mov	r6,a
   159B 90 00 E2      [24] 5206 	mov	dptr,#_valuepwm
   159E EB            [12] 5207 	mov	a,r3
   159F F0            [24] 5208 	movx	@dptr,a
   15A0 EC            [12] 5209 	mov	a,r4
   15A1 A3            [24] 5210 	inc	dptr
   15A2 F0            [24] 5211 	movx	@dptr,a
                           5212 ;	main.c:46: if(value ==0 | clientnf.test_data==0) {
   15A3 EF            [12] 5213 	mov	a,r7
   15A4 B4 01 00      [24] 5214 	cjne	a,#0x01,00109$
   15A7                    5215 00109$:
   15A7 E4            [12] 5216 	clr	a
   15A8 33            [12] 5217 	rlc	a
   15A9 FF            [12] 5218 	mov	r7,a
   15AA 90 00 92      [24] 5219 	mov	dptr,#(_clientnf + 0x0003)
   15AD E0            [24] 5220 	movx	a,@dptr
   15AE FE            [12] 5221 	mov	r6,a
   15AF B4 01 00      [24] 5222 	cjne	a,#0x01,00110$
   15B2                    5223 00110$:
   15B2 E4            [12] 5224 	clr	a
   15B3 33            [12] 5225 	rlc	a
   15B4 FE            [12] 5226 	mov	r6,a
   15B5 4F            [12] 5227 	orl	a,r7
   15B6 60 08         [24] 5228 	jz	00102$
                           5229 ;	main.c:47: interrupt_control_ifp_disable();
   15B8 C2 A8         [12] 5230 	clr _IEN0_SB_IFP 
                           5231 ;	main.c:48: gpio_pin_val_clear(DIMMPIN);
   15BA 75 82 02      [24] 5232 	mov	dpl,#0x02
   15BD 02 08 1E      [24] 5233 	ljmp	_gpio_pin_val_clear
   15C0                    5234 00102$:
                           5235 ;	main.c:49: } else interrupt_control_ifp_enable();
   15C0 D2 A8         [12] 5236 	setb _IEN0_SB_IFP 
   15C2 22            [24] 5237 	ret
                           5238 ;------------------------------------------------------------
                           5239 ;Allocation info for local variables in function 'isr_ifp'
                           5240 ;------------------------------------------------------------
                           5241 ;	main.c:55: interrupt_isr_ifp()
                           5242 ;	-----------------------------------------
                           5243 ;	 function isr_ifp
                           5244 ;	-----------------------------------------
   15C3                    5245 _isr_ifp:
   15C3 C0 21         [24] 5246 	push	bits
   15C5 C0 E0         [24] 5247 	push	acc
   15C7 C0 F0         [24] 5248 	push	b
   15C9 C0 82         [24] 5249 	push	dpl
   15CB C0 83         [24] 5250 	push	dph
   15CD C0 07         [24] 5251 	push	(0+7)
   15CF C0 06         [24] 5252 	push	(0+6)
   15D1 C0 05         [24] 5253 	push	(0+5)
   15D3 C0 04         [24] 5254 	push	(0+4)
   15D5 C0 03         [24] 5255 	push	(0+3)
   15D7 C0 02         [24] 5256 	push	(0+2)
   15D9 C0 01         [24] 5257 	push	(0+1)
   15DB C0 00         [24] 5258 	push	(0+0)
   15DD C0 D0         [24] 5259 	push	psw
   15DF 75 D0 00      [24] 5260 	mov	psw,#0x00
                           5261 ;	main.c:57: timer1_stop();
   15E2 C2 8E         [12] 5262 	clr _TCON_SB_TR1 
                           5263 ;	main.c:58: if(clientnf.countPWM !=0) {
   15E4 90 00 90      [24] 5264 	mov	dptr,#(_clientnf + 0x0001)
   15E7 E0            [24] 5265 	movx	a,@dptr
   15E8 FE            [12] 5266 	mov	r6,a
   15E9 A3            [24] 5267 	inc	dptr
   15EA E0            [24] 5268 	movx	a,@dptr
   15EB FF            [12] 5269 	mov	r7,a
   15EC 4E            [12] 5270 	orl	a,r6
   15ED 60 0E         [24] 5271 	jz	00102$
                           5272 ;	main.c:61: timer1_set_t1_val(valuepwm);
   15EF 90 00 E2      [24] 5273 	mov	dptr,#_valuepwm
   15F2 E0            [24] 5274 	movx	a,@dptr
   15F3 F5 8B         [12] 5275 	mov	((_T1 >> 0) & 0xFF),a
   15F5 A3            [24] 5276 	inc	dptr
   15F6 E0            [24] 5277 	movx	a,@dptr
   15F7 F5 8D         [12] 5278 	mov	((_T1 >> 8) & 0xFF),a
                           5279 ;	main.c:62: timer1_run();
   15F9 D2 8E         [12] 5280 	setb _TCON_SB_TR1 
   15FB 80 06         [24] 5281 	sjmp	00103$
   15FD                    5282 00102$:
                           5283 ;	main.c:64: else gpio_pin_val_clear(DIMMPIN);
   15FD 75 82 02      [24] 5284 	mov	dpl,#0x02
   1600 12 08 1E      [24] 5285 	lcall	_gpio_pin_val_clear
   1603                    5286 00103$:
                           5287 ;	main.c:65: stdimm=1;
   1603 90 00 A2      [24] 5288 	mov	dptr,#_stdimm
   1606 74 01         [12] 5289 	mov	a,#0x01
   1608 F0            [24] 5290 	movx	@dptr,a
   1609 D0 D0         [24] 5291 	pop	psw
   160B D0 00         [24] 5292 	pop	(0+0)
   160D D0 01         [24] 5293 	pop	(0+1)
   160F D0 02         [24] 5294 	pop	(0+2)
   1611 D0 03         [24] 5295 	pop	(0+3)
   1613 D0 04         [24] 5296 	pop	(0+4)
   1615 D0 05         [24] 5297 	pop	(0+5)
   1617 D0 06         [24] 5298 	pop	(0+6)
   1619 D0 07         [24] 5299 	pop	(0+7)
   161B D0 83         [24] 5300 	pop	dph
   161D D0 82         [24] 5301 	pop	dpl
   161F D0 F0         [24] 5302 	pop	b
   1621 D0 E0         [24] 5303 	pop	acc
   1623 D0 21         [24] 5304 	pop	bits
   1625 32            [24] 5305 	reti
                           5306 ;------------------------------------------------------------
                           5307 ;Allocation info for local variables in function 'isr_t1'
                           5308 ;------------------------------------------------------------
                           5309 ;	main.c:69: interrupt_isr_t1() {
                           5310 ;	-----------------------------------------
                           5311 ;	 function isr_t1
                           5312 ;	-----------------------------------------
   1626                    5313 _isr_t1:
   1626 C0 21         [24] 5314 	push	bits
   1628 C0 E0         [24] 5315 	push	acc
   162A C0 F0         [24] 5316 	push	b
   162C C0 82         [24] 5317 	push	dpl
   162E C0 83         [24] 5318 	push	dph
   1630 C0 07         [24] 5319 	push	(0+7)
   1632 C0 06         [24] 5320 	push	(0+6)
   1634 C0 05         [24] 5321 	push	(0+5)
   1636 C0 04         [24] 5322 	push	(0+4)
   1638 C0 03         [24] 5323 	push	(0+3)
   163A C0 02         [24] 5324 	push	(0+2)
   163C C0 01         [24] 5325 	push	(0+1)
   163E C0 00         [24] 5326 	push	(0+0)
   1640 C0 D0         [24] 5327 	push	psw
   1642 75 D0 00      [24] 5328 	mov	psw,#0x00
                           5329 ;	main.c:71: if (stdimm) {
   1645 90 00 A2      [24] 5330 	mov	dptr,#_stdimm
   1648 E0            [24] 5331 	movx	a,@dptr
   1649 FF            [12] 5332 	mov	r7,a
   164A 60 13         [24] 5333 	jz	00102$
                           5334 ;	main.c:72: gpio_pin_val_set(DIMMPIN); 
   164C 75 82 02      [24] 5335 	mov	dpl,#0x02
   164F 12 08 89      [24] 5336 	lcall	_gpio_pin_val_set
                           5337 ;	main.c:73: timer1_set_t1_val(65535-100);
   1652 75 8B 9B      [24] 5338 	mov	((_T1 >> 0) & 0xFF),#0x9B
   1655 75 8D FF      [24] 5339 	mov	((_T1 >> 8) & 0xFF),#0xFF
                           5340 ;	main.c:74: stdimm=0;
   1658 90 00 A2      [24] 5341 	mov	dptr,#_stdimm
   165B E4            [12] 5342 	clr	a
   165C F0            [24] 5343 	movx	@dptr,a
   165D 80 06         [24] 5344 	sjmp	00104$
   165F                    5345 00102$:
                           5346 ;	main.c:76: gpio_pin_val_clear(DIMMPIN);
   165F 75 82 02      [24] 5347 	mov	dpl,#0x02
   1662 12 08 1E      [24] 5348 	lcall	_gpio_pin_val_clear
   1665                    5349 00104$:
   1665 D0 D0         [24] 5350 	pop	psw
   1667 D0 00         [24] 5351 	pop	(0+0)
   1669 D0 01         [24] 5352 	pop	(0+1)
   166B D0 02         [24] 5353 	pop	(0+2)
   166D D0 03         [24] 5354 	pop	(0+3)
   166F D0 04         [24] 5355 	pop	(0+4)
   1671 D0 05         [24] 5356 	pop	(0+5)
   1673 D0 06         [24] 5357 	pop	(0+6)
   1675 D0 07         [24] 5358 	pop	(0+7)
   1677 D0 83         [24] 5359 	pop	dph
   1679 D0 82         [24] 5360 	pop	dpl
   167B D0 F0         [24] 5361 	pop	b
   167D D0 E0         [24] 5362 	pop	acc
   167F D0 21         [24] 5363 	pop	bits
   1681 32            [24] 5364 	reti
                           5365 ;------------------------------------------------------------
                           5366 ;Allocation info for local variables in function 'dimmon'
                           5367 ;------------------------------------------------------------
                           5368 ;mode                      Allocated with name '_dimmon_mode_1_252'
                           5369 ;------------------------------------------------------------
                           5370 ;	main.c:79: void dimmon(uint8_t mode) // функция управлением вкл/выкл
                           5371 ;	-----------------------------------------
                           5372 ;	 function dimmon
                           5373 ;	-----------------------------------------
   1682                    5374 _dimmon:
   1682 E5 82         [12] 5375 	mov	a,dpl
                           5376 ;	main.c:81: if (mode) interrupt_control_ifp_enable();
   1684 90 00 A3      [24] 5377 	mov	dptr,#_dimmon_mode_1_252
   1687 F0            [24] 5378 	movx	@dptr,a
   1688 FF            [12] 5379 	mov	r7,a
   1689 60 04         [24] 5380 	jz	00102$
   168B D2 A8         [12] 5381 	setb _IEN0_SB_IFP 
   168D 80 0E         [24] 5382 	sjmp	00103$
   168F                    5383 00102$:
                           5384 ;	main.c:83: interrupt_control_ifp_disable();
   168F C2 A8         [12] 5385 	clr _IEN0_SB_IFP 
                           5386 ;	main.c:84: timer1_stop();
   1691 C2 8E         [12] 5387 	clr _TCON_SB_TR1 
                           5388 ;	main.c:85: gpio_pin_val_clear(DIMMPIN);
   1693 75 82 02      [24] 5389 	mov	dpl,#0x02
   1696 C0 07         [24] 5390 	push	ar7
   1698 12 08 1E      [24] 5391 	lcall	_gpio_pin_val_clear
   169B D0 07         [24] 5392 	pop	ar7
   169D                    5393 00103$:
                           5394 ;	main.c:87: clientnf.test_data=mode;
   169D 90 00 92      [24] 5395 	mov	dptr,#(_clientnf + 0x0003)
   16A0 EF            [12] 5396 	mov	a,r7
   16A1 F0            [24] 5397 	movx	@dptr,a
   16A2 22            [24] 5398 	ret
                           5399 ;------------------------------------------------------------
                           5400 ;Allocation info for local variables in function 'isr_rtc2'
                           5401 ;------------------------------------------------------------
                           5402 ;	main.c:94: interrupt_isr_rtc2() // счетчик ртс импульсов используя прерывание.
                           5403 ;	-----------------------------------------
                           5404 ;	 function isr_rtc2
                           5405 ;	-----------------------------------------
   16A3                    5406 _isr_rtc2:
   16A3 C0 E0         [24] 5407 	push	acc
   16A5 C0 82         [24] 5408 	push	dpl
   16A7 C0 83         [24] 5409 	push	dph
   16A9 C0 D0         [24] 5410 	push	psw
                           5411 ;	main.c:96: countrtc++;
   16AB 90 00 E4      [24] 5412 	mov	dptr,#_countrtc
   16AE E0            [24] 5413 	movx	a,@dptr
   16AF 24 01         [12] 5414 	add	a,#0x01
   16B1 F0            [24] 5415 	movx	@dptr,a
   16B2 A3            [24] 5416 	inc	dptr
   16B3 E0            [24] 5417 	movx	a,@dptr
   16B4 34 00         [12] 5418 	addc	a,#0x00
   16B6 F0            [24] 5419 	movx	@dptr,a
   16B7 A3            [24] 5420 	inc	dptr
   16B8 E0            [24] 5421 	movx	a,@dptr
   16B9 34 00         [12] 5422 	addc	a,#0x00
   16BB F0            [24] 5423 	movx	@dptr,a
   16BC A3            [24] 5424 	inc	dptr
   16BD E0            [24] 5425 	movx	a,@dptr
   16BE 34 00         [12] 5426 	addc	a,#0x00
   16C0 F0            [24] 5427 	movx	@dptr,a
   16C1 D0 D0         [24] 5428 	pop	psw
   16C3 D0 83         [24] 5429 	pop	dph
   16C5 D0 82         [24] 5430 	pop	dpl
   16C7 D0 E0         [24] 5431 	pop	acc
   16C9 32            [24] 5432 	reti
                           5433 ;	eliminated unneeded mov psw,# (no regs used in bank)
                           5434 ;	eliminated unneeded push/pop b
                           5435 ;------------------------------------------------------------
                           5436 ;Allocation info for local variables in function 'main'
                           5437 ;------------------------------------------------------------
                           5438 ;state                     Allocated with name '_main_state_1_256'
                           5439 ;count                     Allocated with name '_main_count_1_256'
                           5440 ;st                        Allocated with name '_main_st_1_256'
                           5441 ;countpause                Allocated with name '_main_countpause_1_256'
                           5442 ;rewers                    Allocated with name '_main_rewers_1_256'
                           5443 ;statesend                 Allocated with name '_main_statesend_1_256'
                           5444 ;radiosend                 Allocated with name '_main_radiosend_1_256'
                           5445 ;------------------------------------------------------------
                           5446 ;	main.c:101: void main()
                           5447 ;	-----------------------------------------
                           5448 ;	 function main
                           5449 ;	-----------------------------------------
   16CA                    5450 _main:
                           5451 ;	main.c:106: uint8_t st=0,countpause=0,rewers=0; // for key
   16CA 90 00 C4      [24] 5452 	mov	dptr,#_main_st_1_256
                           5453 ;	main.c:107: unsigned long statesend=0,radiosend=0;
   16CD E4            [12] 5454 	clr	a
   16CE F0            [24] 5455 	movx	@dptr,a
   16CF 90 00 C5      [24] 5456 	mov	dptr,#_main_countpause_1_256
   16D2 F0            [24] 5457 	movx	@dptr,a
   16D3 90 00 C6      [24] 5458 	mov	dptr,#_main_rewers_1_256
   16D6 F0            [24] 5459 	movx	@dptr,a
   16D7 90 00 C7      [24] 5460 	mov	dptr,#_main_statesend_1_256
   16DA F0            [24] 5461 	movx	@dptr,a
   16DB E4            [12] 5462 	clr	a
   16DC A3            [24] 5463 	inc	dptr
   16DD F0            [24] 5464 	movx	@dptr,a
   16DE E4            [12] 5465 	clr	a
   16DF A3            [24] 5466 	inc	dptr
   16E0 F0            [24] 5467 	movx	@dptr,a
   16E1 E4            [12] 5468 	clr	a
   16E2 A3            [24] 5469 	inc	dptr
   16E3 F0            [24] 5470 	movx	@dptr,a
   16E4 90 00 CB      [24] 5471 	mov	dptr,#_main_radiosend_1_256
   16E7 E4            [12] 5472 	clr	a
   16E8 F0            [24] 5473 	movx	@dptr,a
   16E9 E4            [12] 5474 	clr	a
   16EA A3            [24] 5475 	inc	dptr
   16EB F0            [24] 5476 	movx	@dptr,a
   16EC E4            [12] 5477 	clr	a
   16ED A3            [24] 5478 	inc	dptr
   16EE F0            [24] 5479 	movx	@dptr,a
   16EF E4            [12] 5480 	clr	a
   16F0 A3            [24] 5481 	inc	dptr
   16F1 F0            [24] 5482 	movx	@dptr,a
                           5483 ;	main.c:110: CLKLFCTRL=1; // 0 -внешний кварц на P0.1 и P0.0. 1 - внутренний генератор.
   16F2 75 AD 01      [24] 5484 	mov	_CLKLFCTRL,#0x01
                           5485 ;	main.c:111: rtc2_configure(RTC2_CONFIG_OPTION_COMPARE_MODE_0_RESET_AT_IRQ ,RTCDEC);
   16F5 90 00 7D      [24] 5486 	mov	dptr,#_rtc2_configure_PARM_2
   16F8 74 FF         [12] 5487 	mov	a,#0xFF
   16FA F0            [24] 5488 	movx	@dptr,a
   16FB 74 1F         [12] 5489 	mov	a,#0x1F
   16FD A3            [24] 5490 	inc	dptr
   16FE F0            [24] 5491 	movx	@dptr,a
   16FF 75 82 06      [24] 5492 	mov	dpl,#0x06
   1702 12 12 E6      [24] 5493 	lcall	_rtc2_configure
                           5494 ;	main.c:112: rtc2_run();
   1705 43 B3 01      [24] 5495 	orl	_RTC2CON,#0x01
                           5496 ;	main.c:113: pwr_clk_mgmt_wakeup_configure(PWR_CLK_MGMT_WAKEUP_CONFIG_OPTION_WAKEUP_ON_RTC2_TICK_IF_INT_ENABLED,0);
   1708 90 00 4E      [24] 5497 	mov	dptr,#_pwr_clk_mgmt_wakeup_configure_PARM_2
   170B E4            [12] 5498 	clr	a
   170C F0            [24] 5499 	movx	@dptr,a
   170D E4            [12] 5500 	clr	a
   170E A3            [24] 5501 	inc	dptr
   170F F0            [24] 5502 	movx	@dptr,a
   1710 75 82 00      [24] 5503 	mov	dpl,#0x00
   1713 12 0A 68      [24] 5504 	lcall	_pwr_clk_mgmt_wakeup_configure
                           5505 ;	main.c:114: interrupt_control_rtc2_enable();
   1716 D2 BD         [12] 5506 	setb _IEN1_SB_TICK 
                           5507 ;	main.c:117: interrupt_configure_ifp(INTERRUPT_IFP_INPUT_GPINT0,INTERRUPT_IFP_CONFIG_OPTION_ENABLE | INTERRUPT_IFP_CONFIG_OPTION_TYPE_FALLING_EDGE);
   1718 90 00 59      [24] 5508 	mov	dptr,#_interrupt_configure_ifp_PARM_2
   171B 74 81         [12] 5509 	mov	a,#0x81
   171D F0            [24] 5510 	movx	@dptr,a
   171E 75 82 08      [24] 5511 	mov	dpl,#0x08
   1721 12 0B 54      [24] 5512 	lcall	_interrupt_configure_ifp
                           5513 ;	main.c:118: interrupt_control_ifp_enable();
   1724 D2 A8         [12] 5514 	setb _IEN0_SB_IFP 
                           5515 ;	main.c:120: interrupt_control_t1_enable()	;
   1726 D2 AB         [12] 5516 	setb _IEN0_SB_T1 
                           5517 ;	main.c:121: timer1_configure(TIMER1_CONFIG_OPTION_MODE_1_16_BIT_CTR_TMR,0);
   1728 90 00 63      [24] 5518 	mov	dptr,#_timer1_configure_PARM_2
   172B E4            [12] 5519 	clr	a
   172C F0            [24] 5520 	movx	@dptr,a
   172D E4            [12] 5521 	clr	a
   172E A3            [24] 5522 	inc	dptr
   172F F0            [24] 5523 	movx	@dptr,a
   1730 75 82 10      [24] 5524 	mov	dpl,#0x10
   1733 12 0C 67      [24] 5525 	lcall	_timer1_configure
                           5526 ;	main.c:122: timer1_run();
   1736 D2 8E         [12] 5527 	setb _TCON_SB_TR1 
                           5528 ;	main.c:124: sti();
   1738 D2 AF         [12] 5529 	setb _IEN0_SB_GLOBAL 
                           5530 ;	main.c:126: gpio_pin_configure(BUTTONPIN,GPIO_PIN_CONFIG_OPTION_DIR_INPUT|GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_PULL_UP_RESISTOR); // для кнопки на вход и подтянуть резистором. 
   173A 90 00 38      [24] 5531 	mov	dptr,#_gpio_pin_configure_PARM_2
   173D 74 40         [12] 5532 	mov	a,#0x40
   173F F0            [24] 5533 	movx	@dptr,a
   1740 75 82 04      [24] 5534 	mov	dpl,#0x04
   1743 12 05 8F      [24] 5535 	lcall	_gpio_pin_configure
                           5536 ;	main.c:128: gpio_pin_configure(DIMMPIN,GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);
   1746 90 00 38      [24] 5537 	mov	dptr,#_gpio_pin_configure_PARM_2
   1749 74 01         [12] 5538 	mov	a,#0x01
   174B F0            [24] 5539 	movx	@dptr,a
   174C 75 82 02      [24] 5540 	mov	dpl,#0x02
   174F 12 05 8F      [24] 5541 	lcall	_gpio_pin_configure
                           5542 ;	main.c:131: gpio_pin_val_set(DIMMPIN);
   1752 75 82 02      [24] 5543 	mov	dpl,#0x02
   1755 12 08 89      [24] 5544 	lcall	_gpio_pin_val_set
                           5545 ;	main.c:132: delay_ms(500); 
   1758 90 01 F4      [24] 5546 	mov	dptr,#0x01F4
   175B 12 09 8C      [24] 5547 	lcall	_delay_ms
                           5548 ;	main.c:133: gpio_pin_val_clear(DIMMPIN);
   175E 75 82 02      [24] 5549 	mov	dpl,#0x02
   1761 12 08 1E      [24] 5550 	lcall	_gpio_pin_val_clear
                           5551 ;	main.c:134: delay_ms(500); 
   1764 90 01 F4      [24] 5552 	mov	dptr,#0x01F4
   1767 12 09 8C      [24] 5553 	lcall	_delay_ms
                           5554 ;	main.c:137: radiobegin(); //
   176A 12 13 16      [24] 5555 	lcall	_radiobegin
                           5556 ;	main.c:138: openAllPipe(); // открываем прием/передачу, назначаем адреса.
   176D 12 14 9A      [24] 5557 	lcall	_openAllPipe
                           5558 ;	main.c:140: setChannel(100);
   1770 75 82 64      [24] 5559 	mov	dpl,#0x64
   1773 12 13 3B      [24] 5560 	lcall	_setChannel
                           5561 ;	main.c:141: setDataRate(2); // 1 - 250кб , 2 - 1 мб , 3 -2 мб.
   1776 75 82 02      [24] 5562 	mov	dpl,#0x02
   1779 12 13 5D      [24] 5563 	lcall	_setDataRate
                           5564 ;	main.c:142: setAutoAck(false);
   177C 75 82 00      [24] 5565 	mov	dpl,#0x00
   177F 12 13 BF      [24] 5566 	lcall	_setAutoAck
                           5567 ;	main.c:143: setCRCLength(2); // 0 - crc off ,1 - 8bit ,2 - 16bit
   1782 75 82 02      [24] 5568 	mov	dpl,#0x02
   1785 12 13 F2      [24] 5569 	lcall	_setCRCLength
                           5570 ;	main.c:144: setPALevel(3) ; // мощность 0..3
   1788 75 82 03      [24] 5571 	mov	dpl,#0x03
   178B 12 14 5B      [24] 5572 	lcall	_setPALevel
                           5573 ;	main.c:147: clientnf.identifier=chclient;
   178E 90 00 8F      [24] 5574 	mov	dptr,#_clientnf
   1791 74 01         [12] 5575 	mov	a,#0x01
   1793 F0            [24] 5576 	movx	@dptr,a
                           5577 ;	main.c:148: clientnf.countPWM=10;
   1794 90 00 90      [24] 5578 	mov	dptr,#(_clientnf + 0x0001)
   1797 74 0A         [12] 5579 	mov	a,#0x0A
   1799 F0            [24] 5580 	movx	@dptr,a
   179A E4            [12] 5581 	clr	a
   179B A3            [24] 5582 	inc	dptr
   179C F0            [24] 5583 	movx	@dptr,a
                           5584 ;	main.c:156: while(1)
   179D                    5585 00147$:
                           5586 ;	main.c:163: if (countrtc-radiosend >=TIMESEND) {
   179D 90 00 CB      [24] 5587 	mov	dptr,#_main_radiosend_1_256
   17A0 E0            [24] 5588 	movx	a,@dptr
   17A1 FC            [12] 5589 	mov	r4,a
   17A2 A3            [24] 5590 	inc	dptr
   17A3 E0            [24] 5591 	movx	a,@dptr
   17A4 FD            [12] 5592 	mov	r5,a
   17A5 A3            [24] 5593 	inc	dptr
   17A6 E0            [24] 5594 	movx	a,@dptr
   17A7 FE            [12] 5595 	mov	r6,a
   17A8 A3            [24] 5596 	inc	dptr
   17A9 E0            [24] 5597 	movx	a,@dptr
   17AA FF            [12] 5598 	mov	r7,a
   17AB 90 00 E4      [24] 5599 	mov	dptr,#_countrtc
   17AE E0            [24] 5600 	movx	a,@dptr
   17AF F8            [12] 5601 	mov	r0,a
   17B0 A3            [24] 5602 	inc	dptr
   17B1 E0            [24] 5603 	movx	a,@dptr
   17B2 F9            [12] 5604 	mov	r1,a
   17B3 A3            [24] 5605 	inc	dptr
   17B4 E0            [24] 5606 	movx	a,@dptr
   17B5 FA            [12] 5607 	mov	r2,a
   17B6 A3            [24] 5608 	inc	dptr
   17B7 E0            [24] 5609 	movx	a,@dptr
   17B8 FB            [12] 5610 	mov	r3,a
   17B9 E8            [12] 5611 	mov	a,r0
   17BA C3            [12] 5612 	clr	c
   17BB 9C            [12] 5613 	subb	a,r4
   17BC FC            [12] 5614 	mov	r4,a
   17BD E9            [12] 5615 	mov	a,r1
   17BE 9D            [12] 5616 	subb	a,r5
   17BF FD            [12] 5617 	mov	r5,a
   17C0 EA            [12] 5618 	mov	a,r2
   17C1 9E            [12] 5619 	subb	a,r6
   17C2 FE            [12] 5620 	mov	r6,a
   17C3 EB            [12] 5621 	mov	a,r3
   17C4 9F            [12] 5622 	subb	a,r7
   17C5 FF            [12] 5623 	mov	r7,a
   17C6 C3            [12] 5624 	clr	c
   17C7 EC            [12] 5625 	mov	a,r4
   17C8 94 02         [12] 5626 	subb	a,#0x02
   17CA ED            [12] 5627 	mov	a,r5
   17CB 94 00         [12] 5628 	subb	a,#0x00
   17CD EE            [12] 5629 	mov	a,r6
   17CE 94 00         [12] 5630 	subb	a,#0x00
   17D0 EF            [12] 5631 	mov	a,r7
   17D1 94 00         [12] 5632 	subb	a,#0x00
   17D3 50 03         [24] 5633 	jnc	00216$
   17D5 02 19 3E      [24] 5634 	ljmp	00122$
   17D8                    5635 00216$:
                           5636 ;	main.c:165: rf_write_tx_payload((const uint8_t*)&clientnf, 32, true); //transmit received char over RF
   17D8 7E 8F         [12] 5637 	mov	r6,#_clientnf
   17DA 7F 00         [12] 5638 	mov	r7,#(_clientnf >> 8)
   17DC 7D 00         [12] 5639 	mov	r5,#0x00
   17DE 90 00 0E      [24] 5640 	mov	dptr,#_rf_write_tx_payload_PARM_2
   17E1 74 20         [12] 5641 	mov	a,#0x20
   17E3 F0            [24] 5642 	movx	@dptr,a
   17E4 E4            [12] 5643 	clr	a
   17E5 A3            [24] 5644 	inc	dptr
   17E6 F0            [24] 5645 	movx	@dptr,a
   17E7 90 00 10      [24] 5646 	mov	dptr,#_rf_write_tx_payload_PARM_3
   17EA 74 01         [12] 5647 	mov	a,#0x01
   17EC F0            [24] 5648 	movx	@dptr,a
   17ED 8E 82         [24] 5649 	mov	dpl,r6
   17EF 8F 83         [24] 5650 	mov	dph,r7
   17F1 8D F0         [24] 5651 	mov	b,r5
   17F3 12 01 CD      [24] 5652 	lcall	_rf_write_tx_payload
                           5653 ;	main.c:168: while(!(rf_irq_pin_active() && rf_irq_tx_ds_active()));
   17F6                    5654 00102$:
   17F6 30 C1 FD      [24] 5655 	jnb	_IRCON_SB_RFIRQ,00102$
   17F9 90 00 18      [24] 5656 	mov	dptr,#_rf_spi_execute_command_PARM_2
   17FC E4            [12] 5657 	clr	a
   17FD F0            [24] 5658 	movx	@dptr,a
   17FE E4            [12] 5659 	clr	a
   17FF A3            [24] 5660 	inc	dptr
   1800 F0            [24] 5661 	movx	@dptr,a
   1801 E4            [12] 5662 	clr	a
   1802 A3            [24] 5663 	inc	dptr
   1803 F0            [24] 5664 	movx	@dptr,a
   1804 90 00 1B      [24] 5665 	mov	dptr,#_rf_spi_execute_command_PARM_3
   1807 E4            [12] 5666 	clr	a
   1808 F0            [24] 5667 	movx	@dptr,a
   1809 E4            [12] 5668 	clr	a
   180A A3            [24] 5669 	inc	dptr
   180B F0            [24] 5670 	movx	@dptr,a
   180C 90 00 1D      [24] 5671 	mov	dptr,#_rf_spi_execute_command_PARM_4
   180F 74 01         [12] 5672 	mov	a,#0x01
   1811 F0            [24] 5673 	movx	@dptr,a
   1812 75 82 FF      [24] 5674 	mov	dpl,#0xFF
   1815 12 03 02      [24] 5675 	lcall	_rf_spi_execute_command
   1818 E5 82         [12] 5676 	mov	a,dpl
   181A 30 E5 D9      [24] 5677 	jnb	acc.5,00102$
                           5678 ;	main.c:170: rf_irq_clear_all(); //clear all interrupts in the 24L01
   181D 12 02 93      [24] 5679 	lcall	_rf_irq_clear_all
                           5680 ;	main.c:171: rf_set_as_rx(true); //change the device to an RX to get the character back from the other 24L01
   1820 75 82 01      [24] 5681 	mov	dpl,#0x01
   1823 12 02 33      [24] 5682 	lcall	_rf_set_as_rx
                           5683 ;	main.c:175: for(count = 0; count < 25000; count++)
   1826 7E 00         [12] 5684 	mov	r6,#0x00
   1828 7F 00         [12] 5685 	mov	r7,#0x00
   182A                    5686 00149$:
                           5687 ;	main.c:178: if((rf_irq_pin_active() && rf_irq_rx_dr_active()))
   182A 20 C1 03      [24] 5688 	jb	_IRCON_SB_RFIRQ,00219$
   182D 02 18 BE      [24] 5689 	ljmp	00109$
   1830                    5690 00219$:
   1830 90 00 18      [24] 5691 	mov	dptr,#_rf_spi_execute_command_PARM_2
   1833 E4            [12] 5692 	clr	a
   1834 F0            [24] 5693 	movx	@dptr,a
   1835 E4            [12] 5694 	clr	a
   1836 A3            [24] 5695 	inc	dptr
   1837 F0            [24] 5696 	movx	@dptr,a
   1838 E4            [12] 5697 	clr	a
   1839 A3            [24] 5698 	inc	dptr
   183A F0            [24] 5699 	movx	@dptr,a
   183B 90 00 1B      [24] 5700 	mov	dptr,#_rf_spi_execute_command_PARM_3
   183E E4            [12] 5701 	clr	a
   183F F0            [24] 5702 	movx	@dptr,a
   1840 E4            [12] 5703 	clr	a
   1841 A3            [24] 5704 	inc	dptr
   1842 F0            [24] 5705 	movx	@dptr,a
   1843 90 00 1D      [24] 5706 	mov	dptr,#_rf_spi_execute_command_PARM_4
   1846 74 01         [12] 5707 	mov	a,#0x01
   1848 F0            [24] 5708 	movx	@dptr,a
   1849 75 82 FF      [24] 5709 	mov	dpl,#0xFF
   184C C0 07         [24] 5710 	push	ar7
   184E C0 06         [24] 5711 	push	ar6
   1850 12 03 02      [24] 5712 	lcall	_rf_spi_execute_command
   1853 E5 82         [12] 5713 	mov	a,dpl
   1855 D0 06         [24] 5714 	pop	ar6
   1857 D0 07         [24] 5715 	pop	ar7
   1859 30 E6 62      [24] 5716 	jnb	acc.6,00109$
                           5717 ;	main.c:181: if (clientnf.count <= 2147483646) clientnf.count++;      /// счетчик передач для контроля качества канала
   185C 90 00 95      [24] 5718 	mov	dptr,#(_clientnf + 0x0006)
   185F E0            [24] 5719 	movx	a,@dptr
   1860 FA            [12] 5720 	mov	r2,a
   1861 A3            [24] 5721 	inc	dptr
   1862 E0            [24] 5722 	movx	a,@dptr
   1863 FB            [12] 5723 	mov	r3,a
   1864 A3            [24] 5724 	inc	dptr
   1865 E0            [24] 5725 	movx	a,@dptr
   1866 FC            [12] 5726 	mov	r4,a
   1867 A3            [24] 5727 	inc	dptr
   1868 E0            [24] 5728 	movx	a,@dptr
   1869 FD            [12] 5729 	mov	r5,a
   186A C3            [12] 5730 	clr	c
   186B 74 FE         [12] 5731 	mov	a,#0xFE
   186D 9A            [12] 5732 	subb	a,r2
   186E 74 FF         [12] 5733 	mov	a,#0xFF
   1870 9B            [12] 5734 	subb	a,r3
   1871 74 FF         [12] 5735 	mov	a,#0xFF
   1873 9C            [12] 5736 	subb	a,r4
   1874 74 FF         [12] 5737 	mov	a,#(0x7F ^ 0x80)
   1876 8D F0         [24] 5738 	mov	b,r5
   1878 63 F0 80      [24] 5739 	xrl	b,#0x80
   187B 95 F0         [12] 5740 	subb	a,b
   187D 40 1D         [24] 5741 	jc	00106$
   187F 0A            [12] 5742 	inc	r2
   1880 BA 00 09      [24] 5743 	cjne	r2,#0x00,00222$
   1883 0B            [12] 5744 	inc	r3
   1884 BB 00 05      [24] 5745 	cjne	r3,#0x00,00222$
   1887 0C            [12] 5746 	inc	r4
   1888 BC 00 01      [24] 5747 	cjne	r4,#0x00,00222$
   188B 0D            [12] 5748 	inc	r5
   188C                    5749 00222$:
   188C 90 00 95      [24] 5750 	mov	dptr,#(_clientnf + 0x0006)
   188F EA            [12] 5751 	mov	a,r2
   1890 F0            [24] 5752 	movx	@dptr,a
   1891 EB            [12] 5753 	mov	a,r3
   1892 A3            [24] 5754 	inc	dptr
   1893 F0            [24] 5755 	movx	@dptr,a
   1894 EC            [12] 5756 	mov	a,r4
   1895 A3            [24] 5757 	inc	dptr
   1896 F0            [24] 5758 	movx	@dptr,a
   1897 ED            [12] 5759 	mov	a,r5
   1898 A3            [24] 5760 	inc	dptr
   1899 F0            [24] 5761 	movx	@dptr,a
   189A 80 0E         [24] 5762 	sjmp	00107$
   189C                    5763 00106$:
                           5764 ;	main.c:182: else clientnf.count = 0;
   189C 90 00 95      [24] 5765 	mov	dptr,#(_clientnf + 0x0006)
   189F E4            [12] 5766 	clr	a
   18A0 F0            [24] 5767 	movx	@dptr,a
   18A1 E4            [12] 5768 	clr	a
   18A2 A3            [24] 5769 	inc	dptr
   18A3 F0            [24] 5770 	movx	@dptr,a
   18A4 E4            [12] 5771 	clr	a
   18A5 A3            [24] 5772 	inc	dptr
   18A6 F0            [24] 5773 	movx	@dptr,a
   18A7 E4            [12] 5774 	clr	a
   18A8 A3            [24] 5775 	inc	dptr
   18A9 F0            [24] 5776 	movx	@dptr,a
   18AA                    5777 00107$:
                           5778 ;	main.c:184: rf_read_rx_payload((const uint8_t*)&servernf, 32); //get the payload into data
   18AA 90 00 00      [24] 5779 	mov	dptr,#_rf_read_rx_payload_PARM_2
   18AD 74 20         [12] 5780 	mov	a,#0x20
   18AF F0            [24] 5781 	movx	@dptr,a
   18B0 E4            [12] 5782 	clr	a
   18B1 A3            [24] 5783 	inc	dptr
   18B2 F0            [24] 5784 	movx	@dptr,a
   18B3 90 00 A4      [24] 5785 	mov	dptr,#_servernf
   18B6 75 F0 00      [24] 5786 	mov	b,#0x00
   18B9 12 00 CD      [24] 5787 	lcall	_rf_read_rx_payload
                           5788 ;	main.c:185: break;
   18BC 80 2C         [24] 5789 	sjmp	00113$
   18BE                    5790 00109$:
                           5791 ;	main.c:192: if(count == 24999) clientnf.Error_Message++;
   18BE BE A7 18      [24] 5792 	cjne	r6,#0xA7,00150$
   18C1 BF 61 15      [24] 5793 	cjne	r7,#0x61,00150$
   18C4 90 00 93      [24] 5794 	mov	dptr,#(_clientnf + 0x0004)
   18C7 E0            [24] 5795 	movx	a,@dptr
   18C8 FC            [12] 5796 	mov	r4,a
   18C9 A3            [24] 5797 	inc	dptr
   18CA E0            [24] 5798 	movx	a,@dptr
   18CB FD            [12] 5799 	mov	r5,a
   18CC 0C            [12] 5800 	inc	r4
   18CD BC 00 01      [24] 5801 	cjne	r4,#0x00,00225$
   18D0 0D            [12] 5802 	inc	r5
   18D1                    5803 00225$:
   18D1 90 00 93      [24] 5804 	mov	dptr,#(_clientnf + 0x0004)
   18D4 EC            [12] 5805 	mov	a,r4
   18D5 F0            [24] 5806 	movx	@dptr,a
   18D6 ED            [12] 5807 	mov	a,r5
   18D7 A3            [24] 5808 	inc	dptr
   18D8 F0            [24] 5809 	movx	@dptr,a
   18D9                    5810 00150$:
                           5811 ;	main.c:175: for(count = 0; count < 25000; count++)
   18D9 0E            [12] 5812 	inc	r6
   18DA BE 00 01      [24] 5813 	cjne	r6,#0x00,00226$
   18DD 0F            [12] 5814 	inc	r7
   18DE                    5815 00226$:
   18DE C3            [12] 5816 	clr	c
   18DF EE            [12] 5817 	mov	a,r6
   18E0 94 A8         [12] 5818 	subb	a,#0xA8
   18E2 EF            [12] 5819 	mov	a,r7
   18E3 94 61         [12] 5820 	subb	a,#0x61
   18E5 50 03         [24] 5821 	jnc	00227$
   18E7 02 18 2A      [24] 5822 	ljmp	00149$
   18EA                    5823 00227$:
   18EA                    5824 00113$:
                           5825 ;	main.c:197: rf_irq_clear_all(); //clear interrupts again
   18EA 12 02 93      [24] 5826 	lcall	_rf_irq_clear_all
                           5827 ;	main.c:199: rf_set_as_tx(); //resume normal operation as a TX
   18ED 12 02 B8      [24] 5828 	lcall	_rf_set_as_tx
                           5829 ;	main.c:202: if (servernf[0]==chclient){	
   18F0 90 00 A4      [24] 5830 	mov	dptr,#_servernf
   18F3 E0            [24] 5831 	movx	a,@dptr
   18F4 FF            [12] 5832 	mov	r7,a
   18F5 BF 01 2A      [24] 5833 	cjne	r7,#0x01,00120$
                           5834 ;	main.c:205: if (servernf[1]==10) { // включение/выключение по радио
   18F8 90 00 A5      [24] 5835 	mov	dptr,#(_servernf + 0x0001)
   18FB E0            [24] 5836 	movx	a,@dptr
   18FC FF            [12] 5837 	mov	r7,a
   18FD BF 0A 0B      [24] 5838 	cjne	r7,#0x0A,00117$
                           5839 ;	main.c:206: dimmon(servernf[3]);
   1900 90 00 A7      [24] 5840 	mov	dptr,#(_servernf + 0x0003)
   1903 E0            [24] 5841 	movx	a,@dptr
   1904 F5 82         [12] 5842 	mov	dpl,a
   1906 12 16 82      [24] 5843 	lcall	_dimmon
   1909 80 17         [24] 5844 	sjmp	00120$
   190B                    5845 00117$:
                           5846 ;	main.c:209: if (servernf[1]==11) { // управление яркостью по радио
   190B BF 0B 14      [24] 5847 	cjne	r7,#0x0B,00120$
                           5848 ;	main.c:210: clientnf.countPWM=servernf[3];
   190E 90 00 A7      [24] 5849 	mov	dptr,#(_servernf + 0x0003)
   1911 E0            [24] 5850 	movx	a,@dptr
   1912 FF            [12] 5851 	mov	r7,a
   1913 7E 00         [12] 5852 	mov	r6,#0x00
   1915 90 00 90      [24] 5853 	mov	dptr,#(_clientnf + 0x0001)
   1918 EF            [12] 5854 	mov	a,r7
   1919 F0            [24] 5855 	movx	@dptr,a
   191A EE            [12] 5856 	mov	a,r6
   191B A3            [24] 5857 	inc	dptr
   191C F0            [24] 5858 	movx	@dptr,a
                           5859 ;	main.c:211: setdimmer(clientnf.countPWM);
   191D 8F 82         [24] 5860 	mov	dpl,r7
   191F 12 15 56      [24] 5861 	lcall	_setdimmer
   1922                    5862 00120$:
                           5863 ;	main.c:215: radiosend=countrtc;
   1922 90 00 E4      [24] 5864 	mov	dptr,#_countrtc
   1925 E0            [24] 5865 	movx	a,@dptr
   1926 FC            [12] 5866 	mov	r4,a
   1927 A3            [24] 5867 	inc	dptr
   1928 E0            [24] 5868 	movx	a,@dptr
   1929 FD            [12] 5869 	mov	r5,a
   192A A3            [24] 5870 	inc	dptr
   192B E0            [24] 5871 	movx	a,@dptr
   192C FE            [12] 5872 	mov	r6,a
   192D A3            [24] 5873 	inc	dptr
   192E E0            [24] 5874 	movx	a,@dptr
   192F FF            [12] 5875 	mov	r7,a
   1930 90 00 CB      [24] 5876 	mov	dptr,#_main_radiosend_1_256
   1933 EC            [12] 5877 	mov	a,r4
   1934 F0            [24] 5878 	movx	@dptr,a
   1935 ED            [12] 5879 	mov	a,r5
   1936 A3            [24] 5880 	inc	dptr
   1937 F0            [24] 5881 	movx	@dptr,a
   1938 EE            [12] 5882 	mov	a,r6
   1939 A3            [24] 5883 	inc	dptr
   193A F0            [24] 5884 	movx	@dptr,a
   193B EF            [12] 5885 	mov	a,r7
   193C A3            [24] 5886 	inc	dptr
   193D F0            [24] 5887 	movx	@dptr,a
   193E                    5888 00122$:
                           5889 ;	main.c:224: if (digitalRead(BUTTONPIN)==0){
   193E 75 82 04      [24] 5890 	mov	dpl,#0x04
   1941 12 07 8A      [24] 5891 	lcall	_gpio_pin_val_read
   1944 E5 82         [12] 5892 	mov	a,dpl
   1946 60 03         [24] 5893 	jz	00234$
   1948 02 1A 74      [24] 5894 	ljmp	00144$
   194B                    5895 00234$:
                           5896 ;	main.c:225: if (countrtc-statesend>=TIMEKEY) {
   194B 90 00 C7      [24] 5897 	mov	dptr,#_main_statesend_1_256
   194E E0            [24] 5898 	movx	a,@dptr
   194F FC            [12] 5899 	mov	r4,a
   1950 A3            [24] 5900 	inc	dptr
   1951 E0            [24] 5901 	movx	a,@dptr
   1952 FD            [12] 5902 	mov	r5,a
   1953 A3            [24] 5903 	inc	dptr
   1954 E0            [24] 5904 	movx	a,@dptr
   1955 FE            [12] 5905 	mov	r6,a
   1956 A3            [24] 5906 	inc	dptr
   1957 E0            [24] 5907 	movx	a,@dptr
   1958 FF            [12] 5908 	mov	r7,a
   1959 90 00 E4      [24] 5909 	mov	dptr,#_countrtc
   195C E0            [24] 5910 	movx	a,@dptr
   195D F8            [12] 5911 	mov	r0,a
   195E A3            [24] 5912 	inc	dptr
   195F E0            [24] 5913 	movx	a,@dptr
   1960 F9            [12] 5914 	mov	r1,a
   1961 A3            [24] 5915 	inc	dptr
   1962 E0            [24] 5916 	movx	a,@dptr
   1963 FA            [12] 5917 	mov	r2,a
   1964 A3            [24] 5918 	inc	dptr
   1965 E0            [24] 5919 	movx	a,@dptr
   1966 FB            [12] 5920 	mov	r3,a
   1967 E8            [12] 5921 	mov	a,r0
   1968 C3            [12] 5922 	clr	c
   1969 9C            [12] 5923 	subb	a,r4
   196A FC            [12] 5924 	mov	r4,a
   196B E9            [12] 5925 	mov	a,r1
   196C 9D            [12] 5926 	subb	a,r5
   196D FD            [12] 5927 	mov	r5,a
   196E EA            [12] 5928 	mov	a,r2
   196F 9E            [12] 5929 	subb	a,r6
   1970 FE            [12] 5930 	mov	r6,a
   1971 EB            [12] 5931 	mov	a,r3
   1972 9F            [12] 5932 	subb	a,r7
   1973 FF            [12] 5933 	mov	r7,a
   1974 C3            [12] 5934 	clr	c
   1975 EC            [12] 5935 	mov	a,r4
   1976 94 04         [12] 5936 	subb	a,#0x04
   1978 ED            [12] 5937 	mov	a,r5
   1979 94 00         [12] 5938 	subb	a,#0x00
   197B EE            [12] 5939 	mov	a,r6
   197C 94 00         [12] 5940 	subb	a,#0x00
   197E EF            [12] 5941 	mov	a,r7
   197F 94 00         [12] 5942 	subb	a,#0x00
   1981 50 03         [24] 5943 	jnc	00235$
   1983 02 17 9D      [24] 5944 	ljmp	00147$
   1986                    5945 00235$:
                           5946 ;	main.c:227: if (st){
   1986 90 00 C4      [24] 5947 	mov	dptr,#_main_st_1_256
   1989 E0            [24] 5948 	movx	a,@dptr
   198A FF            [12] 5949 	mov	r7,a
   198B 60 1F         [24] 5950 	jz	00139$
                           5951 ;	main.c:228: st=0;
   198D 90 00 C4      [24] 5952 	mov	dptr,#_main_st_1_256
   1990 E4            [12] 5953 	clr	a
   1991 F0            [24] 5954 	movx	@dptr,a
                           5955 ;	main.c:229: dat=!dat;
   1992 90 00 92      [24] 5956 	mov	dptr,#(_clientnf + 0x0003)
   1995 E0            [24] 5957 	movx	a,@dptr
   1996 FF            [12] 5958 	mov	r7,a
   1997 B4 01 00      [24] 5959 	cjne	a,#0x01,00237$
   199A                    5960 00237$:
   199A E4            [12] 5961 	clr	a
   199B 33            [12] 5962 	rlc	a
   199C 90 00 92      [24] 5963 	mov	dptr,#(_clientnf + 0x0003)
   199F F0            [24] 5964 	movx	@dptr,a
                           5965 ;	main.c:231: dimmon (dat);
   19A0 90 00 92      [24] 5966 	mov	dptr,#(_clientnf + 0x0003)
   19A3 E0            [24] 5967 	movx	a,@dptr
   19A4 F5 82         [12] 5968 	mov	dpl,a
   19A6 12 16 82      [24] 5969 	lcall	_dimmon
   19A9 02 1A 55      [24] 5970 	ljmp	00140$
   19AC                    5971 00139$:
                           5972 ;	main.c:234: if (countpause>=TIMELONGKEY){
   19AC 90 00 C5      [24] 5973 	mov	dptr,#_main_countpause_1_256
   19AF E0            [24] 5974 	movx	a,@dptr
   19B0 FF            [12] 5975 	mov	r7,a
   19B1 BF 03 00      [24] 5976 	cjne	r7,#0x03,00238$
   19B4                    5977 00238$:
   19B4 50 03         [24] 5978 	jnc	00239$
   19B6 02 1A 4F      [24] 5979 	ljmp	00136$
   19B9                    5980 00239$:
                           5981 ;	main.c:236: if (!dat) dimmon(1);
   19B9 90 00 92      [24] 5982 	mov	dptr,#(_clientnf + 0x0003)
   19BC E0            [24] 5983 	movx	a,@dptr
   19BD 70 09         [24] 5984 	jnz	00133$
   19BF 75 82 01      [24] 5985 	mov	dpl,#0x01
   19C2 12 16 82      [24] 5986 	lcall	_dimmon
   19C5 02 1A 55      [24] 5987 	ljmp	00140$
   19C8                    5988 00133$:
                           5989 ;	main.c:239: if(rewers) {
   19C8 90 00 C6      [24] 5990 	mov	dptr,#_main_rewers_1_256
   19CB E0            [24] 5991 	movx	a,@dptr
   19CC FE            [12] 5992 	mov	r6,a
   19CD 60 34         [24] 5993 	jz	00130$
                           5994 ;	main.c:240: if(dimm-stepdimm>=0)  dimm=dimm-stepdimm;
   19CF 90 00 90      [24] 5995 	mov	dptr,#(_clientnf + 0x0001)
   19D2 E0            [24] 5996 	movx	a,@dptr
   19D3 FD            [12] 5997 	mov	r5,a
   19D4 A3            [24] 5998 	inc	dptr
   19D5 E0            [24] 5999 	movx	a,@dptr
   19D6 FE            [12] 6000 	mov	r6,a
   19D7 ED            [12] 6001 	mov	a,r5
   19D8 24 F6         [12] 6002 	add	a,#0xF6
   19DA FD            [12] 6003 	mov	r5,a
   19DB EE            [12] 6004 	mov	a,r6
   19DC 34 FF         [12] 6005 	addc	a,#0xFF
   19DE FE            [12] 6006 	mov	r6,a
   19DF 20 E7 1A      [24] 6007 	jb	acc.7,00124$
   19E2 90 00 90      [24] 6008 	mov	dptr,#(_clientnf + 0x0001)
   19E5 E0            [24] 6009 	movx	a,@dptr
   19E6 FD            [12] 6010 	mov	r5,a
   19E7 A3            [24] 6011 	inc	dptr
   19E8 E0            [24] 6012 	movx	a,@dptr
   19E9 FE            [12] 6013 	mov	r6,a
   19EA ED            [12] 6014 	mov	a,r5
   19EB 24 F6         [12] 6015 	add	a,#0xF6
   19ED FD            [12] 6016 	mov	r5,a
   19EE EE            [12] 6017 	mov	a,r6
   19EF 34 FF         [12] 6018 	addc	a,#0xFF
   19F1 FE            [12] 6019 	mov	r6,a
   19F2 90 00 90      [24] 6020 	mov	dptr,#(_clientnf + 0x0001)
   19F5 ED            [12] 6021 	mov	a,r5
   19F6 F0            [24] 6022 	movx	@dptr,a
   19F7 EE            [12] 6023 	mov	a,r6
   19F8 A3            [24] 6024 	inc	dptr
   19F9 F0            [24] 6025 	movx	@dptr,a
   19FA 80 45         [24] 6026 	sjmp	00131$
   19FC                    6027 00124$:
                           6028 ;	main.c:241: else rewers=0;
   19FC 90 00 C6      [24] 6029 	mov	dptr,#_main_rewers_1_256
   19FF E4            [12] 6030 	clr	a
   1A00 F0            [24] 6031 	movx	@dptr,a
   1A01 80 3E         [24] 6032 	sjmp	00131$
   1A03                    6033 00130$:
                           6034 ;	main.c:243: if(dimm+stepdimm<=MAXSTEP) dimm=dimm+stepdimm;
   1A03 90 00 90      [24] 6035 	mov	dptr,#(_clientnf + 0x0001)
   1A06 E0            [24] 6036 	movx	a,@dptr
   1A07 FD            [12] 6037 	mov	r5,a
   1A08 A3            [24] 6038 	inc	dptr
   1A09 E0            [24] 6039 	movx	a,@dptr
   1A0A FE            [12] 6040 	mov	r6,a
   1A0B 74 0A         [12] 6041 	mov	a,#0x0A
   1A0D 2D            [12] 6042 	add	a,r5
   1A0E FD            [12] 6043 	mov	r5,a
   1A0F E4            [12] 6044 	clr	a
   1A10 3E            [12] 6045 	addc	a,r6
   1A11 FE            [12] 6046 	mov	r6,a
   1A12 C3            [12] 6047 	clr	c
   1A13 74 64         [12] 6048 	mov	a,#0x64
   1A15 9D            [12] 6049 	subb	a,r5
   1A16 E4            [12] 6050 	clr	a
   1A17 64 80         [12] 6051 	xrl	a,#0x80
   1A19 8E F0         [24] 6052 	mov	b,r6
   1A1B 63 F0 80      [24] 6053 	xrl	b,#0x80
   1A1E 95 F0         [12] 6054 	subb	a,b
   1A20 40 19         [24] 6055 	jc	00127$
   1A22 90 00 90      [24] 6056 	mov	dptr,#(_clientnf + 0x0001)
   1A25 E0            [24] 6057 	movx	a,@dptr
   1A26 FD            [12] 6058 	mov	r5,a
   1A27 A3            [24] 6059 	inc	dptr
   1A28 E0            [24] 6060 	movx	a,@dptr
   1A29 FE            [12] 6061 	mov	r6,a
   1A2A 74 0A         [12] 6062 	mov	a,#0x0A
   1A2C 2D            [12] 6063 	add	a,r5
   1A2D FD            [12] 6064 	mov	r5,a
   1A2E E4            [12] 6065 	clr	a
   1A2F 3E            [12] 6066 	addc	a,r6
   1A30 FE            [12] 6067 	mov	r6,a
   1A31 90 00 90      [24] 6068 	mov	dptr,#(_clientnf + 0x0001)
   1A34 ED            [12] 6069 	mov	a,r5
   1A35 F0            [24] 6070 	movx	@dptr,a
   1A36 EE            [12] 6071 	mov	a,r6
   1A37 A3            [24] 6072 	inc	dptr
   1A38 F0            [24] 6073 	movx	@dptr,a
   1A39 80 06         [24] 6074 	sjmp	00131$
   1A3B                    6075 00127$:
                           6076 ;	main.c:244: else rewers=1;
   1A3B 90 00 C6      [24] 6077 	mov	dptr,#_main_rewers_1_256
   1A3E 74 01         [12] 6078 	mov	a,#0x01
   1A40 F0            [24] 6079 	movx	@dptr,a
   1A41                    6080 00131$:
                           6081 ;	main.c:246: setdimmer(dimm);
   1A41 90 00 90      [24] 6082 	mov	dptr,#(_clientnf + 0x0001)
   1A44 E0            [24] 6083 	movx	a,@dptr
   1A45 FD            [12] 6084 	mov	r5,a
   1A46 A3            [24] 6085 	inc	dptr
   1A47 E0            [24] 6086 	movx	a,@dptr
   1A48 8D 82         [24] 6087 	mov	dpl,r5
   1A4A 12 15 56      [24] 6088 	lcall	_setdimmer
   1A4D 80 06         [24] 6089 	sjmp	00140$
   1A4F                    6090 00136$:
                           6091 ;	main.c:248: } else countpause++;
   1A4F 90 00 C5      [24] 6092 	mov	dptr,#_main_countpause_1_256
   1A52 EF            [12] 6093 	mov	a,r7
   1A53 04            [12] 6094 	inc	a
   1A54 F0            [24] 6095 	movx	@dptr,a
   1A55                    6096 00140$:
                           6097 ;	main.c:249: statesend=countrtc;
   1A55 90 00 E4      [24] 6098 	mov	dptr,#_countrtc
   1A58 E0            [24] 6099 	movx	a,@dptr
   1A59 FC            [12] 6100 	mov	r4,a
   1A5A A3            [24] 6101 	inc	dptr
   1A5B E0            [24] 6102 	movx	a,@dptr
   1A5C FD            [12] 6103 	mov	r5,a
   1A5D A3            [24] 6104 	inc	dptr
   1A5E E0            [24] 6105 	movx	a,@dptr
   1A5F FE            [12] 6106 	mov	r6,a
   1A60 A3            [24] 6107 	inc	dptr
   1A61 E0            [24] 6108 	movx	a,@dptr
   1A62 FF            [12] 6109 	mov	r7,a
   1A63 90 00 C7      [24] 6110 	mov	dptr,#_main_statesend_1_256
   1A66 EC            [12] 6111 	mov	a,r4
   1A67 F0            [24] 6112 	movx	@dptr,a
   1A68 ED            [12] 6113 	mov	a,r5
   1A69 A3            [24] 6114 	inc	dptr
   1A6A F0            [24] 6115 	movx	@dptr,a
   1A6B EE            [12] 6116 	mov	a,r6
   1A6C A3            [24] 6117 	inc	dptr
   1A6D F0            [24] 6118 	movx	@dptr,a
   1A6E EF            [12] 6119 	mov	a,r7
   1A6F A3            [24] 6120 	inc	dptr
   1A70 F0            [24] 6121 	movx	@dptr,a
   1A71 02 17 9D      [24] 6122 	ljmp	00147$
   1A74                    6123 00144$:
                           6124 ;	main.c:253: st=1;
   1A74 90 00 C4      [24] 6125 	mov	dptr,#_main_st_1_256
   1A77 74 01         [12] 6126 	mov	a,#0x01
   1A79 F0            [24] 6127 	movx	@dptr,a
                           6128 ;	main.c:254: countpause=0;
   1A7A 90 00 C5      [24] 6129 	mov	dptr,#_main_countpause_1_256
   1A7D E4            [12] 6130 	clr	a
   1A7E F0            [24] 6131 	movx	@dptr,a
                           6132 ;	main.c:255: rewers=!rewers;
   1A7F 90 00 C6      [24] 6133 	mov	dptr,#_main_rewers_1_256
   1A82 E0            [24] 6134 	movx	a,@dptr
   1A83 FF            [12] 6135 	mov	r7,a
   1A84 90 00 C6      [24] 6136 	mov	dptr,#_main_rewers_1_256
   1A87 B4 01 00      [24] 6137 	cjne	a,#0x01,00244$
   1A8A                    6138 00244$:
   1A8A E4            [12] 6139 	clr	a
   1A8B 33            [12] 6140 	rlc	a
   1A8C F0            [24] 6141 	movx	@dptr,a
   1A8D 02 17 9D      [24] 6142 	ljmp	00147$
                           6143 	.area CSEG    (CODE)
                           6144 	.area CONST   (CODE)
                           6145 	.area XINIT   (CODE)
   1C65                    6146 __xinit__valuepwm:
   1C65 00 00              6147 	.byte #0x00,#0x00	; 0
   1C67                    6148 __xinit__countrtc:
   1C67 00 00 00 00        6149 	.byte #0x00,#0x00,#0x00,#0x00	; 0
                           6150 	.area CABS    (ABS,CODE)
