                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Thu Jun 12 15:57:40 2014
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _dimmon
                             14 	.globl _isr_t1
                             15 	.globl _isr_ifp
                             16 	.globl _openAllPipe
                             17 	.globl _setPALevel
                             18 	.globl _setCRCLength
                             19 	.globl _setAutoAck
                             20 	.globl _setDataRate
                             21 	.globl _setChannel
                             22 	.globl _radiobegin
                             23 	.globl _watchdog_start_and_set_timeout_in_ms
                             24 	.globl _watchdog_set_wdsv_count
                             25 	.globl _gpio_pin_val_write
                             26 	.globl _gpio_pin_val_set
                             27 	.globl _gpio_pin_val_clear
                             28 	.globl _gpio_pin_val_read
                             29 	.globl _FSR_SB_ENDBG
                             30 	.globl _FSR_SB_STP
                             31 	.globl _FSR_SB_WEN
                             32 	.globl _FSR_SB_RDYN
                             33 	.globl _FSR_SB_INFEN
                             34 	.globl _FSR_SB_RDISMB
                             35 	.globl _RFCON_SB_RFCKEN
                             36 	.globl _RFCON_SB_RFCSN
                             37 	.globl _RFCON_SB_RFCE
                             38 	.globl _ADCON_SB_BD
                             39 	.globl _PSW_SB_P
                             40 	.globl _PSW_SB_F1
                             41 	.globl _PSW_SB_OV
                             42 	.globl _PSW_SB_RS0
                             43 	.globl _PSW_SB_RS1
                             44 	.globl _PSW_SB_F0
                             45 	.globl _PSW_SB_AC
                             46 	.globl _PSW_SB_CY
                             47 	.globl _T2CON_SB_T2PS
                             48 	.globl _T2CON_SB_I3FR
                             49 	.globl _T2CON_SB_I2FR
                             50 	.globl _T2CON_SB_T2R1
                             51 	.globl _T2CON_SB_T2R0
                             52 	.globl _T2CON_SB_T2CM
                             53 	.globl _T2CON_SB_T2I1
                             54 	.globl _T2CON_SB_T2I0
                             55 	.globl _IRCON_SB_EXF2
                             56 	.globl _IRCON_SB_TF2
                             57 	.globl _IRCON_SB_TICK
                             58 	.globl _IRCON_SB_MISCIRQ
                             59 	.globl _IRCON_SB_WUOPIRQ
                             60 	.globl _IRCON_SB_SPI_2WIRE
                             61 	.globl _IRCON_SB_RFIRQ
                             62 	.globl _IRCON_SB_RFRDY
                             63 	.globl _IEN1_SB_T2EXTRLD
                             64 	.globl _IEN1_SB_TICK
                             65 	.globl _IEN1_SB_MISCIRQ
                             66 	.globl _IEN1_SB_WUOPIRQ
                             67 	.globl _IEN1_SB_SPI_2WIRE
                             68 	.globl _IEN1_SB_RFIRQ
                             69 	.globl _IEN1_SB_RFRDY
                             70 	.globl _P3_SB_D7
                             71 	.globl _P3_SB_D6
                             72 	.globl _P3_SB_D5
                             73 	.globl _P3_SB_D4
                             74 	.globl _P3_SB_D3
                             75 	.globl _P3_SB_D2
                             76 	.globl _P3_SB_D1
                             77 	.globl _P3_SB_D0
                             78 	.globl _IEN0_SB_GLOBAL
                             79 	.globl _IEN0_SB_T2
                             80 	.globl _IEN0_SB_UART
                             81 	.globl _IEN0_SB_T1
                             82 	.globl _IEN0_SB_POFIRQ
                             83 	.globl _IEN0_SB_T0
                             84 	.globl _IEN0_SB_IFP
                             85 	.globl _P2_SB_D7
                             86 	.globl _P2_SB_D6
                             87 	.globl _P2_SB_D5
                             88 	.globl _P2_SB_D4
                             89 	.globl _P2_SB_D3
                             90 	.globl _P2_SB_D2
                             91 	.globl _P2_SB_D1
                             92 	.globl _P2_SB_D0
                             93 	.globl _S0CON_SB_SM0
                             94 	.globl _S0CON_SB_SM1
                             95 	.globl _S0CON_SB_SM20
                             96 	.globl _S0CON_SB_REN0
                             97 	.globl _S0CON_SB_TB80
                             98 	.globl _S0CON_SB_RB80
                             99 	.globl _S0CON_SB_TI0
                            100 	.globl _S0CON_SB_RI0
                            101 	.globl _P1_SB_D7
                            102 	.globl _P1_SB_D6
                            103 	.globl _P1_SB_D5
                            104 	.globl _P1_SB_D4
                            105 	.globl _P1_SB_D3
                            106 	.globl _P1_SB_D2
                            107 	.globl _P1_SB_D1
                            108 	.globl _P1_SB_D0
                            109 	.globl _TCON_SB_TF1
                            110 	.globl _TCON_SB_TR1
                            111 	.globl _TCON_SB_TF0
                            112 	.globl _TCON_SB_TR0
                            113 	.globl _TCON_SB_IE1
                            114 	.globl _TCON_SB_IT1
                            115 	.globl _TCON_SB_IE0
                            116 	.globl _TCON_SB_IT0
                            117 	.globl _P0_SB_D7
                            118 	.globl _P0_SB_D6
                            119 	.globl _P0_SB_D5
                            120 	.globl _P0_SB_D4
                            121 	.globl _P0_SB_D3
                            122 	.globl _P0_SB_D2
                            123 	.globl _P0_SB_D1
                            124 	.globl _P0_SB_D0
                            125 	.globl _ADCDAT
                            126 	.globl _S0REL
                            127 	.globl _T2
                            128 	.globl _T1
                            129 	.globl _T0
                            130 	.globl _CRC
                            131 	.globl _CC3
                            132 	.globl _CC2
                            133 	.globl _CC1
                            134 	.globl _SPIMDAT
                            135 	.globl _SPIMSTAT
                            136 	.globl _SPIMCON1
                            137 	.globl _SPIMCON0
                            138 	.globl _FCR
                            139 	.globl _FPCR
                            140 	.globl _FSR
                            141 	.globl _B
                            142 	.globl _ARCON
                            143 	.globl _MD5
                            144 	.globl _MD4
                            145 	.globl _MD3
                            146 	.globl _MD2
                            147 	.globl _MD1
                            148 	.globl _MD0
                            149 	.globl _RFCON
                            150 	.globl _SPIRDAT
                            151 	.globl _SPIRSTAT
                            152 	.globl _SPIRCON1
                            153 	.globl _SPIRCON0
                            154 	.globl _W2CON0
                            155 	.globl _W2CON1
                            156 	.globl _ACC
                            157 	.globl _CCPDATO
                            158 	.globl _CCPDATIB
                            159 	.globl _CCPDATIA
                            160 	.globl _POFCON
                            161 	.globl _COMPCON
                            162 	.globl _W2DAT
                            163 	.globl _W2SADR
                            164 	.globl _ADCON
                            165 	.globl _RNGDAT
                            166 	.globl _RNGCTL
                            167 	.globl _ADCDATL
                            168 	.globl _ADCDATH
                            169 	.globl _ADCCON1
                            170 	.globl _ADCCON2
                            171 	.globl _ADCCON3
                            172 	.globl _PSW
                            173 	.globl _WUOPC0
                            174 	.globl _WUOPC1
                            175 	.globl _TH2
                            176 	.globl _TL2
                            177 	.globl _CRCH
                            178 	.globl _CRCL
                            179 	.globl __XPAGE
                            180 	.globl _MPAGE
                            181 	.globl _T2CON
                            182 	.globl _CCH3
                            183 	.globl _CCL3
                            184 	.globl _CCH2
                            185 	.globl _CCL2
                            186 	.globl _CCH1
                            187 	.globl _CCL1
                            188 	.globl _CCEN
                            189 	.globl _IRCON
                            190 	.globl _SPISDAT
                            191 	.globl _SPISSTAT
                            192 	.globl _SPISCON1
                            193 	.globl _SPISCON0
                            194 	.globl _S0RELH
                            195 	.globl _IP1
                            196 	.globl _IEN1
                            197 	.globl _SPISRDSZ
                            198 	.globl _RTC2CPT00
                            199 	.globl _RTC2CMP1
                            200 	.globl _RTC2CMP0
                            201 	.globl _RTC2CON
                            202 	.globl _PWMCON
                            203 	.globl _RSTREAS
                            204 	.globl _P3
                            205 	.globl _WDSV
                            206 	.globl _OPMCON
                            207 	.globl _CLKLFCTRL
                            208 	.globl _RTC2CPT10
                            209 	.globl _RTC2CPT01
                            210 	.globl _S0RELL
                            211 	.globl _IP0
                            212 	.globl _IEN0
                            213 	.globl _MEMCON
                            214 	.globl _INTEXP
                            215 	.globl _WUCON
                            216 	.globl _PWRDWN
                            217 	.globl _CLKCTRL
                            218 	.globl _PWMDC1
                            219 	.globl _PWMDC0
                            220 	.globl _P2
                            221 	.globl _P1CON
                            222 	.globl _P0CON
                            223 	.globl _S0BUF
                            224 	.globl _S0CON
                            225 	.globl _P2CON
                            226 	.globl _P3DIR
                            227 	.globl _P2DIR
                            228 	.globl _P1DIR
                            229 	.globl _P0DIR
                            230 	.globl _DPS
                            231 	.globl _P1
                            232 	.globl _P3CON
                            233 	.globl _TH1
                            234 	.globl _TH0
                            235 	.globl _TL1
                            236 	.globl _TL0
                            237 	.globl _TMOD
                            238 	.globl _TCON
                            239 	.globl _PCON
                            240 	.globl _DPH1
                            241 	.globl _DPL1
                            242 	.globl _DPH
                            243 	.globl _DPL
                            244 	.globl _SP
                            245 	.globl _P0
                            246 	.globl _servernf
                            247 	.globl _stdimm
                            248 	.globl _clientnf
                            249 	.globl _uart_configure_auto_baud_calc_PARM_2
                            250 	.globl _uart_calc_th1_value_PARM_2
                            251 	.globl _uart_calc_s0rel_value_PARM_2
                            252 	.globl _uart_calc_actual_baud_rate_from_th1_PARM_2
                            253 	.globl _uart_calc_actual_baud_rate_from_s0rel_PARM_2
                            254 	.globl _uart_configure_manual_baud_calc_PARM_2
                            255 	.globl _timer1_configure_PARM_2
                            256 	.globl _timer0_configure_PARM_2
                            257 	.globl _interrupt_configure_ifp_PARM_2
                            258 	.globl _pwm_start_PARM_2
                            259 	.globl _gpio_pin_val_write_PARM_2
                            260 	.globl _gpio_pin_configure_PARM_2
                            261 	.globl _rf_set_rx_addr_PARM_3
                            262 	.globl _rf_set_rx_addr_PARM_2
                            263 	.globl _rf_read_register_PARM_3
                            264 	.globl _rf_read_register_PARM_2
                            265 	.globl _rf_power_up_param_PARM_2
                            266 	.globl _rf_spi_send_read_PARM_3
                            267 	.globl _rf_spi_send_read_PARM_2
                            268 	.globl _rf_spi_execute_command_PARM_4
                            269 	.globl _rf_spi_execute_command_PARM_3
                            270 	.globl _rf_spi_execute_command_PARM_2
                            271 	.globl _rf_write_tx_payload_PARM_3
                            272 	.globl _rf_write_tx_payload_PARM_2
                            273 	.globl _rf_write_register_PARM_3
                            274 	.globl _rf_write_register_PARM_2
                            275 	.globl _rf_configure_debug_lite_PARM_2
                            276 	.globl _rf_read_rx_payload_PARM_2
                            277 	.globl _rf_read_rx_payload
                            278 	.globl _rf_configure_debug_lite
                            279 	.globl _rf_write_register
                            280 	.globl _rf_spi_configure_enable
                            281 	.globl _rf_write_tx_payload
                            282 	.globl _rf_transmit
                            283 	.globl _rf_set_as_rx
                            284 	.globl _rf_irq_clear_all
                            285 	.globl _rf_set_as_tx
                            286 	.globl _rf_spi_execute_command
                            287 	.globl _rf_spi_send_read
                            288 	.globl _rf_power_up_param
                            289 	.globl _rf_read_register
                            290 	.globl _rf_spi_send_read_byte
                            291 	.globl _rf_set_rx_addr
                            292 	.globl _rf_power_down
                            293 	.globl _rf_power_up
                            294 	.globl _gpio_pin_configure
                            295 	.globl _delay_us
                            296 	.globl _delay_s
                            297 	.globl _delay_ms
                            298 	.globl _pwm_configure
                            299 	.globl _pwm_start
                            300 	.globl _pwr_clk_mgmt_clklf_configure
                            301 	.globl _pwr_clk_mgmt_get_cclk_freq_in_hz
                            302 	.globl _interrupt_configure_ifp
                            303 	.globl _adc_configure
                            304 	.globl _adc_set_input_channel
                            305 	.globl _adc_start_single_conversion
                            306 	.globl _adc_start_single_conversion_get_value
                            307 	.globl _timer0_configure
                            308 	.globl _timer1_configure
                            309 	.globl _uart_configure_manual_baud_calc
                            310 	.globl _uart_calc_actual_baud_rate_from_s0rel
                            311 	.globl _uart_calc_actual_baud_rate_from_th1
                            312 	.globl _uart_calc_s0rel_value
                            313 	.globl _uart_calc_th1_value
                            314 	.globl _uart_configure_auto_baud_calc
                            315 ;--------------------------------------------------------
                            316 ; special function registers
                            317 ;--------------------------------------------------------
                            318 	.area RSEG    (ABS,DATA)
   0000                     319 	.org 0x0000
                     0080   320 _P0	=	0x0080
                     0081   321 _SP	=	0x0081
                     0082   322 _DPL	=	0x0082
                     0083   323 _DPH	=	0x0083
                     0084   324 _DPL1	=	0x0084
                     0085   325 _DPH1	=	0x0085
                     0087   326 _PCON	=	0x0087
                     0088   327 _TCON	=	0x0088
                     0089   328 _TMOD	=	0x0089
                     008A   329 _TL0	=	0x008a
                     008B   330 _TL1	=	0x008b
                     008C   331 _TH0	=	0x008c
                     008D   332 _TH1	=	0x008d
                     008F   333 _P3CON	=	0x008f
                     0090   334 _P1	=	0x0090
                     0092   335 _DPS	=	0x0092
                     0093   336 _P0DIR	=	0x0093
                     0094   337 _P1DIR	=	0x0094
                     0095   338 _P2DIR	=	0x0095
                     0096   339 _P3DIR	=	0x0096
                     0097   340 _P2CON	=	0x0097
                     0098   341 _S0CON	=	0x0098
                     0099   342 _S0BUF	=	0x0099
                     009E   343 _P0CON	=	0x009e
                     009F   344 _P1CON	=	0x009f
                     00A0   345 _P2	=	0x00a0
                     00A1   346 _PWMDC0	=	0x00a1
                     00A2   347 _PWMDC1	=	0x00a2
                     00A3   348 _CLKCTRL	=	0x00a3
                     00A4   349 _PWRDWN	=	0x00a4
                     00A5   350 _WUCON	=	0x00a5
                     00A6   351 _INTEXP	=	0x00a6
                     00A7   352 _MEMCON	=	0x00a7
                     00A8   353 _IEN0	=	0x00a8
                     00A9   354 _IP0	=	0x00a9
                     00AA   355 _S0RELL	=	0x00aa
                     00AB   356 _RTC2CPT01	=	0x00ab
                     00AC   357 _RTC2CPT10	=	0x00ac
                     00AD   358 _CLKLFCTRL	=	0x00ad
                     00AE   359 _OPMCON	=	0x00ae
                     00AF   360 _WDSV	=	0x00af
                     00B0   361 _P3	=	0x00b0
                     00B1   362 _RSTREAS	=	0x00b1
                     00B2   363 _PWMCON	=	0x00b2
                     00B3   364 _RTC2CON	=	0x00b3
                     00B4   365 _RTC2CMP0	=	0x00b4
                     00B5   366 _RTC2CMP1	=	0x00b5
                     00B6   367 _RTC2CPT00	=	0x00b6
                     00B7   368 _SPISRDSZ	=	0x00b7
                     00B8   369 _IEN1	=	0x00b8
                     00B9   370 _IP1	=	0x00b9
                     00BA   371 _S0RELH	=	0x00ba
                     00BC   372 _SPISCON0	=	0x00bc
                     00BD   373 _SPISCON1	=	0x00bd
                     00BE   374 _SPISSTAT	=	0x00be
                     00BF   375 _SPISDAT	=	0x00bf
                     00C0   376 _IRCON	=	0x00c0
                     00C1   377 _CCEN	=	0x00c1
                     00C2   378 _CCL1	=	0x00c2
                     00C3   379 _CCH1	=	0x00c3
                     00C4   380 _CCL2	=	0x00c4
                     00C5   381 _CCH2	=	0x00c5
                     00C6   382 _CCL3	=	0x00c6
                     00C7   383 _CCH3	=	0x00c7
                     00C8   384 _T2CON	=	0x00c8
                     00C9   385 _MPAGE	=	0x00c9
                     00C9   386 __XPAGE	=	0x00c9
                     00CA   387 _CRCL	=	0x00ca
                     00CB   388 _CRCH	=	0x00cb
                     00CC   389 _TL2	=	0x00cc
                     00CD   390 _TH2	=	0x00cd
                     00CE   391 _WUOPC1	=	0x00ce
                     00CF   392 _WUOPC0	=	0x00cf
                     00D0   393 _PSW	=	0x00d0
                     00D1   394 _ADCCON3	=	0x00d1
                     00D2   395 _ADCCON2	=	0x00d2
                     00D3   396 _ADCCON1	=	0x00d3
                     00D4   397 _ADCDATH	=	0x00d4
                     00D5   398 _ADCDATL	=	0x00d5
                     00D6   399 _RNGCTL	=	0x00d6
                     00D7   400 _RNGDAT	=	0x00d7
                     00D8   401 _ADCON	=	0x00d8
                     00D9   402 _W2SADR	=	0x00d9
                     00DA   403 _W2DAT	=	0x00da
                     00DB   404 _COMPCON	=	0x00db
                     00DC   405 _POFCON	=	0x00dc
                     00DD   406 _CCPDATIA	=	0x00dd
                     00DE   407 _CCPDATIB	=	0x00de
                     00DF   408 _CCPDATO	=	0x00df
                     00E0   409 _ACC	=	0x00e0
                     00E1   410 _W2CON1	=	0x00e1
                     00E2   411 _W2CON0	=	0x00e2
                     00E4   412 _SPIRCON0	=	0x00e4
                     00E5   413 _SPIRCON1	=	0x00e5
                     00E6   414 _SPIRSTAT	=	0x00e6
                     00E7   415 _SPIRDAT	=	0x00e7
                     00E8   416 _RFCON	=	0x00e8
                     00E9   417 _MD0	=	0x00e9
                     00EA   418 _MD1	=	0x00ea
                     00EB   419 _MD2	=	0x00eb
                     00EC   420 _MD3	=	0x00ec
                     00ED   421 _MD4	=	0x00ed
                     00EE   422 _MD5	=	0x00ee
                     00EF   423 _ARCON	=	0x00ef
                     00F0   424 _B	=	0x00f0
                     00F8   425 _FSR	=	0x00f8
                     00F9   426 _FPCR	=	0x00f9
                     00FA   427 _FCR	=	0x00fa
                     00FC   428 _SPIMCON0	=	0x00fc
                     00FD   429 _SPIMCON1	=	0x00fd
                     00FE   430 _SPIMSTAT	=	0x00fe
                     00FF   431 _SPIMDAT	=	0x00ff
                     C3C2   432 _CC1	=	0xc3c2
                     C5C4   433 _CC2	=	0xc5c4
                     C7C6   434 _CC3	=	0xc7c6
                     CBCA   435 _CRC	=	0xcbca
                     8C8A   436 _T0	=	0x8c8a
                     8D8B   437 _T1	=	0x8d8b
                     CDCC   438 _T2	=	0xcdcc
                     BAAA   439 _S0REL	=	0xbaaa
                     D4D5   440 _ADCDAT	=	0xd4d5
                            441 ;--------------------------------------------------------
                            442 ; special function bits
                            443 ;--------------------------------------------------------
                            444 	.area RSEG    (ABS,DATA)
   0000                     445 	.org 0x0000
                     0080   446 _P0_SB_D0	=	0x0080
                     0081   447 _P0_SB_D1	=	0x0081
                     0082   448 _P0_SB_D2	=	0x0082
                     0083   449 _P0_SB_D3	=	0x0083
                     0084   450 _P0_SB_D4	=	0x0084
                     0085   451 _P0_SB_D5	=	0x0085
                     0086   452 _P0_SB_D6	=	0x0086
                     0087   453 _P0_SB_D7	=	0x0087
                     0088   454 _TCON_SB_IT0	=	0x0088
                     0089   455 _TCON_SB_IE0	=	0x0089
                     008A   456 _TCON_SB_IT1	=	0x008a
                     008B   457 _TCON_SB_IE1	=	0x008b
                     008C   458 _TCON_SB_TR0	=	0x008c
                     008D   459 _TCON_SB_TF0	=	0x008d
                     008E   460 _TCON_SB_TR1	=	0x008e
                     008F   461 _TCON_SB_TF1	=	0x008f
                     0090   462 _P1_SB_D0	=	0x0090
                     0091   463 _P1_SB_D1	=	0x0091
                     0092   464 _P1_SB_D2	=	0x0092
                     0093   465 _P1_SB_D3	=	0x0093
                     0094   466 _P1_SB_D4	=	0x0094
                     0095   467 _P1_SB_D5	=	0x0095
                     0096   468 _P1_SB_D6	=	0x0096
                     0097   469 _P1_SB_D7	=	0x0097
                     0098   470 _S0CON_SB_RI0	=	0x0098
                     0099   471 _S0CON_SB_TI0	=	0x0099
                     009A   472 _S0CON_SB_RB80	=	0x009a
                     009B   473 _S0CON_SB_TB80	=	0x009b
                     009C   474 _S0CON_SB_REN0	=	0x009c
                     009D   475 _S0CON_SB_SM20	=	0x009d
                     009E   476 _S0CON_SB_SM1	=	0x009e
                     009F   477 _S0CON_SB_SM0	=	0x009f
                     00A0   478 _P2_SB_D0	=	0x00a0
                     00A1   479 _P2_SB_D1	=	0x00a1
                     00A2   480 _P2_SB_D2	=	0x00a2
                     00A3   481 _P2_SB_D3	=	0x00a3
                     00A4   482 _P2_SB_D4	=	0x00a4
                     00A5   483 _P2_SB_D5	=	0x00a5
                     00A6   484 _P2_SB_D6	=	0x00a6
                     00A7   485 _P2_SB_D7	=	0x00a7
                     00A8   486 _IEN0_SB_IFP	=	0x00a8
                     00A9   487 _IEN0_SB_T0	=	0x00a9
                     00AA   488 _IEN0_SB_POFIRQ	=	0x00aa
                     00AB   489 _IEN0_SB_T1	=	0x00ab
                     00AC   490 _IEN0_SB_UART	=	0x00ac
                     00AD   491 _IEN0_SB_T2	=	0x00ad
                     00AF   492 _IEN0_SB_GLOBAL	=	0x00af
                     00B0   493 _P3_SB_D0	=	0x00b0
                     00B1   494 _P3_SB_D1	=	0x00b1
                     00B2   495 _P3_SB_D2	=	0x00b2
                     00B3   496 _P3_SB_D3	=	0x00b3
                     00B4   497 _P3_SB_D4	=	0x00b4
                     00B5   498 _P3_SB_D5	=	0x00b5
                     00B6   499 _P3_SB_D6	=	0x00b6
                     00B7   500 _P3_SB_D7	=	0x00b7
                     00B8   501 _IEN1_SB_RFRDY	=	0x00b8
                     00B9   502 _IEN1_SB_RFIRQ	=	0x00b9
                     00BA   503 _IEN1_SB_SPI_2WIRE	=	0x00ba
                     00BB   504 _IEN1_SB_WUOPIRQ	=	0x00bb
                     00BC   505 _IEN1_SB_MISCIRQ	=	0x00bc
                     00BD   506 _IEN1_SB_TICK	=	0x00bd
                     00BF   507 _IEN1_SB_T2EXTRLD	=	0x00bf
                     00C0   508 _IRCON_SB_RFRDY	=	0x00c0
                     00C1   509 _IRCON_SB_RFIRQ	=	0x00c1
                     00C2   510 _IRCON_SB_SPI_2WIRE	=	0x00c2
                     00C3   511 _IRCON_SB_WUOPIRQ	=	0x00c3
                     00C4   512 _IRCON_SB_MISCIRQ	=	0x00c4
                     00C5   513 _IRCON_SB_TICK	=	0x00c5
                     00C6   514 _IRCON_SB_TF2	=	0x00c6
                     00C7   515 _IRCON_SB_EXF2	=	0x00c7
                     00C8   516 _T2CON_SB_T2I0	=	0x00c8
                     00C9   517 _T2CON_SB_T2I1	=	0x00c9
                     00CA   518 _T2CON_SB_T2CM	=	0x00ca
                     00CB   519 _T2CON_SB_T2R0	=	0x00cb
                     00CC   520 _T2CON_SB_T2R1	=	0x00cc
                     00CD   521 _T2CON_SB_I2FR	=	0x00cd
                     00CE   522 _T2CON_SB_I3FR	=	0x00ce
                     00CF   523 _T2CON_SB_T2PS	=	0x00cf
                     00D7   524 _PSW_SB_CY	=	0x00d7
                     00D6   525 _PSW_SB_AC	=	0x00d6
                     00D5   526 _PSW_SB_F0	=	0x00d5
                     00D4   527 _PSW_SB_RS1	=	0x00d4
                     00D3   528 _PSW_SB_RS0	=	0x00d3
                     00D2   529 _PSW_SB_OV	=	0x00d2
                     00D1   530 _PSW_SB_F1	=	0x00d1
                     00D0   531 _PSW_SB_P	=	0x00d0
                     00DF   532 _ADCON_SB_BD	=	0x00df
                     00E8   533 _RFCON_SB_RFCE	=	0x00e8
                     00E9   534 _RFCON_SB_RFCSN	=	0x00e9
                     00EA   535 _RFCON_SB_RFCKEN	=	0x00ea
                     00FA   536 _FSR_SB_RDISMB	=	0x00fa
                     00FB   537 _FSR_SB_INFEN	=	0x00fb
                     00FC   538 _FSR_SB_RDYN	=	0x00fc
                     00FD   539 _FSR_SB_WEN	=	0x00fd
                     00FE   540 _FSR_SB_STP	=	0x00fe
                     00FF   541 _FSR_SB_ENDBG	=	0x00ff
                            542 ;--------------------------------------------------------
                            543 ; overlayable register banks
                            544 ;--------------------------------------------------------
                            545 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     546 	.ds 8
                            547 ;--------------------------------------------------------
                            548 ; overlayable bit register bank
                            549 ;--------------------------------------------------------
                            550 	.area BIT_BANK	(REL,OVR,DATA)
   0021                     551 bits:
   0021                     552 	.ds 1
                     8000   553 	b0 = bits[0]
                     8100   554 	b1 = bits[1]
                     8200   555 	b2 = bits[2]
                     8300   556 	b3 = bits[3]
                     8400   557 	b4 = bits[4]
                     8500   558 	b5 = bits[5]
                     8600   559 	b6 = bits[6]
                     8700   560 	b7 = bits[7]
                            561 ;--------------------------------------------------------
                            562 ; internal ram data
                            563 ;--------------------------------------------------------
                            564 	.area DSEG    (DATA)
   0008                     565 _rf_spi_send_read_sloc0_1_0:
   0008                     566 	.ds 3
   000B                     567 _rf_spi_send_read_sloc1_1_0:
   000B                     568 	.ds 1
   000C                     569 _uart_configure_auto_baud_calc_sloc0_1_0:
   000C                     570 	.ds 2
   000E                     571 _uart_configure_auto_baud_calc_sloc1_1_0:
   000E                     572 	.ds 4
   0012                     573 _uart_configure_auto_baud_calc_sloc2_1_0:
   0012                     574 	.ds 4
   0016                     575 _uart_configure_auto_baud_calc_sloc3_1_0:
   0016                     576 	.ds 4
                            577 ;--------------------------------------------------------
                            578 ; overlayable items in internal ram 
                            579 ;--------------------------------------------------------
                            580 ;--------------------------------------------------------
                            581 ; Stack segment in internal ram 
                            582 ;--------------------------------------------------------
                            583 	.area	SSEG	(DATA)
   0022                     584 __start__stack:
   0022                     585 	.ds	1
                            586 
                            587 ;--------------------------------------------------------
                            588 ; indirectly addressable internal ram data
                            589 ;--------------------------------------------------------
                            590 	.area ISEG    (DATA)
                            591 ;--------------------------------------------------------
                            592 ; absolute internal ram data
                            593 ;--------------------------------------------------------
                            594 	.area IABS    (ABS,DATA)
                            595 	.area IABS    (ABS,DATA)
                            596 ;--------------------------------------------------------
                            597 ; bit data
                            598 ;--------------------------------------------------------
                            599 	.area BSEG    (BIT)
                            600 ;--------------------------------------------------------
                            601 ; paged external ram data
                            602 ;--------------------------------------------------------
                            603 	.area PSEG    (PAG,XDATA)
                            604 ;--------------------------------------------------------
                            605 ; external ram data
                            606 ;--------------------------------------------------------
                            607 	.area XSEG    (XDATA)
   0000                     608 _rf_read_rx_payload_PARM_2:
   0000                     609 	.ds 2
   0002                     610 _rf_read_rx_payload_dataptr_1_37:
   0002                     611 	.ds 3
   0005                     612 _rf_configure_debug_lite_PARM_2:
   0005                     613 	.ds 1
   0006                     614 _rf_configure_debug_lite_rx_1_39:
   0006                     615 	.ds 1
   0007                     616 _rf_configure_debug_lite_config_1_40:
   0007                     617 	.ds 1
   0008                     618 _rf_write_register_PARM_2:
   0008                     619 	.ds 3
   000B                     620 _rf_write_register_PARM_3:
   000B                     621 	.ds 2
   000D                     622 _rf_write_register_regnumber_1_42:
   000D                     623 	.ds 1
   000E                     624 _rf_write_tx_payload_PARM_2:
   000E                     625 	.ds 2
   0010                     626 _rf_write_tx_payload_PARM_3:
   0010                     627 	.ds 1
   0011                     628 _rf_write_tx_payload_dataptr_1_45:
   0011                     629 	.ds 3
   0014                     630 _rf_set_as_rx_rx_active_mode_1_49:
   0014                     631 	.ds 1
   0015                     632 _rf_set_as_rx_config_1_50:
   0015                     633 	.ds 1
   0016                     634 _rf_irq_clear_all_dataptr_1_54:
   0016                     635 	.ds 1
   0017                     636 _rf_set_as_tx_config_1_55:
   0017                     637 	.ds 1
   0018                     638 _rf_spi_execute_command_PARM_2:
   0018                     639 	.ds 3
   001B                     640 _rf_spi_execute_command_PARM_3:
   001B                     641 	.ds 2
   001D                     642 _rf_spi_execute_command_PARM_4:
   001D                     643 	.ds 1
   001E                     644 _rf_spi_execute_command_instruction_1_57:
   001E                     645 	.ds 1
   001F                     646 _rf_spi_execute_command_status_1_58:
   001F                     647 	.ds 1
   0020                     648 _rf_spi_send_read_PARM_2:
   0020                     649 	.ds 2
   0022                     650 _rf_spi_send_read_PARM_3:
   0022                     651 	.ds 1
   0023                     652 _rf_spi_send_read_dataptr_1_59:
   0023                     653 	.ds 3
   0026                     654 _rf_power_up_param_PARM_2:
   0026                     655 	.ds 1
   0027                     656 _rf_power_up_param_rx_active_mode_1_63:
   0027                     657 	.ds 1
   0028                     658 _rf_read_register_PARM_2:
   0028                     659 	.ds 3
   002B                     660 _rf_read_register_PARM_3:
   002B                     661 	.ds 2
   002D                     662 _rf_read_register_regnumber_1_69:
   002D                     663 	.ds 1
   002E                     664 _rf_spi_send_read_byte_byte_1_71:
   002E                     665 	.ds 1
   002F                     666 _rf_set_rx_addr_PARM_2:
   002F                     667 	.ds 2
   0031                     668 _rf_set_rx_addr_PARM_3:
   0031                     669 	.ds 1
   0032                     670 _rf_set_rx_addr_address_1_73:
   0032                     671 	.ds 3
   0035                     672 _rf_power_down_config_1_76:
   0035                     673 	.ds 1
   0036                     674 _rf_power_up_rx_active_mode_1_78:
   0036                     675 	.ds 1
   0037                     676 _rf_power_up_config_1_79:
   0037                     677 	.ds 1
   0038                     678 _gpio_pin_configure_PARM_2:
   0038                     679 	.ds 1
   0039                     680 _gpio_pin_configure_gpio_pin_id_1_86:
   0039                     681 	.ds 1
   003A                     682 _gpio_pin_val_read_gpio_pin_id_1_108:
   003A                     683 	.ds 1
   003B                     684 _gpio_pin_val_read_value_1_109:
   003B                     685 	.ds 1
   003C                     686 _gpio_pin_val_clear_gpio_pin_id_1_116:
   003C                     687 	.ds 1
   003D                     688 _gpio_pin_val_set_gpio_pin_id_1_122:
   003D                     689 	.ds 1
   003E                     690 _gpio_pin_val_write_PARM_2:
   003E                     691 	.ds 1
   003F                     692 _gpio_pin_val_write_gpio_pin_id_1_128:
   003F                     693 	.ds 1
   0040                     694 _delay_us_microseconds_1_132:
   0040                     695 	.ds 2
   0042                     696 _delay_s_seconds_1_135:
   0042                     697 	.ds 2
   0044                     698 _delay_ms_milliseconds_1_138:
   0044                     699 	.ds 2
   0046                     700 _pwm_configure_pwm_config_options_1_143:
   0046                     701 	.ds 1
   0047                     702 _pwm_start_PARM_2:
   0047                     703 	.ds 1
   0048                     704 _pwm_start_pwm_channel_1_145:
   0048                     705 	.ds 1
   0049                     706 _pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154:
   0049                     707 	.ds 1
   004A                     708 _pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156:
   004A                     709 	.ds 4
   004E                     710 _watchdog_set_wdsv_count_wdsv_value_1_159:
   004E                     711 	.ds 2
   0050                     712 _watchdog_start_and_set_timeout_in_ms_milliseconds_1_161:
   0050                     713 	.ds 4
   0054                     714 _watchdog_start_and_set_timeout_in_ms_wd_value_1_162:
   0054                     715 	.ds 2
   0056                     716 _interrupt_configure_ifp_PARM_2:
   0056                     717 	.ds 1
   0057                     718 _interrupt_configure_ifp_interrupt_ifp_input_1_165:
   0057                     719 	.ds 1
   0058                     720 _adc_configure_adc_config_options_1_179:
   0058                     721 	.ds 2
   005A                     722 _adc_set_input_channel_adc_channel_1_181:
   005A                     723 	.ds 1
   005B                     724 _adc_start_single_conversion_adc_channel_1_183:
   005B                     725 	.ds 1
   005C                     726 _adc_start_single_conversion_get_value_adc_channel_1_185:
   005C                     727 	.ds 1
   005D                     728 _timer0_configure_PARM_2:
   005D                     729 	.ds 2
   005F                     730 _timer0_configure_timer0_config_options_1_188:
   005F                     731 	.ds 1
   0060                     732 _timer1_configure_PARM_2:
   0060                     733 	.ds 2
   0062                     734 _timer1_configure_timer1_config_options_1_193:
   0062                     735 	.ds 1
   0063                     736 _uart_configure_manual_baud_calc_PARM_2:
   0063                     737 	.ds 2
   0065                     738 _uart_configure_manual_baud_calc_uart_config_options_1_203:
   0065                     739 	.ds 1
   0066                     740 _uart_calc_actual_baud_rate_from_s0rel_PARM_2:
   0066                     741 	.ds 1
   0067                     742 _uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_210:
   0067                     743 	.ds 2
   0069                     744 _uart_calc_actual_baud_rate_from_th1_PARM_2:
   0069                     745 	.ds 1
   006A                     746 _uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_212:
   006A                     747 	.ds 1
   006B                     748 _uart_calc_s0rel_value_PARM_2:
   006B                     749 	.ds 1
   006C                     750 _uart_calc_s0rel_value_desired_baud_rate_1_214:
   006C                     751 	.ds 4
   0070                     752 _uart_calc_th1_value_PARM_2:
   0070                     753 	.ds 1
   0071                     754 _uart_calc_th1_value_desired_baud_rate_1_216:
   0071                     755 	.ds 4
   0075                     756 _uart_configure_auto_baud_calc_PARM_2:
   0075                     757 	.ds 4
   0079                     758 _uart_configure_auto_baud_calc_uart_config_options_1_218:
   0079                     759 	.ds 1
   007A                     760 _radiobegin_setup_1_227:
   007A                     761 	.ds 1
   007B                     762 _setChannel_channel_1_228:
   007B                     763 	.ds 1
   007C                     764 _setDataRate_speed_1_230:
   007C                     765 	.ds 1
   007D                     766 _setDataRate_buffer_1_231:
   007D                     767 	.ds 1
   007E                     768 _setAutoAck_enable_1_232:
   007E                     769 	.ds 1
   007F                     770 _setAutoAck_buffer_1_233:
   007F                     771 	.ds 1
   0080                     772 _setCRCLength_length_1_234:
   0080                     773 	.ds 1
   0081                     774 _setCRCLength_buffer_1_235:
   0081                     775 	.ds 1
   0082                     776 _setPALevel_setup_1_237:
   0082                     777 	.ds 1
   0083                     778 _openAllPipe_buffer_1_238:
   0083                     779 	.ds 5
   0088                     780 _openAllPipe_setup_1_238:
   0088                     781 	.ds 1
   0089                     782 _clientnf::
   0089                     783 	.ds 18
   009B                     784 _stdimm::
   009B                     785 	.ds 1
   009C                     786 _dimmon_mode_1_243:
   009C                     787 	.ds 1
   009D                     788 _servernf::
   009D                     789 	.ds 32
                            790 ;--------------------------------------------------------
                            791 ; absolute external ram data
                            792 ;--------------------------------------------------------
                            793 	.area XABS    (ABS,XDATA)
                            794 ;--------------------------------------------------------
                            795 ; external initialized ram data
                            796 ;--------------------------------------------------------
                            797 	.area XISEG   (XDATA)
                            798 	.area HOME    (CODE)
                            799 	.area GSINIT0 (CODE)
                            800 	.area GSINIT1 (CODE)
                            801 	.area GSINIT2 (CODE)
                            802 	.area GSINIT3 (CODE)
                            803 	.area GSINIT4 (CODE)
                            804 	.area GSINIT5 (CODE)
                            805 	.area GSINIT  (CODE)
                            806 	.area GSFINAL (CODE)
                            807 	.area CSEG    (CODE)
                            808 ;--------------------------------------------------------
                            809 ; interrupt vector 
                            810 ;--------------------------------------------------------
                            811 	.area HOME    (CODE)
   0000                     812 __interrupt_vect:
   0000 02 00 21      [24]  813 	ljmp	__sdcc_gsinit_startup
   0003 02 14 BD      [24]  814 	ljmp	_isr_ifp
   0006                     815 	.ds	5
   000B 32            [24]  816 	reti
   000C                     817 	.ds	7
   0013 32            [24]  818 	reti
   0014                     819 	.ds	7
   001B 02 15 51      [24]  820 	ljmp	_isr_t1
                            821 ;--------------------------------------------------------
                            822 ; global & static initialisations
                            823 ;--------------------------------------------------------
                            824 	.area HOME    (CODE)
                            825 	.area GSINIT  (CODE)
                            826 	.area GSFINAL (CODE)
                            827 	.area GSINIT  (CODE)
                            828 	.globl __sdcc_gsinit_startup
                            829 	.globl __sdcc_program_startup
                            830 	.globl __start__stack
                            831 	.globl __mcs51_genXINIT
                            832 	.globl __mcs51_genXRAMCLEAR
                            833 	.globl __mcs51_genRAMCLEAR
                            834 	.area GSFINAL (CODE)
   007A 02 00 1E      [24]  835 	ljmp	__sdcc_program_startup
                            836 ;--------------------------------------------------------
                            837 ; Home
                            838 ;--------------------------------------------------------
                            839 	.area HOME    (CODE)
                            840 	.area HOME    (CODE)
   001E                     841 __sdcc_program_startup:
   001E 02 15 CC      [24]  842 	ljmp	_main
                            843 ;	return from main will return to caller
                            844 ;--------------------------------------------------------
                            845 ; code
                            846 ;--------------------------------------------------------
                            847 	.area CSEG    (CODE)
                            848 ;------------------------------------------------------------
                            849 ;Allocation info for local variables in function 'rf_read_rx_payload'
                            850 ;------------------------------------------------------------
                            851 ;len                       Allocated with name '_rf_read_rx_payload_PARM_2'
                            852 ;dataptr                   Allocated with name '_rf_read_rx_payload_dataptr_1_37'
                            853 ;status                    Allocated with name '_rf_read_rx_payload_status_1_38'
                            854 ;------------------------------------------------------------
                            855 ;	../src/rf/src/rf_read_rx_payload.c:48: unsigned char rf_read_rx_payload(unsigned char * dataptr, unsigned int len)
                            856 ;	-----------------------------------------
                            857 ;	 function rf_read_rx_payload
                            858 ;	-----------------------------------------
   007D                     859 _rf_read_rx_payload:
                     0007   860 	ar7 = 0x07
                     0006   861 	ar6 = 0x06
                     0005   862 	ar5 = 0x05
                     0004   863 	ar4 = 0x04
                     0003   864 	ar3 = 0x03
                     0002   865 	ar2 = 0x02
                     0001   866 	ar1 = 0x01
                     0000   867 	ar0 = 0x00
   007D AF F0         [24]  868 	mov	r7,b
   007F AE 83         [24]  869 	mov	r6,dph
   0081 E5 82         [12]  870 	mov	a,dpl
   0083 90 00 02      [24]  871 	mov	dptr,#_rf_read_rx_payload_dataptr_1_37
   0086 F0            [24]  872 	movx	@dptr,a
   0087 EE            [12]  873 	mov	a,r6
   0088 A3            [24]  874 	inc	dptr
   0089 F0            [24]  875 	movx	@dptr,a
   008A EF            [12]  876 	mov	a,r7
   008B A3            [24]  877 	inc	dptr
   008C F0            [24]  878 	movx	@dptr,a
                            879 ;	../src/rf/src/rf_read_rx_payload.c:53: rf_clear_ce();
   008D C2 E8         [12]  880 	clr _RFCON_SB_RFCE 
                            881 ;	../src/rf/src/rf_read_rx_payload.c:54: status = rf_spi_execute_command(RF_R_RX_PAYLOAD, dataptr, len, true);
   008F 90 00 02      [24]  882 	mov	dptr,#_rf_read_rx_payload_dataptr_1_37
   0092 E0            [24]  883 	movx	a,@dptr
   0093 FD            [12]  884 	mov	r5,a
   0094 A3            [24]  885 	inc	dptr
   0095 E0            [24]  886 	movx	a,@dptr
   0096 FE            [12]  887 	mov	r6,a
   0097 A3            [24]  888 	inc	dptr
   0098 E0            [24]  889 	movx	a,@dptr
   0099 FF            [12]  890 	mov	r7,a
   009A 90 00 00      [24]  891 	mov	dptr,#_rf_read_rx_payload_PARM_2
   009D E0            [24]  892 	movx	a,@dptr
   009E FB            [12]  893 	mov	r3,a
   009F A3            [24]  894 	inc	dptr
   00A0 E0            [24]  895 	movx	a,@dptr
   00A1 FC            [12]  896 	mov	r4,a
   00A2 90 00 18      [24]  897 	mov	dptr,#_rf_spi_execute_command_PARM_2
   00A5 ED            [12]  898 	mov	a,r5
   00A6 F0            [24]  899 	movx	@dptr,a
   00A7 EE            [12]  900 	mov	a,r6
   00A8 A3            [24]  901 	inc	dptr
   00A9 F0            [24]  902 	movx	@dptr,a
   00AA EF            [12]  903 	mov	a,r7
   00AB A3            [24]  904 	inc	dptr
   00AC F0            [24]  905 	movx	@dptr,a
   00AD 90 00 1B      [24]  906 	mov	dptr,#_rf_spi_execute_command_PARM_3
   00B0 EB            [12]  907 	mov	a,r3
   00B1 F0            [24]  908 	movx	@dptr,a
   00B2 EC            [12]  909 	mov	a,r4
   00B3 A3            [24]  910 	inc	dptr
   00B4 F0            [24]  911 	movx	@dptr,a
   00B5 90 00 1D      [24]  912 	mov	dptr,#_rf_spi_execute_command_PARM_4
   00B8 74 01         [12]  913 	mov	a,#0x01
   00BA F0            [24]  914 	movx	@dptr,a
   00BB 75 82 61      [24]  915 	mov	dpl,#0x61
   00BE 12 02 B2      [24]  916 	lcall	_rf_spi_execute_command
   00C1 AF 82         [24]  917 	mov	r7,dpl
                            918 ;	../src/rf/src/rf_read_rx_payload.c:55: rf_set_ce();
   00C3 D2 E8         [12]  919 	setb _RFCON_SB_RFCE 
   00C5 90 00 04      [24]  920 	mov	dptr,#0x0004
   00C8 C0 07         [24]  921 	push	ar7
   00CA 12 08 BF      [24]  922 	lcall	_delay_us
   00CD D0 07         [24]  923 	pop	ar7
                            924 ;	../src/rf/src/rf_read_rx_payload.c:57: return status; //Return the STATUS register value
   00CF 8F 82         [24]  925 	mov	dpl,r7
   00D1 22            [24]  926 	ret
                            927 ;------------------------------------------------------------
                            928 ;Allocation info for local variables in function 'rf_configure_debug_lite'
                            929 ;------------------------------------------------------------
                            930 ;p0_payload_width          Allocated with name '_rf_configure_debug_lite_PARM_2'
                            931 ;rx                        Allocated with name '_rf_configure_debug_lite_rx_1_39'
                            932 ;config                    Allocated with name '_rf_configure_debug_lite_config_1_40'
                            933 ;------------------------------------------------------------
                            934 ;	../src/rf/src/rf_configure_debug_lite.c:48: void rf_configure_debug_lite(bool rx, unsigned char p0_payload_width)
                            935 ;	-----------------------------------------
                            936 ;	 function rf_configure_debug_lite
                            937 ;	-----------------------------------------
   00D2                     938 _rf_configure_debug_lite:
   00D2 E5 82         [12]  939 	mov	a,dpl
   00D4 90 00 06      [24]  940 	mov	dptr,#_rf_configure_debug_lite_rx_1_39
   00D7 F0            [24]  941 	movx	@dptr,a
                            942 ;	../src/rf/src/rf_configure_debug_lite.c:52: rf_spi_configure_enable(); //Enable RF SPI
   00D8 12 01 76      [24]  943 	lcall	_rf_spi_configure_enable
                            944 ;	../src/rf/src/rf_configure_debug_lite.c:55: config = 0;
   00DB 90 00 07      [24]  945 	mov	dptr,#_rf_configure_debug_lite_config_1_40
   00DE E4            [12]  946 	clr	a
   00DF F0            [24]  947 	movx	@dptr,a
                            948 ;	../src/rf/src/rf_configure_debug_lite.c:56: rf_write_register(RF_EN_AA, &config, 1); //Turn auto-acknowledge off
   00E0 90 00 08      [24]  949 	mov	dptr,#_rf_write_register_PARM_2
   00E3 74 07         [12]  950 	mov	a,#_rf_configure_debug_lite_config_1_40
   00E5 F0            [24]  951 	movx	@dptr,a
   00E6 74 00         [12]  952 	mov	a,#(_rf_configure_debug_lite_config_1_40 >> 8)
   00E8 A3            [24]  953 	inc	dptr
   00E9 F0            [24]  954 	movx	@dptr,a
   00EA E4            [12]  955 	clr	a
   00EB A3            [24]  956 	inc	dptr
   00EC F0            [24]  957 	movx	@dptr,a
   00ED 90 00 0B      [24]  958 	mov	dptr,#_rf_write_register_PARM_3
   00F0 74 01         [12]  959 	mov	a,#0x01
   00F2 F0            [24]  960 	movx	@dptr,a
   00F3 E4            [12]  961 	clr	a
   00F4 A3            [24]  962 	inc	dptr
   00F5 F0            [24]  963 	movx	@dptr,a
   00F6 75 82 01      [24]  964 	mov	dpl,#0x01
   00F9 12 01 39      [24]  965 	lcall	_rf_write_register
                            966 ;	../src/rf/src/rf_configure_debug_lite.c:59: config = RF_CONFIG_DEFAULT_VAL; //Set config to the default value of the CONFIG register
   00FC 90 00 07      [24]  967 	mov	dptr,#_rf_configure_debug_lite_config_1_40
   00FF 74 08         [12]  968 	mov	a,#0x08
   0101 F0            [24]  969 	movx	@dptr,a
                            970 ;	../src/rf/src/rf_configure_debug_lite.c:62: rf_write_register(RF_RX_PW_P0, &p0_payload_width, 1);
   0102 90 00 08      [24]  971 	mov	dptr,#_rf_write_register_PARM_2
   0105 74 05         [12]  972 	mov	a,#_rf_configure_debug_lite_PARM_2
   0107 F0            [24]  973 	movx	@dptr,a
   0108 74 00         [12]  974 	mov	a,#(_rf_configure_debug_lite_PARM_2 >> 8)
   010A A3            [24]  975 	inc	dptr
   010B F0            [24]  976 	movx	@dptr,a
   010C E4            [12]  977 	clr	a
   010D A3            [24]  978 	inc	dptr
   010E F0            [24]  979 	movx	@dptr,a
   010F 90 00 0B      [24]  980 	mov	dptr,#_rf_write_register_PARM_3
   0112 74 01         [12]  981 	mov	a,#0x01
   0114 F0            [24]  982 	movx	@dptr,a
   0115 E4            [12]  983 	clr	a
   0116 A3            [24]  984 	inc	dptr
   0117 F0            [24]  985 	movx	@dptr,a
   0118 75 82 11      [24]  986 	mov	dpl,#0x11
   011B 12 01 39      [24]  987 	lcall	_rf_write_register
                            988 ;	../src/rf/src/rf_configure_debug_lite.c:65: if(rx != false)
   011E 90 00 06      [24]  989 	mov	dptr,#_rf_configure_debug_lite_rx_1_39
   0121 E0            [24]  990 	movx	a,@dptr
   0122 FF            [12]  991 	mov	r7,a
   0123 60 06         [24]  992 	jz	00102$
                            993 ;	../src/rf/src/rf_configure_debug_lite.c:67: config |= RF_CONFIG_PRIM_RX;
   0125 90 00 07      [24]  994 	mov	dptr,#_rf_configure_debug_lite_config_1_40
   0128 74 09         [12]  995 	mov	a,#0x09
   012A F0            [24]  996 	movx	@dptr,a
   012B                     997 00102$:
                            998 ;	../src/rf/src/rf_configure_debug_lite.c:70: rf_power_up_param(true, config);
   012B 90 00 07      [24]  999 	mov	dptr,#_rf_configure_debug_lite_config_1_40
   012E E0            [24] 1000 	movx	a,@dptr
   012F 90 00 26      [24] 1001 	mov	dptr,#_rf_power_up_param_PARM_2
   0132 F0            [24] 1002 	movx	@dptr,a
   0133 75 82 01      [24] 1003 	mov	dpl,#0x01
   0136 02 03 A1      [24] 1004 	ljmp	_rf_power_up_param
                           1005 ;------------------------------------------------------------
                           1006 ;Allocation info for local variables in function 'rf_write_register'
                           1007 ;------------------------------------------------------------
                           1008 ;dataptr                   Allocated with name '_rf_write_register_PARM_2'
                           1009 ;len                       Allocated with name '_rf_write_register_PARM_3'
                           1010 ;regnumber                 Allocated with name '_rf_write_register_regnumber_1_42'
                           1011 ;------------------------------------------------------------
                           1012 ;	../src/rf/src/rf_write_register.c:49: unsigned char rf_write_register(unsigned char regnumber, unsigned char * dataptr, unsigned int len)
                           1013 ;	-----------------------------------------
                           1014 ;	 function rf_write_register
                           1015 ;	-----------------------------------------
   0139                    1016 _rf_write_register:
   0139 E5 82         [12] 1017 	mov	a,dpl
                           1018 ;	../src/rf/src/rf_write_register.c:52: return rf_spi_execute_command(RF_W_REGISTER | (regnumber & RF_W_REGISTER_DATA), dataptr, len, false);
   013B 90 00 0D      [24] 1019 	mov	dptr,#_rf_write_register_regnumber_1_42
   013E F0            [24] 1020 	movx	@dptr,a
   013F FF            [12] 1021 	mov	r7,a
   0140 74 1F         [12] 1022 	mov	a,#0x1F
   0142 5F            [12] 1023 	anl	a,r7
   0143 44 20         [12] 1024 	orl	a,#0x20
   0145 FF            [12] 1025 	mov	r7,a
   0146 90 00 08      [24] 1026 	mov	dptr,#_rf_write_register_PARM_2
   0149 E0            [24] 1027 	movx	a,@dptr
   014A FC            [12] 1028 	mov	r4,a
   014B A3            [24] 1029 	inc	dptr
   014C E0            [24] 1030 	movx	a,@dptr
   014D FD            [12] 1031 	mov	r5,a
   014E A3            [24] 1032 	inc	dptr
   014F E0            [24] 1033 	movx	a,@dptr
   0150 FE            [12] 1034 	mov	r6,a
   0151 90 00 0B      [24] 1035 	mov	dptr,#_rf_write_register_PARM_3
   0154 E0            [24] 1036 	movx	a,@dptr
   0155 FA            [12] 1037 	mov	r2,a
   0156 A3            [24] 1038 	inc	dptr
   0157 E0            [24] 1039 	movx	a,@dptr
   0158 FB            [12] 1040 	mov	r3,a
   0159 90 00 18      [24] 1041 	mov	dptr,#_rf_spi_execute_command_PARM_2
   015C EC            [12] 1042 	mov	a,r4
   015D F0            [24] 1043 	movx	@dptr,a
   015E ED            [12] 1044 	mov	a,r5
   015F A3            [24] 1045 	inc	dptr
   0160 F0            [24] 1046 	movx	@dptr,a
   0161 EE            [12] 1047 	mov	a,r6
   0162 A3            [24] 1048 	inc	dptr
   0163 F0            [24] 1049 	movx	@dptr,a
   0164 90 00 1B      [24] 1050 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0167 EA            [12] 1051 	mov	a,r2
   0168 F0            [24] 1052 	movx	@dptr,a
   0169 EB            [12] 1053 	mov	a,r3
   016A A3            [24] 1054 	inc	dptr
   016B F0            [24] 1055 	movx	@dptr,a
   016C 90 00 1D      [24] 1056 	mov	dptr,#_rf_spi_execute_command_PARM_4
   016F E4            [12] 1057 	clr	a
   0170 F0            [24] 1058 	movx	@dptr,a
   0171 8F 82         [24] 1059 	mov	dpl,r7
   0173 02 02 B2      [24] 1060 	ljmp	_rf_spi_execute_command
                           1061 ;------------------------------------------------------------
                           1062 ;Allocation info for local variables in function 'rf_spi_configure_enable'
                           1063 ;------------------------------------------------------------
                           1064 ;	../src/rf/src/rf_spi_configure_enable.c:47: void rf_spi_configure_enable()
                           1065 ;	-----------------------------------------
                           1066 ;	 function rf_spi_configure_enable
                           1067 ;	-----------------------------------------
   0176                    1068 _rf_spi_configure_enable:
                           1069 ;	../src/rf/src/rf_spi_configure_enable.c:50: RFCON = 0x02;
   0176 75 E8 02      [24] 1070 	mov	_RFCON,#0x02
                           1071 ;	../src/rf/src/rf_spi_configure_enable.c:51: RFCON = RFCON_RFCKEN;
   0179 75 E8 04      [24] 1072 	mov	_RFCON,#0x04
   017C 22            [24] 1073 	ret
                           1074 ;------------------------------------------------------------
                           1075 ;Allocation info for local variables in function 'rf_write_tx_payload'
                           1076 ;------------------------------------------------------------
                           1077 ;len                       Allocated with name '_rf_write_tx_payload_PARM_2'
                           1078 ;transmit                  Allocated with name '_rf_write_tx_payload_PARM_3'
                           1079 ;dataptr                   Allocated with name '_rf_write_tx_payload_dataptr_1_45'
                           1080 ;status                    Allocated with name '_rf_write_tx_payload_status_1_46'
                           1081 ;------------------------------------------------------------
                           1082 ;	../src/rf/src/rf_write_tx_payload.c:49: unsigned char rf_write_tx_payload(unsigned char * dataptr, unsigned int len, bool transmit)
                           1083 ;	-----------------------------------------
                           1084 ;	 function rf_write_tx_payload
                           1085 ;	-----------------------------------------
   017D                    1086 _rf_write_tx_payload:
   017D AF F0         [24] 1087 	mov	r7,b
   017F AE 83         [24] 1088 	mov	r6,dph
   0181 E5 82         [12] 1089 	mov	a,dpl
   0183 90 00 11      [24] 1090 	mov	dptr,#_rf_write_tx_payload_dataptr_1_45
   0186 F0            [24] 1091 	movx	@dptr,a
   0187 EE            [12] 1092 	mov	a,r6
   0188 A3            [24] 1093 	inc	dptr
   0189 F0            [24] 1094 	movx	@dptr,a
   018A EF            [12] 1095 	mov	a,r7
   018B A3            [24] 1096 	inc	dptr
   018C F0            [24] 1097 	movx	@dptr,a
                           1098 ;	../src/rf/src/rf_write_tx_payload.c:53: status = rf_spi_execute_command(RF_W_TX_PAYLOAD, dataptr, len, false); //Write the payload
   018D 90 00 11      [24] 1099 	mov	dptr,#_rf_write_tx_payload_dataptr_1_45
   0190 E0            [24] 1100 	movx	a,@dptr
   0191 FD            [12] 1101 	mov	r5,a
   0192 A3            [24] 1102 	inc	dptr
   0193 E0            [24] 1103 	movx	a,@dptr
   0194 FE            [12] 1104 	mov	r6,a
   0195 A3            [24] 1105 	inc	dptr
   0196 E0            [24] 1106 	movx	a,@dptr
   0197 FF            [12] 1107 	mov	r7,a
   0198 90 00 0E      [24] 1108 	mov	dptr,#_rf_write_tx_payload_PARM_2
   019B E0            [24] 1109 	movx	a,@dptr
   019C FB            [12] 1110 	mov	r3,a
   019D A3            [24] 1111 	inc	dptr
   019E E0            [24] 1112 	movx	a,@dptr
   019F FC            [12] 1113 	mov	r4,a
   01A0 90 00 18      [24] 1114 	mov	dptr,#_rf_spi_execute_command_PARM_2
   01A3 ED            [12] 1115 	mov	a,r5
   01A4 F0            [24] 1116 	movx	@dptr,a
   01A5 EE            [12] 1117 	mov	a,r6
   01A6 A3            [24] 1118 	inc	dptr
   01A7 F0            [24] 1119 	movx	@dptr,a
   01A8 EF            [12] 1120 	mov	a,r7
   01A9 A3            [24] 1121 	inc	dptr
   01AA F0            [24] 1122 	movx	@dptr,a
   01AB 90 00 1B      [24] 1123 	mov	dptr,#_rf_spi_execute_command_PARM_3
   01AE EB            [12] 1124 	mov	a,r3
   01AF F0            [24] 1125 	movx	@dptr,a
   01B0 EC            [12] 1126 	mov	a,r4
   01B1 A3            [24] 1127 	inc	dptr
   01B2 F0            [24] 1128 	movx	@dptr,a
   01B3 90 00 1D      [24] 1129 	mov	dptr,#_rf_spi_execute_command_PARM_4
   01B6 E4            [12] 1130 	clr	a
   01B7 F0            [24] 1131 	movx	@dptr,a
   01B8 75 82 A0      [24] 1132 	mov	dpl,#0xA0
   01BB 12 02 B2      [24] 1133 	lcall	_rf_spi_execute_command
   01BE AF 82         [24] 1134 	mov	r7,dpl
                           1135 ;	../src/rf/src/rf_write_tx_payload.c:56: if(transmit == true)
   01C0 90 00 10      [24] 1136 	mov	dptr,#_rf_write_tx_payload_PARM_3
   01C3 E0            [24] 1137 	movx	a,@dptr
   01C4 FE            [12] 1138 	mov	r6,a
   01C5 BE 01 07      [24] 1139 	cjne	r6,#0x01,00102$
                           1140 ;	../src/rf/src/rf_write_tx_payload.c:58: rf_transmit();
   01C8 C0 07         [24] 1141 	push	ar7
   01CA 12 01 D2      [24] 1142 	lcall	_rf_transmit
   01CD D0 07         [24] 1143 	pop	ar7
   01CF                    1144 00102$:
                           1145 ;	../src/rf/src/rf_write_tx_payload.c:61: return status; //Return the value of STATUS
   01CF 8F 82         [24] 1146 	mov	dpl,r7
   01D1 22            [24] 1147 	ret
                           1148 ;------------------------------------------------------------
                           1149 ;Allocation info for local variables in function 'rf_transmit'
                           1150 ;------------------------------------------------------------
                           1151 ;	../src/rf/src/rf_transmit.c:47: void rf_transmit()
                           1152 ;	-----------------------------------------
                           1153 ;	 function rf_transmit
                           1154 ;	-----------------------------------------
   01D2                    1155 _rf_transmit:
                           1156 ;	../src/rf/src/rf_transmit.c:50: rf_set_ce();
   01D2 D2 E8         [12] 1157 	setb _RFCON_SB_RFCE 
   01D4 90 00 04      [24] 1158 	mov	dptr,#0x0004
   01D7 12 08 BF      [24] 1159 	lcall	_delay_us
                           1160 ;	../src/rf/src/rf_transmit.c:51: delay_us(10);
   01DA 90 00 0A      [24] 1161 	mov	dptr,#0x000A
   01DD 12 08 BF      [24] 1162 	lcall	_delay_us
                           1163 ;	../src/rf/src/rf_transmit.c:52: rf_clear_ce();
   01E0 C2 E8         [12] 1164 	clr _RFCON_SB_RFCE 
   01E2 22            [24] 1165 	ret
                           1166 ;------------------------------------------------------------
                           1167 ;Allocation info for local variables in function 'rf_set_as_rx'
                           1168 ;------------------------------------------------------------
                           1169 ;rx_active_mode            Allocated with name '_rf_set_as_rx_rx_active_mode_1_49'
                           1170 ;config                    Allocated with name '_rf_set_as_rx_config_1_50'
                           1171 ;------------------------------------------------------------
                           1172 ;	../src/rf/src/rf_set_as_rx.c:47: void rf_set_as_rx(bool rx_active_mode)
                           1173 ;	-----------------------------------------
                           1174 ;	 function rf_set_as_rx
                           1175 ;	-----------------------------------------
   01E3                    1176 _rf_set_as_rx:
   01E3 E5 82         [12] 1177 	mov	a,dpl
   01E5 90 00 14      [24] 1178 	mov	dptr,#_rf_set_as_rx_rx_active_mode_1_49
   01E8 F0            [24] 1179 	movx	@dptr,a
                           1180 ;	../src/rf/src/rf_set_as_rx.c:51: rf_read_register(RF_CONFIG, &config, 1); //Read the current CONFIG value
   01E9 90 00 28      [24] 1181 	mov	dptr,#_rf_read_register_PARM_2
   01EC 74 15         [12] 1182 	mov	a,#_rf_set_as_rx_config_1_50
   01EE F0            [24] 1183 	movx	@dptr,a
   01EF 74 00         [12] 1184 	mov	a,#(_rf_set_as_rx_config_1_50 >> 8)
   01F1 A3            [24] 1185 	inc	dptr
   01F2 F0            [24] 1186 	movx	@dptr,a
   01F3 E4            [12] 1187 	clr	a
   01F4 A3            [24] 1188 	inc	dptr
   01F5 F0            [24] 1189 	movx	@dptr,a
   01F6 90 00 2B      [24] 1190 	mov	dptr,#_rf_read_register_PARM_3
   01F9 74 01         [12] 1191 	mov	a,#0x01
   01FB F0            [24] 1192 	movx	@dptr,a
   01FC E4            [12] 1193 	clr	a
   01FD A3            [24] 1194 	inc	dptr
   01FE F0            [24] 1195 	movx	@dptr,a
   01FF 75 82 00      [24] 1196 	mov	dpl,#0x00
   0202 12 03 ED      [24] 1197 	lcall	_rf_read_register
                           1198 ;	../src/rf/src/rf_set_as_rx.c:54: if((config & RF_CONFIG_PRIM_RX) != 0)
   0205 90 00 15      [24] 1199 	mov	dptr,#_rf_set_as_rx_config_1_50
   0208 E0            [24] 1200 	movx	a,@dptr
   0209 FF            [12] 1201 	mov	r7,a
   020A 30 E0 01      [24] 1202 	jnb	acc.0,00102$
                           1203 ;	../src/rf/src/rf_set_as_rx.c:56: return;
   020D 22            [24] 1204 	ret
   020E                    1205 00102$:
                           1206 ;	../src/rf/src/rf_set_as_rx.c:60: config |= RF_CONFIG_PRIM_RX;
   020E 90 00 15      [24] 1207 	mov	dptr,#_rf_set_as_rx_config_1_50
   0211 74 01         [12] 1208 	mov	a,#0x01
   0213 4F            [12] 1209 	orl	a,r7
   0214 F0            [24] 1210 	movx	@dptr,a
                           1211 ;	../src/rf/src/rf_set_as_rx.c:61: rf_write_register(RF_CONFIG, &config, 1);
   0215 90 00 08      [24] 1212 	mov	dptr,#_rf_write_register_PARM_2
   0218 74 15         [12] 1213 	mov	a,#_rf_set_as_rx_config_1_50
   021A F0            [24] 1214 	movx	@dptr,a
   021B 74 00         [12] 1215 	mov	a,#(_rf_set_as_rx_config_1_50 >> 8)
   021D A3            [24] 1216 	inc	dptr
   021E F0            [24] 1217 	movx	@dptr,a
   021F E4            [12] 1218 	clr	a
   0220 A3            [24] 1219 	inc	dptr
   0221 F0            [24] 1220 	movx	@dptr,a
   0222 90 00 0B      [24] 1221 	mov	dptr,#_rf_write_register_PARM_3
   0225 74 01         [12] 1222 	mov	a,#0x01
   0227 F0            [24] 1223 	movx	@dptr,a
   0228 E4            [12] 1224 	clr	a
   0229 A3            [24] 1225 	inc	dptr
   022A F0            [24] 1226 	movx	@dptr,a
   022B 75 82 00      [24] 1227 	mov	dpl,#0x00
   022E 12 01 39      [24] 1228 	lcall	_rf_write_register
                           1229 ;	../src/rf/src/rf_set_as_rx.c:64: if(rx_active_mode != false)
   0231 90 00 14      [24] 1230 	mov	dptr,#_rf_set_as_rx_rx_active_mode_1_49
   0234 E0            [24] 1231 	movx	a,@dptr
   0235 FF            [12] 1232 	mov	r7,a
   0236 60 08         [24] 1233 	jz	00104$
                           1234 ;	../src/rf/src/rf_set_as_rx.c:66: rf_set_ce();
   0238 D2 E8         [12] 1235 	setb _RFCON_SB_RFCE 
   023A 90 00 04      [24] 1236 	mov	dptr,#0x0004
   023D 02 08 BF      [24] 1237 	ljmp	_delay_us
   0240                    1238 00104$:
                           1239 ;	../src/rf/src/rf_set_as_rx.c:70: rf_clear_ce();
   0240 C2 E8         [12] 1240 	clr _RFCON_SB_RFCE 
   0242 22            [24] 1241 	ret
                           1242 ;------------------------------------------------------------
                           1243 ;Allocation info for local variables in function 'rf_irq_clear_all'
                           1244 ;------------------------------------------------------------
                           1245 ;dataptr                   Allocated with name '_rf_irq_clear_all_dataptr_1_54'
                           1246 ;------------------------------------------------------------
                           1247 ;	../src/rf/src/rf_irq_clear_all.c:47: void rf_irq_clear_all()
                           1248 ;	-----------------------------------------
                           1249 ;	 function rf_irq_clear_all
                           1250 ;	-----------------------------------------
   0243                    1251 _rf_irq_clear_all:
                           1252 ;	../src/rf/src/rf_irq_clear_all.c:50: unsigned char dataptr = RF_STATUS_RX_DR | RF_STATUS_TX_DS | RF_STATUS_MAX_RT;
   0243 90 00 16      [24] 1253 	mov	dptr,#_rf_irq_clear_all_dataptr_1_54
   0246 74 70         [12] 1254 	mov	a,#0x70
   0248 F0            [24] 1255 	movx	@dptr,a
                           1256 ;	../src/rf/src/rf_irq_clear_all.c:52: rf_write_register(RF_STATUS, &dataptr, 1);
   0249 90 00 08      [24] 1257 	mov	dptr,#_rf_write_register_PARM_2
   024C 74 16         [12] 1258 	mov	a,#_rf_irq_clear_all_dataptr_1_54
   024E F0            [24] 1259 	movx	@dptr,a
   024F 74 00         [12] 1260 	mov	a,#(_rf_irq_clear_all_dataptr_1_54 >> 8)
   0251 A3            [24] 1261 	inc	dptr
   0252 F0            [24] 1262 	movx	@dptr,a
   0253 E4            [12] 1263 	clr	a
   0254 A3            [24] 1264 	inc	dptr
   0255 F0            [24] 1265 	movx	@dptr,a
   0256 90 00 0B      [24] 1266 	mov	dptr,#_rf_write_register_PARM_3
   0259 74 01         [12] 1267 	mov	a,#0x01
   025B F0            [24] 1268 	movx	@dptr,a
   025C E4            [12] 1269 	clr	a
   025D A3            [24] 1270 	inc	dptr
   025E F0            [24] 1271 	movx	@dptr,a
   025F 75 82 07      [24] 1272 	mov	dpl,#0x07
   0262 12 01 39      [24] 1273 	lcall	_rf_write_register
                           1274 ;	../src/rf/src/rf_irq_clear_all.c:54: sbit_clear(IRCON_SB_RFIRQ); //Clear the master interrupt
   0265 C2 C1         [12] 1275 	clr _IRCON_SB_RFIRQ 
   0267 22            [24] 1276 	ret
                           1277 ;------------------------------------------------------------
                           1278 ;Allocation info for local variables in function 'rf_set_as_tx'
                           1279 ;------------------------------------------------------------
                           1280 ;config                    Allocated with name '_rf_set_as_tx_config_1_55'
                           1281 ;------------------------------------------------------------
                           1282 ;	../src/rf/src/rf_set_as_tx.c:47: void rf_set_as_tx()
                           1283 ;	-----------------------------------------
                           1284 ;	 function rf_set_as_tx
                           1285 ;	-----------------------------------------
   0268                    1286 _rf_set_as_tx:
                           1287 ;	../src/rf/src/rf_set_as_tx.c:51: rf_read_register(RF_CONFIG, &config, 1); //Read the current CONFIG value
   0268 90 00 28      [24] 1288 	mov	dptr,#_rf_read_register_PARM_2
   026B 74 17         [12] 1289 	mov	a,#_rf_set_as_tx_config_1_55
   026D F0            [24] 1290 	movx	@dptr,a
   026E 74 00         [12] 1291 	mov	a,#(_rf_set_as_tx_config_1_55 >> 8)
   0270 A3            [24] 1292 	inc	dptr
   0271 F0            [24] 1293 	movx	@dptr,a
   0272 E4            [12] 1294 	clr	a
   0273 A3            [24] 1295 	inc	dptr
   0274 F0            [24] 1296 	movx	@dptr,a
   0275 90 00 2B      [24] 1297 	mov	dptr,#_rf_read_register_PARM_3
   0278 74 01         [12] 1298 	mov	a,#0x01
   027A F0            [24] 1299 	movx	@dptr,a
   027B E4            [12] 1300 	clr	a
   027C A3            [24] 1301 	inc	dptr
   027D F0            [24] 1302 	movx	@dptr,a
   027E 75 82 00      [24] 1303 	mov	dpl,#0x00
   0281 12 03 ED      [24] 1304 	lcall	_rf_read_register
                           1305 ;	../src/rf/src/rf_set_as_tx.c:54: if((config & RF_CONFIG_PRIM_RX) == 0)
   0284 90 00 17      [24] 1306 	mov	dptr,#_rf_set_as_tx_config_1_55
   0287 E0            [24] 1307 	movx	a,@dptr
   0288 FF            [12] 1308 	mov	r7,a
   0289 20 E0 01      [24] 1309 	jb	acc.0,00102$
                           1310 ;	../src/rf/src/rf_set_as_tx.c:56: return;
   028C 22            [24] 1311 	ret
   028D                    1312 00102$:
                           1313 ;	../src/rf/src/rf_set_as_tx.c:59: rf_clear_ce(); //Clear the CE pin
   028D C2 E8         [12] 1314 	clr _RFCON_SB_RFCE 
                           1315 ;	../src/rf/src/rf_set_as_tx.c:62: config &= (~RF_CONFIG_PRIM_RX);
   028F 90 00 17      [24] 1316 	mov	dptr,#_rf_set_as_tx_config_1_55
   0292 74 FE         [12] 1317 	mov	a,#0xFE
   0294 5F            [12] 1318 	anl	a,r7
   0295 F0            [24] 1319 	movx	@dptr,a
                           1320 ;	../src/rf/src/rf_set_as_tx.c:63: rf_write_register(RF_CONFIG, &config, 1);
   0296 90 00 08      [24] 1321 	mov	dptr,#_rf_write_register_PARM_2
   0299 74 17         [12] 1322 	mov	a,#_rf_set_as_tx_config_1_55
   029B F0            [24] 1323 	movx	@dptr,a
   029C 74 00         [12] 1324 	mov	a,#(_rf_set_as_tx_config_1_55 >> 8)
   029E A3            [24] 1325 	inc	dptr
   029F F0            [24] 1326 	movx	@dptr,a
   02A0 E4            [12] 1327 	clr	a
   02A1 A3            [24] 1328 	inc	dptr
   02A2 F0            [24] 1329 	movx	@dptr,a
   02A3 90 00 0B      [24] 1330 	mov	dptr,#_rf_write_register_PARM_3
   02A6 74 01         [12] 1331 	mov	a,#0x01
   02A8 F0            [24] 1332 	movx	@dptr,a
   02A9 E4            [12] 1333 	clr	a
   02AA A3            [24] 1334 	inc	dptr
   02AB F0            [24] 1335 	movx	@dptr,a
   02AC 75 82 00      [24] 1336 	mov	dpl,#0x00
   02AF 02 01 39      [24] 1337 	ljmp	_rf_write_register
                           1338 ;------------------------------------------------------------
                           1339 ;Allocation info for local variables in function 'rf_spi_execute_command'
                           1340 ;------------------------------------------------------------
                           1341 ;dataptr                   Allocated with name '_rf_spi_execute_command_PARM_2'
                           1342 ;len                       Allocated with name '_rf_spi_execute_command_PARM_3'
                           1343 ;copydata                  Allocated with name '_rf_spi_execute_command_PARM_4'
                           1344 ;instruction               Allocated with name '_rf_spi_execute_command_instruction_1_57'
                           1345 ;status                    Allocated with name '_rf_spi_execute_command_status_1_58'
                           1346 ;------------------------------------------------------------
                           1347 ;	../src/rf/src/rf_spi_execute_command.c:50: unsigned char rf_spi_execute_command(unsigned char instruction, unsigned char * dataptr, unsigned int len, bool copydata)
                           1348 ;	-----------------------------------------
                           1349 ;	 function rf_spi_execute_command
                           1350 ;	-----------------------------------------
   02B2                    1351 _rf_spi_execute_command:
   02B2 E5 82         [12] 1352 	mov	a,dpl
                           1353 ;	../src/rf/src/rf_spi_execute_command.c:52: unsigned char status = instruction; //status writes the instruction, then reads the current STATUS value
   02B4 90 00 1E      [24] 1354 	mov	dptr,#_rf_spi_execute_command_instruction_1_57
   02B7 F0            [24] 1355 	movx	@dptr,a
   02B8 FF            [12] 1356 	mov	r7,a
   02B9 90 00 1F      [24] 1357 	mov	dptr,#_rf_spi_execute_command_status_1_58
   02BC F0            [24] 1358 	movx	@dptr,a
                           1359 ;	../src/rf/src/rf_spi_execute_command.c:54: rf_clear_csn(); //Clear CSN to start the transaction
   02BD C2 E9         [12] 1360 	clr _RFCON_SB_RFCSN 
                           1361 ;	../src/rf/src/rf_spi_execute_command.c:57: rf_spi_send_read(&status, 1, true);
   02BF 90 00 20      [24] 1362 	mov	dptr,#_rf_spi_send_read_PARM_2
   02C2 74 01         [12] 1363 	mov	a,#0x01
   02C4 F0            [24] 1364 	movx	@dptr,a
   02C5 E4            [12] 1365 	clr	a
   02C6 A3            [24] 1366 	inc	dptr
   02C7 F0            [24] 1367 	movx	@dptr,a
   02C8 90 00 22      [24] 1368 	mov	dptr,#_rf_spi_send_read_PARM_3
   02CB 74 01         [12] 1369 	mov	a,#0x01
   02CD F0            [24] 1370 	movx	@dptr,a
   02CE 90 00 1F      [24] 1371 	mov	dptr,#_rf_spi_execute_command_status_1_58
   02D1 75 F0 00      [24] 1372 	mov	b,#0x00
   02D4 12 03 0E      [24] 1373 	lcall	_rf_spi_send_read
                           1374 ;	../src/rf/src/rf_spi_execute_command.c:58: rf_spi_send_read(dataptr, len, copydata);
   02D7 90 00 18      [24] 1375 	mov	dptr,#_rf_spi_execute_command_PARM_2
   02DA E0            [24] 1376 	movx	a,@dptr
   02DB FD            [12] 1377 	mov	r5,a
   02DC A3            [24] 1378 	inc	dptr
   02DD E0            [24] 1379 	movx	a,@dptr
   02DE FE            [12] 1380 	mov	r6,a
   02DF A3            [24] 1381 	inc	dptr
   02E0 E0            [24] 1382 	movx	a,@dptr
   02E1 FF            [12] 1383 	mov	r7,a
   02E2 90 00 1B      [24] 1384 	mov	dptr,#_rf_spi_execute_command_PARM_3
   02E5 E0            [24] 1385 	movx	a,@dptr
   02E6 FB            [12] 1386 	mov	r3,a
   02E7 A3            [24] 1387 	inc	dptr
   02E8 E0            [24] 1388 	movx	a,@dptr
   02E9 FC            [12] 1389 	mov	r4,a
   02EA 90 00 1D      [24] 1390 	mov	dptr,#_rf_spi_execute_command_PARM_4
   02ED E0            [24] 1391 	movx	a,@dptr
   02EE FA            [12] 1392 	mov	r2,a
   02EF 90 00 20      [24] 1393 	mov	dptr,#_rf_spi_send_read_PARM_2
   02F2 EB            [12] 1394 	mov	a,r3
   02F3 F0            [24] 1395 	movx	@dptr,a
   02F4 EC            [12] 1396 	mov	a,r4
   02F5 A3            [24] 1397 	inc	dptr
   02F6 F0            [24] 1398 	movx	@dptr,a
   02F7 90 00 22      [24] 1399 	mov	dptr,#_rf_spi_send_read_PARM_3
   02FA EA            [12] 1400 	mov	a,r2
   02FB F0            [24] 1401 	movx	@dptr,a
   02FC 8D 82         [24] 1402 	mov	dpl,r5
   02FE 8E 83         [24] 1403 	mov	dph,r6
   0300 8F F0         [24] 1404 	mov	b,r7
   0302 12 03 0E      [24] 1405 	lcall	_rf_spi_send_read
                           1406 ;	../src/rf/src/rf_spi_execute_command.c:60: rf_set_csn(); //Set CSN to end the transaction
   0305 D2 E9         [12] 1407 	setb _RFCON_SB_RFCSN 
                           1408 ;	../src/rf/src/rf_spi_execute_command.c:62: return status; //Return the value of STATUS
   0307 90 00 1F      [24] 1409 	mov	dptr,#_rf_spi_execute_command_status_1_58
   030A E0            [24] 1410 	movx	a,@dptr
   030B F5 82         [12] 1411 	mov	dpl,a
   030D 22            [24] 1412 	ret
                           1413 ;------------------------------------------------------------
                           1414 ;Allocation info for local variables in function 'rf_spi_send_read'
                           1415 ;------------------------------------------------------------
                           1416 ;sloc0                     Allocated with name '_rf_spi_send_read_sloc0_1_0'
                           1417 ;sloc1                     Allocated with name '_rf_spi_send_read_sloc1_1_0'
                           1418 ;len                       Allocated with name '_rf_spi_send_read_PARM_2'
                           1419 ;copydata                  Allocated with name '_rf_spi_send_read_PARM_3'
                           1420 ;dataptr                   Allocated with name '_rf_spi_send_read_dataptr_1_59'
                           1421 ;i                         Allocated with name '_rf_spi_send_read_i_1_60'
                           1422 ;tempbyte                  Allocated with name '_rf_spi_send_read_tempbyte_1_60'
                           1423 ;------------------------------------------------------------
                           1424 ;	../src/rf/src/rf_spi_send_read.c:49: void rf_spi_send_read(unsigned char * dataptr, unsigned int len, bool copydata)
                           1425 ;	-----------------------------------------
                           1426 ;	 function rf_spi_send_read
                           1427 ;	-----------------------------------------
   030E                    1428 _rf_spi_send_read:
   030E AF F0         [24] 1429 	mov	r7,b
   0310 AE 83         [24] 1430 	mov	r6,dph
   0312 E5 82         [12] 1431 	mov	a,dpl
   0314 90 00 23      [24] 1432 	mov	dptr,#_rf_spi_send_read_dataptr_1_59
   0317 F0            [24] 1433 	movx	@dptr,a
   0318 EE            [12] 1434 	mov	a,r6
   0319 A3            [24] 1435 	inc	dptr
   031A F0            [24] 1436 	movx	@dptr,a
   031B EF            [12] 1437 	mov	a,r7
   031C A3            [24] 1438 	inc	dptr
   031D F0            [24] 1439 	movx	@dptr,a
                           1440 ;	../src/rf/src/rf_spi_send_read.c:55: for(i = 0; i < len; i++)
   031E 90 00 23      [24] 1441 	mov	dptr,#_rf_spi_send_read_dataptr_1_59
   0321 E0            [24] 1442 	movx	a,@dptr
   0322 FD            [12] 1443 	mov	r5,a
   0323 A3            [24] 1444 	inc	dptr
   0324 E0            [24] 1445 	movx	a,@dptr
   0325 FE            [12] 1446 	mov	r6,a
   0326 A3            [24] 1447 	inc	dptr
   0327 E0            [24] 1448 	movx	a,@dptr
   0328 FF            [12] 1449 	mov	r7,a
   0329 90 00 22      [24] 1450 	mov	dptr,#_rf_spi_send_read_PARM_3
   032C E0            [24] 1451 	movx	a,@dptr
   032D FC            [12] 1452 	mov	r4,a
   032E 90 00 20      [24] 1453 	mov	dptr,#_rf_spi_send_read_PARM_2
   0331 E0            [24] 1454 	movx	a,@dptr
   0332 FA            [12] 1455 	mov	r2,a
   0333 A3            [24] 1456 	inc	dptr
   0334 E0            [24] 1457 	movx	a,@dptr
   0335 FB            [12] 1458 	mov	r3,a
   0336 78 00         [12] 1459 	mov	r0,#0x00
   0338 79 00         [12] 1460 	mov	r1,#0x00
   033A                    1461 00105$:
   033A C3            [12] 1462 	clr	c
   033B E8            [12] 1463 	mov	a,r0
   033C 9A            [12] 1464 	subb	a,r2
   033D E9            [12] 1465 	mov	a,r1
   033E 9B            [12] 1466 	subb	a,r3
   033F 50 5F         [24] 1467 	jnc	00107$
                           1468 ;	../src/rf/src/rf_spi_send_read.c:57: tempbyte = rf_spi_send_read_byte(dataptr[i]); //Send the value, and then save the received value
   0341 C0 02         [24] 1469 	push	ar2
   0343 C0 03         [24] 1470 	push	ar3
   0345 E8            [12] 1471 	mov	a,r0
   0346 2D            [12] 1472 	add	a,r5
   0347 F5 08         [12] 1473 	mov	_rf_spi_send_read_sloc0_1_0,a
   0349 E9            [12] 1474 	mov	a,r1
   034A 3E            [12] 1475 	addc	a,r6
   034B F5 09         [12] 1476 	mov	(_rf_spi_send_read_sloc0_1_0 + 1),a
   034D 8F 0A         [24] 1477 	mov	(_rf_spi_send_read_sloc0_1_0 + 2),r7
   034F 85 08 82      [24] 1478 	mov	dpl,_rf_spi_send_read_sloc0_1_0
   0352 85 09 83      [24] 1479 	mov	dph,(_rf_spi_send_read_sloc0_1_0 + 1)
   0355 85 0A F0      [24] 1480 	mov	b,(_rf_spi_send_read_sloc0_1_0 + 2)
   0358 12 19 4B      [24] 1481 	lcall	__gptrget
   035B FB            [12] 1482 	mov	r3,a
   035C F5 82         [12] 1483 	mov	dpl,a
   035E C0 07         [24] 1484 	push	ar7
   0360 C0 06         [24] 1485 	push	ar6
   0362 C0 05         [24] 1486 	push	ar5
   0364 C0 04         [24] 1487 	push	ar4
   0366 C0 03         [24] 1488 	push	ar3
   0368 C0 02         [24] 1489 	push	ar2
   036A C0 01         [24] 1490 	push	ar1
   036C C0 00         [24] 1491 	push	ar0
   036E 12 04 28      [24] 1492 	lcall	_rf_spi_send_read_byte
   0371 85 82 0B      [24] 1493 	mov	_rf_spi_send_read_sloc1_1_0,dpl
   0374 D0 00         [24] 1494 	pop	ar0
   0376 D0 01         [24] 1495 	pop	ar1
   0378 D0 02         [24] 1496 	pop	ar2
   037A D0 03         [24] 1497 	pop	ar3
   037C D0 04         [24] 1498 	pop	ar4
   037E D0 05         [24] 1499 	pop	ar5
   0380 D0 06         [24] 1500 	pop	ar6
   0382 D0 07         [24] 1501 	pop	ar7
                           1502 ;	../src/rf/src/rf_spi_send_read.c:60: if(copydata != false)
   0384 D0 03         [24] 1503 	pop	ar3
   0386 D0 02         [24] 1504 	pop	ar2
   0388 EC            [12] 1505 	mov	a,r4
   0389 60 0E         [24] 1506 	jz	00106$
                           1507 ;	../src/rf/src/rf_spi_send_read.c:62: dataptr[i] = tempbyte;
   038B 85 08 82      [24] 1508 	mov	dpl,_rf_spi_send_read_sloc0_1_0
   038E 85 09 83      [24] 1509 	mov	dph,(_rf_spi_send_read_sloc0_1_0 + 1)
   0391 85 0A F0      [24] 1510 	mov	b,(_rf_spi_send_read_sloc0_1_0 + 2)
   0394 E5 0B         [12] 1511 	mov	a,_rf_spi_send_read_sloc1_1_0
   0396 12 18 A4      [24] 1512 	lcall	__gptrput
   0399                    1513 00106$:
                           1514 ;	../src/rf/src/rf_spi_send_read.c:55: for(i = 0; i < len; i++)
   0399 08            [12] 1515 	inc	r0
   039A B8 00 9D      [24] 1516 	cjne	r0,#0x00,00105$
   039D 09            [12] 1517 	inc	r1
   039E 80 9A         [24] 1518 	sjmp	00105$
   03A0                    1519 00107$:
   03A0 22            [24] 1520 	ret
                           1521 ;------------------------------------------------------------
                           1522 ;Allocation info for local variables in function 'rf_power_up_param'
                           1523 ;------------------------------------------------------------
                           1524 ;config                    Allocated with name '_rf_power_up_param_PARM_2'
                           1525 ;rx_active_mode            Allocated with name '_rf_power_up_param_rx_active_mode_1_63'
                           1526 ;------------------------------------------------------------
                           1527 ;	../src/rf/src/rf_power_up_param.c:49: void rf_power_up_param(bool rx_active_mode, unsigned char config)
                           1528 ;	-----------------------------------------
                           1529 ;	 function rf_power_up_param
                           1530 ;	-----------------------------------------
   03A1                    1531 _rf_power_up_param:
   03A1 E5 82         [12] 1532 	mov	a,dpl
   03A3 90 00 27      [24] 1533 	mov	dptr,#_rf_power_up_param_rx_active_mode_1_63
   03A6 F0            [24] 1534 	movx	@dptr,a
                           1535 ;	../src/rf/src/rf_power_up_param.c:52: config |= RF_CONFIG_PWR_UP;
   03A7 90 00 26      [24] 1536 	mov	dptr,#_rf_power_up_param_PARM_2
   03AA E0            [24] 1537 	movx	a,@dptr
   03AB 44 02         [12] 1538 	orl	a,#0x02
   03AD F0            [24] 1539 	movx	@dptr,a
                           1540 ;	../src/rf/src/rf_power_up_param.c:53: rf_write_register(RF_CONFIG, &config, 1);
   03AE 90 00 08      [24] 1541 	mov	dptr,#_rf_write_register_PARM_2
   03B1 74 26         [12] 1542 	mov	a,#_rf_power_up_param_PARM_2
   03B3 F0            [24] 1543 	movx	@dptr,a
   03B4 74 00         [12] 1544 	mov	a,#(_rf_power_up_param_PARM_2 >> 8)
   03B6 A3            [24] 1545 	inc	dptr
   03B7 F0            [24] 1546 	movx	@dptr,a
   03B8 E4            [12] 1547 	clr	a
   03B9 A3            [24] 1548 	inc	dptr
   03BA F0            [24] 1549 	movx	@dptr,a
   03BB 90 00 0B      [24] 1550 	mov	dptr,#_rf_write_register_PARM_3
   03BE 74 01         [12] 1551 	mov	a,#0x01
   03C0 F0            [24] 1552 	movx	@dptr,a
   03C1 E4            [12] 1553 	clr	a
   03C2 A3            [24] 1554 	inc	dptr
   03C3 F0            [24] 1555 	movx	@dptr,a
   03C4 75 82 00      [24] 1556 	mov	dpl,#0x00
   03C7 12 01 39      [24] 1557 	lcall	_rf_write_register
                           1558 ;	../src/rf/src/rf_power_up_param.c:55: delay_us(1); //Delay for power up
   03CA 90 00 01      [24] 1559 	mov	dptr,#0x0001
   03CD 12 08 BF      [24] 1560 	lcall	_delay_us
                           1561 ;	../src/rf/src/rf_power_up_param.c:58: if((config & RF_CONFIG_PRIM_RX) == 0)
   03D0 90 00 26      [24] 1562 	mov	dptr,#_rf_power_up_param_PARM_2
   03D3 E0            [24] 1563 	movx	a,@dptr
   03D4 FF            [12] 1564 	mov	r7,a
   03D5 20 E0 03      [24] 1565 	jb	acc.0,00105$
                           1566 ;	../src/rf/src/rf_power_up_param.c:60: rf_clear_ce(); //Clear CE for TX mode
   03D8 C2 E8         [12] 1567 	clr _RFCON_SB_RFCE 
   03DA 22            [24] 1568 	ret
   03DB                    1569 00105$:
                           1570 ;	../src/rf/src/rf_power_up_param.c:65: if(rx_active_mode != false)
   03DB 90 00 27      [24] 1571 	mov	dptr,#_rf_power_up_param_rx_active_mode_1_63
   03DE E0            [24] 1572 	movx	a,@dptr
   03DF FF            [12] 1573 	mov	r7,a
   03E0 60 08         [24] 1574 	jz	00102$
                           1575 ;	../src/rf/src/rf_power_up_param.c:67: rf_set_ce();
   03E2 D2 E8         [12] 1576 	setb _RFCON_SB_RFCE 
   03E4 90 00 04      [24] 1577 	mov	dptr,#0x0004
   03E7 02 08 BF      [24] 1578 	ljmp	_delay_us
   03EA                    1579 00102$:
                           1580 ;	../src/rf/src/rf_power_up_param.c:71: rf_clear_ce();
   03EA C2 E8         [12] 1581 	clr _RFCON_SB_RFCE 
   03EC 22            [24] 1582 	ret
                           1583 ;------------------------------------------------------------
                           1584 ;Allocation info for local variables in function 'rf_read_register'
                           1585 ;------------------------------------------------------------
                           1586 ;dataptr                   Allocated with name '_rf_read_register_PARM_2'
                           1587 ;len                       Allocated with name '_rf_read_register_PARM_3'
                           1588 ;regnumber                 Allocated with name '_rf_read_register_regnumber_1_69'
                           1589 ;------------------------------------------------------------
                           1590 ;	../src/rf/src/rf_read_register.c:49: unsigned char rf_read_register(unsigned char regnumber, unsigned char * dataptr, unsigned int len)
                           1591 ;	-----------------------------------------
                           1592 ;	 function rf_read_register
                           1593 ;	-----------------------------------------
   03ED                    1594 _rf_read_register:
   03ED E5 82         [12] 1595 	mov	a,dpl
                           1596 ;	../src/rf/src/rf_read_register.c:52: return rf_spi_execute_command(regnumber & RF_R_REGISTER_DATA, dataptr, len, true);
   03EF 90 00 2D      [24] 1597 	mov	dptr,#_rf_read_register_regnumber_1_69
   03F2 F0            [24] 1598 	movx	@dptr,a
   03F3 FF            [12] 1599 	mov	r7,a
   03F4 53 07 1F      [24] 1600 	anl	ar7,#0x1F
   03F7 90 00 28      [24] 1601 	mov	dptr,#_rf_read_register_PARM_2
   03FA E0            [24] 1602 	movx	a,@dptr
   03FB FC            [12] 1603 	mov	r4,a
   03FC A3            [24] 1604 	inc	dptr
   03FD E0            [24] 1605 	movx	a,@dptr
   03FE FD            [12] 1606 	mov	r5,a
   03FF A3            [24] 1607 	inc	dptr
   0400 E0            [24] 1608 	movx	a,@dptr
   0401 FE            [12] 1609 	mov	r6,a
   0402 90 00 2B      [24] 1610 	mov	dptr,#_rf_read_register_PARM_3
   0405 E0            [24] 1611 	movx	a,@dptr
   0406 FA            [12] 1612 	mov	r2,a
   0407 A3            [24] 1613 	inc	dptr
   0408 E0            [24] 1614 	movx	a,@dptr
   0409 FB            [12] 1615 	mov	r3,a
   040A 90 00 18      [24] 1616 	mov	dptr,#_rf_spi_execute_command_PARM_2
   040D EC            [12] 1617 	mov	a,r4
   040E F0            [24] 1618 	movx	@dptr,a
   040F ED            [12] 1619 	mov	a,r5
   0410 A3            [24] 1620 	inc	dptr
   0411 F0            [24] 1621 	movx	@dptr,a
   0412 EE            [12] 1622 	mov	a,r6
   0413 A3            [24] 1623 	inc	dptr
   0414 F0            [24] 1624 	movx	@dptr,a
   0415 90 00 1B      [24] 1625 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0418 EA            [12] 1626 	mov	a,r2
   0419 F0            [24] 1627 	movx	@dptr,a
   041A EB            [12] 1628 	mov	a,r3
   041B A3            [24] 1629 	inc	dptr
   041C F0            [24] 1630 	movx	@dptr,a
   041D 90 00 1D      [24] 1631 	mov	dptr,#_rf_spi_execute_command_PARM_4
   0420 74 01         [12] 1632 	mov	a,#0x01
   0422 F0            [24] 1633 	movx	@dptr,a
   0423 8F 82         [24] 1634 	mov	dpl,r7
   0425 02 02 B2      [24] 1635 	ljmp	_rf_spi_execute_command
                           1636 ;------------------------------------------------------------
                           1637 ;Allocation info for local variables in function 'rf_spi_send_read_byte'
                           1638 ;------------------------------------------------------------
                           1639 ;byte                      Allocated with name '_rf_spi_send_read_byte_byte_1_71'
                           1640 ;------------------------------------------------------------
                           1641 ;	../src/rf/src/rf_spi_send_read_byte.c:47: unsigned char rf_spi_send_read_byte(unsigned char byte)
                           1642 ;	-----------------------------------------
                           1643 ;	 function rf_spi_send_read_byte
                           1644 ;	-----------------------------------------
   0428                    1645 _rf_spi_send_read_byte:
   0428 E5 82         [12] 1646 	mov	a,dpl
                           1647 ;	../src/rf/src/rf_spi_send_read_byte.c:49: SPIRDAT = byte; //Send byte over SPI
   042A 90 00 2E      [24] 1648 	mov	dptr,#_rf_spi_send_read_byte_byte_1_71
   042D F0            [24] 1649 	movx	@dptr,a
   042E F5 E7         [12] 1650 	mov	_SPIRDAT,a
                           1651 ;	../src/rf/src/rf_spi_send_read_byte.c:51: while(!(SPIRSTAT & SPIRSTAT_IRQ_RX_FIFO_READY)); //Wait for the transaction to finish
   0430                    1652 00101$:
   0430 E5 E6         [12] 1653 	mov	a,_SPIRSTAT
   0432 30 E2 FB      [24] 1654 	jnb	acc.2,00101$
                           1655 ;	../src/rf/src/rf_spi_send_read_byte.c:53: IRCON_SB_RFRDY = BIT_FALSE; //Clear the IRQ bit
   0435 C2 C0         [12] 1656 	clr	_IRCON_SB_RFRDY
                           1657 ;	../src/rf/src/rf_spi_send_read_byte.c:55: return SPIRDAT; //Return the received value
   0437 85 E7 82      [24] 1658 	mov	dpl,_SPIRDAT
   043A 22            [24] 1659 	ret
                           1660 ;------------------------------------------------------------
                           1661 ;Allocation info for local variables in function 'rf_set_rx_addr'
                           1662 ;------------------------------------------------------------
                           1663 ;len                       Allocated with name '_rf_set_rx_addr_PARM_2'
                           1664 ;rxpipenum                 Allocated with name '_rf_set_rx_addr_PARM_3'
                           1665 ;address                   Allocated with name '_rf_set_rx_addr_address_1_73'
                           1666 ;------------------------------------------------------------
                           1667 ;	../src/rf/src/rf_set_rx_addr.c:49: void rf_set_rx_addr(unsigned char * address, unsigned int len, unsigned char rxpipenum)
                           1668 ;	-----------------------------------------
                           1669 ;	 function rf_set_rx_addr
                           1670 ;	-----------------------------------------
   043B                    1671 _rf_set_rx_addr:
   043B AF F0         [24] 1672 	mov	r7,b
   043D AE 83         [24] 1673 	mov	r6,dph
   043F E5 82         [12] 1674 	mov	a,dpl
   0441 90 00 32      [24] 1675 	mov	dptr,#_rf_set_rx_addr_address_1_73
   0444 F0            [24] 1676 	movx	@dptr,a
   0445 EE            [12] 1677 	mov	a,r6
   0446 A3            [24] 1678 	inc	dptr
   0447 F0            [24] 1679 	movx	@dptr,a
   0448 EF            [12] 1680 	mov	a,r7
   0449 A3            [24] 1681 	inc	dptr
   044A F0            [24] 1682 	movx	@dptr,a
                           1683 ;	../src/rf/src/rf_set_rx_addr.c:52: if(rxpipenum > 5)
   044B 90 00 31      [24] 1684 	mov	dptr,#_rf_set_rx_addr_PARM_3
   044E E0            [24] 1685 	movx	a,@dptr
   044F FF            [12] 1686 	mov  r7,a
   0450 24 FA         [12] 1687 	add	a,#0xff - 0x05
   0452 50 01         [24] 1688 	jnc	00102$
                           1689 ;	../src/rf/src/rf_set_rx_addr.c:54: return;
   0454 22            [24] 1690 	ret
   0455                    1691 00102$:
                           1692 ;	../src/rf/src/rf_set_rx_addr.c:57: rf_write_register(RF_RX_ADDR_P0 + rxpipenum, address, len); //Write the requested address to the requested RX pipe
   0455 74 0A         [12] 1693 	mov	a,#0x0A
   0457 2F            [12] 1694 	add	a,r7
   0458 FF            [12] 1695 	mov	r7,a
   0459 90 00 32      [24] 1696 	mov	dptr,#_rf_set_rx_addr_address_1_73
   045C E0            [24] 1697 	movx	a,@dptr
   045D FC            [12] 1698 	mov	r4,a
   045E A3            [24] 1699 	inc	dptr
   045F E0            [24] 1700 	movx	a,@dptr
   0460 FD            [12] 1701 	mov	r5,a
   0461 A3            [24] 1702 	inc	dptr
   0462 E0            [24] 1703 	movx	a,@dptr
   0463 FE            [12] 1704 	mov	r6,a
   0464 90 00 2F      [24] 1705 	mov	dptr,#_rf_set_rx_addr_PARM_2
   0467 E0            [24] 1706 	movx	a,@dptr
   0468 FA            [12] 1707 	mov	r2,a
   0469 A3            [24] 1708 	inc	dptr
   046A E0            [24] 1709 	movx	a,@dptr
   046B FB            [12] 1710 	mov	r3,a
   046C 90 00 08      [24] 1711 	mov	dptr,#_rf_write_register_PARM_2
   046F EC            [12] 1712 	mov	a,r4
   0470 F0            [24] 1713 	movx	@dptr,a
   0471 ED            [12] 1714 	mov	a,r5
   0472 A3            [24] 1715 	inc	dptr
   0473 F0            [24] 1716 	movx	@dptr,a
   0474 EE            [12] 1717 	mov	a,r6
   0475 A3            [24] 1718 	inc	dptr
   0476 F0            [24] 1719 	movx	@dptr,a
   0477 90 00 0B      [24] 1720 	mov	dptr,#_rf_write_register_PARM_3
   047A EA            [12] 1721 	mov	a,r2
   047B F0            [24] 1722 	movx	@dptr,a
   047C EB            [12] 1723 	mov	a,r3
   047D A3            [24] 1724 	inc	dptr
   047E F0            [24] 1725 	movx	@dptr,a
   047F 8F 82         [24] 1726 	mov	dpl,r7
   0481 02 01 39      [24] 1727 	ljmp	_rf_write_register
                           1728 ;------------------------------------------------------------
                           1729 ;Allocation info for local variables in function 'rf_power_down'
                           1730 ;------------------------------------------------------------
                           1731 ;config                    Allocated with name '_rf_power_down_config_1_76'
                           1732 ;------------------------------------------------------------
                           1733 ;	../src/rf/src/rf_power_down.c:47: void rf_power_down()
                           1734 ;	-----------------------------------------
                           1735 ;	 function rf_power_down
                           1736 ;	-----------------------------------------
   0484                    1737 _rf_power_down:
                           1738 ;	../src/rf/src/rf_power_down.c:51: rf_clear_ce(); //Clear the CE pin
   0484 C2 E8         [12] 1739 	clr _RFCON_SB_RFCE 
                           1740 ;	../src/rf/src/rf_power_down.c:53: rf_read_register(RF_CONFIG, &config, 1); //Read the current value of the CONFIG register
   0486 90 00 28      [24] 1741 	mov	dptr,#_rf_read_register_PARM_2
   0489 74 35         [12] 1742 	mov	a,#_rf_power_down_config_1_76
   048B F0            [24] 1743 	movx	@dptr,a
   048C 74 00         [12] 1744 	mov	a,#(_rf_power_down_config_1_76 >> 8)
   048E A3            [24] 1745 	inc	dptr
   048F F0            [24] 1746 	movx	@dptr,a
   0490 E4            [12] 1747 	clr	a
   0491 A3            [24] 1748 	inc	dptr
   0492 F0            [24] 1749 	movx	@dptr,a
   0493 90 00 2B      [24] 1750 	mov	dptr,#_rf_read_register_PARM_3
   0496 74 01         [12] 1751 	mov	a,#0x01
   0498 F0            [24] 1752 	movx	@dptr,a
   0499 E4            [12] 1753 	clr	a
   049A A3            [24] 1754 	inc	dptr
   049B F0            [24] 1755 	movx	@dptr,a
   049C 75 82 00      [24] 1756 	mov	dpl,#0x00
   049F 12 03 ED      [24] 1757 	lcall	_rf_read_register
                           1758 ;	../src/rf/src/rf_power_down.c:56: if((config & RF_CONFIG_PWR_UP) == 0)
   04A2 90 00 35      [24] 1759 	mov	dptr,#_rf_power_down_config_1_76
   04A5 E0            [24] 1760 	movx	a,@dptr
   04A6 FF            [12] 1761 	mov	r7,a
   04A7 20 E1 01      [24] 1762 	jb	acc.1,00102$
                           1763 ;	../src/rf/src/rf_power_down.c:58: return;
   04AA 22            [24] 1764 	ret
   04AB                    1765 00102$:
                           1766 ;	../src/rf/src/rf_power_down.c:62: config &= (~RF_CONFIG_PWR_UP);
   04AB 90 00 35      [24] 1767 	mov	dptr,#_rf_power_down_config_1_76
   04AE 74 FD         [12] 1768 	mov	a,#0xFD
   04B0 5F            [12] 1769 	anl	a,r7
   04B1 F0            [24] 1770 	movx	@dptr,a
                           1771 ;	../src/rf/src/rf_power_down.c:63: rf_write_register(RF_CONFIG, &config, 1);
   04B2 90 00 08      [24] 1772 	mov	dptr,#_rf_write_register_PARM_2
   04B5 74 35         [12] 1773 	mov	a,#_rf_power_down_config_1_76
   04B7 F0            [24] 1774 	movx	@dptr,a
   04B8 74 00         [12] 1775 	mov	a,#(_rf_power_down_config_1_76 >> 8)
   04BA A3            [24] 1776 	inc	dptr
   04BB F0            [24] 1777 	movx	@dptr,a
   04BC E4            [12] 1778 	clr	a
   04BD A3            [24] 1779 	inc	dptr
   04BE F0            [24] 1780 	movx	@dptr,a
   04BF 90 00 0B      [24] 1781 	mov	dptr,#_rf_write_register_PARM_3
   04C2 74 01         [12] 1782 	mov	a,#0x01
   04C4 F0            [24] 1783 	movx	@dptr,a
   04C5 E4            [12] 1784 	clr	a
   04C6 A3            [24] 1785 	inc	dptr
   04C7 F0            [24] 1786 	movx	@dptr,a
   04C8 75 82 00      [24] 1787 	mov	dpl,#0x00
   04CB 02 01 39      [24] 1788 	ljmp	_rf_write_register
                           1789 ;------------------------------------------------------------
                           1790 ;Allocation info for local variables in function 'rf_power_up'
                           1791 ;------------------------------------------------------------
                           1792 ;rx_active_mode            Allocated with name '_rf_power_up_rx_active_mode_1_78'
                           1793 ;config                    Allocated with name '_rf_power_up_config_1_79'
                           1794 ;------------------------------------------------------------
                           1795 ;	../src/rf/src/rf_power_up.c:47: void rf_power_up(bool rx_active_mode)
                           1796 ;	-----------------------------------------
                           1797 ;	 function rf_power_up
                           1798 ;	-----------------------------------------
   04CE                    1799 _rf_power_up:
   04CE E5 82         [12] 1800 	mov	a,dpl
   04D0 90 00 36      [24] 1801 	mov	dptr,#_rf_power_up_rx_active_mode_1_78
   04D3 F0            [24] 1802 	movx	@dptr,a
                           1803 ;	../src/rf/src/rf_power_up.c:51: rf_read_register(RF_CONFIG, &config, 1); //Get the current value of the CONFIG register
   04D4 90 00 28      [24] 1804 	mov	dptr,#_rf_read_register_PARM_2
   04D7 74 37         [12] 1805 	mov	a,#_rf_power_up_config_1_79
   04D9 F0            [24] 1806 	movx	@dptr,a
   04DA 74 00         [12] 1807 	mov	a,#(_rf_power_up_config_1_79 >> 8)
   04DC A3            [24] 1808 	inc	dptr
   04DD F0            [24] 1809 	movx	@dptr,a
   04DE E4            [12] 1810 	clr	a
   04DF A3            [24] 1811 	inc	dptr
   04E0 F0            [24] 1812 	movx	@dptr,a
   04E1 90 00 2B      [24] 1813 	mov	dptr,#_rf_read_register_PARM_3
   04E4 74 01         [12] 1814 	mov	a,#0x01
   04E6 F0            [24] 1815 	movx	@dptr,a
   04E7 E4            [12] 1816 	clr	a
   04E8 A3            [24] 1817 	inc	dptr
   04E9 F0            [24] 1818 	movx	@dptr,a
   04EA 75 82 00      [24] 1819 	mov	dpl,#0x00
   04ED 12 03 ED      [24] 1820 	lcall	_rf_read_register
                           1821 ;	../src/rf/src/rf_power_up.c:54: if((config & RF_CONFIG_PWR_UP) != 0)
   04F0 90 00 37      [24] 1822 	mov	dptr,#_rf_power_up_config_1_79
   04F3 E0            [24] 1823 	movx	a,@dptr
   04F4 FF            [12] 1824 	mov	r7,a
   04F5 30 E1 01      [24] 1825 	jnb	acc.1,00102$
                           1826 ;	../src/rf/src/rf_power_up.c:56: return;
   04F8 22            [24] 1827 	ret
   04F9                    1828 00102$:
                           1829 ;	../src/rf/src/rf_power_up.c:60: config |= RF_CONFIG_PWR_UP;
   04F9 90 00 37      [24] 1830 	mov	dptr,#_rf_power_up_config_1_79
   04FC 74 02         [12] 1831 	mov	a,#0x02
   04FE 4F            [12] 1832 	orl	a,r7
   04FF F0            [24] 1833 	movx	@dptr,a
                           1834 ;	../src/rf/src/rf_power_up.c:61: rf_write_register(RF_CONFIG, &config, 1);
   0500 90 00 08      [24] 1835 	mov	dptr,#_rf_write_register_PARM_2
   0503 74 37         [12] 1836 	mov	a,#_rf_power_up_config_1_79
   0505 F0            [24] 1837 	movx	@dptr,a
   0506 74 00         [12] 1838 	mov	a,#(_rf_power_up_config_1_79 >> 8)
   0508 A3            [24] 1839 	inc	dptr
   0509 F0            [24] 1840 	movx	@dptr,a
   050A E4            [12] 1841 	clr	a
   050B A3            [24] 1842 	inc	dptr
   050C F0            [24] 1843 	movx	@dptr,a
   050D 90 00 0B      [24] 1844 	mov	dptr,#_rf_write_register_PARM_3
   0510 74 01         [12] 1845 	mov	a,#0x01
   0512 F0            [24] 1846 	movx	@dptr,a
   0513 E4            [12] 1847 	clr	a
   0514 A3            [24] 1848 	inc	dptr
   0515 F0            [24] 1849 	movx	@dptr,a
   0516 75 82 00      [24] 1850 	mov	dpl,#0x00
   0519 12 01 39      [24] 1851 	lcall	_rf_write_register
                           1852 ;	../src/rf/src/rf_power_up.c:63: delay_us(1); //Delay for power up
   051C 90 00 01      [24] 1853 	mov	dptr,#0x0001
   051F 12 08 BF      [24] 1854 	lcall	_delay_us
                           1855 ;	../src/rf/src/rf_power_up.c:66: if((config & RF_CONFIG_PRIM_RX) == 0)
   0522 90 00 37      [24] 1856 	mov	dptr,#_rf_power_up_config_1_79
   0525 E0            [24] 1857 	movx	a,@dptr
   0526 FF            [12] 1858 	mov	r7,a
   0527 20 E0 03      [24] 1859 	jb	acc.0,00107$
                           1860 ;	../src/rf/src/rf_power_up.c:68: rf_clear_ce(); //Clear CE for TX mode
   052A C2 E8         [12] 1861 	clr _RFCON_SB_RFCE 
   052C 22            [24] 1862 	ret
   052D                    1863 00107$:
                           1864 ;	../src/rf/src/rf_power_up.c:73: if(rx_active_mode != false)
   052D 90 00 36      [24] 1865 	mov	dptr,#_rf_power_up_rx_active_mode_1_78
   0530 E0            [24] 1866 	movx	a,@dptr
   0531 FF            [12] 1867 	mov	r7,a
   0532 60 08         [24] 1868 	jz	00104$
                           1869 ;	../src/rf/src/rf_power_up.c:75: rf_set_ce();
   0534 D2 E8         [12] 1870 	setb _RFCON_SB_RFCE 
   0536 90 00 04      [24] 1871 	mov	dptr,#0x0004
   0539 02 08 BF      [24] 1872 	ljmp	_delay_us
   053C                    1873 00104$:
                           1874 ;	../src/rf/src/rf_power_up.c:79: rf_clear_ce();
   053C C2 E8         [12] 1875 	clr _RFCON_SB_RFCE 
   053E 22            [24] 1876 	ret
                           1877 ;------------------------------------------------------------
                           1878 ;Allocation info for local variables in function 'gpio_pin_configure'
                           1879 ;------------------------------------------------------------
                           1880 ;gpio_pin_config_options   Allocated with name '_gpio_pin_configure_PARM_2'
                           1881 ;gpio_pin_id               Allocated with name '_gpio_pin_configure_gpio_pin_id_1_86'
                           1882 ;------------------------------------------------------------
                           1883 ;	../src/gpio/src/gpio_pin_configure.c:47: void gpio_pin_configure(gpio_pin_id_t gpio_pin_id, uint8_t gpio_pin_config_options)
                           1884 ;	-----------------------------------------
                           1885 ;	 function gpio_pin_configure
                           1886 ;	-----------------------------------------
   053F                    1887 _gpio_pin_configure:
   053F E5 82         [12] 1888 	mov	a,dpl
                           1889 ;	../src/gpio/src/gpio_pin_configure.c:50: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   0541 90 00 39      [24] 1890 	mov	dptr,#_gpio_pin_configure_gpio_pin_id_1_86
   0544 F0            [24] 1891 	movx	@dptr,a
   0545 FF            [12] 1892 	mov  r7,a
   0546 24 F8         [12] 1893 	add	a,#0xff - 0x07
   0548 50 03         [24] 1894 	jnc	00174$
   054A 02 05 C3      [24] 1895 	ljmp	00134$
   054D                    1896 00174$:
                           1897 ;	../src/gpio/src/gpio_pin_configure.c:53: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   054D 90 00 38      [24] 1898 	mov	dptr,#_gpio_pin_configure_PARM_2
   0550 E0            [24] 1899 	movx	a,@dptr
   0551 FE            [12] 1900 	mov	r6,a
   0552 FD            [12] 1901 	mov	r5,a
   0553 ED            [12] 1902 	mov	a,r5
   0554 30 E0 4C      [24] 1903 	jnb	acc.0,00105$
                           1904 ;	../src/gpio/src/gpio_pin_configure.c:56: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   0557 EE            [12] 1905 	mov	a,r6
   0558 30 E1 15      [24] 1906 	jnb	acc.1,00102$
                           1907 ;	../src/gpio/src/gpio_pin_configure.c:58: gpio_pins_val_set(P0, (1 << (gpio_pin_id % 8)));
   055B 74 07         [12] 1908 	mov	a,#0x07
   055D 5F            [12] 1909 	anl	a,r7
   055E F5 F0         [12] 1910 	mov	b,a
   0560 05 F0         [12] 1911 	inc	b
   0562 74 01         [12] 1912 	mov	a,#0x01
   0564 80 02         [24] 1913 	sjmp	00179$
   0566                    1914 00177$:
   0566 25 E0         [12] 1915 	add	a,acc
   0568                    1916 00179$:
   0568 D5 F0 FB      [24] 1917 	djnz	b,00177$
   056B FD            [12] 1918 	mov	r5,a
   056C 42 80         [12] 1919 	orl	_P0,a
   056E 80 14         [24] 1920 	sjmp	00103$
   0570                    1921 00102$:
                           1922 ;	../src/gpio/src/gpio_pin_configure.c:62: gpio_pins_val_clear(P0, (1 << (gpio_pin_id % 8)));
   0570 74 07         [12] 1923 	mov	a,#0x07
   0572 5F            [12] 1924 	anl	a,r7
   0573 F5 F0         [12] 1925 	mov	b,a
   0575 05 F0         [12] 1926 	inc	b
   0577 74 01         [12] 1927 	mov	a,#0x01
   0579 80 02         [24] 1928 	sjmp	00182$
   057B                    1929 00180$:
   057B 25 E0         [12] 1930 	add	a,acc
   057D                    1931 00182$:
   057D D5 F0 FB      [24] 1932 	djnz	b,00180$
   0580 F4            [12] 1933 	cpl	a
   0581 FD            [12] 1934 	mov	r5,a
   0582 52 80         [12] 1935 	anl	_P0,a
   0584                    1936 00103$:
                           1937 ;	../src/gpio/src/gpio_pin_configure.c:66: P0CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   0584 74 07         [12] 1938 	mov	a,#0x07
   0586 5F            [12] 1939 	anl	a,r7
   0587 FD            [12] 1940 	mov	r5,a
   0588 74 07         [12] 1941 	mov	a,#0x07
   058A 5D            [12] 1942 	anl	a,r5
   058B FC            [12] 1943 	mov	r4,a
                           1944 ;	../src/gpio/src/gpio_pin_configure.c:67: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   058C 74 E0         [12] 1945 	mov	a,#0xE0
   058E 5E            [12] 1946 	anl	a,r6
   058F 4C            [12] 1947 	orl	a,r4
   0590 F5 9E         [12] 1948 	mov	_P0CON,a
                           1949 ;	../src/gpio/src/gpio_pin_configure.c:70: gpio_pins_dir_output(P0DIR, (1 << (gpio_pin_id % 8)));
   0592 8D F0         [24] 1950 	mov	b,r5
   0594 05 F0         [12] 1951 	inc	b
   0596 74 01         [12] 1952 	mov	a,#0x01
   0598 80 02         [24] 1953 	sjmp	00185$
   059A                    1954 00183$:
   059A 25 E0         [12] 1955 	add	a,acc
   059C                    1956 00185$:
   059C D5 F0 FB      [24] 1957 	djnz	b,00183$
   059F F4            [12] 1958 	cpl	a
   05A0 52 93         [12] 1959 	anl	_P0DIR,a
   05A2 22            [24] 1960 	ret
   05A3                    1961 00105$:
                           1962 ;	../src/gpio/src/gpio_pin_configure.c:75: P0CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   05A3 74 07         [12] 1963 	mov	a,#0x07
   05A5 5F            [12] 1964 	anl	a,r7
   05A6 FD            [12] 1965 	mov	r5,a
   05A7 74 07         [12] 1966 	mov	a,#0x07
   05A9 5D            [12] 1967 	anl	a,r5
   05AA 44 10         [12] 1968 	orl	a,#0x10
   05AC FC            [12] 1969 	mov	r4,a
                           1970 ;	../src/gpio/src/gpio_pin_configure.c:77: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   05AD 74 E0         [12] 1971 	mov	a,#0xE0
   05AF 5E            [12] 1972 	anl	a,r6
   05B0 4C            [12] 1973 	orl	a,r4
   05B1 F5 9E         [12] 1974 	mov	_P0CON,a
                           1975 ;	../src/gpio/src/gpio_pin_configure.c:80: gpio_pins_dir_input(P0DIR, (1 << (gpio_pin_id % 8)));
   05B3 8D F0         [24] 1976 	mov	b,r5
   05B5 05 F0         [12] 1977 	inc	b
   05B7 74 01         [12] 1978 	mov	a,#0x01
   05B9 80 02         [24] 1979 	sjmp	00188$
   05BB                    1980 00186$:
   05BB 25 E0         [12] 1981 	add	a,acc
   05BD                    1982 00188$:
   05BD D5 F0 FB      [24] 1983 	djnz	b,00186$
   05C0 42 93         [12] 1984 	orl	_P0DIR,a
   05C2 22            [24] 1985 	ret
   05C3                    1986 00134$:
                           1987 ;	../src/gpio/src/gpio_pin_configure.c:83: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   05C3 EF            [12] 1988 	mov	a,r7
   05C4 24 F0         [12] 1989 	add	a,#0xff - 0x0F
   05C6 50 03         [24] 1990 	jnc	00189$
   05C8 02 06 41      [24] 1991 	ljmp	00131$
   05CB                    1992 00189$:
                           1993 ;	../src/gpio/src/gpio_pin_configure.c:86: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   05CB 90 00 38      [24] 1994 	mov	dptr,#_gpio_pin_configure_PARM_2
   05CE E0            [24] 1995 	movx	a,@dptr
   05CF FE            [12] 1996 	mov	r6,a
   05D0 FD            [12] 1997 	mov	r5,a
   05D1 ED            [12] 1998 	mov	a,r5
   05D2 30 E0 4C      [24] 1999 	jnb	acc.0,00111$
                           2000 ;	../src/gpio/src/gpio_pin_configure.c:89: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   05D5 EE            [12] 2001 	mov	a,r6
   05D6 30 E1 15      [24] 2002 	jnb	acc.1,00108$
                           2003 ;	../src/gpio/src/gpio_pin_configure.c:91: gpio_pins_val_set(P1, (1 << (gpio_pin_id % 8)));
   05D9 74 07         [12] 2004 	mov	a,#0x07
   05DB 5F            [12] 2005 	anl	a,r7
   05DC F5 F0         [12] 2006 	mov	b,a
   05DE 05 F0         [12] 2007 	inc	b
   05E0 74 01         [12] 2008 	mov	a,#0x01
   05E2 80 02         [24] 2009 	sjmp	00194$
   05E4                    2010 00192$:
   05E4 25 E0         [12] 2011 	add	a,acc
   05E6                    2012 00194$:
   05E6 D5 F0 FB      [24] 2013 	djnz	b,00192$
   05E9 FD            [12] 2014 	mov	r5,a
   05EA 42 90         [12] 2015 	orl	_P1,a
   05EC 80 14         [24] 2016 	sjmp	00109$
   05EE                    2017 00108$:
                           2018 ;	../src/gpio/src/gpio_pin_configure.c:95: gpio_pins_val_clear(P1, (1 << (gpio_pin_id % 8)));
   05EE 74 07         [12] 2019 	mov	a,#0x07
   05F0 5F            [12] 2020 	anl	a,r7
   05F1 F5 F0         [12] 2021 	mov	b,a
   05F3 05 F0         [12] 2022 	inc	b
   05F5 74 01         [12] 2023 	mov	a,#0x01
   05F7 80 02         [24] 2024 	sjmp	00197$
   05F9                    2025 00195$:
   05F9 25 E0         [12] 2026 	add	a,acc
   05FB                    2027 00197$:
   05FB D5 F0 FB      [24] 2028 	djnz	b,00195$
   05FE F4            [12] 2029 	cpl	a
   05FF FD            [12] 2030 	mov	r5,a
   0600 52 90         [12] 2031 	anl	_P1,a
   0602                    2032 00109$:
                           2033 ;	../src/gpio/src/gpio_pin_configure.c:99: P1CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   0602 74 07         [12] 2034 	mov	a,#0x07
   0604 5F            [12] 2035 	anl	a,r7
   0605 FD            [12] 2036 	mov	r5,a
   0606 74 07         [12] 2037 	mov	a,#0x07
   0608 5D            [12] 2038 	anl	a,r5
   0609 FC            [12] 2039 	mov	r4,a
                           2040 ;	../src/gpio/src/gpio_pin_configure.c:100: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   060A 74 E0         [12] 2041 	mov	a,#0xE0
   060C 5E            [12] 2042 	anl	a,r6
   060D 4C            [12] 2043 	orl	a,r4
   060E F5 9F         [12] 2044 	mov	_P1CON,a
                           2045 ;	../src/gpio/src/gpio_pin_configure.c:103: gpio_pins_dir_output(P1DIR, (1 << (gpio_pin_id % 8)));
   0610 8D F0         [24] 2046 	mov	b,r5
   0612 05 F0         [12] 2047 	inc	b
   0614 74 01         [12] 2048 	mov	a,#0x01
   0616 80 02         [24] 2049 	sjmp	00200$
   0618                    2050 00198$:
   0618 25 E0         [12] 2051 	add	a,acc
   061A                    2052 00200$:
   061A D5 F0 FB      [24] 2053 	djnz	b,00198$
   061D F4            [12] 2054 	cpl	a
   061E 52 94         [12] 2055 	anl	_P1DIR,a
   0620 22            [24] 2056 	ret
   0621                    2057 00111$:
                           2058 ;	../src/gpio/src/gpio_pin_configure.c:108: P1CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   0621 74 07         [12] 2059 	mov	a,#0x07
   0623 5F            [12] 2060 	anl	a,r7
   0624 FD            [12] 2061 	mov	r5,a
   0625 74 07         [12] 2062 	mov	a,#0x07
   0627 5D            [12] 2063 	anl	a,r5
   0628 44 10         [12] 2064 	orl	a,#0x10
   062A FC            [12] 2065 	mov	r4,a
                           2066 ;	../src/gpio/src/gpio_pin_configure.c:110: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   062B 74 E0         [12] 2067 	mov	a,#0xE0
   062D 5E            [12] 2068 	anl	a,r6
   062E 4C            [12] 2069 	orl	a,r4
   062F F5 9F         [12] 2070 	mov	_P1CON,a
                           2071 ;	../src/gpio/src/gpio_pin_configure.c:113: gpio_pins_dir_input(P1DIR, (1 << (gpio_pin_id % 8)));
   0631 8D F0         [24] 2072 	mov	b,r5
   0633 05 F0         [12] 2073 	inc	b
   0635 74 01         [12] 2074 	mov	a,#0x01
   0637 80 02         [24] 2075 	sjmp	00203$
   0639                    2076 00201$:
   0639 25 E0         [12] 2077 	add	a,acc
   063B                    2078 00203$:
   063B D5 F0 FB      [24] 2079 	djnz	b,00201$
   063E 42 94         [12] 2080 	orl	_P1DIR,a
   0640 22            [24] 2081 	ret
   0641                    2082 00131$:
                           2083 ;	../src/gpio/src/gpio_pin_configure.c:116: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   0641 EF            [12] 2084 	mov	a,r7
   0642 24 E8         [12] 2085 	add	a,#0xff - 0x17
   0644 50 03         [24] 2086 	jnc	00204$
   0646 02 06 BF      [24] 2087 	ljmp	00128$
   0649                    2088 00204$:
                           2089 ;	../src/gpio/src/gpio_pin_configure.c:119: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   0649 90 00 38      [24] 2090 	mov	dptr,#_gpio_pin_configure_PARM_2
   064C E0            [24] 2091 	movx	a,@dptr
   064D FE            [12] 2092 	mov	r6,a
   064E FD            [12] 2093 	mov	r5,a
   064F ED            [12] 2094 	mov	a,r5
   0650 30 E0 4C      [24] 2095 	jnb	acc.0,00117$
                           2096 ;	../src/gpio/src/gpio_pin_configure.c:122: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   0653 EE            [12] 2097 	mov	a,r6
   0654 30 E1 15      [24] 2098 	jnb	acc.1,00114$
                           2099 ;	../src/gpio/src/gpio_pin_configure.c:124: gpio_pins_val_set(P2, (1 << (gpio_pin_id % 8)));
   0657 74 07         [12] 2100 	mov	a,#0x07
   0659 5F            [12] 2101 	anl	a,r7
   065A F5 F0         [12] 2102 	mov	b,a
   065C 05 F0         [12] 2103 	inc	b
   065E 74 01         [12] 2104 	mov	a,#0x01
   0660 80 02         [24] 2105 	sjmp	00209$
   0662                    2106 00207$:
   0662 25 E0         [12] 2107 	add	a,acc
   0664                    2108 00209$:
   0664 D5 F0 FB      [24] 2109 	djnz	b,00207$
   0667 FD            [12] 2110 	mov	r5,a
   0668 42 A0         [12] 2111 	orl	_P2,a
   066A 80 14         [24] 2112 	sjmp	00115$
   066C                    2113 00114$:
                           2114 ;	../src/gpio/src/gpio_pin_configure.c:128: gpio_pins_val_clear(P2, (1 << (gpio_pin_id % 8)));
   066C 74 07         [12] 2115 	mov	a,#0x07
   066E 5F            [12] 2116 	anl	a,r7
   066F F5 F0         [12] 2117 	mov	b,a
   0671 05 F0         [12] 2118 	inc	b
   0673 74 01         [12] 2119 	mov	a,#0x01
   0675 80 02         [24] 2120 	sjmp	00212$
   0677                    2121 00210$:
   0677 25 E0         [12] 2122 	add	a,acc
   0679                    2123 00212$:
   0679 D5 F0 FB      [24] 2124 	djnz	b,00210$
   067C F4            [12] 2125 	cpl	a
   067D FD            [12] 2126 	mov	r5,a
   067E 52 A0         [12] 2127 	anl	_P2,a
   0680                    2128 00115$:
                           2129 ;	../src/gpio/src/gpio_pin_configure.c:132: P2CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   0680 74 07         [12] 2130 	mov	a,#0x07
   0682 5F            [12] 2131 	anl	a,r7
   0683 FD            [12] 2132 	mov	r5,a
   0684 74 07         [12] 2133 	mov	a,#0x07
   0686 5D            [12] 2134 	anl	a,r5
   0687 FC            [12] 2135 	mov	r4,a
                           2136 ;	../src/gpio/src/gpio_pin_configure.c:133: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   0688 74 E0         [12] 2137 	mov	a,#0xE0
   068A 5E            [12] 2138 	anl	a,r6
   068B 4C            [12] 2139 	orl	a,r4
   068C F5 97         [12] 2140 	mov	_P2CON,a
                           2141 ;	../src/gpio/src/gpio_pin_configure.c:136: gpio_pins_dir_output(P2DIR, (1 << (gpio_pin_id % 8)));
   068E 8D F0         [24] 2142 	mov	b,r5
   0690 05 F0         [12] 2143 	inc	b
   0692 74 01         [12] 2144 	mov	a,#0x01
   0694 80 02         [24] 2145 	sjmp	00215$
   0696                    2146 00213$:
   0696 25 E0         [12] 2147 	add	a,acc
   0698                    2148 00215$:
   0698 D5 F0 FB      [24] 2149 	djnz	b,00213$
   069B F4            [12] 2150 	cpl	a
   069C 52 95         [12] 2151 	anl	_P2DIR,a
   069E 22            [24] 2152 	ret
   069F                    2153 00117$:
                           2154 ;	../src/gpio/src/gpio_pin_configure.c:141: P2CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   069F 74 07         [12] 2155 	mov	a,#0x07
   06A1 5F            [12] 2156 	anl	a,r7
   06A2 FD            [12] 2157 	mov	r5,a
   06A3 74 07         [12] 2158 	mov	a,#0x07
   06A5 5D            [12] 2159 	anl	a,r5
   06A6 44 10         [12] 2160 	orl	a,#0x10
   06A8 FC            [12] 2161 	mov	r4,a
                           2162 ;	../src/gpio/src/gpio_pin_configure.c:143: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   06A9 74 E0         [12] 2163 	mov	a,#0xE0
   06AB 5E            [12] 2164 	anl	a,r6
   06AC 4C            [12] 2165 	orl	a,r4
   06AD F5 97         [12] 2166 	mov	_P2CON,a
                           2167 ;	../src/gpio/src/gpio_pin_configure.c:146: gpio_pins_dir_input(P2DIR, (1 << (gpio_pin_id % 8)));
   06AF 8D F0         [24] 2168 	mov	b,r5
   06B1 05 F0         [12] 2169 	inc	b
   06B3 74 01         [12] 2170 	mov	a,#0x01
   06B5 80 02         [24] 2171 	sjmp	00218$
   06B7                    2172 00216$:
   06B7 25 E0         [12] 2173 	add	a,acc
   06B9                    2174 00218$:
   06B9 D5 F0 FB      [24] 2175 	djnz	b,00216$
   06BC 42 95         [12] 2176 	orl	_P2DIR,a
   06BE 22            [24] 2177 	ret
   06BF                    2178 00128$:
                           2179 ;	../src/gpio/src/gpio_pin_configure.c:149: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   06BF EF            [12] 2180 	mov	a,r7
   06C0 24 E1         [12] 2181 	add	a,#0xff - 0x1E
   06C2 40 75         [24] 2182 	jc	00136$
                           2183 ;	../src/gpio/src/gpio_pin_configure.c:152: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   06C4 90 00 38      [24] 2184 	mov	dptr,#_gpio_pin_configure_PARM_2
   06C7 E0            [24] 2185 	movx	a,@dptr
   06C8 FE            [12] 2186 	mov	r6,a
   06C9 FD            [12] 2187 	mov	r5,a
   06CA ED            [12] 2188 	mov	a,r5
   06CB 30 E0 4C      [24] 2189 	jnb	acc.0,00123$
                           2190 ;	../src/gpio/src/gpio_pin_configure.c:155: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   06CE EE            [12] 2191 	mov	a,r6
   06CF 30 E1 15      [24] 2192 	jnb	acc.1,00120$
                           2193 ;	../src/gpio/src/gpio_pin_configure.c:157: gpio_pins_val_set(P3, (1 << (gpio_pin_id % 8)));
   06D2 74 07         [12] 2194 	mov	a,#0x07
   06D4 5F            [12] 2195 	anl	a,r7
   06D5 F5 F0         [12] 2196 	mov	b,a
   06D7 05 F0         [12] 2197 	inc	b
   06D9 74 01         [12] 2198 	mov	a,#0x01
   06DB 80 02         [24] 2199 	sjmp	00224$
   06DD                    2200 00222$:
   06DD 25 E0         [12] 2201 	add	a,acc
   06DF                    2202 00224$:
   06DF D5 F0 FB      [24] 2203 	djnz	b,00222$
   06E2 FD            [12] 2204 	mov	r5,a
   06E3 42 B0         [12] 2205 	orl	_P3,a
   06E5 80 14         [24] 2206 	sjmp	00121$
   06E7                    2207 00120$:
                           2208 ;	../src/gpio/src/gpio_pin_configure.c:161: gpio_pins_val_clear(P3, (1 << (gpio_pin_id % 8)));
   06E7 74 07         [12] 2209 	mov	a,#0x07
   06E9 5F            [12] 2210 	anl	a,r7
   06EA F5 F0         [12] 2211 	mov	b,a
   06EC 05 F0         [12] 2212 	inc	b
   06EE 74 01         [12] 2213 	mov	a,#0x01
   06F0 80 02         [24] 2214 	sjmp	00227$
   06F2                    2215 00225$:
   06F2 25 E0         [12] 2216 	add	a,acc
   06F4                    2217 00227$:
   06F4 D5 F0 FB      [24] 2218 	djnz	b,00225$
   06F7 F4            [12] 2219 	cpl	a
   06F8 FD            [12] 2220 	mov	r5,a
   06F9 52 B0         [12] 2221 	anl	_P3,a
   06FB                    2222 00121$:
                           2223 ;	../src/gpio/src/gpio_pin_configure.c:165: P3CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   06FB 74 07         [12] 2224 	mov	a,#0x07
   06FD 5F            [12] 2225 	anl	a,r7
   06FE FD            [12] 2226 	mov	r5,a
   06FF 74 07         [12] 2227 	mov	a,#0x07
   0701 5D            [12] 2228 	anl	a,r5
   0702 FC            [12] 2229 	mov	r4,a
                           2230 ;	../src/gpio/src/gpio_pin_configure.c:166: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   0703 74 E0         [12] 2231 	mov	a,#0xE0
   0705 5E            [12] 2232 	anl	a,r6
   0706 4C            [12] 2233 	orl	a,r4
   0707 F5 8F         [12] 2234 	mov	_P3CON,a
                           2235 ;	../src/gpio/src/gpio_pin_configure.c:169: gpio_pins_dir_output(P3DIR, (1 << (gpio_pin_id % 8)));
   0709 8D F0         [24] 2236 	mov	b,r5
   070B 05 F0         [12] 2237 	inc	b
   070D 74 01         [12] 2238 	mov	a,#0x01
   070F 80 02         [24] 2239 	sjmp	00230$
   0711                    2240 00228$:
   0711 25 E0         [12] 2241 	add	a,acc
   0713                    2242 00230$:
   0713 D5 F0 FB      [24] 2243 	djnz	b,00228$
   0716 F4            [12] 2244 	cpl	a
   0717 52 96         [12] 2245 	anl	_P3DIR,a
   0719 22            [24] 2246 	ret
   071A                    2247 00123$:
                           2248 ;	../src/gpio/src/gpio_pin_configure.c:174: P3CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   071A 53 07 07      [24] 2249 	anl	ar7,#0x07
   071D 74 07         [12] 2250 	mov	a,#0x07
   071F 5F            [12] 2251 	anl	a,r7
   0720 44 10         [12] 2252 	orl	a,#0x10
   0722 FD            [12] 2253 	mov	r5,a
                           2254 ;	../src/gpio/src/gpio_pin_configure.c:176: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   0723 74 E0         [12] 2255 	mov	a,#0xE0
   0725 5E            [12] 2256 	anl	a,r6
   0726 4D            [12] 2257 	orl	a,r5
   0727 F5 8F         [12] 2258 	mov	_P3CON,a
                           2259 ;	../src/gpio/src/gpio_pin_configure.c:179: gpio_pins_dir_input(P3DIR, (1 << (gpio_pin_id % 8)));
   0729 8F F0         [24] 2260 	mov	b,r7
   072B 05 F0         [12] 2261 	inc	b
   072D 74 01         [12] 2262 	mov	a,#0x01
   072F 80 02         [24] 2263 	sjmp	00233$
   0731                    2264 00231$:
   0731 25 E0         [12] 2265 	add	a,acc
   0733                    2266 00233$:
   0733 D5 F0 FB      [24] 2267 	djnz	b,00231$
   0736 FF            [12] 2268 	mov	r7,a
   0737 42 96         [12] 2269 	orl	_P3DIR,a
   0739                    2270 00136$:
   0739 22            [24] 2271 	ret
                           2272 ;------------------------------------------------------------
                           2273 ;Allocation info for local variables in function 'gpio_pin_val_read'
                           2274 ;------------------------------------------------------------
                           2275 ;gpio_pin_id               Allocated with name '_gpio_pin_val_read_gpio_pin_id_1_108'
                           2276 ;value                     Allocated with name '_gpio_pin_val_read_value_1_109'
                           2277 ;------------------------------------------------------------
                           2278 ;	../src/gpio/src/gpio_pin_val_read.c:46: bool gpio_pin_val_read(gpio_pin_id_t gpio_pin_id)
                           2279 ;	-----------------------------------------
                           2280 ;	 function gpio_pin_val_read
                           2281 ;	-----------------------------------------
   073A                    2282 _gpio_pin_val_read:
   073A E5 82         [12] 2283 	mov	a,dpl
   073C 90 00 3A      [24] 2284 	mov	dptr,#_gpio_pin_val_read_gpio_pin_id_1_108
   073F F0            [24] 2285 	movx	@dptr,a
                           2286 ;	../src/gpio/src/gpio_pin_val_read.c:48: bool value = false;
   0740 90 00 3B      [24] 2287 	mov	dptr,#_gpio_pin_val_read_value_1_109
   0743 E4            [12] 2288 	clr	a
   0744 F0            [24] 2289 	movx	@dptr,a
                           2290 ;	../src/gpio/src/gpio_pin_val_read.c:51: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   0745 90 00 3A      [24] 2291 	mov	dptr,#_gpio_pin_val_read_gpio_pin_id_1_108
   0748 E0            [24] 2292 	movx	a,@dptr
   0749 FF            [12] 2293 	mov  r7,a
   074A 24 F8         [12] 2294 	add	a,#0xff - 0x07
   074C 40 19         [24] 2295 	jc	00110$
                           2296 ;	../src/gpio/src/gpio_pin_val_read.c:53: value = P0 & (1 << (gpio_pin_id % 8));
   074E 74 07         [12] 2297 	mov	a,#0x07
   0750 5F            [12] 2298 	anl	a,r7
   0751 F5 F0         [12] 2299 	mov	b,a
   0753 05 F0         [12] 2300 	inc	b
   0755 74 01         [12] 2301 	mov	a,#0x01
   0757 80 02         [24] 2302 	sjmp	00135$
   0759                    2303 00133$:
   0759 25 E0         [12] 2304 	add	a,acc
   075B                    2305 00135$:
   075B D5 F0 FB      [24] 2306 	djnz	b,00133$
   075E FE            [12] 2307 	mov	r6,a
   075F 90 00 3B      [24] 2308 	mov	dptr,#_gpio_pin_val_read_value_1_109
   0762 55 80         [12] 2309 	anl	a,_P0
   0764 F0            [24] 2310 	movx	@dptr,a
   0765 80 58         [24] 2311 	sjmp	00111$
   0767                    2312 00110$:
                           2313 ;	../src/gpio/src/gpio_pin_val_read.c:55: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   0767 EF            [12] 2314 	mov	a,r7
   0768 24 F0         [12] 2315 	add	a,#0xff - 0x0F
   076A 40 19         [24] 2316 	jc	00107$
                           2317 ;	../src/gpio/src/gpio_pin_val_read.c:57: value = P1 & (1 << (gpio_pin_id % 8));
   076C 74 07         [12] 2318 	mov	a,#0x07
   076E 5F            [12] 2319 	anl	a,r7
   076F F5 F0         [12] 2320 	mov	b,a
   0771 05 F0         [12] 2321 	inc	b
   0773 74 01         [12] 2322 	mov	a,#0x01
   0775 80 02         [24] 2323 	sjmp	00139$
   0777                    2324 00137$:
   0777 25 E0         [12] 2325 	add	a,acc
   0779                    2326 00139$:
   0779 D5 F0 FB      [24] 2327 	djnz	b,00137$
   077C FE            [12] 2328 	mov	r6,a
   077D 90 00 3B      [24] 2329 	mov	dptr,#_gpio_pin_val_read_value_1_109
   0780 55 90         [12] 2330 	anl	a,_P1
   0782 F0            [24] 2331 	movx	@dptr,a
   0783 80 3A         [24] 2332 	sjmp	00111$
   0785                    2333 00107$:
                           2334 ;	../src/gpio/src/gpio_pin_val_read.c:59: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   0785 EF            [12] 2335 	mov	a,r7
   0786 24 E8         [12] 2336 	add	a,#0xff - 0x17
   0788 40 19         [24] 2337 	jc	00104$
                           2338 ;	../src/gpio/src/gpio_pin_val_read.c:61: value = P2 & (1 << (gpio_pin_id % 8));
   078A 74 07         [12] 2339 	mov	a,#0x07
   078C 5F            [12] 2340 	anl	a,r7
   078D F5 F0         [12] 2341 	mov	b,a
   078F 05 F0         [12] 2342 	inc	b
   0791 74 01         [12] 2343 	mov	a,#0x01
   0793 80 02         [24] 2344 	sjmp	00143$
   0795                    2345 00141$:
   0795 25 E0         [12] 2346 	add	a,acc
   0797                    2347 00143$:
   0797 D5 F0 FB      [24] 2348 	djnz	b,00141$
   079A FE            [12] 2349 	mov	r6,a
   079B 90 00 3B      [24] 2350 	mov	dptr,#_gpio_pin_val_read_value_1_109
   079E 55 A0         [12] 2351 	anl	a,_P2
   07A0 F0            [24] 2352 	movx	@dptr,a
   07A1 80 1C         [24] 2353 	sjmp	00111$
   07A3                    2354 00104$:
                           2355 ;	../src/gpio/src/gpio_pin_val_read.c:63: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   07A3 EF            [12] 2356 	mov	a,r7
   07A4 24 E1         [12] 2357 	add	a,#0xff - 0x1E
   07A6 40 17         [24] 2358 	jc	00111$
                           2359 ;	../src/gpio/src/gpio_pin_val_read.c:65: value = P3 & (1 << (gpio_pin_id % 8));
   07A8 74 07         [12] 2360 	mov	a,#0x07
   07AA 5F            [12] 2361 	anl	a,r7
   07AB F5 F0         [12] 2362 	mov	b,a
   07AD 05 F0         [12] 2363 	inc	b
   07AF 74 01         [12] 2364 	mov	a,#0x01
   07B1 80 02         [24] 2365 	sjmp	00147$
   07B3                    2366 00145$:
   07B3 25 E0         [12] 2367 	add	a,acc
   07B5                    2368 00147$:
   07B5 D5 F0 FB      [24] 2369 	djnz	b,00145$
   07B8 FF            [12] 2370 	mov	r7,a
   07B9 90 00 3B      [24] 2371 	mov	dptr,#_gpio_pin_val_read_value_1_109
   07BC 55 B0         [12] 2372 	anl	a,_P3
   07BE F0            [24] 2373 	movx	@dptr,a
   07BF                    2374 00111$:
                           2375 ;	../src/gpio/src/gpio_pin_val_read.c:68: if(value)
   07BF 90 00 3B      [24] 2376 	mov	dptr,#_gpio_pin_val_read_value_1_109
   07C2 E0            [24] 2377 	movx	a,@dptr
   07C3 FF            [12] 2378 	mov	r7,a
   07C4 60 04         [24] 2379 	jz	00113$
                           2380 ;	../src/gpio/src/gpio_pin_val_read.c:70: return true;
   07C6 75 82 01      [24] 2381 	mov	dpl,#0x01
   07C9 22            [24] 2382 	ret
   07CA                    2383 00113$:
                           2384 ;	../src/gpio/src/gpio_pin_val_read.c:74: return false;
   07CA 75 82 00      [24] 2385 	mov	dpl,#0x00
   07CD 22            [24] 2386 	ret
                           2387 ;------------------------------------------------------------
                           2388 ;Allocation info for local variables in function 'gpio_pin_val_clear'
                           2389 ;------------------------------------------------------------
                           2390 ;gpio_pin_id               Allocated with name '_gpio_pin_val_clear_gpio_pin_id_1_116'
                           2391 ;------------------------------------------------------------
                           2392 ;	../src/gpio/src/gpio_pin_val_clear.c:46: void gpio_pin_val_clear(gpio_pin_id_t gpio_pin_id)
                           2393 ;	-----------------------------------------
                           2394 ;	 function gpio_pin_val_clear
                           2395 ;	-----------------------------------------
   07CE                    2396 _gpio_pin_val_clear:
   07CE E5 82         [12] 2397 	mov	a,dpl
                           2398 ;	../src/gpio/src/gpio_pin_val_clear.c:49: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   07D0 90 00 3C      [24] 2399 	mov	dptr,#_gpio_pin_val_clear_gpio_pin_id_1_116
   07D3 F0            [24] 2400 	movx	@dptr,a
   07D4 FF            [12] 2401 	mov  r7,a
   07D5 24 F8         [12] 2402 	add	a,#0xff - 0x07
   07D7 40 14         [24] 2403 	jc	00110$
                           2404 ;	../src/gpio/src/gpio_pin_val_clear.c:51: gpio_pins_val_clear(P0, (1 << (gpio_pin_id % 8)));
   07D9 74 07         [12] 2405 	mov	a,#0x07
   07DB 5F            [12] 2406 	anl	a,r7
   07DC F5 F0         [12] 2407 	mov	b,a
   07DE 05 F0         [12] 2408 	inc	b
   07E0 74 01         [12] 2409 	mov	a,#0x01
   07E2 80 02         [24] 2410 	sjmp	00129$
   07E4                    2411 00127$:
   07E4 25 E0         [12] 2412 	add	a,acc
   07E6                    2413 00129$:
   07E6 D5 F0 FB      [24] 2414 	djnz	b,00127$
   07E9 F4            [12] 2415 	cpl	a
   07EA 52 80         [12] 2416 	anl	_P0,a
   07EC 22            [24] 2417 	ret
   07ED                    2418 00110$:
                           2419 ;	../src/gpio/src/gpio_pin_val_clear.c:53: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   07ED EF            [12] 2420 	mov	a,r7
   07EE 24 F0         [12] 2421 	add	a,#0xff - 0x0F
   07F0 40 14         [24] 2422 	jc	00107$
                           2423 ;	../src/gpio/src/gpio_pin_val_clear.c:55: gpio_pins_val_clear(P1, (1 << (gpio_pin_id % 8)));
   07F2 74 07         [12] 2424 	mov	a,#0x07
   07F4 5F            [12] 2425 	anl	a,r7
   07F5 F5 F0         [12] 2426 	mov	b,a
   07F7 05 F0         [12] 2427 	inc	b
   07F9 74 01         [12] 2428 	mov	a,#0x01
   07FB 80 02         [24] 2429 	sjmp	00133$
   07FD                    2430 00131$:
   07FD 25 E0         [12] 2431 	add	a,acc
   07FF                    2432 00133$:
   07FF D5 F0 FB      [24] 2433 	djnz	b,00131$
   0802 F4            [12] 2434 	cpl	a
   0803 52 90         [12] 2435 	anl	_P1,a
   0805 22            [24] 2436 	ret
   0806                    2437 00107$:
                           2438 ;	../src/gpio/src/gpio_pin_val_clear.c:57: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   0806 EF            [12] 2439 	mov	a,r7
   0807 24 E8         [12] 2440 	add	a,#0xff - 0x17
   0809 40 14         [24] 2441 	jc	00104$
                           2442 ;	../src/gpio/src/gpio_pin_val_clear.c:59: gpio_pins_val_clear(P2, (1 << (gpio_pin_id % 8)));
   080B 74 07         [12] 2443 	mov	a,#0x07
   080D 5F            [12] 2444 	anl	a,r7
   080E F5 F0         [12] 2445 	mov	b,a
   0810 05 F0         [12] 2446 	inc	b
   0812 74 01         [12] 2447 	mov	a,#0x01
   0814 80 02         [24] 2448 	sjmp	00137$
   0816                    2449 00135$:
   0816 25 E0         [12] 2450 	add	a,acc
   0818                    2451 00137$:
   0818 D5 F0 FB      [24] 2452 	djnz	b,00135$
   081B F4            [12] 2453 	cpl	a
   081C 52 A0         [12] 2454 	anl	_P2,a
   081E 22            [24] 2455 	ret
   081F                    2456 00104$:
                           2457 ;	../src/gpio/src/gpio_pin_val_clear.c:61: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   081F EF            [12] 2458 	mov	a,r7
   0820 24 E1         [12] 2459 	add	a,#0xff - 0x1E
   0822 40 14         [24] 2460 	jc	00112$
                           2461 ;	../src/gpio/src/gpio_pin_val_clear.c:63: gpio_pins_val_clear(P3, (1 << (gpio_pin_id % 8)));
   0824 74 07         [12] 2462 	mov	a,#0x07
   0826 5F            [12] 2463 	anl	a,r7
   0827 F5 F0         [12] 2464 	mov	b,a
   0829 05 F0         [12] 2465 	inc	b
   082B 74 01         [12] 2466 	mov	a,#0x01
   082D 80 02         [24] 2467 	sjmp	00141$
   082F                    2468 00139$:
   082F 25 E0         [12] 2469 	add	a,acc
   0831                    2470 00141$:
   0831 D5 F0 FB      [24] 2471 	djnz	b,00139$
   0834 F4            [12] 2472 	cpl	a
   0835 FF            [12] 2473 	mov	r7,a
   0836 52 B0         [12] 2474 	anl	_P3,a
   0838                    2475 00112$:
   0838 22            [24] 2476 	ret
                           2477 ;------------------------------------------------------------
                           2478 ;Allocation info for local variables in function 'gpio_pin_val_set'
                           2479 ;------------------------------------------------------------
                           2480 ;gpio_pin_id               Allocated with name '_gpio_pin_val_set_gpio_pin_id_1_122'
                           2481 ;------------------------------------------------------------
                           2482 ;	../src/gpio/src/gpio_pin_val_set.c:46: void gpio_pin_val_set(gpio_pin_id_t gpio_pin_id)
                           2483 ;	-----------------------------------------
                           2484 ;	 function gpio_pin_val_set
                           2485 ;	-----------------------------------------
   0839                    2486 _gpio_pin_val_set:
   0839 E5 82         [12] 2487 	mov	a,dpl
                           2488 ;	../src/gpio/src/gpio_pin_val_set.c:49: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   083B 90 00 3D      [24] 2489 	mov	dptr,#_gpio_pin_val_set_gpio_pin_id_1_122
   083E F0            [24] 2490 	movx	@dptr,a
   083F FF            [12] 2491 	mov  r7,a
   0840 24 F8         [12] 2492 	add	a,#0xff - 0x07
   0842 40 13         [24] 2493 	jc	00110$
                           2494 ;	../src/gpio/src/gpio_pin_val_set.c:51: gpio_pins_val_set(P0, (1 << (gpio_pin_id % 8)));
   0844 74 07         [12] 2495 	mov	a,#0x07
   0846 5F            [12] 2496 	anl	a,r7
   0847 F5 F0         [12] 2497 	mov	b,a
   0849 05 F0         [12] 2498 	inc	b
   084B 74 01         [12] 2499 	mov	a,#0x01
   084D 80 02         [24] 2500 	sjmp	00129$
   084F                    2501 00127$:
   084F 25 E0         [12] 2502 	add	a,acc
   0851                    2503 00129$:
   0851 D5 F0 FB      [24] 2504 	djnz	b,00127$
   0854 42 80         [12] 2505 	orl	_P0,a
   0856 22            [24] 2506 	ret
   0857                    2507 00110$:
                           2508 ;	../src/gpio/src/gpio_pin_val_set.c:53: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   0857 EF            [12] 2509 	mov	a,r7
   0858 24 F0         [12] 2510 	add	a,#0xff - 0x0F
   085A 40 13         [24] 2511 	jc	00107$
                           2512 ;	../src/gpio/src/gpio_pin_val_set.c:55: gpio_pins_val_set(P1, (1 << (gpio_pin_id % 8)));
   085C 74 07         [12] 2513 	mov	a,#0x07
   085E 5F            [12] 2514 	anl	a,r7
   085F F5 F0         [12] 2515 	mov	b,a
   0861 05 F0         [12] 2516 	inc	b
   0863 74 01         [12] 2517 	mov	a,#0x01
   0865 80 02         [24] 2518 	sjmp	00133$
   0867                    2519 00131$:
   0867 25 E0         [12] 2520 	add	a,acc
   0869                    2521 00133$:
   0869 D5 F0 FB      [24] 2522 	djnz	b,00131$
   086C 42 90         [12] 2523 	orl	_P1,a
   086E 22            [24] 2524 	ret
   086F                    2525 00107$:
                           2526 ;	../src/gpio/src/gpio_pin_val_set.c:57: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   086F EF            [12] 2527 	mov	a,r7
   0870 24 E8         [12] 2528 	add	a,#0xff - 0x17
   0872 40 13         [24] 2529 	jc	00104$
                           2530 ;	../src/gpio/src/gpio_pin_val_set.c:59: gpio_pins_val_set(P2, (1 << (gpio_pin_id % 8)));
   0874 74 07         [12] 2531 	mov	a,#0x07
   0876 5F            [12] 2532 	anl	a,r7
   0877 F5 F0         [12] 2533 	mov	b,a
   0879 05 F0         [12] 2534 	inc	b
   087B 74 01         [12] 2535 	mov	a,#0x01
   087D 80 02         [24] 2536 	sjmp	00137$
   087F                    2537 00135$:
   087F 25 E0         [12] 2538 	add	a,acc
   0881                    2539 00137$:
   0881 D5 F0 FB      [24] 2540 	djnz	b,00135$
   0884 42 A0         [12] 2541 	orl	_P2,a
   0886 22            [24] 2542 	ret
   0887                    2543 00104$:
                           2544 ;	../src/gpio/src/gpio_pin_val_set.c:61: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   0887 EF            [12] 2545 	mov	a,r7
   0888 24 E1         [12] 2546 	add	a,#0xff - 0x1E
   088A 40 13         [24] 2547 	jc	00112$
                           2548 ;	../src/gpio/src/gpio_pin_val_set.c:63: gpio_pins_val_set(P3, (1 << (gpio_pin_id % 8)));
   088C 74 07         [12] 2549 	mov	a,#0x07
   088E 5F            [12] 2550 	anl	a,r7
   088F F5 F0         [12] 2551 	mov	b,a
   0891 05 F0         [12] 2552 	inc	b
   0893 74 01         [12] 2553 	mov	a,#0x01
   0895 80 02         [24] 2554 	sjmp	00141$
   0897                    2555 00139$:
   0897 25 E0         [12] 2556 	add	a,acc
   0899                    2557 00141$:
   0899 D5 F0 FB      [24] 2558 	djnz	b,00139$
   089C FF            [12] 2559 	mov	r7,a
   089D 42 B0         [12] 2560 	orl	_P3,a
   089F                    2561 00112$:
   089F 22            [24] 2562 	ret
                           2563 ;------------------------------------------------------------
                           2564 ;Allocation info for local variables in function 'gpio_pin_val_write'
                           2565 ;------------------------------------------------------------
                           2566 ;value                     Allocated with name '_gpio_pin_val_write_PARM_2'
                           2567 ;gpio_pin_id               Allocated with name '_gpio_pin_val_write_gpio_pin_id_1_128'
                           2568 ;------------------------------------------------------------
                           2569 ;	../src/gpio/src/gpio_pin_val_write.c:47: void gpio_pin_val_write(gpio_pin_id_t gpio_pin_id, bool value)
                           2570 ;	-----------------------------------------
                           2571 ;	 function gpio_pin_val_write
                           2572 ;	-----------------------------------------
   08A0                    2573 _gpio_pin_val_write:
   08A0 E5 82         [12] 2574 	mov	a,dpl
   08A2 90 00 3F      [24] 2575 	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_128
   08A5 F0            [24] 2576 	movx	@dptr,a
                           2577 ;	../src/gpio/src/gpio_pin_val_write.c:50: if(value)
   08A6 90 00 3E      [24] 2578 	mov	dptr,#_gpio_pin_val_write_PARM_2
   08A9 E0            [24] 2579 	movx	a,@dptr
   08AA FF            [12] 2580 	mov	r7,a
   08AB 60 09         [24] 2581 	jz	00102$
                           2582 ;	../src/gpio/src/gpio_pin_val_write.c:52: gpio_pin_val_set(gpio_pin_id);
   08AD 90 00 3F      [24] 2583 	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_128
   08B0 E0            [24] 2584 	movx	a,@dptr
   08B1 F5 82         [12] 2585 	mov	dpl,a
   08B3 02 08 39      [24] 2586 	ljmp	_gpio_pin_val_set
   08B6                    2587 00102$:
                           2588 ;	../src/gpio/src/gpio_pin_val_write.c:56: gpio_pin_val_clear(gpio_pin_id);
   08B6 90 00 3F      [24] 2589 	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_128
   08B9 E0            [24] 2590 	movx	a,@dptr
   08BA F5 82         [12] 2591 	mov	dpl,a
   08BC 02 07 CE      [24] 2592 	ljmp	_gpio_pin_val_clear
                           2593 ;------------------------------------------------------------
                           2594 ;Allocation info for local variables in function 'delay_us'
                           2595 ;------------------------------------------------------------
                           2596 ;microseconds              Allocated with name '_delay_us_microseconds_1_132'
                           2597 ;count                     Allocated with name '_delay_us_count_1_133'
                           2598 ;------------------------------------------------------------
                           2599 ;	../src/delay/src/delay_us.c:46: void delay_us(uint16_t microseconds)
                           2600 ;	-----------------------------------------
                           2601 ;	 function delay_us
                           2602 ;	-----------------------------------------
   08BF                    2603 _delay_us:
   08BF AF 83         [24] 2604 	mov	r7,dph
   08C1 E5 82         [12] 2605 	mov	a,dpl
   08C3 90 00 40      [24] 2606 	mov	dptr,#_delay_us_microseconds_1_132
   08C6 F0            [24] 2607 	movx	@dptr,a
   08C7 EF            [12] 2608 	mov	a,r7
   08C8 A3            [24] 2609 	inc	dptr
   08C9 F0            [24] 2610 	movx	@dptr,a
                           2611 ;	../src/delay/src/delay_us.c:51: if(microseconds == 0)
   08CA 90 00 40      [24] 2612 	mov	dptr,#_delay_us_microseconds_1_132
   08CD E0            [24] 2613 	movx	a,@dptr
   08CE FE            [12] 2614 	mov	r6,a
   08CF A3            [24] 2615 	inc	dptr
   08D0 E0            [24] 2616 	movx	a,@dptr
   08D1 FF            [12] 2617 	mov	r7,a
   08D2 4E            [12] 2618 	orl	a,r6
   08D3 70 01         [24] 2619 	jnz	00102$
                           2620 ;	../src/delay/src/delay_us.c:52: return;
   08D5 22            [24] 2621 	ret
   08D6                    2622 00102$:
                           2623 ;	../src/delay/src/delay_us.c:54: microseconds -= 1;
   08D6 1E            [12] 2624 	dec	r6
   08D7 BE FF 01      [24] 2625 	cjne	r6,#0xFF,00121$
   08DA 1F            [12] 2626 	dec	r7
   08DB                    2627 00121$:
   08DB 90 00 40      [24] 2628 	mov	dptr,#_delay_us_microseconds_1_132
   08DE EE            [12] 2629 	mov	a,r6
   08DF F0            [24] 2630 	movx	@dptr,a
   08E0 EF            [12] 2631 	mov	a,r7
   08E1 A3            [24] 2632 	inc	dptr
   08E2 F0            [24] 2633 	movx	@dptr,a
                           2634 ;	../src/delay/src/delay_us.c:56: for(count = 0; count < microseconds; count++)
   08E3 90 00 40      [24] 2635 	mov	dptr,#_delay_us_microseconds_1_132
   08E6 E0            [24] 2636 	movx	a,@dptr
   08E7 FE            [12] 2637 	mov	r6,a
   08E8 A3            [24] 2638 	inc	dptr
   08E9 E0            [24] 2639 	movx	a,@dptr
   08EA FF            [12] 2640 	mov	r7,a
   08EB 7C 00         [12] 2641 	mov	r4,#0x00
   08ED 7D 00         [12] 2642 	mov	r5,#0x00
   08EF                    2643 00106$:
   08EF C3            [12] 2644 	clr	c
   08F0 EC            [12] 2645 	mov	a,r4
   08F1 9E            [12] 2646 	subb	a,r6
   08F2 ED            [12] 2647 	mov	a,r5
   08F3 9F            [12] 2648 	subb	a,r7
   08F4 50 09         [24] 2649 	jnc	00108$
                           2650 ;	../src/delay/src/delay_us.c:58: nop();
   08F6 00            [12] 2651 	nop 
                           2652 ;	../src/delay/src/delay_us.c:59: nop();
   08F7 00            [12] 2653 	nop 
                           2654 ;	../src/delay/src/delay_us.c:56: for(count = 0; count < microseconds; count++)
   08F8 0C            [12] 2655 	inc	r4
   08F9 BC 00 F3      [24] 2656 	cjne	r4,#0x00,00106$
   08FC 0D            [12] 2657 	inc	r5
   08FD 80 F0         [24] 2658 	sjmp	00106$
   08FF                    2659 00108$:
   08FF 22            [24] 2660 	ret
                           2661 ;------------------------------------------------------------
                           2662 ;Allocation info for local variables in function 'delay_s'
                           2663 ;------------------------------------------------------------
                           2664 ;seconds                   Allocated with name '_delay_s_seconds_1_135'
                           2665 ;count                     Allocated with name '_delay_s_count_1_136'
                           2666 ;------------------------------------------------------------
                           2667 ;	../src/delay/src/delay_s.c:46: void delay_s(uint16_t seconds)
                           2668 ;	-----------------------------------------
                           2669 ;	 function delay_s
                           2670 ;	-----------------------------------------
   0900                    2671 _delay_s:
   0900 AF 83         [24] 2672 	mov	r7,dph
   0902 E5 82         [12] 2673 	mov	a,dpl
   0904 90 00 42      [24] 2674 	mov	dptr,#_delay_s_seconds_1_135
   0907 F0            [24] 2675 	movx	@dptr,a
   0908 EF            [12] 2676 	mov	a,r7
   0909 A3            [24] 2677 	inc	dptr
   090A F0            [24] 2678 	movx	@dptr,a
                           2679 ;	../src/delay/src/delay_s.c:51: for(count = 0; count < seconds; count++)
   090B 90 00 42      [24] 2680 	mov	dptr,#_delay_s_seconds_1_135
   090E E0            [24] 2681 	movx	a,@dptr
   090F FE            [12] 2682 	mov	r6,a
   0910 A3            [24] 2683 	inc	dptr
   0911 E0            [24] 2684 	movx	a,@dptr
   0912 FF            [12] 2685 	mov	r7,a
   0913 7C 00         [12] 2686 	mov	r4,#0x00
   0915 7D 00         [12] 2687 	mov	r5,#0x00
   0917                    2688 00103$:
   0917 C3            [12] 2689 	clr	c
   0918 EC            [12] 2690 	mov	a,r4
   0919 9E            [12] 2691 	subb	a,r6
   091A ED            [12] 2692 	mov	a,r5
   091B 9F            [12] 2693 	subb	a,r7
   091C 50 1D         [24] 2694 	jnc	00105$
                           2695 ;	../src/delay/src/delay_s.c:53: delay_ms(1000);
   091E 90 03 E8      [24] 2696 	mov	dptr,#0x03E8
   0921 C0 07         [24] 2697 	push	ar7
   0923 C0 06         [24] 2698 	push	ar6
   0925 C0 05         [24] 2699 	push	ar5
   0927 C0 04         [24] 2700 	push	ar4
   0929 12 09 3C      [24] 2701 	lcall	_delay_ms
   092C D0 04         [24] 2702 	pop	ar4
   092E D0 05         [24] 2703 	pop	ar5
   0930 D0 06         [24] 2704 	pop	ar6
   0932 D0 07         [24] 2705 	pop	ar7
                           2706 ;	../src/delay/src/delay_s.c:51: for(count = 0; count < seconds; count++)
   0934 0C            [12] 2707 	inc	r4
   0935 BC 00 DF      [24] 2708 	cjne	r4,#0x00,00103$
   0938 0D            [12] 2709 	inc	r5
   0939 80 DC         [24] 2710 	sjmp	00103$
   093B                    2711 00105$:
   093B 22            [24] 2712 	ret
                           2713 ;------------------------------------------------------------
                           2714 ;Allocation info for local variables in function 'delay_ms'
                           2715 ;------------------------------------------------------------
                           2716 ;milliseconds              Allocated with name '_delay_ms_milliseconds_1_138'
                           2717 ;count                     Allocated with name '_delay_ms_count_1_139'
                           2718 ;------------------------------------------------------------
                           2719 ;	../src/delay/src/delay_ms.c:46: void delay_ms(uint16_t milliseconds)
                           2720 ;	-----------------------------------------
                           2721 ;	 function delay_ms
                           2722 ;	-----------------------------------------
   093C                    2723 _delay_ms:
   093C AF 83         [24] 2724 	mov	r7,dph
   093E E5 82         [12] 2725 	mov	a,dpl
   0940 90 00 44      [24] 2726 	mov	dptr,#_delay_ms_milliseconds_1_138
   0943 F0            [24] 2727 	movx	@dptr,a
   0944 EF            [12] 2728 	mov	a,r7
   0945 A3            [24] 2729 	inc	dptr
   0946 F0            [24] 2730 	movx	@dptr,a
                           2731 ;	../src/delay/src/delay_ms.c:51: for(count = 0; count < milliseconds; count++)
   0947 90 00 44      [24] 2732 	mov	dptr,#_delay_ms_milliseconds_1_138
   094A E0            [24] 2733 	movx	a,@dptr
   094B FE            [12] 2734 	mov	r6,a
   094C A3            [24] 2735 	inc	dptr
   094D E0            [24] 2736 	movx	a,@dptr
   094E FF            [12] 2737 	mov	r7,a
   094F 7C 00         [12] 2738 	mov	r4,#0x00
   0951 7D 00         [12] 2739 	mov	r5,#0x00
   0953                    2740 00103$:
   0953 C3            [12] 2741 	clr	c
   0954 EC            [12] 2742 	mov	a,r4
   0955 9E            [12] 2743 	subb	a,r6
   0956 ED            [12] 2744 	mov	a,r5
   0957 9F            [12] 2745 	subb	a,r7
   0958 50 1D         [24] 2746 	jnc	00105$
                           2747 ;	../src/delay/src/delay_ms.c:53: delay_us(1000);
   095A 90 03 E8      [24] 2748 	mov	dptr,#0x03E8
   095D C0 07         [24] 2749 	push	ar7
   095F C0 06         [24] 2750 	push	ar6
   0961 C0 05         [24] 2751 	push	ar5
   0963 C0 04         [24] 2752 	push	ar4
   0965 12 08 BF      [24] 2753 	lcall	_delay_us
   0968 D0 04         [24] 2754 	pop	ar4
   096A D0 05         [24] 2755 	pop	ar5
   096C D0 06         [24] 2756 	pop	ar6
   096E D0 07         [24] 2757 	pop	ar7
                           2758 ;	../src/delay/src/delay_ms.c:51: for(count = 0; count < milliseconds; count++)
   0970 0C            [12] 2759 	inc	r4
   0971 BC 00 DF      [24] 2760 	cjne	r4,#0x00,00103$
   0974 0D            [12] 2761 	inc	r5
   0975 80 DC         [24] 2762 	sjmp	00103$
   0977                    2763 00105$:
   0977 22            [24] 2764 	ret
                           2765 ;------------------------------------------------------------
                           2766 ;Allocation info for local variables in function 'pwm_configure'
                           2767 ;------------------------------------------------------------
                           2768 ;pwm_config_options        Allocated with name '_pwm_configure_pwm_config_options_1_143'
                           2769 ;------------------------------------------------------------
                           2770 ;	../src/pwm/src/pwm_configure.c:52: void pwm_configure(uint8_t pwm_config_options)
                           2771 ;	-----------------------------------------
                           2772 ;	 function pwm_configure
                           2773 ;	-----------------------------------------
   0978                    2774 _pwm_configure:
   0978 E5 82         [12] 2775 	mov	a,dpl
   097A 90 00 46      [24] 2776 	mov	dptr,#_pwm_configure_pwm_config_options_1_143
   097D F0            [24] 2777 	movx	@dptr,a
                           2778 ;	../src/pwm/src/pwm_configure.c:55: PWMCON = (PWMCON & ~PWM_CONFIG_OPTION_PWMCON_MASK) | (pwm_config_options & PWM_CONFIG_OPTION_PWMCON_MASK);
   097E AF B2         [24] 2779 	mov	r7,_PWMCON
   0980 53 07 03      [24] 2780 	anl	ar7,#0x03
   0983 90 00 46      [24] 2781 	mov	dptr,#_pwm_configure_pwm_config_options_1_143
   0986 E0            [24] 2782 	movx	a,@dptr
   0987 54 FC         [12] 2783 	anl	a,#0xFC
   0989 4F            [12] 2784 	orl	a,r7
   098A F5 B2         [12] 2785 	mov	_PWMCON,a
   098C 22            [24] 2786 	ret
                           2787 ;------------------------------------------------------------
                           2788 ;Allocation info for local variables in function 'pwm_start'
                           2789 ;------------------------------------------------------------
                           2790 ;pwm_duty_cycle            Allocated with name '_pwm_start_PARM_2'
                           2791 ;pwm_channel               Allocated with name '_pwm_start_pwm_channel_1_145'
                           2792 ;------------------------------------------------------------
                           2793 ;	../src/pwm/src/pwm_start.c:47: void pwm_start(pwm_channel_t pwm_channel, uint8_t pwm_duty_cycle)
                           2794 ;	-----------------------------------------
                           2795 ;	 function pwm_start
                           2796 ;	-----------------------------------------
   098D                    2797 _pwm_start:
   098D E5 82         [12] 2798 	mov	a,dpl
                           2799 ;	../src/pwm/src/pwm_start.c:50: if(pwm_channel == PWM_CHANNEL_0)
   098F 90 00 48      [24] 2800 	mov	dptr,#_pwm_start_pwm_channel_1_145
   0992 F0            [24] 2801 	movx	@dptr,a
   0993 FF            [12] 2802 	mov	r7,a
   0994 70 0A         [24] 2803 	jnz	00102$
                           2804 ;	../src/pwm/src/pwm_start.c:52: PWMDC0 = pwm_duty_cycle;
   0996 90 00 47      [24] 2805 	mov	dptr,#_pwm_start_PARM_2
   0999 E0            [24] 2806 	movx	a,@dptr
   099A F5 A1         [12] 2807 	mov	_PWMDC0,a
                           2808 ;	../src/pwm/src/pwm_start.c:53: reg_bits_set(PWMCON, PWMCON_PWM0_ENABLE);
   099C 43 B2 01      [24] 2809 	orl	_PWMCON,#0x01
   099F 22            [24] 2810 	ret
   09A0                    2811 00102$:
                           2812 ;	../src/pwm/src/pwm_start.c:57: PWMDC1 = pwm_duty_cycle;
   09A0 90 00 47      [24] 2813 	mov	dptr,#_pwm_start_PARM_2
   09A3 E0            [24] 2814 	movx	a,@dptr
   09A4 F5 A2         [12] 2815 	mov	_PWMDC1,a
                           2816 ;	../src/pwm/src/pwm_start.c:58: reg_bits_set(PWMCON, PWMCON_PWM1_ENABLE);
   09A6 43 B2 02      [24] 2817 	orl	_PWMCON,#0x02
   09A9 22            [24] 2818 	ret
                           2819 ;------------------------------------------------------------
                           2820 ;Allocation info for local variables in function 'pwr_clk_mgmt_clklf_configure'
                           2821 ;------------------------------------------------------------
                           2822 ;clklf_config_options      Allocated with name '_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154'
                           2823 ;------------------------------------------------------------
                           2824 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_clklf_configure.c:52: void pwr_clk_mgmt_clklf_configure(uint8_t clklf_config_options)
                           2825 ;	-----------------------------------------
                           2826 ;	 function pwr_clk_mgmt_clklf_configure
                           2827 ;	-----------------------------------------
   09AA                    2828 _pwr_clk_mgmt_clklf_configure:
   09AA E5 82         [12] 2829 	mov	a,dpl
   09AC 90 00 49      [24] 2830 	mov	dptr,#_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154
   09AF F0            [24] 2831 	movx	@dptr,a
                           2832 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_clklf_configure.c:55: CLKLFCTRL = (CLKLFCTRL & ~PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLKLFCTRL_MASK) | (clklf_config_options & PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLKLFCTRL_MASK);
   09B0 AF AD         [24] 2833 	mov	r7,_CLKLFCTRL
   09B2 53 07 F8      [24] 2834 	anl	ar7,#0xF8
   09B5 90 00 49      [24] 2835 	mov	dptr,#_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154
   09B8 E0            [24] 2836 	movx	a,@dptr
   09B9 54 07         [12] 2837 	anl	a,#0x07
   09BB 4F            [12] 2838 	orl	a,r7
   09BC F5 AD         [12] 2839 	mov	_CLKLFCTRL,a
   09BE 22            [24] 2840 	ret
                           2841 ;------------------------------------------------------------
                           2842 ;Allocation info for local variables in function 'pwr_clk_mgmt_get_cclk_freq_in_hz'
                           2843 ;------------------------------------------------------------
                           2844 ;divider                   Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_divider_1_156'
                           2845 ;i                         Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_i_1_156'
                           2846 ;cclk_freq_hz              Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156'
                           2847 ;------------------------------------------------------------
                           2848 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:46: uint32_t pwr_clk_mgmt_get_cclk_freq_in_hz()
                           2849 ;	-----------------------------------------
                           2850 ;	 function pwr_clk_mgmt_get_cclk_freq_in_hz
                           2851 ;	-----------------------------------------
   09BF                    2852 _pwr_clk_mgmt_get_cclk_freq_in_hz:
                           2853 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:48: uint8_t divider = (CLKCTRL & CLKCTRL_CLK_FREQ_MASK) >> CLKCTRL_CLK_FREQ_SHIFT;
   09BF 74 07         [12] 2854 	mov	a,#0x07
   09C1 55 A3         [12] 2855 	anl	a,_CLKCTRL
   09C3 FF            [12] 2856 	mov	r7,a
                           2857 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:50: uint32_t cclk_freq_hz = CCLK_MAX_FREQ_HZ;
   09C4 90 00 4A      [24] 2858 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
   09C7 E4            [12] 2859 	clr	a
   09C8 F0            [24] 2860 	movx	@dptr,a
   09C9 74 24         [12] 2861 	mov	a,#0x24
   09CB A3            [24] 2862 	inc	dptr
   09CC F0            [24] 2863 	movx	@dptr,a
   09CD 74 F4         [12] 2864 	mov	a,#0xF4
   09CF A3            [24] 2865 	inc	dptr
   09D0 F0            [24] 2866 	movx	@dptr,a
   09D1 E4            [12] 2867 	clr	a
   09D2 A3            [24] 2868 	inc	dptr
   09D3 F0            [24] 2869 	movx	@dptr,a
                           2870 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:52: for(i = 0; i < divider; i++)
   09D4 7E 00         [12] 2871 	mov	r6,#0x00
   09D6                    2872 00103$:
   09D6 C3            [12] 2873 	clr	c
   09D7 EE            [12] 2874 	mov	a,r6
   09D8 9F            [12] 2875 	subb	a,r7
   09D9 50 29         [24] 2876 	jnc	00101$
                           2877 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:54: cclk_freq_hz /= 2;
   09DB 90 00 4A      [24] 2878 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
   09DE E0            [24] 2879 	movx	a,@dptr
   09DF FA            [12] 2880 	mov	r2,a
   09E0 A3            [24] 2881 	inc	dptr
   09E1 E0            [24] 2882 	movx	a,@dptr
   09E2 FB            [12] 2883 	mov	r3,a
   09E3 A3            [24] 2884 	inc	dptr
   09E4 E0            [24] 2885 	movx	a,@dptr
   09E5 FC            [12] 2886 	mov	r4,a
   09E6 A3            [24] 2887 	inc	dptr
   09E7 E0            [24] 2888 	movx	a,@dptr
   09E8 C3            [12] 2889 	clr	c
   09E9 13            [12] 2890 	rrc	a
   09EA FD            [12] 2891 	mov	r5,a
   09EB EC            [12] 2892 	mov	a,r4
   09EC 13            [12] 2893 	rrc	a
   09ED FC            [12] 2894 	mov	r4,a
   09EE EB            [12] 2895 	mov	a,r3
   09EF 13            [12] 2896 	rrc	a
   09F0 FB            [12] 2897 	mov	r3,a
   09F1 EA            [12] 2898 	mov	a,r2
   09F2 13            [12] 2899 	rrc	a
   09F3 FA            [12] 2900 	mov	r2,a
   09F4 90 00 4A      [24] 2901 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
   09F7 F0            [24] 2902 	movx	@dptr,a
   09F8 EB            [12] 2903 	mov	a,r3
   09F9 A3            [24] 2904 	inc	dptr
   09FA F0            [24] 2905 	movx	@dptr,a
   09FB EC            [12] 2906 	mov	a,r4
   09FC A3            [24] 2907 	inc	dptr
   09FD F0            [24] 2908 	movx	@dptr,a
   09FE ED            [12] 2909 	mov	a,r5
   09FF A3            [24] 2910 	inc	dptr
   0A00 F0            [24] 2911 	movx	@dptr,a
                           2912 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:52: for(i = 0; i < divider; i++)
   0A01 0E            [12] 2913 	inc	r6
   0A02 80 D2         [24] 2914 	sjmp	00103$
   0A04                    2915 00101$:
                           2916 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:57: return cclk_freq_hz;
   0A04 90 00 4A      [24] 2917 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
   0A07 E0            [24] 2918 	movx	a,@dptr
   0A08 FC            [12] 2919 	mov	r4,a
   0A09 A3            [24] 2920 	inc	dptr
   0A0A E0            [24] 2921 	movx	a,@dptr
   0A0B FD            [12] 2922 	mov	r5,a
   0A0C A3            [24] 2923 	inc	dptr
   0A0D E0            [24] 2924 	movx	a,@dptr
   0A0E FE            [12] 2925 	mov	r6,a
   0A0F A3            [24] 2926 	inc	dptr
   0A10 E0            [24] 2927 	movx	a,@dptr
   0A11 8C 82         [24] 2928 	mov	dpl,r4
   0A13 8D 83         [24] 2929 	mov	dph,r5
   0A15 8E F0         [24] 2930 	mov	b,r6
   0A17 22            [24] 2931 	ret
                           2932 ;------------------------------------------------------------
                           2933 ;Allocation info for local variables in function 'watchdog_set_wdsv_count'
                           2934 ;------------------------------------------------------------
                           2935 ;wdsv_value                Allocated with name '_watchdog_set_wdsv_count_wdsv_value_1_159'
                           2936 ;------------------------------------------------------------
                           2937 ;	../src/watchdog/src/watchdog_set_wdsv_count.c:46: void watchdog_set_wdsv_count(uint16_t wdsv_value)
                           2938 ;	-----------------------------------------
                           2939 ;	 function watchdog_set_wdsv_count
                           2940 ;	-----------------------------------------
   0A18                    2941 _watchdog_set_wdsv_count:
   0A18 AF 83         [24] 2942 	mov	r7,dph
   0A1A E5 82         [12] 2943 	mov	a,dpl
   0A1C 90 00 4E      [24] 2944 	mov	dptr,#_watchdog_set_wdsv_count_wdsv_value_1_159
   0A1F F0            [24] 2945 	movx	@dptr,a
   0A20 EF            [12] 2946 	mov	a,r7
   0A21 A3            [24] 2947 	inc	dptr
   0A22 F0            [24] 2948 	movx	@dptr,a
                           2949 ;	../src/watchdog/src/watchdog_set_wdsv_count.c:49: WDSV = (uint8_t)wdsv_value;
   0A23 90 00 4E      [24] 2950 	mov	dptr,#_watchdog_set_wdsv_count_wdsv_value_1_159
   0A26 E0            [24] 2951 	movx	a,@dptr
   0A27 FE            [12] 2952 	mov	r6,a
   0A28 A3            [24] 2953 	inc	dptr
   0A29 E0            [24] 2954 	movx	a,@dptr
   0A2A FF            [12] 2955 	mov	r7,a
   0A2B 8E AF         [24] 2956 	mov	_WDSV,r6
                           2957 ;	../src/watchdog/src/watchdog_set_wdsv_count.c:50: WDSV = (uint8_t)(wdsv_value >> 8);
   0A2D 8F AF         [24] 2958 	mov	_WDSV,r7
   0A2F 22            [24] 2959 	ret
                           2960 ;------------------------------------------------------------
                           2961 ;Allocation info for local variables in function 'watchdog_start_and_set_timeout_in_ms'
                           2962 ;------------------------------------------------------------
                           2963 ;milliseconds              Allocated with name '_watchdog_start_and_set_timeout_in_ms_milliseconds_1_161'
                           2964 ;wd_value                  Allocated with name '_watchdog_start_and_set_timeout_in_ms_wd_value_1_162'
                           2965 ;------------------------------------------------------------
                           2966 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:50: uint16_t watchdog_start_and_set_timeout_in_ms(uint32_t milliseconds)
                           2967 ;	-----------------------------------------
                           2968 ;	 function watchdog_start_and_set_timeout_in_ms
                           2969 ;	-----------------------------------------
   0A30                    2970 _watchdog_start_and_set_timeout_in_ms:
   0A30 AF 82         [24] 2971 	mov	r7,dpl
   0A32 AE 83         [24] 2972 	mov	r6,dph
   0A34 AD F0         [24] 2973 	mov	r5,b
   0A36 FC            [12] 2974 	mov	r4,a
   0A37 90 00 50      [24] 2975 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_milliseconds_1_161
   0A3A EF            [12] 2976 	mov	a,r7
   0A3B F0            [24] 2977 	movx	@dptr,a
   0A3C EE            [12] 2978 	mov	a,r6
   0A3D A3            [24] 2979 	inc	dptr
   0A3E F0            [24] 2980 	movx	@dptr,a
   0A3F ED            [12] 2981 	mov	a,r5
   0A40 A3            [24] 2982 	inc	dptr
   0A41 F0            [24] 2983 	movx	@dptr,a
   0A42 EC            [12] 2984 	mov	a,r4
   0A43 A3            [24] 2985 	inc	dptr
   0A44 F0            [24] 2986 	movx	@dptr,a
                           2987 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:52: uint16_t wd_value = 0;
   0A45 90 00 54      [24] 2988 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_162
   0A48 E4            [12] 2989 	clr	a
   0A49 F0            [24] 2990 	movx	@dptr,a
   0A4A E4            [12] 2991 	clr	a
   0A4B A3            [24] 2992 	inc	dptr
   0A4C F0            [24] 2993 	movx	@dptr,a
                           2994 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:55: if(!pwr_clk_mgmt_is_clklf_enabled())
   0A4D 74 07         [12] 2995 	mov	a,#0x07
   0A4F 55 AD         [12] 2996 	anl	a,_CLKLFCTRL
   0A51 FF            [12] 2997 	mov	r7,a
   0A52 BF 07 0B      [24] 2998 	cjne	r7,#0x07,00105$
                           2999 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:58: pwr_clk_mgmt_clklf_configure(PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLK_SRC_XOSC16M);
   0A55 75 82 02      [24] 3000 	mov	dpl,#0x02
   0A58 12 09 AA      [24] 3001 	lcall	_pwr_clk_mgmt_clklf_configure
                           3002 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:59: pwr_clk_mgmt_wait_until_clklf_is_ready();
   0A5B                    3003 00101$:
   0A5B E5 AD         [12] 3004 	mov	a,_CLKLFCTRL
   0A5D 30 E6 FB      [24] 3005 	jnb	acc.6,00101$
   0A60                    3006 00105$:
                           3007 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:63: if(milliseconds < 511992)
   0A60 90 00 50      [24] 3008 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_milliseconds_1_161
   0A63 E0            [24] 3009 	movx	a,@dptr
   0A64 FC            [12] 3010 	mov	r4,a
   0A65 A3            [24] 3011 	inc	dptr
   0A66 E0            [24] 3012 	movx	a,@dptr
   0A67 FD            [12] 3013 	mov	r5,a
   0A68 A3            [24] 3014 	inc	dptr
   0A69 E0            [24] 3015 	movx	a,@dptr
   0A6A FE            [12] 3016 	mov	r6,a
   0A6B A3            [24] 3017 	inc	dptr
   0A6C E0            [24] 3018 	movx	a,@dptr
   0A6D FF            [12] 3019 	mov	r7,a
   0A6E C3            [12] 3020 	clr	c
   0A6F EC            [12] 3021 	mov	a,r4
   0A70 94 F8         [12] 3022 	subb	a,#0xF8
   0A72 ED            [12] 3023 	mov	a,r5
   0A73 94 CF         [12] 3024 	subb	a,#0xCF
   0A75 EE            [12] 3025 	mov	a,r6
   0A76 94 07         [12] 3026 	subb	a,#0x07
   0A78 EF            [12] 3027 	mov	a,r7
   0A79 94 00         [12] 3028 	subb	a,#0x00
   0A7B 50 52         [24] 3029 	jnc	00107$
                           3030 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:90: wd_value = (uint16_t)(((uint32_t)(milliseconds * ((uint32_t)128)) + (uint32_t)500) / ((uint32_t)1000));
   0A7D EF            [12] 3031 	mov	a,r7
   0A7E 54 01         [12] 3032 	anl	a,#0x01
   0A80 A2 E0         [12] 3033 	mov	c,acc.0
   0A82 CE            [12] 3034 	xch	a,r6
   0A83 13            [12] 3035 	rrc	a
   0A84 CE            [12] 3036 	xch	a,r6
   0A85 13            [12] 3037 	rrc	a
   0A86 CE            [12] 3038 	xch	a,r6
   0A87 FF            [12] 3039 	mov	r7,a
   0A88 ED            [12] 3040 	mov	a,r5
   0A89 C3            [12] 3041 	clr	c
   0A8A 13            [12] 3042 	rrc	a
   0A8B 4E            [12] 3043 	orl	a,r6
   0A8C FE            [12] 3044 	mov	r6,a
   0A8D ED            [12] 3045 	mov	a,r5
   0A8E 54 01         [12] 3046 	anl	a,#0x01
   0A90 A2 E0         [12] 3047 	mov	c,acc.0
   0A92 CC            [12] 3048 	xch	a,r4
   0A93 13            [12] 3049 	rrc	a
   0A94 CC            [12] 3050 	xch	a,r4
   0A95 13            [12] 3051 	rrc	a
   0A96 CC            [12] 3052 	xch	a,r4
   0A97 FD            [12] 3053 	mov	r5,a
   0A98 74 F4         [12] 3054 	mov	a,#0xF4
   0A9A 2C            [12] 3055 	add	a,r4
   0A9B FC            [12] 3056 	mov	r4,a
   0A9C 74 01         [12] 3057 	mov	a,#0x01
   0A9E 3D            [12] 3058 	addc	a,r5
   0A9F FD            [12] 3059 	mov	r5,a
   0AA0 E4            [12] 3060 	clr	a
   0AA1 3E            [12] 3061 	addc	a,r6
   0AA2 FE            [12] 3062 	mov	r6,a
   0AA3 E4            [12] 3063 	clr	a
   0AA4 3F            [12] 3064 	addc	a,r7
   0AA5 FF            [12] 3065 	mov	r7,a
   0AA6 90 00 BD      [24] 3066 	mov	dptr,#__divulong_PARM_2
   0AA9 74 E8         [12] 3067 	mov	a,#0xE8
   0AAB F0            [24] 3068 	movx	@dptr,a
   0AAC 74 03         [12] 3069 	mov	a,#0x03
   0AAE A3            [24] 3070 	inc	dptr
   0AAF F0            [24] 3071 	movx	@dptr,a
   0AB0 E4            [12] 3072 	clr	a
   0AB1 A3            [24] 3073 	inc	dptr
   0AB2 F0            [24] 3074 	movx	@dptr,a
   0AB3 E4            [12] 3075 	clr	a
   0AB4 A3            [24] 3076 	inc	dptr
   0AB5 F0            [24] 3077 	movx	@dptr,a
   0AB6 8C 82         [24] 3078 	mov	dpl,r4
   0AB8 8D 83         [24] 3079 	mov	dph,r5
   0ABA 8E F0         [24] 3080 	mov	b,r6
   0ABC EF            [12] 3081 	mov	a,r7
   0ABD 12 17 96      [24] 3082 	lcall	__divulong
   0AC0 AC 82         [24] 3083 	mov	r4,dpl
   0AC2 AD 83         [24] 3084 	mov	r5,dph
   0AC4 AE F0         [24] 3085 	mov	r6,b
   0AC6 FF            [12] 3086 	mov	r7,a
   0AC7 90 00 54      [24] 3087 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_162
   0ACA EC            [12] 3088 	mov	a,r4
   0ACB F0            [24] 3089 	movx	@dptr,a
   0ACC ED            [12] 3090 	mov	a,r5
   0ACD A3            [24] 3091 	inc	dptr
   0ACE F0            [24] 3092 	movx	@dptr,a
   0ACF                    3093 00107$:
                           3094 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:93: watchdog_set_wdsv_count(wd_value);
   0ACF 90 00 54      [24] 3095 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_162
   0AD2 E0            [24] 3096 	movx	a,@dptr
   0AD3 FE            [12] 3097 	mov	r6,a
   0AD4 A3            [24] 3098 	inc	dptr
   0AD5 E0            [24] 3099 	movx	a,@dptr
   0AD6 FF            [12] 3100 	mov	r7,a
   0AD7 8E 82         [24] 3101 	mov	dpl,r6
   0AD9 8F 83         [24] 3102 	mov	dph,r7
   0ADB C0 07         [24] 3103 	push	ar7
   0ADD C0 06         [24] 3104 	push	ar6
   0ADF 12 0A 18      [24] 3105 	lcall	_watchdog_set_wdsv_count
   0AE2 D0 06         [24] 3106 	pop	ar6
   0AE4 D0 07         [24] 3107 	pop	ar7
                           3108 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:95: return wd_value;
   0AE6 8E 82         [24] 3109 	mov	dpl,r6
   0AE8 8F 83         [24] 3110 	mov	dph,r7
   0AEA 22            [24] 3111 	ret
                           3112 ;------------------------------------------------------------
                           3113 ;Allocation info for local variables in function 'interrupt_configure_ifp'
                           3114 ;------------------------------------------------------------
                           3115 ;ifp_int_config_options    Allocated with name '_interrupt_configure_ifp_PARM_2'
                           3116 ;interrupt_ifp_input       Allocated with name '_interrupt_configure_ifp_interrupt_ifp_input_1_165'
                           3117 ;------------------------------------------------------------
                           3118 ;	../src/interrupt/src/interrupt_configure_ifp.c:57: bool interrupt_configure_ifp(interrupt_ifp_input_t interrupt_ifp_input, uint8_t ifp_int_config_options)
                           3119 ;	-----------------------------------------
                           3120 ;	 function interrupt_configure_ifp
                           3121 ;	-----------------------------------------
   0AEB                    3122 _interrupt_configure_ifp:
   0AEB E5 82         [12] 3123 	mov	a,dpl
   0AED 90 00 57      [24] 3124 	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_165
   0AF0 F0            [24] 3125 	movx	@dptr,a
                           3126 ;	../src/interrupt/src/interrupt_configure_ifp.c:60: if(ifp_int_config_options & INTERRUPT_IFP_CONFIG_OPTION_ENABLE)
   0AF1 90 00 56      [24] 3127 	mov	dptr,#_interrupt_configure_ifp_PARM_2
   0AF4 E0            [24] 3128 	movx	a,@dptr
   0AF5 FF            [12] 3129 	mov	r7,a
   0AF6 30 E7 41      [24] 3130 	jnb	acc.7,00116$
                           3131 ;	../src/interrupt/src/interrupt_configure_ifp.c:63: if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT0)
   0AF9 90 00 57      [24] 3132 	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_165
   0AFC E0            [24] 3133 	movx	a,@dptr
   0AFD FE            [12] 3134 	mov	r6,a
   0AFE BE 08 0B      [24] 3135 	cjne	r6,#0x08,00108$
                           3136 ;	../src/interrupt/src/interrupt_configure_ifp.c:65: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT0;
   0B01 AD A6         [24] 3137 	mov	r5,_INTEXP
   0B03 74 C7         [12] 3138 	mov	a,#0xC7
   0B05 5D            [12] 3139 	anl	a,r5
   0B06 44 08         [12] 3140 	orl	a,#0x08
   0B08 F5 A6         [12] 3141 	mov	_INTEXP,a
   0B0A 80 20         [24] 3142 	sjmp	00109$
   0B0C                    3143 00108$:
                           3144 ;	../src/interrupt/src/interrupt_configure_ifp.c:67: else if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT1)
   0B0C BE 10 0B      [24] 3145 	cjne	r6,#0x10,00105$
                           3146 ;	../src/interrupt/src/interrupt_configure_ifp.c:69: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT1;
   0B0F AD A6         [24] 3147 	mov	r5,_INTEXP
   0B11 74 C7         [12] 3148 	mov	a,#0xC7
   0B13 5D            [12] 3149 	anl	a,r5
   0B14 44 10         [12] 3150 	orl	a,#0x10
   0B16 F5 A6         [12] 3151 	mov	_INTEXP,a
   0B18 80 12         [24] 3152 	sjmp	00109$
   0B1A                    3153 00105$:
                           3154 ;	../src/interrupt/src/interrupt_configure_ifp.c:71: else if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT2)
   0B1A BE 20 0B      [24] 3155 	cjne	r6,#0x20,00102$
                           3156 ;	../src/interrupt/src/interrupt_configure_ifp.c:73: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT2;
   0B1D AE A6         [24] 3157 	mov	r6,_INTEXP
   0B1F 74 C7         [12] 3158 	mov	a,#0xC7
   0B21 5E            [12] 3159 	anl	a,r6
   0B22 44 20         [12] 3160 	orl	a,#0x20
   0B24 F5 A6         [12] 3161 	mov	_INTEXP,a
   0B26 80 04         [24] 3162 	sjmp	00109$
   0B28                    3163 00102$:
                           3164 ;	../src/interrupt/src/interrupt_configure_ifp.c:78: return false;
   0B28 75 82 00      [24] 3165 	mov	dpl,#0x00
   0B2B 22            [24] 3166 	ret
   0B2C                    3167 00109$:
                           3168 ;	../src/interrupt/src/interrupt_configure_ifp.c:82: TCON = (TCON & ~INTERRUPT_IFP_CONFIG_TCON_MASK) | (ifp_int_config_options & INTERRUPT_IFP_CONFIG_TCON_MASK);
   0B2C AE 88         [24] 3169 	mov	r6,_TCON
   0B2E 53 06 FE      [24] 3170 	anl	ar6,#0xFE
   0B31 53 07 01      [24] 3171 	anl	ar7,#0x01
   0B34 EF            [12] 3172 	mov	a,r7
   0B35 4E            [12] 3173 	orl	a,r6
   0B36 F5 88         [12] 3174 	mov	_TCON,a
   0B38 80 1F         [24] 3175 	sjmp	00117$
   0B3A                    3176 00116$:
                           3177 ;	../src/interrupt/src/interrupt_configure_ifp.c:87: if((interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT0) || (interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT1) || (interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT2))
   0B3A 90 00 57      [24] 3178 	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_165
   0B3D E0            [24] 3179 	movx	a,@dptr
   0B3E FF            [12] 3180 	mov	r7,a
   0B3F BF 08 02      [24] 3181 	cjne	r7,#0x08,00145$
   0B42 80 08         [24] 3182 	sjmp	00110$
   0B44                    3183 00145$:
   0B44 BF 10 02      [24] 3184 	cjne	r7,#0x10,00146$
   0B47 80 03         [24] 3185 	sjmp	00110$
   0B49                    3186 00146$:
   0B49 BF 20 09      [24] 3187 	cjne	r7,#0x20,00111$
   0B4C                    3188 00110$:
                           3189 ;	../src/interrupt/src/interrupt_configure_ifp.c:89: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK);
   0B4C AF A6         [24] 3190 	mov	r7,_INTEXP
   0B4E 74 C7         [12] 3191 	mov	a,#0xC7
   0B50 5F            [12] 3192 	anl	a,r7
   0B51 F5 A6         [12] 3193 	mov	_INTEXP,a
   0B53 80 04         [24] 3194 	sjmp	00117$
   0B55                    3195 00111$:
                           3196 ;	../src/interrupt/src/interrupt_configure_ifp.c:94: return false;
   0B55 75 82 00      [24] 3197 	mov	dpl,#0x00
   0B58 22            [24] 3198 	ret
   0B59                    3199 00117$:
                           3200 ;	../src/interrupt/src/interrupt_configure_ifp.c:98: return true;
   0B59 75 82 01      [24] 3201 	mov	dpl,#0x01
   0B5C 22            [24] 3202 	ret
                           3203 ;------------------------------------------------------------
                           3204 ;Allocation info for local variables in function 'adc_configure'
                           3205 ;------------------------------------------------------------
                           3206 ;adc_config_options        Allocated with name '_adc_configure_adc_config_options_1_179'
                           3207 ;------------------------------------------------------------
                           3208 ;	../src/adc/src/adc_configure.c:54: void adc_configure(unsigned int adc_config_options)
                           3209 ;	-----------------------------------------
                           3210 ;	 function adc_configure
                           3211 ;	-----------------------------------------
   0B5D                    3212 _adc_configure:
   0B5D AF 83         [24] 3213 	mov	r7,dph
   0B5F E5 82         [12] 3214 	mov	a,dpl
   0B61 90 00 58      [24] 3215 	mov	dptr,#_adc_configure_adc_config_options_1_179
   0B64 F0            [24] 3216 	movx	@dptr,a
   0B65 EF            [12] 3217 	mov	a,r7
   0B66 A3            [24] 3218 	inc	dptr
   0B67 F0            [24] 3219 	movx	@dptr,a
                           3220 ;	../src/adc/src/adc_configure.c:57: ADCCON1 = (adc_config_options >> 8) & ADC_CONFIG_OPTION_ADCCON1_WRITE_MASK;
   0B68 90 00 58      [24] 3221 	mov	dptr,#_adc_configure_adc_config_options_1_179
   0B6B E0            [24] 3222 	movx	a,@dptr
   0B6C FE            [12] 3223 	mov	r6,a
   0B6D A3            [24] 3224 	inc	dptr
   0B6E E0            [24] 3225 	movx	a,@dptr
   0B6F FD            [12] 3226 	mov	r5,a
   0B70 74 03         [12] 3227 	mov	a,#0x03
   0B72 5D            [12] 3228 	anl	a,r5
   0B73 F5 D3         [12] 3229 	mov	_ADCCON1,a
                           3230 ;	../src/adc/src/adc_configure.c:58: ADCCON2 = (adc_config_options)      & ADC_CONFIG_OPTION_ADCCON2_WRITE_MASK;
   0B75 8E D2         [24] 3231 	mov	_ADCCON2,r6
                           3232 ;	../src/adc/src/adc_configure.c:59: ADCCON3 = (adc_config_options >> 8) & ADC_CONFIG_OPTION_ADCCON3_WRITE_MASK;
   0B77 74 E0         [12] 3233 	mov	a,#0xE0
   0B79 5D            [12] 3234 	anl	a,r5
   0B7A F5 D1         [12] 3235 	mov	_ADCCON3,a
   0B7C 22            [24] 3236 	ret
                           3237 ;------------------------------------------------------------
                           3238 ;Allocation info for local variables in function 'adc_set_input_channel'
                           3239 ;------------------------------------------------------------
                           3240 ;adc_channel               Allocated with name '_adc_set_input_channel_adc_channel_1_181'
                           3241 ;------------------------------------------------------------
                           3242 ;	../src/adc/src/adc_set_input_channel.c:46: void adc_set_input_channel(adc_channel_t adc_channel)
                           3243 ;	-----------------------------------------
                           3244 ;	 function adc_set_input_channel
                           3245 ;	-----------------------------------------
   0B7D                    3246 _adc_set_input_channel:
   0B7D E5 82         [12] 3247 	mov	a,dpl
                           3248 ;	../src/adc/src/adc_set_input_channel.c:49: adc_channel &= (ADCCON1_CHAN_SEL_MASK >> ADCCON1_CHAN_SEL_SHIFT);
   0B7F 90 00 5A      [24] 3249 	mov	dptr,#_adc_set_input_channel_adc_channel_1_181
   0B82 F0            [24] 3250 	movx	@dptr,a
   0B83 FF            [12] 3251 	mov	r7,a
   0B84 90 00 5A      [24] 3252 	mov	dptr,#_adc_set_input_channel_adc_channel_1_181
   0B87 74 0F         [12] 3253 	mov	a,#0x0F
   0B89 5F            [12] 3254 	anl	a,r7
   0B8A F0            [24] 3255 	movx	@dptr,a
                           3256 ;	../src/adc/src/adc_set_input_channel.c:52: ADCCON1 = (ADCCON1 & ~ADCCON1_CHAN_SEL_MASK) | (adc_channel << ADCCON1_CHAN_SEL_SHIFT);
   0B8B AF D3         [24] 3257 	mov	r7,_ADCCON1
   0B8D 53 07 C3      [24] 3258 	anl	ar7,#0xC3
   0B90 90 00 5A      [24] 3259 	mov	dptr,#_adc_set_input_channel_adc_channel_1_181
   0B93 E0            [24] 3260 	movx	a,@dptr
   0B94 25 E0         [12] 3261 	add	a,acc
   0B96 25 E0         [12] 3262 	add	a,acc
   0B98 4F            [12] 3263 	orl	a,r7
   0B99 F5 D3         [12] 3264 	mov	_ADCCON1,a
   0B9B 22            [24] 3265 	ret
                           3266 ;------------------------------------------------------------
                           3267 ;Allocation info for local variables in function 'adc_start_single_conversion'
                           3268 ;------------------------------------------------------------
                           3269 ;adc_channel               Allocated with name '_adc_start_single_conversion_adc_channel_1_183'
                           3270 ;------------------------------------------------------------
                           3271 ;	../src/adc/src/adc_start_single_conversion.c:47: void adc_start_single_conversion(adc_channel_t adc_channel)
                           3272 ;	-----------------------------------------
                           3273 ;	 function adc_start_single_conversion
                           3274 ;	-----------------------------------------
   0B9C                    3275 _adc_start_single_conversion:
   0B9C E5 82         [12] 3276 	mov	a,dpl
                           3277 ;	../src/adc/src/adc_start_single_conversion.c:49: adc_set_input_channel(adc_channel);
   0B9E 90 00 5B      [24] 3278 	mov	dptr,#_adc_start_single_conversion_adc_channel_1_183
   0BA1 F0            [24] 3279 	movx	@dptr,a
   0BA2 F5 82         [12] 3280 	mov	dpl,a
   0BA4 12 0B 7D      [24] 3281 	lcall	_adc_set_input_channel
                           3282 ;	../src/adc/src/adc_start_single_conversion.c:52: adc_power_up();
   0BA7 43 D3 80      [24] 3283 	orl	_ADCCON1,#0x80
                           3284 ;	../src/adc/src/adc_start_single_conversion.c:53: nop(); nop(); nop(); nop(); //4 clock cycles must elapse before busy flag is set (datasheet v1.3, p. 165)
   0BAA 00            [12] 3285 	nop 
   0BAB 00            [12] 3286 	nop 
   0BAC 00            [12] 3287 	nop 
   0BAD 00            [12] 3288 	nop 
   0BAE 22            [24] 3289 	ret
                           3290 ;------------------------------------------------------------
                           3291 ;Allocation info for local variables in function 'adc_start_single_conversion_get_value'
                           3292 ;------------------------------------------------------------
                           3293 ;adc_channel               Allocated with name '_adc_start_single_conversion_get_value_adc_channel_1_185'
                           3294 ;------------------------------------------------------------
                           3295 ;	../src/adc/src/adc_start_single_conversion_get_value.c:48: uint16_t adc_start_single_conversion_get_value(adc_channel_t adc_channel)
                           3296 ;	-----------------------------------------
                           3297 ;	 function adc_start_single_conversion_get_value
                           3298 ;	-----------------------------------------
   0BAF                    3299 _adc_start_single_conversion_get_value:
   0BAF E5 82         [12] 3300 	mov	a,dpl
                           3301 ;	../src/adc/src/adc_start_single_conversion_get_value.c:50: adc_start_single_conversion(adc_channel);
   0BB1 90 00 5C      [24] 3302 	mov	dptr,#_adc_start_single_conversion_get_value_adc_channel_1_185
   0BB4 F0            [24] 3303 	movx	@dptr,a
   0BB5 F5 82         [12] 3304 	mov	dpl,a
   0BB7 12 0B 9C      [24] 3305 	lcall	_adc_start_single_conversion
                           3306 ;	../src/adc/src/adc_start_single_conversion_get_value.c:52: while(adc_is_conversion_in_progress());
   0BBA                    3307 00101$:
   0BBA 74 40         [12] 3308 	mov	a,#0x40
   0BBC 55 D3         [12] 3309 	anl	a,_ADCCON1
   0BBE FF            [12] 3310 	mov	r7,a
   0BBF BF 40 02      [24] 3311 	cjne	r7,#0x40,00112$
   0BC2 80 F6         [24] 3312 	sjmp	00101$
   0BC4                    3313 00112$:
                           3314 ;	../src/adc/src/adc_start_single_conversion_get_value.c:54: return adc_get_result();
   0BC4 85 D5 82      [24] 3315 	mov	dpl,((_ADCDAT >> 0) & 0xFF)
   0BC7 85 D4 83      [24] 3316 	mov	dph,((_ADCDAT >> 8) & 0xFF)
   0BCA 22            [24] 3317 	ret
                           3318 ;------------------------------------------------------------
                           3319 ;Allocation info for local variables in function 'timer0_configure'
                           3320 ;------------------------------------------------------------
                           3321 ;t0_val                    Allocated with name '_timer0_configure_PARM_2'
                           3322 ;timer0_config_options     Allocated with name '_timer0_configure_timer0_config_options_1_188'
                           3323 ;------------------------------------------------------------
                           3324 ;	../src/timer0/src/timer0_configure.c:53: void timer0_configure(uint8_t timer0_config_options, uint16_t t0_val)
                           3325 ;	-----------------------------------------
                           3326 ;	 function timer0_configure
                           3327 ;	-----------------------------------------
   0BCB                    3328 _timer0_configure:
   0BCB E5 82         [12] 3329 	mov	a,dpl
                           3330 ;	../src/timer0/src/timer0_configure.c:56: if((timer0_config_options & TMOD_MODE0_MASK) == TIMER0_CONFIG_OPTION_MODE_2_8_BIT_AUTO_RLD_TMR)
   0BCD 90 00 5F      [24] 3331 	mov	dptr,#_timer0_configure_timer0_config_options_1_188
   0BD0 F0            [24] 3332 	movx	@dptr,a
   0BD1 FF            [12] 3333 	mov	r7,a
   0BD2 74 03         [12] 3334 	mov	a,#0x03
   0BD4 5F            [12] 3335 	anl	a,r7
   0BD5 FE            [12] 3336 	mov	r6,a
   0BD6 BE 02 0E      [24] 3337 	cjne	r6,#0x02,00102$
                           3338 ;	../src/timer0/src/timer0_configure.c:58: TH0 = (uint8_t)t0_val;
   0BD9 90 00 5D      [24] 3339 	mov	dptr,#_timer0_configure_PARM_2
   0BDC E0            [24] 3340 	movx	a,@dptr
   0BDD FD            [12] 3341 	mov	r5,a
   0BDE A3            [24] 3342 	inc	dptr
   0BDF E0            [24] 3343 	movx	a,@dptr
   0BE0 FE            [12] 3344 	mov	r6,a
   0BE1 8D 8C         [24] 3345 	mov	_TH0,r5
                           3346 ;	../src/timer0/src/timer0_configure.c:59: TL0 = (uint8_t)t0_val;
   0BE3 8D 8A         [24] 3347 	mov	_TL0,r5
   0BE5 80 0A         [24] 3348 	sjmp	00103$
   0BE7                    3349 00102$:
                           3350 ;	../src/timer0/src/timer0_configure.c:63: timer0_set_t0_val(t0_val);
   0BE7 90 00 5D      [24] 3351 	mov	dptr,#_timer0_configure_PARM_2
   0BEA E0            [24] 3352 	movx	a,@dptr
   0BEB F5 8A         [12] 3353 	mov	((_T0 >> 0) & 0xFF),a
   0BED A3            [24] 3354 	inc	dptr
   0BEE E0            [24] 3355 	movx	a,@dptr
   0BEF F5 8C         [12] 3356 	mov	((_T0 >> 8) & 0xFF),a
   0BF1                    3357 00103$:
                           3358 ;	../src/timer0/src/timer0_configure.c:67: TMOD = (TMOD & ~TIMER0_CONFIG_OPTION_TMOD_MASK) | (timer0_config_options & TIMER0_CONFIG_OPTION_TMOD_MASK);
   0BF1 AE 89         [24] 3359 	mov	r6,_TMOD
   0BF3 53 06 F0      [24] 3360 	anl	ar6,#0xF0
   0BF6 53 07 0F      [24] 3361 	anl	ar7,#0x0F
   0BF9 EF            [12] 3362 	mov	a,r7
   0BFA 4E            [12] 3363 	orl	a,r6
   0BFB F5 89         [12] 3364 	mov	_TMOD,a
   0BFD 22            [24] 3365 	ret
                           3366 ;------------------------------------------------------------
                           3367 ;Allocation info for local variables in function 'timer1_configure'
                           3368 ;------------------------------------------------------------
                           3369 ;t1_val                    Allocated with name '_timer1_configure_PARM_2'
                           3370 ;timer1_config_options     Allocated with name '_timer1_configure_timer1_config_options_1_193'
                           3371 ;------------------------------------------------------------
                           3372 ;	../src/timer1/src/timer1_configure.c:53: void timer1_configure(uint8_t timer1_config_options, uint16_t t1_val)
                           3373 ;	-----------------------------------------
                           3374 ;	 function timer1_configure
                           3375 ;	-----------------------------------------
   0BFE                    3376 _timer1_configure:
   0BFE E5 82         [12] 3377 	mov	a,dpl
                           3378 ;	../src/timer1/src/timer1_configure.c:56: if((timer1_config_options & TMOD_MODE1_MASK) == TIMER1_CONFIG_OPTION_MODE_2_8_BIT_AUTO_RLD_TMR)
   0C00 90 00 62      [24] 3379 	mov	dptr,#_timer1_configure_timer1_config_options_1_193
   0C03 F0            [24] 3380 	movx	@dptr,a
   0C04 FF            [12] 3381 	mov	r7,a
   0C05 74 30         [12] 3382 	mov	a,#0x30
   0C07 5F            [12] 3383 	anl	a,r7
   0C08 FE            [12] 3384 	mov	r6,a
   0C09 BE 20 0E      [24] 3385 	cjne	r6,#0x20,00102$
                           3386 ;	../src/timer1/src/timer1_configure.c:58: TH1 = (uint8_t)t1_val;
   0C0C 90 00 60      [24] 3387 	mov	dptr,#_timer1_configure_PARM_2
   0C0F E0            [24] 3388 	movx	a,@dptr
   0C10 FD            [12] 3389 	mov	r5,a
   0C11 A3            [24] 3390 	inc	dptr
   0C12 E0            [24] 3391 	movx	a,@dptr
   0C13 FE            [12] 3392 	mov	r6,a
   0C14 8D 8D         [24] 3393 	mov	_TH1,r5
                           3394 ;	../src/timer1/src/timer1_configure.c:59: TL1 = (uint8_t)t1_val;
   0C16 8D 8B         [24] 3395 	mov	_TL1,r5
   0C18 80 0A         [24] 3396 	sjmp	00103$
   0C1A                    3397 00102$:
                           3398 ;	../src/timer1/src/timer1_configure.c:63: timer1_set_t1_val(t1_val);
   0C1A 90 00 60      [24] 3399 	mov	dptr,#_timer1_configure_PARM_2
   0C1D E0            [24] 3400 	movx	a,@dptr
   0C1E F5 8B         [12] 3401 	mov	((_T1 >> 0) & 0xFF),a
   0C20 A3            [24] 3402 	inc	dptr
   0C21 E0            [24] 3403 	movx	a,@dptr
   0C22 F5 8D         [12] 3404 	mov	((_T1 >> 8) & 0xFF),a
   0C24                    3405 00103$:
                           3406 ;	../src/timer1/src/timer1_configure.c:67: TMOD = (TMOD & ~TIMER1_CONFIG_OPTION_TMOD_MASK) | (timer1_config_options & TIMER1_CONFIG_OPTION_TMOD_MASK);
   0C24 AE 89         [24] 3407 	mov	r6,_TMOD
   0C26 53 06 0F      [24] 3408 	anl	ar6,#0x0F
   0C29 53 07 F0      [24] 3409 	anl	ar7,#0xF0
   0C2C EF            [12] 3410 	mov	a,r7
   0C2D 4E            [12] 3411 	orl	a,r6
   0C2E F5 89         [12] 3412 	mov	_TMOD,a
   0C30 22            [24] 3413 	ret
                           3414 ;------------------------------------------------------------
                           3415 ;Allocation info for local variables in function 'uart_configure_manual_baud_calc'
                           3416 ;------------------------------------------------------------
                           3417 ;s0rel_val_if_br_gen_or_th1_val_if_tmr1 Allocated with name '_uart_configure_manual_baud_calc_PARM_2'
                           3418 ;uart_config_options       Allocated with name '_uart_configure_manual_baud_calc_uart_config_options_1_203'
                           3419 ;------------------------------------------------------------
                           3420 ;	../src/uart/src/uart_configure_manual_baud_calc.c:55: void uart_configure_manual_baud_calc(uint8_t uart_config_options, uint16_t s0rel_val_if_br_gen_or_th1_val_if_tmr1)
                           3421 ;	-----------------------------------------
                           3422 ;	 function uart_configure_manual_baud_calc
                           3423 ;	-----------------------------------------
   0C31                    3424 _uart_configure_manual_baud_calc:
   0C31 E5 82         [12] 3425 	mov	a,dpl
                           3426 ;	../src/uart/src/uart_configure_manual_baud_calc.c:58: if(uart_config_options & UART_CONFIG_OPTION_BIT_SMOD_SET)
   0C33 90 00 65      [24] 3427 	mov	dptr,#_uart_configure_manual_baud_calc_uart_config_options_1_203
   0C36 F0            [24] 3428 	movx	@dptr,a
   0C37 FF            [12] 3429 	mov	r7,a
   0C38 30 E2 05      [24] 3430 	jnb	acc.2,00102$
                           3431 ;	../src/uart/src/uart_configure_manual_baud_calc.c:60: reg_bits_set(PCON, PCON_SMOD);
   0C3B 43 87 80      [24] 3432 	orl	_PCON,#0x80
   0C3E 80 07         [24] 3433 	sjmp	00103$
   0C40                    3434 00102$:
                           3435 ;	../src/uart/src/uart_configure_manual_baud_calc.c:64: reg_bits_clear(PCON, PCON_SMOD);
   0C40 AE 87         [24] 3436 	mov	r6,_PCON
   0C42 74 7F         [12] 3437 	mov	a,#0x7F
   0C44 5E            [12] 3438 	anl	a,r6
   0C45 F5 87         [12] 3439 	mov	_PCON,a
   0C47                    3440 00103$:
                           3441 ;	../src/uart/src/uart_configure_manual_baud_calc.c:68: if(((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_1_UART_8_BIT) ||
   0C47 74 C0         [12] 3442 	mov	a,#0xC0
   0C49 5F            [12] 3443 	anl	a,r7
   0C4A FE            [12] 3444 	mov	r6,a
   0C4B BE 40 02      [24] 3445 	cjne	r6,#0x40,00122$
   0C4E 80 07         [24] 3446 	sjmp	00107$
   0C50                    3447 00122$:
                           3448 ;	../src/uart/src/uart_configure_manual_baud_calc.c:69: ((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_3_UART_9_BIT))
   0C50 74 C0         [12] 3449 	mov	a,#0xC0
   0C52 5F            [12] 3450 	anl	a,r7
   0C53 FE            [12] 3451 	mov	r6,a
   0C54 BE C0 32      [24] 3452 	cjne	r6,#0xC0,00108$
   0C57                    3453 00107$:
                           3454 ;	../src/uart/src/uart_configure_manual_baud_calc.c:72: if((uart_config_options & UART_CONFIG_OPTION_CLOCK_MASK) == UART_CONFIG_OPTION_CLOCK_FOR_MODES_1_3_USE_BR_GEN)
   0C57 74 02         [12] 3455 	mov	a,#0x02
   0C59 5F            [12] 3456 	anl	a,r7
   0C5A FE            [12] 3457 	mov	r6,a
   0C5B BE 02 0E      [24] 3458 	cjne	r6,#0x02,00105$
                           3459 ;	../src/uart/src/uart_configure_manual_baud_calc.c:74: S0REL = s0rel_val_if_br_gen_or_th1_val_if_tmr1; //set S0REL to the value requested
   0C5E 90 00 63      [24] 3460 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   0C61 E0            [24] 3461 	movx	a,@dptr
   0C62 F5 AA         [12] 3462 	mov	((_S0REL >> 0) & 0xFF),a
   0C64 A3            [24] 3463 	inc	dptr
   0C65 E0            [24] 3464 	movx	a,@dptr
   0C66 F5 BA         [12] 3465 	mov	((_S0REL >> 8) & 0xFF),a
                           3466 ;	../src/uart/src/uart_configure_manual_baud_calc.c:75: sbit_set(ADCON_SB_BD); //enable BR generator
   0C68 D2 DF         [12] 3467 	setb _ADCON_SB_BD 
   0C6A 80 1D         [24] 3468 	sjmp	00108$
   0C6C                    3469 00105$:
                           3470 ;	../src/uart/src/uart_configure_manual_baud_calc.c:79: sbit_clear(ADCON_SB_BD); //disable BR generator and use TMR1 overflow
   0C6C C2 DF         [12] 3471 	clr _ADCON_SB_BD 
                           3472 ;	../src/uart/src/uart_configure_manual_baud_calc.c:85: (uint8_t)s0rel_val_if_br_gen_or_th1_val_if_tmr1);
   0C6E 90 00 63      [24] 3473 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   0C71 E0            [24] 3474 	movx	a,@dptr
   0C72 FD            [12] 3475 	mov	r5,a
   0C73 A3            [24] 3476 	inc	dptr
   0C74 E0            [24] 3477 	movx	a,@dptr
   0C75 90 00 60      [24] 3478 	mov	dptr,#_timer1_configure_PARM_2
   0C78 ED            [12] 3479 	mov	a,r5
   0C79 F0            [24] 3480 	movx	@dptr,a
   0C7A E4            [12] 3481 	clr	a
   0C7B A3            [24] 3482 	inc	dptr
   0C7C F0            [24] 3483 	movx	@dptr,a
   0C7D 75 82 20      [24] 3484 	mov	dpl,#0x20
   0C80 C0 07         [24] 3485 	push	ar7
   0C82 12 0B FE      [24] 3486 	lcall	_timer1_configure
   0C85 D0 07         [24] 3487 	pop	ar7
                           3488 ;	../src/uart/src/uart_configure_manual_baud_calc.c:87: timer1_run(); //enable the timer
   0C87 D2 8E         [12] 3489 	setb _TCON_SB_TR1 
   0C89                    3490 00108$:
                           3491 ;	../src/uart/src/uart_configure_manual_baud_calc.c:92: S0CON = uart_config_options & UART_CONFIG_OPTION_S0CON_MASK;
   0C89 74 F0         [12] 3492 	mov	a,#0xF0
   0C8B 5F            [12] 3493 	anl	a,r7
   0C8C F5 98         [12] 3494 	mov	_S0CON,a
   0C8E 22            [24] 3495 	ret
                           3496 ;------------------------------------------------------------
                           3497 ;Allocation info for local variables in function 'uart_calc_actual_baud_rate_from_s0rel'
                           3498 ;------------------------------------------------------------
                           3499 ;smod_bit_value            Allocated with name '_uart_calc_actual_baud_rate_from_s0rel_PARM_2'
                           3500 ;s0rel_reg_value           Allocated with name '_uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_210'
                           3501 ;------------------------------------------------------------
                           3502 ;	../src/uart/src/uart_calc_actual_baud_rate_from_s0rel.c:48: uint32_t uart_calc_actual_baud_rate_from_s0rel(uint16_t s0rel_reg_value, bool smod_bit_value)
                           3503 ;	-----------------------------------------
                           3504 ;	 function uart_calc_actual_baud_rate_from_s0rel
                           3505 ;	-----------------------------------------
   0C8F                    3506 _uart_calc_actual_baud_rate_from_s0rel:
   0C8F AF 83         [24] 3507 	mov	r7,dph
   0C91 E5 82         [12] 3508 	mov	a,dpl
   0C93 90 00 67      [24] 3509 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_210
   0C96 F0            [24] 3510 	movx	@dptr,a
   0C97 EF            [12] 3511 	mov	a,r7
   0C98 A3            [24] 3512 	inc	dptr
   0C99 F0            [24] 3513 	movx	@dptr,a
                           3514 ;	../src/uart/src/uart_calc_actual_baud_rate_from_s0rel.c:57: return (uint32_t)(((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(64 * (1024 - s0rel_reg_value)))) + 1) / 2);
   0C9A 90 00 66      [24] 3515 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
   0C9D E0            [24] 3516 	movx	a,@dptr
   0C9E FF            [12] 3517 	mov	r7,a
   0C9F 60 04         [24] 3518 	jz	00103$
   0CA1 7F 02         [12] 3519 	mov	r7,#0x02
   0CA3 80 02         [24] 3520 	sjmp	00104$
   0CA5                    3521 00103$:
   0CA5 7F 01         [12] 3522 	mov	r7,#0x01
   0CA7                    3523 00104$:
   0CA7 EF            [12] 3524 	mov	a,r7
   0CA8 75 F0 02      [24] 3525 	mov	b,#0x02
   0CAB A4            [48] 3526 	mul	ab
   0CAC FF            [12] 3527 	mov	r7,a
   0CAD AE F0         [24] 3528 	mov	r6,b
   0CAF C0 07         [24] 3529 	push	ar7
   0CB1 C0 06         [24] 3530 	push	ar6
   0CB3 12 09 BF      [24] 3531 	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
   0CB6 AA 82         [24] 3532 	mov	r2,dpl
   0CB8 AB 83         [24] 3533 	mov	r3,dph
   0CBA AC F0         [24] 3534 	mov	r4,b
   0CBC FD            [12] 3535 	mov	r5,a
   0CBD D0 06         [24] 3536 	pop	ar6
   0CBF D0 07         [24] 3537 	pop	ar7
   0CC1 8F 00         [24] 3538 	mov	ar0,r7
   0CC3 EE            [12] 3539 	mov	a,r6
   0CC4 F9            [12] 3540 	mov	r1,a
   0CC5 33            [12] 3541 	rlc	a
   0CC6 95 E0         [12] 3542 	subb	a,acc
   0CC8 FE            [12] 3543 	mov	r6,a
   0CC9 FF            [12] 3544 	mov	r7,a
   0CCA 90 00 CC      [24] 3545 	mov	dptr,#__mullong_PARM_2
   0CCD EA            [12] 3546 	mov	a,r2
   0CCE F0            [24] 3547 	movx	@dptr,a
   0CCF EB            [12] 3548 	mov	a,r3
   0CD0 A3            [24] 3549 	inc	dptr
   0CD1 F0            [24] 3550 	movx	@dptr,a
   0CD2 EC            [12] 3551 	mov	a,r4
   0CD3 A3            [24] 3552 	inc	dptr
   0CD4 F0            [24] 3553 	movx	@dptr,a
   0CD5 ED            [12] 3554 	mov	a,r5
   0CD6 A3            [24] 3555 	inc	dptr
   0CD7 F0            [24] 3556 	movx	@dptr,a
   0CD8 88 82         [24] 3557 	mov	dpl,r0
   0CDA 89 83         [24] 3558 	mov	dph,r1
   0CDC 8E F0         [24] 3559 	mov	b,r6
   0CDE EF            [12] 3560 	mov	a,r7
   0CDF 12 18 DF      [24] 3561 	lcall	__mullong
   0CE2 AC 82         [24] 3562 	mov	r4,dpl
   0CE4 AD 83         [24] 3563 	mov	r5,dph
   0CE6 AE F0         [24] 3564 	mov	r6,b
   0CE8 FF            [12] 3565 	mov	r7,a
   0CE9 90 00 67      [24] 3566 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_210
   0CEC E0            [24] 3567 	movx	a,@dptr
   0CED FA            [12] 3568 	mov	r2,a
   0CEE A3            [24] 3569 	inc	dptr
   0CEF E0            [24] 3570 	movx	a,@dptr
   0CF0 FB            [12] 3571 	mov	r3,a
   0CF1 E4            [12] 3572 	clr	a
   0CF2 C3            [12] 3573 	clr	c
   0CF3 9A            [12] 3574 	subb	a,r2
   0CF4 FA            [12] 3575 	mov	r2,a
   0CF5 74 04         [12] 3576 	mov	a,#0x04
   0CF7 9B            [12] 3577 	subb	a,r3
   0CF8 54 03         [12] 3578 	anl	a,#0x03
   0CFA A2 E0         [12] 3579 	mov	c,acc.0
   0CFC CA            [12] 3580 	xch	a,r2
   0CFD 13            [12] 3581 	rrc	a
   0CFE CA            [12] 3582 	xch	a,r2
   0CFF 13            [12] 3583 	rrc	a
   0D00 A2 E0         [12] 3584 	mov	c,acc.0
   0D02 CA            [12] 3585 	xch	a,r2
   0D03 13            [12] 3586 	rrc	a
   0D04 CA            [12] 3587 	xch	a,r2
   0D05 13            [12] 3588 	rrc	a
   0D06 CA            [12] 3589 	xch	a,r2
   0D07 FB            [12] 3590 	mov	r3,a
   0D08 90 00 BD      [24] 3591 	mov	dptr,#__divulong_PARM_2
   0D0B EA            [12] 3592 	mov	a,r2
   0D0C F0            [24] 3593 	movx	@dptr,a
   0D0D EB            [12] 3594 	mov	a,r3
   0D0E A3            [24] 3595 	inc	dptr
   0D0F F0            [24] 3596 	movx	@dptr,a
   0D10 E4            [12] 3597 	clr	a
   0D11 A3            [24] 3598 	inc	dptr
   0D12 F0            [24] 3599 	movx	@dptr,a
   0D13 E4            [12] 3600 	clr	a
   0D14 A3            [24] 3601 	inc	dptr
   0D15 F0            [24] 3602 	movx	@dptr,a
   0D16 8C 82         [24] 3603 	mov	dpl,r4
   0D18 8D 83         [24] 3604 	mov	dph,r5
   0D1A 8E F0         [24] 3605 	mov	b,r6
   0D1C EF            [12] 3606 	mov	a,r7
   0D1D 12 17 96      [24] 3607 	lcall	__divulong
   0D20 AC 82         [24] 3608 	mov	r4,dpl
   0D22 AD 83         [24] 3609 	mov	r5,dph
   0D24 AE F0         [24] 3610 	mov	r6,b
   0D26 FF            [12] 3611 	mov	r7,a
   0D27 0C            [12] 3612 	inc	r4
   0D28 BC 00 09      [24] 3613 	cjne	r4,#0x00,00109$
   0D2B 0D            [12] 3614 	inc	r5
   0D2C BD 00 05      [24] 3615 	cjne	r5,#0x00,00109$
   0D2F 0E            [12] 3616 	inc	r6
   0D30 BE 00 01      [24] 3617 	cjne	r6,#0x00,00109$
   0D33 0F            [12] 3618 	inc	r7
   0D34                    3619 00109$:
   0D34 EF            [12] 3620 	mov	a,r7
   0D35 C3            [12] 3621 	clr	c
   0D36 13            [12] 3622 	rrc	a
   0D37 FF            [12] 3623 	mov	r7,a
   0D38 EE            [12] 3624 	mov	a,r6
   0D39 13            [12] 3625 	rrc	a
   0D3A FE            [12] 3626 	mov	r6,a
   0D3B ED            [12] 3627 	mov	a,r5
   0D3C 13            [12] 3628 	rrc	a
   0D3D FD            [12] 3629 	mov	r5,a
   0D3E EC            [12] 3630 	mov	a,r4
   0D3F 13            [12] 3631 	rrc	a
   0D40 F5 82         [12] 3632 	mov	dpl,a
   0D42 8D 83         [24] 3633 	mov	dph,r5
   0D44 8E F0         [24] 3634 	mov	b,r6
   0D46 EF            [12] 3635 	mov	a,r7
   0D47 22            [24] 3636 	ret
                           3637 ;------------------------------------------------------------
                           3638 ;Allocation info for local variables in function 'uart_calc_actual_baud_rate_from_th1'
                           3639 ;------------------------------------------------------------
                           3640 ;smod_bit_value            Allocated with name '_uart_calc_actual_baud_rate_from_th1_PARM_2'
                           3641 ;th1_reg_value             Allocated with name '_uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_212'
                           3642 ;------------------------------------------------------------
                           3643 ;	../src/uart/src/uart_calc_actual_baud_rate_from_th1.c:48: uint32_t uart_calc_actual_baud_rate_from_th1(uint8_t th1_reg_value, bool smod_bit_value)
                           3644 ;	-----------------------------------------
                           3645 ;	 function uart_calc_actual_baud_rate_from_th1
                           3646 ;	-----------------------------------------
   0D48                    3647 _uart_calc_actual_baud_rate_from_th1:
   0D48 E5 82         [12] 3648 	mov	a,dpl
   0D4A 90 00 6A      [24] 3649 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_212
   0D4D F0            [24] 3650 	movx	@dptr,a
                           3651 ;	../src/uart/src/uart_calc_actual_baud_rate_from_th1.c:57: return (uint32_t)(((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(384 * (256 - th1_reg_value)))) + 1) / 2);
   0D4E 90 00 69      [24] 3652 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
   0D51 E0            [24] 3653 	movx	a,@dptr
   0D52 FF            [12] 3654 	mov	r7,a
   0D53 60 04         [24] 3655 	jz	00103$
   0D55 7F 02         [12] 3656 	mov	r7,#0x02
   0D57 80 02         [24] 3657 	sjmp	00104$
   0D59                    3658 00103$:
   0D59 7F 01         [12] 3659 	mov	r7,#0x01
   0D5B                    3660 00104$:
   0D5B EF            [12] 3661 	mov	a,r7
   0D5C 75 F0 02      [24] 3662 	mov	b,#0x02
   0D5F A4            [48] 3663 	mul	ab
   0D60 FF            [12] 3664 	mov	r7,a
   0D61 AE F0         [24] 3665 	mov	r6,b
   0D63 C0 07         [24] 3666 	push	ar7
   0D65 C0 06         [24] 3667 	push	ar6
   0D67 12 09 BF      [24] 3668 	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
   0D6A AA 82         [24] 3669 	mov	r2,dpl
   0D6C AB 83         [24] 3670 	mov	r3,dph
   0D6E AC F0         [24] 3671 	mov	r4,b
   0D70 FD            [12] 3672 	mov	r5,a
   0D71 D0 06         [24] 3673 	pop	ar6
   0D73 D0 07         [24] 3674 	pop	ar7
   0D75 8F 00         [24] 3675 	mov	ar0,r7
   0D77 EE            [12] 3676 	mov	a,r6
   0D78 F9            [12] 3677 	mov	r1,a
   0D79 33            [12] 3678 	rlc	a
   0D7A 95 E0         [12] 3679 	subb	a,acc
   0D7C FE            [12] 3680 	mov	r6,a
   0D7D FF            [12] 3681 	mov	r7,a
   0D7E 90 00 CC      [24] 3682 	mov	dptr,#__mullong_PARM_2
   0D81 EA            [12] 3683 	mov	a,r2
   0D82 F0            [24] 3684 	movx	@dptr,a
   0D83 EB            [12] 3685 	mov	a,r3
   0D84 A3            [24] 3686 	inc	dptr
   0D85 F0            [24] 3687 	movx	@dptr,a
   0D86 EC            [12] 3688 	mov	a,r4
   0D87 A3            [24] 3689 	inc	dptr
   0D88 F0            [24] 3690 	movx	@dptr,a
   0D89 ED            [12] 3691 	mov	a,r5
   0D8A A3            [24] 3692 	inc	dptr
   0D8B F0            [24] 3693 	movx	@dptr,a
   0D8C 88 82         [24] 3694 	mov	dpl,r0
   0D8E 89 83         [24] 3695 	mov	dph,r1
   0D90 8E F0         [24] 3696 	mov	b,r6
   0D92 EF            [12] 3697 	mov	a,r7
   0D93 12 18 DF      [24] 3698 	lcall	__mullong
   0D96 AC 82         [24] 3699 	mov	r4,dpl
   0D98 AD 83         [24] 3700 	mov	r5,dph
   0D9A AE F0         [24] 3701 	mov	r6,b
   0D9C FF            [12] 3702 	mov	r7,a
   0D9D 90 00 6A      [24] 3703 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_212
   0DA0 E0            [24] 3704 	movx	a,@dptr
   0DA1 FB            [12] 3705 	mov	r3,a
   0DA2 7A 00         [12] 3706 	mov	r2,#0x00
   0DA4 90 00 CA      [24] 3707 	mov	dptr,#__mulint_PARM_2
   0DA7 E4            [12] 3708 	clr	a
   0DA8 C3            [12] 3709 	clr	c
   0DA9 9B            [12] 3710 	subb	a,r3
   0DAA F0            [24] 3711 	movx	@dptr,a
   0DAB 74 01         [12] 3712 	mov	a,#0x01
   0DAD 9A            [12] 3713 	subb	a,r2
   0DAE A3            [24] 3714 	inc	dptr
   0DAF F0            [24] 3715 	movx	@dptr,a
   0DB0 90 01 80      [24] 3716 	mov	dptr,#0x0180
   0DB3 C0 07         [24] 3717 	push	ar7
   0DB5 C0 06         [24] 3718 	push	ar6
   0DB7 C0 05         [24] 3719 	push	ar5
   0DB9 C0 04         [24] 3720 	push	ar4
   0DBB 12 18 BF      [24] 3721 	lcall	__mulint
   0DBE AA 82         [24] 3722 	mov	r2,dpl
   0DC0 AB 83         [24] 3723 	mov	r3,dph
   0DC2 D0 04         [24] 3724 	pop	ar4
   0DC4 D0 05         [24] 3725 	pop	ar5
   0DC6 D0 06         [24] 3726 	pop	ar6
   0DC8 D0 07         [24] 3727 	pop	ar7
   0DCA 90 00 BD      [24] 3728 	mov	dptr,#__divulong_PARM_2
   0DCD EA            [12] 3729 	mov	a,r2
   0DCE F0            [24] 3730 	movx	@dptr,a
   0DCF EB            [12] 3731 	mov	a,r3
   0DD0 A3            [24] 3732 	inc	dptr
   0DD1 F0            [24] 3733 	movx	@dptr,a
   0DD2 EB            [12] 3734 	mov	a,r3
   0DD3 33            [12] 3735 	rlc	a
   0DD4 95 E0         [12] 3736 	subb	a,acc
   0DD6 A3            [24] 3737 	inc	dptr
   0DD7 F0            [24] 3738 	movx	@dptr,a
   0DD8 A3            [24] 3739 	inc	dptr
   0DD9 F0            [24] 3740 	movx	@dptr,a
   0DDA 8C 82         [24] 3741 	mov	dpl,r4
   0DDC 8D 83         [24] 3742 	mov	dph,r5
   0DDE 8E F0         [24] 3743 	mov	b,r6
   0DE0 EF            [12] 3744 	mov	a,r7
   0DE1 12 17 96      [24] 3745 	lcall	__divulong
   0DE4 AC 82         [24] 3746 	mov	r4,dpl
   0DE6 AD 83         [24] 3747 	mov	r5,dph
   0DE8 AE F0         [24] 3748 	mov	r6,b
   0DEA FF            [12] 3749 	mov	r7,a
   0DEB 0C            [12] 3750 	inc	r4
   0DEC BC 00 09      [24] 3751 	cjne	r4,#0x00,00109$
   0DEF 0D            [12] 3752 	inc	r5
   0DF0 BD 00 05      [24] 3753 	cjne	r5,#0x00,00109$
   0DF3 0E            [12] 3754 	inc	r6
   0DF4 BE 00 01      [24] 3755 	cjne	r6,#0x00,00109$
   0DF7 0F            [12] 3756 	inc	r7
   0DF8                    3757 00109$:
   0DF8 EF            [12] 3758 	mov	a,r7
   0DF9 C3            [12] 3759 	clr	c
   0DFA 13            [12] 3760 	rrc	a
   0DFB FF            [12] 3761 	mov	r7,a
   0DFC EE            [12] 3762 	mov	a,r6
   0DFD 13            [12] 3763 	rrc	a
   0DFE FE            [12] 3764 	mov	r6,a
   0DFF ED            [12] 3765 	mov	a,r5
   0E00 13            [12] 3766 	rrc	a
   0E01 FD            [12] 3767 	mov	r5,a
   0E02 EC            [12] 3768 	mov	a,r4
   0E03 13            [12] 3769 	rrc	a
   0E04 F5 82         [12] 3770 	mov	dpl,a
   0E06 8D 83         [24] 3771 	mov	dph,r5
   0E08 8E F0         [24] 3772 	mov	b,r6
   0E0A EF            [12] 3773 	mov	a,r7
   0E0B 22            [24] 3774 	ret
                           3775 ;------------------------------------------------------------
                           3776 ;Allocation info for local variables in function 'uart_calc_s0rel_value'
                           3777 ;------------------------------------------------------------
                           3778 ;smod_bit_value            Allocated with name '_uart_calc_s0rel_value_PARM_2'
                           3779 ;desired_baud_rate         Allocated with name '_uart_calc_s0rel_value_desired_baud_rate_1_214'
                           3780 ;------------------------------------------------------------
                           3781 ;	../src/uart/src/uart_calc_s0rel_value.c:48: uint16_t uart_calc_s0rel_value(uint32_t desired_baud_rate, bool smod_bit_value)
                           3782 ;	-----------------------------------------
                           3783 ;	 function uart_calc_s0rel_value
                           3784 ;	-----------------------------------------
   0E0C                    3785 _uart_calc_s0rel_value:
   0E0C AF 82         [24] 3786 	mov	r7,dpl
   0E0E AE 83         [24] 3787 	mov	r6,dph
   0E10 AD F0         [24] 3788 	mov	r5,b
   0E12 FC            [12] 3789 	mov	r4,a
   0E13 90 00 6C      [24] 3790 	mov	dptr,#_uart_calc_s0rel_value_desired_baud_rate_1_214
   0E16 EF            [12] 3791 	mov	a,r7
   0E17 F0            [24] 3792 	movx	@dptr,a
   0E18 EE            [12] 3793 	mov	a,r6
   0E19 A3            [24] 3794 	inc	dptr
   0E1A F0            [24] 3795 	movx	@dptr,a
   0E1B ED            [12] 3796 	mov	a,r5
   0E1C A3            [24] 3797 	inc	dptr
   0E1D F0            [24] 3798 	movx	@dptr,a
   0E1E EC            [12] 3799 	mov	a,r4
   0E1F A3            [24] 3800 	inc	dptr
   0E20 F0            [24] 3801 	movx	@dptr,a
                           3802 ;	../src/uart/src/uart_calc_s0rel_value.c:57: return (uint16_t)(1024 - (((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(64 * desired_baud_rate))) + 1) / 2));
   0E21 90 00 6B      [24] 3803 	mov	dptr,#_uart_calc_s0rel_value_PARM_2
   0E24 E0            [24] 3804 	movx	a,@dptr
   0E25 FF            [12] 3805 	mov	r7,a
   0E26 60 04         [24] 3806 	jz	00103$
   0E28 7F 02         [12] 3807 	mov	r7,#0x02
   0E2A 80 02         [24] 3808 	sjmp	00104$
   0E2C                    3809 00103$:
   0E2C 7F 01         [12] 3810 	mov	r7,#0x01
   0E2E                    3811 00104$:
   0E2E EF            [12] 3812 	mov	a,r7
   0E2F 75 F0 02      [24] 3813 	mov	b,#0x02
   0E32 A4            [48] 3814 	mul	ab
   0E33 FF            [12] 3815 	mov	r7,a
   0E34 AE F0         [24] 3816 	mov	r6,b
   0E36 C0 07         [24] 3817 	push	ar7
   0E38 C0 06         [24] 3818 	push	ar6
   0E3A 12 09 BF      [24] 3819 	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
   0E3D AA 82         [24] 3820 	mov	r2,dpl
   0E3F AB 83         [24] 3821 	mov	r3,dph
   0E41 AC F0         [24] 3822 	mov	r4,b
   0E43 FD            [12] 3823 	mov	r5,a
   0E44 D0 06         [24] 3824 	pop	ar6
   0E46 D0 07         [24] 3825 	pop	ar7
   0E48 8F 00         [24] 3826 	mov	ar0,r7
   0E4A EE            [12] 3827 	mov	a,r6
   0E4B F9            [12] 3828 	mov	r1,a
   0E4C 33            [12] 3829 	rlc	a
   0E4D 95 E0         [12] 3830 	subb	a,acc
   0E4F FE            [12] 3831 	mov	r6,a
   0E50 FF            [12] 3832 	mov	r7,a
   0E51 90 00 CC      [24] 3833 	mov	dptr,#__mullong_PARM_2
   0E54 EA            [12] 3834 	mov	a,r2
   0E55 F0            [24] 3835 	movx	@dptr,a
   0E56 EB            [12] 3836 	mov	a,r3
   0E57 A3            [24] 3837 	inc	dptr
   0E58 F0            [24] 3838 	movx	@dptr,a
   0E59 EC            [12] 3839 	mov	a,r4
   0E5A A3            [24] 3840 	inc	dptr
   0E5B F0            [24] 3841 	movx	@dptr,a
   0E5C ED            [12] 3842 	mov	a,r5
   0E5D A3            [24] 3843 	inc	dptr
   0E5E F0            [24] 3844 	movx	@dptr,a
   0E5F 88 82         [24] 3845 	mov	dpl,r0
   0E61 89 83         [24] 3846 	mov	dph,r1
   0E63 8E F0         [24] 3847 	mov	b,r6
   0E65 EF            [12] 3848 	mov	a,r7
   0E66 12 18 DF      [24] 3849 	lcall	__mullong
   0E69 AC 82         [24] 3850 	mov	r4,dpl
   0E6B AD 83         [24] 3851 	mov	r5,dph
   0E6D AE F0         [24] 3852 	mov	r6,b
   0E6F FF            [12] 3853 	mov	r7,a
   0E70 90 00 6C      [24] 3854 	mov	dptr,#_uart_calc_s0rel_value_desired_baud_rate_1_214
   0E73 E0            [24] 3855 	movx	a,@dptr
   0E74 F8            [12] 3856 	mov	r0,a
   0E75 A3            [24] 3857 	inc	dptr
   0E76 E0            [24] 3858 	movx	a,@dptr
   0E77 F9            [12] 3859 	mov	r1,a
   0E78 A3            [24] 3860 	inc	dptr
   0E79 E0            [24] 3861 	movx	a,@dptr
   0E7A FA            [12] 3862 	mov	r2,a
   0E7B A3            [24] 3863 	inc	dptr
   0E7C E0            [24] 3864 	movx	a,@dptr
   0E7D 54 03         [12] 3865 	anl	a,#0x03
   0E7F A2 E0         [12] 3866 	mov	c,acc.0
   0E81 CA            [12] 3867 	xch	a,r2
   0E82 13            [12] 3868 	rrc	a
   0E83 CA            [12] 3869 	xch	a,r2
   0E84 13            [12] 3870 	rrc	a
   0E85 A2 E0         [12] 3871 	mov	c,acc.0
   0E87 CA            [12] 3872 	xch	a,r2
   0E88 13            [12] 3873 	rrc	a
   0E89 CA            [12] 3874 	xch	a,r2
   0E8A 13            [12] 3875 	rrc	a
   0E8B CA            [12] 3876 	xch	a,r2
   0E8C FB            [12] 3877 	mov	r3,a
   0E8D E9            [12] 3878 	mov	a,r1
   0E8E 03            [12] 3879 	rr	a
   0E8F 03            [12] 3880 	rr	a
   0E90 54 3F         [12] 3881 	anl	a,#0x3F
   0E92 4A            [12] 3882 	orl	a,r2
   0E93 FA            [12] 3883 	mov	r2,a
   0E94 E9            [12] 3884 	mov	a,r1
   0E95 54 03         [12] 3885 	anl	a,#0x03
   0E97 A2 E0         [12] 3886 	mov	c,acc.0
   0E99 C8            [12] 3887 	xch	a,r0
   0E9A 13            [12] 3888 	rrc	a
   0E9B C8            [12] 3889 	xch	a,r0
   0E9C 13            [12] 3890 	rrc	a
   0E9D A2 E0         [12] 3891 	mov	c,acc.0
   0E9F C8            [12] 3892 	xch	a,r0
   0EA0 13            [12] 3893 	rrc	a
   0EA1 C8            [12] 3894 	xch	a,r0
   0EA2 13            [12] 3895 	rrc	a
   0EA3 C8            [12] 3896 	xch	a,r0
   0EA4 F9            [12] 3897 	mov	r1,a
   0EA5 90 00 BD      [24] 3898 	mov	dptr,#__divulong_PARM_2
   0EA8 E8            [12] 3899 	mov	a,r0
   0EA9 F0            [24] 3900 	movx	@dptr,a
   0EAA E9            [12] 3901 	mov	a,r1
   0EAB A3            [24] 3902 	inc	dptr
   0EAC F0            [24] 3903 	movx	@dptr,a
   0EAD EA            [12] 3904 	mov	a,r2
   0EAE A3            [24] 3905 	inc	dptr
   0EAF F0            [24] 3906 	movx	@dptr,a
   0EB0 EB            [12] 3907 	mov	a,r3
   0EB1 A3            [24] 3908 	inc	dptr
   0EB2 F0            [24] 3909 	movx	@dptr,a
   0EB3 8C 82         [24] 3910 	mov	dpl,r4
   0EB5 8D 83         [24] 3911 	mov	dph,r5
   0EB7 8E F0         [24] 3912 	mov	b,r6
   0EB9 EF            [12] 3913 	mov	a,r7
   0EBA 12 17 96      [24] 3914 	lcall	__divulong
   0EBD AC 82         [24] 3915 	mov	r4,dpl
   0EBF AD 83         [24] 3916 	mov	r5,dph
   0EC1 AE F0         [24] 3917 	mov	r6,b
   0EC3 FF            [12] 3918 	mov	r7,a
   0EC4 0C            [12] 3919 	inc	r4
   0EC5 BC 00 09      [24] 3920 	cjne	r4,#0x00,00109$
   0EC8 0D            [12] 3921 	inc	r5
   0EC9 BD 00 05      [24] 3922 	cjne	r5,#0x00,00109$
   0ECC 0E            [12] 3923 	inc	r6
   0ECD BE 00 01      [24] 3924 	cjne	r6,#0x00,00109$
   0ED0 0F            [12] 3925 	inc	r7
   0ED1                    3926 00109$:
   0ED1 EF            [12] 3927 	mov	a,r7
   0ED2 C3            [12] 3928 	clr	c
   0ED3 13            [12] 3929 	rrc	a
   0ED4 FF            [12] 3930 	mov	r7,a
   0ED5 EE            [12] 3931 	mov	a,r6
   0ED6 13            [12] 3932 	rrc	a
   0ED7 FE            [12] 3933 	mov	r6,a
   0ED8 ED            [12] 3934 	mov	a,r5
   0ED9 13            [12] 3935 	rrc	a
   0EDA FD            [12] 3936 	mov	r5,a
   0EDB EC            [12] 3937 	mov	a,r4
   0EDC 13            [12] 3938 	rrc	a
   0EDD FC            [12] 3939 	mov	r4,a
   0EDE E4            [12] 3940 	clr	a
   0EDF C3            [12] 3941 	clr	c
   0EE0 9C            [12] 3942 	subb	a,r4
   0EE1 FC            [12] 3943 	mov	r4,a
   0EE2 74 04         [12] 3944 	mov	a,#0x04
   0EE4 9D            [12] 3945 	subb	a,r5
   0EE5 FD            [12] 3946 	mov	r5,a
   0EE6 E4            [12] 3947 	clr	a
   0EE7 9E            [12] 3948 	subb	a,r6
   0EE8 E4            [12] 3949 	clr	a
   0EE9 9F            [12] 3950 	subb	a,r7
   0EEA 8C 82         [24] 3951 	mov	dpl,r4
   0EEC 8D 83         [24] 3952 	mov	dph,r5
   0EEE 22            [24] 3953 	ret
                           3954 ;------------------------------------------------------------
                           3955 ;Allocation info for local variables in function 'uart_calc_th1_value'
                           3956 ;------------------------------------------------------------
                           3957 ;smod_bit_value            Allocated with name '_uart_calc_th1_value_PARM_2'
                           3958 ;desired_baud_rate         Allocated with name '_uart_calc_th1_value_desired_baud_rate_1_216'
                           3959 ;------------------------------------------------------------
                           3960 ;	../src/uart/src/uart_calc_th1_value.c:48: uint8_t uart_calc_th1_value(uint32_t desired_baud_rate, bool smod_bit_value)
                           3961 ;	-----------------------------------------
                           3962 ;	 function uart_calc_th1_value
                           3963 ;	-----------------------------------------
   0EEF                    3964 _uart_calc_th1_value:
   0EEF AF 82         [24] 3965 	mov	r7,dpl
   0EF1 AE 83         [24] 3966 	mov	r6,dph
   0EF3 AD F0         [24] 3967 	mov	r5,b
   0EF5 FC            [12] 3968 	mov	r4,a
   0EF6 90 00 71      [24] 3969 	mov	dptr,#_uart_calc_th1_value_desired_baud_rate_1_216
   0EF9 EF            [12] 3970 	mov	a,r7
   0EFA F0            [24] 3971 	movx	@dptr,a
   0EFB EE            [12] 3972 	mov	a,r6
   0EFC A3            [24] 3973 	inc	dptr
   0EFD F0            [24] 3974 	movx	@dptr,a
   0EFE ED            [12] 3975 	mov	a,r5
   0EFF A3            [24] 3976 	inc	dptr
   0F00 F0            [24] 3977 	movx	@dptr,a
   0F01 EC            [12] 3978 	mov	a,r4
   0F02 A3            [24] 3979 	inc	dptr
   0F03 F0            [24] 3980 	movx	@dptr,a
                           3981 ;	../src/uart/src/uart_calc_th1_value.c:57: return (uint8_t)(256 - (((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(384 * desired_baud_rate))) + 1) / 2));
   0F04 90 00 70      [24] 3982 	mov	dptr,#_uart_calc_th1_value_PARM_2
   0F07 E0            [24] 3983 	movx	a,@dptr
   0F08 FF            [12] 3984 	mov	r7,a
   0F09 60 04         [24] 3985 	jz	00103$
   0F0B 7F 02         [12] 3986 	mov	r7,#0x02
   0F0D 80 02         [24] 3987 	sjmp	00104$
   0F0F                    3988 00103$:
   0F0F 7F 01         [12] 3989 	mov	r7,#0x01
   0F11                    3990 00104$:
   0F11 EF            [12] 3991 	mov	a,r7
   0F12 75 F0 02      [24] 3992 	mov	b,#0x02
   0F15 A4            [48] 3993 	mul	ab
   0F16 FF            [12] 3994 	mov	r7,a
   0F17 AE F0         [24] 3995 	mov	r6,b
   0F19 C0 07         [24] 3996 	push	ar7
   0F1B C0 06         [24] 3997 	push	ar6
   0F1D 12 09 BF      [24] 3998 	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
   0F20 AA 82         [24] 3999 	mov	r2,dpl
   0F22 AB 83         [24] 4000 	mov	r3,dph
   0F24 AC F0         [24] 4001 	mov	r4,b
   0F26 FD            [12] 4002 	mov	r5,a
   0F27 D0 06         [24] 4003 	pop	ar6
   0F29 D0 07         [24] 4004 	pop	ar7
   0F2B 8F 00         [24] 4005 	mov	ar0,r7
   0F2D EE            [12] 4006 	mov	a,r6
   0F2E F9            [12] 4007 	mov	r1,a
   0F2F 33            [12] 4008 	rlc	a
   0F30 95 E0         [12] 4009 	subb	a,acc
   0F32 FE            [12] 4010 	mov	r6,a
   0F33 FF            [12] 4011 	mov	r7,a
   0F34 90 00 CC      [24] 4012 	mov	dptr,#__mullong_PARM_2
   0F37 EA            [12] 4013 	mov	a,r2
   0F38 F0            [24] 4014 	movx	@dptr,a
   0F39 EB            [12] 4015 	mov	a,r3
   0F3A A3            [24] 4016 	inc	dptr
   0F3B F0            [24] 4017 	movx	@dptr,a
   0F3C EC            [12] 4018 	mov	a,r4
   0F3D A3            [24] 4019 	inc	dptr
   0F3E F0            [24] 4020 	movx	@dptr,a
   0F3F ED            [12] 4021 	mov	a,r5
   0F40 A3            [24] 4022 	inc	dptr
   0F41 F0            [24] 4023 	movx	@dptr,a
   0F42 88 82         [24] 4024 	mov	dpl,r0
   0F44 89 83         [24] 4025 	mov	dph,r1
   0F46 8E F0         [24] 4026 	mov	b,r6
   0F48 EF            [12] 4027 	mov	a,r7
   0F49 12 18 DF      [24] 4028 	lcall	__mullong
   0F4C AC 82         [24] 4029 	mov	r4,dpl
   0F4E AD 83         [24] 4030 	mov	r5,dph
   0F50 AE F0         [24] 4031 	mov	r6,b
   0F52 FF            [12] 4032 	mov	r7,a
   0F53 90 00 71      [24] 4033 	mov	dptr,#_uart_calc_th1_value_desired_baud_rate_1_216
   0F56 E0            [24] 4034 	movx	a,@dptr
   0F57 F8            [12] 4035 	mov	r0,a
   0F58 A3            [24] 4036 	inc	dptr
   0F59 E0            [24] 4037 	movx	a,@dptr
   0F5A F9            [12] 4038 	mov	r1,a
   0F5B A3            [24] 4039 	inc	dptr
   0F5C E0            [24] 4040 	movx	a,@dptr
   0F5D FA            [12] 4041 	mov	r2,a
   0F5E A3            [24] 4042 	inc	dptr
   0F5F E0            [24] 4043 	movx	a,@dptr
   0F60 FB            [12] 4044 	mov	r3,a
   0F61 90 00 CC      [24] 4045 	mov	dptr,#__mullong_PARM_2
   0F64 E8            [12] 4046 	mov	a,r0
   0F65 F0            [24] 4047 	movx	@dptr,a
   0F66 E9            [12] 4048 	mov	a,r1
   0F67 A3            [24] 4049 	inc	dptr
   0F68 F0            [24] 4050 	movx	@dptr,a
   0F69 EA            [12] 4051 	mov	a,r2
   0F6A A3            [24] 4052 	inc	dptr
   0F6B F0            [24] 4053 	movx	@dptr,a
   0F6C EB            [12] 4054 	mov	a,r3
   0F6D A3            [24] 4055 	inc	dptr
   0F6E F0            [24] 4056 	movx	@dptr,a
   0F6F 90 01 80      [24] 4057 	mov	dptr,#0x0180
   0F72 E4            [12] 4058 	clr	a
   0F73 F5 F0         [12] 4059 	mov	b,a
   0F75 C0 07         [24] 4060 	push	ar7
   0F77 C0 06         [24] 4061 	push	ar6
   0F79 C0 05         [24] 4062 	push	ar5
   0F7B C0 04         [24] 4063 	push	ar4
   0F7D 12 18 DF      [24] 4064 	lcall	__mullong
   0F80 A8 82         [24] 4065 	mov	r0,dpl
   0F82 A9 83         [24] 4066 	mov	r1,dph
   0F84 AA F0         [24] 4067 	mov	r2,b
   0F86 FB            [12] 4068 	mov	r3,a
   0F87 D0 04         [24] 4069 	pop	ar4
   0F89 D0 05         [24] 4070 	pop	ar5
   0F8B D0 06         [24] 4071 	pop	ar6
   0F8D D0 07         [24] 4072 	pop	ar7
   0F8F 90 00 BD      [24] 4073 	mov	dptr,#__divulong_PARM_2
   0F92 E8            [12] 4074 	mov	a,r0
   0F93 F0            [24] 4075 	movx	@dptr,a
   0F94 E9            [12] 4076 	mov	a,r1
   0F95 A3            [24] 4077 	inc	dptr
   0F96 F0            [24] 4078 	movx	@dptr,a
   0F97 EA            [12] 4079 	mov	a,r2
   0F98 A3            [24] 4080 	inc	dptr
   0F99 F0            [24] 4081 	movx	@dptr,a
   0F9A EB            [12] 4082 	mov	a,r3
   0F9B A3            [24] 4083 	inc	dptr
   0F9C F0            [24] 4084 	movx	@dptr,a
   0F9D 8C 82         [24] 4085 	mov	dpl,r4
   0F9F 8D 83         [24] 4086 	mov	dph,r5
   0FA1 8E F0         [24] 4087 	mov	b,r6
   0FA3 EF            [12] 4088 	mov	a,r7
   0FA4 12 17 96      [24] 4089 	lcall	__divulong
   0FA7 AC 82         [24] 4090 	mov	r4,dpl
   0FA9 AD 83         [24] 4091 	mov	r5,dph
   0FAB AE F0         [24] 4092 	mov	r6,b
   0FAD FF            [12] 4093 	mov	r7,a
   0FAE 0C            [12] 4094 	inc	r4
   0FAF BC 00 09      [24] 4095 	cjne	r4,#0x00,00109$
   0FB2 0D            [12] 4096 	inc	r5
   0FB3 BD 00 05      [24] 4097 	cjne	r5,#0x00,00109$
   0FB6 0E            [12] 4098 	inc	r6
   0FB7 BE 00 01      [24] 4099 	cjne	r6,#0x00,00109$
   0FBA 0F            [12] 4100 	inc	r7
   0FBB                    4101 00109$:
   0FBB EF            [12] 4102 	mov	a,r7
   0FBC C3            [12] 4103 	clr	c
   0FBD 13            [12] 4104 	rrc	a
   0FBE EE            [12] 4105 	mov	a,r6
   0FBF 13            [12] 4106 	rrc	a
   0FC0 ED            [12] 4107 	mov	a,r5
   0FC1 13            [12] 4108 	rrc	a
   0FC2 EC            [12] 4109 	mov	a,r4
   0FC3 13            [12] 4110 	rrc	a
   0FC4 FC            [12] 4111 	mov	r4,a
   0FC5 C3            [12] 4112 	clr	c
   0FC6 E4            [12] 4113 	clr	a
   0FC7 9C            [12] 4114 	subb	a,r4
   0FC8 F5 82         [12] 4115 	mov	dpl,a
   0FCA 22            [24] 4116 	ret
                           4117 ;------------------------------------------------------------
                           4118 ;Allocation info for local variables in function 'uart_configure_auto_baud_calc'
                           4119 ;------------------------------------------------------------
                           4120 ;sloc0                     Allocated with name '_uart_configure_auto_baud_calc_sloc0_1_0'
                           4121 ;sloc1                     Allocated with name '_uart_configure_auto_baud_calc_sloc1_1_0'
                           4122 ;sloc2                     Allocated with name '_uart_configure_auto_baud_calc_sloc2_1_0'
                           4123 ;sloc3                     Allocated with name '_uart_configure_auto_baud_calc_sloc3_1_0'
                           4124 ;baud_rate                 Allocated with name '_uart_configure_auto_baud_calc_PARM_2'
                           4125 ;uart_config_options       Allocated with name '_uart_configure_auto_baud_calc_uart_config_options_1_218'
                           4126 ;calc_br_with_smod_cleared Allocated with name '_uart_configure_auto_baud_calc_calc_br_with_smod_cleared_2_220'
                           4127 ;calc_br_with_smod_set     Allocated with name '_uart_configure_auto_baud_calc_calc_br_with_smod_set_2_220'
                           4128 ;error_calc_br_with_smod_cleared Allocated with name '_uart_configure_auto_baud_calc_error_calc_br_with_smod_cleared_2_220'
                           4129 ;error_calc_br_with_smod_set Allocated with name '_uart_configure_auto_baud_calc_error_calc_br_with_smod_set_2_220'
                           4130 ;s0rel_with_smod_cleared   Allocated with name '_uart_configure_auto_baud_calc_s0rel_with_smod_cleared_3_221'
                           4131 ;s0rel_with_smod_set       Allocated with name '_uart_configure_auto_baud_calc_s0rel_with_smod_set_3_221'
                           4132 ;th1_with_smod_cleared     Allocated with name '_uart_configure_auto_baud_calc_th1_with_smod_cleared_3_224'
                           4133 ;th1_with_smod_set         Allocated with name '_uart_configure_auto_baud_calc_th1_with_smod_set_3_224'
                           4134 ;------------------------------------------------------------
                           4135 ;	../src/uart/src/uart_configure_auto_baud_calc.c:48: void uart_configure_auto_baud_calc(uint8_t uart_config_options, uint32_t baud_rate)
                           4136 ;	-----------------------------------------
                           4137 ;	 function uart_configure_auto_baud_calc
                           4138 ;	-----------------------------------------
   0FCB                    4139 _uart_configure_auto_baud_calc:
   0FCB E5 82         [12] 4140 	mov	a,dpl
                           4141 ;	../src/uart/src/uart_configure_auto_baud_calc.c:51: if(((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_1_UART_8_BIT) ||
   0FCD 90 00 79      [24] 4142 	mov	dptr,#_uart_configure_auto_baud_calc_uart_config_options_1_218
   0FD0 F0            [24] 4143 	movx	@dptr,a
   0FD1 FF            [12] 4144 	mov	r7,a
   0FD2 74 C0         [12] 4145 	mov	a,#0xC0
   0FD4 5F            [12] 4146 	anl	a,r7
   0FD5 FE            [12] 4147 	mov	r6,a
   0FD6 BE 40 02      [24] 4148 	cjne	r6,#0x40,00147$
   0FD9 80 0A         [24] 4149 	sjmp	00110$
   0FDB                    4150 00147$:
                           4151 ;	../src/uart/src/uart_configure_auto_baud_calc.c:52: ((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_3_UART_9_BIT))
   0FDB 74 C0         [12] 4152 	mov	a,#0xC0
   0FDD 5F            [12] 4153 	anl	a,r7
   0FDE FE            [12] 4154 	mov	r6,a
   0FDF BE C0 02      [24] 4155 	cjne	r6,#0xC0,00148$
   0FE2 80 01         [24] 4156 	sjmp	00149$
   0FE4                    4157 00148$:
   0FE4 22            [24] 4158 	ret
   0FE5                    4159 00149$:
   0FE5                    4160 00110$:
                           4161 ;	../src/uart/src/uart_configure_auto_baud_calc.c:58: if((uart_config_options & UART_CONFIG_OPTION_CLOCK_MASK) == UART_CONFIG_OPTION_CLOCK_FOR_MODES_1_3_USE_BR_GEN)
   0FE5 74 02         [12] 4162 	mov	a,#0x02
   0FE7 5F            [12] 4163 	anl	a,r7
   0FE8 FE            [12] 4164 	mov	r6,a
   0FE9 BE 02 02      [24] 4165 	cjne	r6,#0x02,00150$
   0FEC 80 03         [24] 4166 	sjmp	00151$
   0FEE                    4167 00150$:
   0FEE 02 11 3F      [24] 4168 	ljmp	00108$
   0FF1                    4169 00151$:
                           4170 ;	../src/uart/src/uart_configure_auto_baud_calc.c:63: s0rel_with_smod_cleared = uart_calc_s0rel_value(baud_rate, 0);
   0FF1 90 00 75      [24] 4171 	mov	dptr,#_uart_configure_auto_baud_calc_PARM_2
   0FF4 E0            [24] 4172 	movx	a,@dptr
   0FF5 FB            [12] 4173 	mov	r3,a
   0FF6 A3            [24] 4174 	inc	dptr
   0FF7 E0            [24] 4175 	movx	a,@dptr
   0FF8 FC            [12] 4176 	mov	r4,a
   0FF9 A3            [24] 4177 	inc	dptr
   0FFA E0            [24] 4178 	movx	a,@dptr
   0FFB FD            [12] 4179 	mov	r5,a
   0FFC A3            [24] 4180 	inc	dptr
   0FFD E0            [24] 4181 	movx	a,@dptr
   0FFE FE            [12] 4182 	mov	r6,a
   0FFF 90 00 6B      [24] 4183 	mov	dptr,#_uart_calc_s0rel_value_PARM_2
   1002 E4            [12] 4184 	clr	a
   1003 F0            [24] 4185 	movx	@dptr,a
   1004 8B 82         [24] 4186 	mov	dpl,r3
   1006 8C 83         [24] 4187 	mov	dph,r4
   1008 8D F0         [24] 4188 	mov	b,r5
   100A EE            [12] 4189 	mov	a,r6
   100B C0 07         [24] 4190 	push	ar7
   100D C0 06         [24] 4191 	push	ar6
   100F C0 05         [24] 4192 	push	ar5
   1011 C0 04         [24] 4193 	push	ar4
   1013 C0 03         [24] 4194 	push	ar3
   1015 12 0E 0C      [24] 4195 	lcall	_uart_calc_s0rel_value
   1018 A9 82         [24] 4196 	mov	r1,dpl
   101A AA 83         [24] 4197 	mov	r2,dph
   101C D0 03         [24] 4198 	pop	ar3
   101E D0 04         [24] 4199 	pop	ar4
   1020 D0 05         [24] 4200 	pop	ar5
   1022 D0 06         [24] 4201 	pop	ar6
                           4202 ;	../src/uart/src/uart_configure_auto_baud_calc.c:64: s0rel_with_smod_set = uart_calc_s0rel_value(baud_rate, 1);
   1024 90 00 6B      [24] 4203 	mov	dptr,#_uart_calc_s0rel_value_PARM_2
   1027 74 01         [12] 4204 	mov	a,#0x01
   1029 F0            [24] 4205 	movx	@dptr,a
   102A 8B 82         [24] 4206 	mov	dpl,r3
   102C 8C 83         [24] 4207 	mov	dph,r4
   102E 8D F0         [24] 4208 	mov	b,r5
   1030 EE            [12] 4209 	mov	a,r6
   1031 C0 06         [24] 4210 	push	ar6
   1033 C0 05         [24] 4211 	push	ar5
   1035 C0 04         [24] 4212 	push	ar4
   1037 C0 03         [24] 4213 	push	ar3
   1039 C0 02         [24] 4214 	push	ar2
   103B C0 01         [24] 4215 	push	ar1
   103D 12 0E 0C      [24] 4216 	lcall	_uart_calc_s0rel_value
   1040 85 82 0C      [24] 4217 	mov	_uart_configure_auto_baud_calc_sloc0_1_0,dpl
   1043 85 83 0D      [24] 4218 	mov	(_uart_configure_auto_baud_calc_sloc0_1_0 + 1),dph
   1046 D0 01         [24] 4219 	pop	ar1
   1048 D0 02         [24] 4220 	pop	ar2
                           4221 ;	../src/uart/src/uart_configure_auto_baud_calc.c:67: calc_br_with_smod_cleared = uart_calc_actual_baud_rate_from_s0rel(s0rel_with_smod_cleared, false);
   104A 90 00 66      [24] 4222 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
   104D E4            [12] 4223 	clr	a
   104E F0            [24] 4224 	movx	@dptr,a
   104F 89 82         [24] 4225 	mov	dpl,r1
   1051 8A 83         [24] 4226 	mov	dph,r2
   1053 C0 02         [24] 4227 	push	ar2
   1055 C0 01         [24] 4228 	push	ar1
   1057 12 0C 8F      [24] 4229 	lcall	_uart_calc_actual_baud_rate_from_s0rel
   105A 85 82 0E      [24] 4230 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,dpl
   105D 85 83 0F      [24] 4231 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),dph
   1060 85 F0 10      [24] 4232 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),b
   1063 F5 11         [12] 4233 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
                           4234 ;	../src/uart/src/uart_configure_auto_baud_calc.c:68: calc_br_with_smod_set = uart_calc_actual_baud_rate_from_s0rel(s0rel_with_smod_set, true);
   1065 90 00 66      [24] 4235 	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
   1068 74 01         [12] 4236 	mov	a,#0x01
   106A F0            [24] 4237 	movx	@dptr,a
   106B 85 0C 82      [24] 4238 	mov	dpl,_uart_configure_auto_baud_calc_sloc0_1_0
   106E 85 0D 83      [24] 4239 	mov	dph,(_uart_configure_auto_baud_calc_sloc0_1_0 + 1)
   1071 12 0C 8F      [24] 4240 	lcall	_uart_calc_actual_baud_rate_from_s0rel
   1074 85 82 12      [24] 4241 	mov	_uart_configure_auto_baud_calc_sloc2_1_0,dpl
   1077 85 83 13      [24] 4242 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 1),dph
   107A 85 F0 14      [24] 4243 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 2),b
   107D F5 15         [12] 4244 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 3),a
   107F D0 01         [24] 4245 	pop	ar1
   1081 D0 02         [24] 4246 	pop	ar2
   1083 D0 03         [24] 4247 	pop	ar3
   1085 D0 04         [24] 4248 	pop	ar4
   1087 D0 05         [24] 4249 	pop	ar5
   1089 D0 06         [24] 4250 	pop	ar6
   108B D0 07         [24] 4251 	pop	ar7
                           4252 ;	../src/uart/src/uart_configure_auto_baud_calc.c:71: error_calc_br_with_smod_cleared = (calc_br_with_smod_cleared > baud_rate) ? (calc_br_with_smod_cleared - baud_rate) : (baud_rate - calc_br_with_smod_cleared);
   108D C3            [12] 4253 	clr	c
   108E EB            [12] 4254 	mov	a,r3
   108F 95 0E         [12] 4255 	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
   1091 EC            [12] 4256 	mov	a,r4
   1092 95 0F         [12] 4257 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   1094 ED            [12] 4258 	mov	a,r5
   1095 95 10         [12] 4259 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   1097 EE            [12] 4260 	mov	a,r6
   1098 95 11         [12] 4261 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   109A 50 17         [24] 4262 	jnc	00115$
   109C E5 0E         [12] 4263 	mov	a,_uart_configure_auto_baud_calc_sloc1_1_0
   109E C3            [12] 4264 	clr	c
   109F 9B            [12] 4265 	subb	a,r3
   10A0 F5 16         [12] 4266 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
   10A2 E5 0F         [12] 4267 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   10A4 9C            [12] 4268 	subb	a,r4
   10A5 F5 17         [12] 4269 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
   10A7 E5 10         [12] 4270 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   10A9 9D            [12] 4271 	subb	a,r5
   10AA F5 18         [12] 4272 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
   10AC E5 11         [12] 4273 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   10AE 9E            [12] 4274 	subb	a,r6
   10AF F5 19         [12] 4275 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   10B1 80 15         [24] 4276 	sjmp	00116$
   10B3                    4277 00115$:
   10B3 EB            [12] 4278 	mov	a,r3
   10B4 C3            [12] 4279 	clr	c
   10B5 95 0E         [12] 4280 	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
   10B7 F5 16         [12] 4281 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
   10B9 EC            [12] 4282 	mov	a,r4
   10BA 95 0F         [12] 4283 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   10BC F5 17         [12] 4284 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
   10BE ED            [12] 4285 	mov	a,r5
   10BF 95 10         [12] 4286 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   10C1 F5 18         [12] 4287 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
   10C3 EE            [12] 4288 	mov	a,r6
   10C4 95 11         [12] 4289 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   10C6 F5 19         [12] 4290 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   10C8                    4291 00116$:
                           4292 ;	../src/uart/src/uart_configure_auto_baud_calc.c:72: error_calc_br_with_smod_set = (calc_br_with_smod_set > baud_rate) ? (calc_br_with_smod_set - baud_rate) : (baud_rate - calc_br_with_smod_set);
   10C8 C3            [12] 4293 	clr	c
   10C9 EB            [12] 4294 	mov	a,r3
   10CA 95 12         [12] 4295 	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
   10CC EC            [12] 4296 	mov	a,r4
   10CD 95 13         [12] 4297 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   10CF ED            [12] 4298 	mov	a,r5
   10D0 95 14         [12] 4299 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   10D2 EE            [12] 4300 	mov	a,r6
   10D3 95 15         [12] 4301 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   10D5 50 17         [24] 4302 	jnc	00117$
   10D7 E5 12         [12] 4303 	mov	a,_uart_configure_auto_baud_calc_sloc2_1_0
   10D9 C3            [12] 4304 	clr	c
   10DA 9B            [12] 4305 	subb	a,r3
   10DB F5 0E         [12] 4306 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
   10DD E5 13         [12] 4307 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   10DF 9C            [12] 4308 	subb	a,r4
   10E0 F5 0F         [12] 4309 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
   10E2 E5 14         [12] 4310 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   10E4 9D            [12] 4311 	subb	a,r5
   10E5 F5 10         [12] 4312 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
   10E7 E5 15         [12] 4313 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   10E9 9E            [12] 4314 	subb	a,r6
   10EA F5 11         [12] 4315 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
   10EC 80 15         [24] 4316 	sjmp	00118$
   10EE                    4317 00117$:
   10EE EB            [12] 4318 	mov	a,r3
   10EF C3            [12] 4319 	clr	c
   10F0 95 12         [12] 4320 	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
   10F2 F5 0E         [12] 4321 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
   10F4 EC            [12] 4322 	mov	a,r4
   10F5 95 13         [12] 4323 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   10F7 F5 0F         [12] 4324 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
   10F9 ED            [12] 4325 	mov	a,r5
   10FA 95 14         [12] 4326 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   10FC F5 10         [12] 4327 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
   10FE EE            [12] 4328 	mov	a,r6
   10FF 95 15         [12] 4329 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   1101 F5 11         [12] 4330 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
   1103                    4331 00118$:
                           4332 ;	../src/uart/src/uart_configure_auto_baud_calc.c:75: if(error_calc_br_with_smod_cleared < error_calc_br_with_smod_set)
   1103 C3            [12] 4333 	clr	c
   1104 E5 16         [12] 4334 	mov	a,_uart_configure_auto_baud_calc_sloc3_1_0
   1106 95 0E         [12] 4335 	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
   1108 E5 17         [12] 4336 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   110A 95 0F         [12] 4337 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   110C E5 18         [12] 4338 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   110E 95 10         [12] 4339 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   1110 E5 19         [12] 4340 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   1112 95 11         [12] 4341 	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   1114 50 12         [24] 4342 	jnc	00102$
                           4343 ;	../src/uart/src/uart_configure_auto_baud_calc.c:77: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_CLEAR),
   1116 8F 06         [24] 4344 	mov	ar6,r7
   1118 53 06 FB      [24] 4345 	anl	ar6,#0xFB
                           4346 ;	../src/uart/src/uart_configure_auto_baud_calc.c:78: s0rel_with_smod_cleared);
   111B 90 00 63      [24] 4347 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   111E E9            [12] 4348 	mov	a,r1
   111F F0            [24] 4349 	movx	@dptr,a
   1120 EA            [12] 4350 	mov	a,r2
   1121 A3            [24] 4351 	inc	dptr
   1122 F0            [24] 4352 	movx	@dptr,a
   1123 8E 82         [24] 4353 	mov	dpl,r6
   1125 02 0C 31      [24] 4354 	ljmp	_uart_configure_manual_baud_calc
   1128                    4355 00102$:
                           4356 ;	../src/uart/src/uart_configure_auto_baud_calc.c:82: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_SET),
   1128 8F 06         [24] 4357 	mov	ar6,r7
   112A 74 FB         [12] 4358 	mov	a,#0xFB
   112C 5E            [12] 4359 	anl	a,r6
   112D 44 04         [12] 4360 	orl	a,#0x04
   112F FE            [12] 4361 	mov	r6,a
                           4362 ;	../src/uart/src/uart_configure_auto_baud_calc.c:83: s0rel_with_smod_set);
   1130 90 00 63      [24] 4363 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   1133 E5 0C         [12] 4364 	mov	a,_uart_configure_auto_baud_calc_sloc0_1_0
   1135 F0            [24] 4365 	movx	@dptr,a
   1136 E5 0D         [12] 4366 	mov	a,(_uart_configure_auto_baud_calc_sloc0_1_0 + 1)
   1138 A3            [24] 4367 	inc	dptr
   1139 F0            [24] 4368 	movx	@dptr,a
   113A 8E 82         [24] 4369 	mov	dpl,r6
   113C 02 0C 31      [24] 4370 	ljmp	_uart_configure_manual_baud_calc
   113F                    4371 00108$:
                           4372 ;	../src/uart/src/uart_configure_auto_baud_calc.c:91: th1_with_smod_cleared = uart_calc_th1_value(baud_rate, 0);
   113F 90 00 75      [24] 4373 	mov	dptr,#_uart_configure_auto_baud_calc_PARM_2
   1142 E0            [24] 4374 	movx	a,@dptr
   1143 FB            [12] 4375 	mov	r3,a
   1144 A3            [24] 4376 	inc	dptr
   1145 E0            [24] 4377 	movx	a,@dptr
   1146 FC            [12] 4378 	mov	r4,a
   1147 A3            [24] 4379 	inc	dptr
   1148 E0            [24] 4380 	movx	a,@dptr
   1149 FD            [12] 4381 	mov	r5,a
   114A A3            [24] 4382 	inc	dptr
   114B E0            [24] 4383 	movx	a,@dptr
   114C FE            [12] 4384 	mov	r6,a
   114D 90 00 70      [24] 4385 	mov	dptr,#_uart_calc_th1_value_PARM_2
   1150 E4            [12] 4386 	clr	a
   1151 F0            [24] 4387 	movx	@dptr,a
   1152 8B 82         [24] 4388 	mov	dpl,r3
   1154 8C 83         [24] 4389 	mov	dph,r4
   1156 8D F0         [24] 4390 	mov	b,r5
   1158 EE            [12] 4391 	mov	a,r6
   1159 C0 07         [24] 4392 	push	ar7
   115B C0 06         [24] 4393 	push	ar6
   115D C0 05         [24] 4394 	push	ar5
   115F C0 04         [24] 4395 	push	ar4
   1161 C0 03         [24] 4396 	push	ar3
   1163 12 0E EF      [24] 4397 	lcall	_uart_calc_th1_value
   1166 AA 82         [24] 4398 	mov	r2,dpl
   1168 D0 03         [24] 4399 	pop	ar3
   116A D0 04         [24] 4400 	pop	ar4
   116C D0 05         [24] 4401 	pop	ar5
   116E D0 06         [24] 4402 	pop	ar6
                           4403 ;	../src/uart/src/uart_configure_auto_baud_calc.c:92: th1_with_smod_set = uart_calc_th1_value(baud_rate, 1);
   1170 90 00 70      [24] 4404 	mov	dptr,#_uart_calc_th1_value_PARM_2
   1173 74 01         [12] 4405 	mov	a,#0x01
   1175 F0            [24] 4406 	movx	@dptr,a
   1176 8B 82         [24] 4407 	mov	dpl,r3
   1178 8C 83         [24] 4408 	mov	dph,r4
   117A 8D F0         [24] 4409 	mov	b,r5
   117C EE            [12] 4410 	mov	a,r6
   117D C0 06         [24] 4411 	push	ar6
   117F C0 05         [24] 4412 	push	ar5
   1181 C0 04         [24] 4413 	push	ar4
   1183 C0 03         [24] 4414 	push	ar3
   1185 C0 02         [24] 4415 	push	ar2
   1187 12 0E EF      [24] 4416 	lcall	_uart_calc_th1_value
   118A A9 82         [24] 4417 	mov	r1,dpl
   118C D0 02         [24] 4418 	pop	ar2
                           4419 ;	../src/uart/src/uart_configure_auto_baud_calc.c:95: calc_br_with_smod_cleared = uart_calc_actual_baud_rate_from_th1(th1_with_smod_cleared, false);
   118E 90 00 69      [24] 4420 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
   1191 E4            [12] 4421 	clr	a
   1192 F0            [24] 4422 	movx	@dptr,a
   1193 8A 82         [24] 4423 	mov	dpl,r2
   1195 C0 02         [24] 4424 	push	ar2
   1197 C0 01         [24] 4425 	push	ar1
   1199 12 0D 48      [24] 4426 	lcall	_uart_calc_actual_baud_rate_from_th1
   119C 85 82 16      [24] 4427 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,dpl
   119F 85 83 17      [24] 4428 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),dph
   11A2 85 F0 18      [24] 4429 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),b
   11A5 F5 19         [12] 4430 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   11A7 D0 01         [24] 4431 	pop	ar1
                           4432 ;	../src/uart/src/uart_configure_auto_baud_calc.c:96: calc_br_with_smod_set = uart_calc_actual_baud_rate_from_th1(th1_with_smod_set, true);
   11A9 90 00 69      [24] 4433 	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
   11AC 74 01         [12] 4434 	mov	a,#0x01
   11AE F0            [24] 4435 	movx	@dptr,a
   11AF 89 82         [24] 4436 	mov	dpl,r1
   11B1 C0 01         [24] 4437 	push	ar1
   11B3 12 0D 48      [24] 4438 	lcall	_uart_calc_actual_baud_rate_from_th1
   11B6 85 82 12      [24] 4439 	mov	_uart_configure_auto_baud_calc_sloc2_1_0,dpl
   11B9 85 83 13      [24] 4440 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 1),dph
   11BC 85 F0 14      [24] 4441 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 2),b
   11BF F5 15         [12] 4442 	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 3),a
   11C1 D0 01         [24] 4443 	pop	ar1
   11C3 D0 02         [24] 4444 	pop	ar2
   11C5 D0 03         [24] 4445 	pop	ar3
   11C7 D0 04         [24] 4446 	pop	ar4
   11C9 D0 05         [24] 4447 	pop	ar5
   11CB D0 06         [24] 4448 	pop	ar6
   11CD D0 07         [24] 4449 	pop	ar7
                           4450 ;	../src/uart/src/uart_configure_auto_baud_calc.c:99: error_calc_br_with_smod_cleared = (calc_br_with_smod_cleared > baud_rate) ? (calc_br_with_smod_cleared - baud_rate) : (baud_rate - calc_br_with_smod_cleared);
   11CF C3            [12] 4451 	clr	c
   11D0 EB            [12] 4452 	mov	a,r3
   11D1 95 16         [12] 4453 	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
   11D3 EC            [12] 4454 	mov	a,r4
   11D4 95 17         [12] 4455 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   11D6 ED            [12] 4456 	mov	a,r5
   11D7 95 18         [12] 4457 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   11D9 EE            [12] 4458 	mov	a,r6
   11DA 95 19         [12] 4459 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   11DC 50 17         [24] 4460 	jnc	00119$
   11DE E5 16         [12] 4461 	mov	a,_uart_configure_auto_baud_calc_sloc3_1_0
   11E0 C3            [12] 4462 	clr	c
   11E1 9B            [12] 4463 	subb	a,r3
   11E2 F5 0E         [12] 4464 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
   11E4 E5 17         [12] 4465 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   11E6 9C            [12] 4466 	subb	a,r4
   11E7 F5 0F         [12] 4467 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
   11E9 E5 18         [12] 4468 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   11EB 9D            [12] 4469 	subb	a,r5
   11EC F5 10         [12] 4470 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
   11EE E5 19         [12] 4471 	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   11F0 9E            [12] 4472 	subb	a,r6
   11F1 F5 11         [12] 4473 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
   11F3 80 15         [24] 4474 	sjmp	00120$
   11F5                    4475 00119$:
   11F5 EB            [12] 4476 	mov	a,r3
   11F6 C3            [12] 4477 	clr	c
   11F7 95 16         [12] 4478 	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
   11F9 F5 0E         [12] 4479 	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
   11FB EC            [12] 4480 	mov	a,r4
   11FC 95 17         [12] 4481 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   11FE F5 0F         [12] 4482 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
   1200 ED            [12] 4483 	mov	a,r5
   1201 95 18         [12] 4484 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   1203 F5 10         [12] 4485 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
   1205 EE            [12] 4486 	mov	a,r6
   1206 95 19         [12] 4487 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   1208 F5 11         [12] 4488 	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
   120A                    4489 00120$:
                           4490 ;	../src/uart/src/uart_configure_auto_baud_calc.c:100: error_calc_br_with_smod_set = (calc_br_with_smod_set > baud_rate) ? (calc_br_with_smod_set - baud_rate) : (baud_rate - calc_br_with_smod_set);
   120A C3            [12] 4491 	clr	c
   120B EB            [12] 4492 	mov	a,r3
   120C 95 12         [12] 4493 	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
   120E EC            [12] 4494 	mov	a,r4
   120F 95 13         [12] 4495 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   1211 ED            [12] 4496 	mov	a,r5
   1212 95 14         [12] 4497 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   1214 EE            [12] 4498 	mov	a,r6
   1215 95 15         [12] 4499 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   1217 50 17         [24] 4500 	jnc	00121$
   1219 E5 12         [12] 4501 	mov	a,_uart_configure_auto_baud_calc_sloc2_1_0
   121B C3            [12] 4502 	clr	c
   121C 9B            [12] 4503 	subb	a,r3
   121D F5 16         [12] 4504 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
   121F E5 13         [12] 4505 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   1221 9C            [12] 4506 	subb	a,r4
   1222 F5 17         [12] 4507 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
   1224 E5 14         [12] 4508 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   1226 9D            [12] 4509 	subb	a,r5
   1227 F5 18         [12] 4510 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
   1229 E5 15         [12] 4511 	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   122B 9E            [12] 4512 	subb	a,r6
   122C F5 19         [12] 4513 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   122E 80 15         [24] 4514 	sjmp	00122$
   1230                    4515 00121$:
   1230 EB            [12] 4516 	mov	a,r3
   1231 C3            [12] 4517 	clr	c
   1232 95 12         [12] 4518 	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
   1234 F5 16         [12] 4519 	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
   1236 EC            [12] 4520 	mov	a,r4
   1237 95 13         [12] 4521 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
   1239 F5 17         [12] 4522 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
   123B ED            [12] 4523 	mov	a,r5
   123C 95 14         [12] 4524 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
   123E F5 18         [12] 4525 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
   1240 EE            [12] 4526 	mov	a,r6
   1241 95 15         [12] 4527 	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
   1243 F5 19         [12] 4528 	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
   1245                    4529 00122$:
                           4530 ;	../src/uart/src/uart_configure_auto_baud_calc.c:103: if(error_calc_br_with_smod_cleared < error_calc_br_with_smod_set)
   1245 C3            [12] 4531 	clr	c
   1246 E5 0E         [12] 4532 	mov	a,_uart_configure_auto_baud_calc_sloc1_1_0
   1248 95 16         [12] 4533 	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
   124A E5 0F         [12] 4534 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
   124C 95 17         [12] 4535 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
   124E E5 10         [12] 4536 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
   1250 95 18         [12] 4537 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
   1252 E5 11         [12] 4538 	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
   1254 95 19         [12] 4539 	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
   1256 50 12         [24] 4540 	jnc	00105$
                           4541 ;	../src/uart/src/uart_configure_auto_baud_calc.c:105: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_CLEAR),
   1258 8F 06         [24] 4542 	mov	ar6,r7
   125A 53 06 FB      [24] 4543 	anl	ar6,#0xFB
                           4544 ;	../src/uart/src/uart_configure_auto_baud_calc.c:106: (uint16_t)th1_with_smod_cleared);
   125D 90 00 63      [24] 4545 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   1260 EA            [12] 4546 	mov	a,r2
   1261 F0            [24] 4547 	movx	@dptr,a
   1262 E4            [12] 4548 	clr	a
   1263 A3            [24] 4549 	inc	dptr
   1264 F0            [24] 4550 	movx	@dptr,a
   1265 8E 82         [24] 4551 	mov	dpl,r6
   1267 02 0C 31      [24] 4552 	ljmp	_uart_configure_manual_baud_calc
   126A                    4553 00105$:
                           4554 ;	../src/uart/src/uart_configure_auto_baud_calc.c:110: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_SET),
   126A 74 FB         [12] 4555 	mov	a,#0xFB
   126C 5F            [12] 4556 	anl	a,r7
   126D 44 04         [12] 4557 	orl	a,#0x04
   126F FF            [12] 4558 	mov	r7,a
                           4559 ;	../src/uart/src/uart_configure_auto_baud_calc.c:111: (uint16_t)th1_with_smod_set);
   1270 90 00 63      [24] 4560 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   1273 E9            [12] 4561 	mov	a,r1
   1274 F0            [24] 4562 	movx	@dptr,a
   1275 E4            [12] 4563 	clr	a
   1276 A3            [24] 4564 	inc	dptr
   1277 F0            [24] 4565 	movx	@dptr,a
   1278 8F 82         [24] 4566 	mov	dpl,r7
   127A 02 0C 31      [24] 4567 	ljmp	_uart_configure_manual_baud_calc
                           4568 ;------------------------------------------------------------
                           4569 ;Allocation info for local variables in function 'radiobegin'
                           4570 ;------------------------------------------------------------
                           4571 ;setup                     Allocated with name '_radiobegin_setup_1_227'
                           4572 ;------------------------------------------------------------
                           4573 ;	../nRFLE.c:22: void radiobegin() {
                           4574 ;	-----------------------------------------
                           4575 ;	 function radiobegin
                           4576 ;	-----------------------------------------
   127D                    4577 _radiobegin:
                           4578 ;	../nRFLE.c:26: rf_spi_configure_enable();
   127D 12 01 76      [24] 4579 	lcall	_rf_spi_configure_enable
                           4580 ;	../nRFLE.c:28: setup = 255; // setup_retr setRetries 15*16+15
   1280 90 00 7A      [24] 4581 	mov	dptr,#_radiobegin_setup_1_227
   1283 74 FF         [12] 4582 	mov	a,#0xFF
   1285 F0            [24] 4583 	movx	@dptr,a
                           4584 ;	../nRFLE.c:29: rf_write_register(RF_SETUP_RETR, &setup, 1);
   1286 90 00 08      [24] 4585 	mov	dptr,#_rf_write_register_PARM_2
   1289 74 7A         [12] 4586 	mov	a,#_radiobegin_setup_1_227
   128B F0            [24] 4587 	movx	@dptr,a
   128C 74 00         [12] 4588 	mov	a,#(_radiobegin_setup_1_227 >> 8)
   128E A3            [24] 4589 	inc	dptr
   128F F0            [24] 4590 	movx	@dptr,a
   1290 E4            [12] 4591 	clr	a
   1291 A3            [24] 4592 	inc	dptr
   1292 F0            [24] 4593 	movx	@dptr,a
   1293 90 00 0B      [24] 4594 	mov	dptr,#_rf_write_register_PARM_3
   1296 74 01         [12] 4595 	mov	a,#0x01
   1298 F0            [24] 4596 	movx	@dptr,a
   1299 E4            [12] 4597 	clr	a
   129A A3            [24] 4598 	inc	dptr
   129B F0            [24] 4599 	movx	@dptr,a
   129C 75 82 04      [24] 4600 	mov	dpl,#0x04
   129F 02 01 39      [24] 4601 	ljmp	_rf_write_register
                           4602 ;------------------------------------------------------------
                           4603 ;Allocation info for local variables in function 'setChannel'
                           4604 ;------------------------------------------------------------
                           4605 ;channel                   Allocated with name '_setChannel_channel_1_228'
                           4606 ;------------------------------------------------------------
                           4607 ;	../nRFLE.c:35: void setChannel(unsigned char channel){
                           4608 ;	-----------------------------------------
                           4609 ;	 function setChannel
                           4610 ;	-----------------------------------------
   12A2                    4611 _setChannel:
   12A2 E5 82         [12] 4612 	mov	a,dpl
   12A4 90 00 7B      [24] 4613 	mov	dptr,#_setChannel_channel_1_228
   12A7 F0            [24] 4614 	movx	@dptr,a
                           4615 ;	../nRFLE.c:36: rf_write_register(RF_RF_CH, &channel, 1);
   12A8 90 00 08      [24] 4616 	mov	dptr,#_rf_write_register_PARM_2
   12AB 74 7B         [12] 4617 	mov	a,#_setChannel_channel_1_228
   12AD F0            [24] 4618 	movx	@dptr,a
   12AE 74 00         [12] 4619 	mov	a,#(_setChannel_channel_1_228 >> 8)
   12B0 A3            [24] 4620 	inc	dptr
   12B1 F0            [24] 4621 	movx	@dptr,a
   12B2 E4            [12] 4622 	clr	a
   12B3 A3            [24] 4623 	inc	dptr
   12B4 F0            [24] 4624 	movx	@dptr,a
   12B5 90 00 0B      [24] 4625 	mov	dptr,#_rf_write_register_PARM_3
   12B8 74 01         [12] 4626 	mov	a,#0x01
   12BA F0            [24] 4627 	movx	@dptr,a
   12BB E4            [12] 4628 	clr	a
   12BC A3            [24] 4629 	inc	dptr
   12BD F0            [24] 4630 	movx	@dptr,a
   12BE 75 82 05      [24] 4631 	mov	dpl,#0x05
   12C1 02 01 39      [24] 4632 	ljmp	_rf_write_register
                           4633 ;------------------------------------------------------------
                           4634 ;Allocation info for local variables in function 'setDataRate'
                           4635 ;------------------------------------------------------------
                           4636 ;speed                     Allocated with name '_setDataRate_speed_1_230'
                           4637 ;buffer                    Allocated with name '_setDataRate_buffer_1_231'
                           4638 ;------------------------------------------------------------
                           4639 ;	../nRFLE.c:41: void setDataRate(unsigned char speed){
                           4640 ;	-----------------------------------------
                           4641 ;	 function setDataRate
                           4642 ;	-----------------------------------------
   12C4                    4643 _setDataRate:
   12C4 E5 82         [12] 4644 	mov	a,dpl
   12C6 90 00 7C      [24] 4645 	mov	dptr,#_setDataRate_speed_1_230
   12C9 F0            [24] 4646 	movx	@dptr,a
                           4647 ;	../nRFLE.c:43: rf_read_register(RF_RF_SETUP,&buffer,1);
   12CA 90 00 28      [24] 4648 	mov	dptr,#_rf_read_register_PARM_2
   12CD 74 7D         [12] 4649 	mov	a,#_setDataRate_buffer_1_231
   12CF F0            [24] 4650 	movx	@dptr,a
   12D0 74 00         [12] 4651 	mov	a,#(_setDataRate_buffer_1_231 >> 8)
   12D2 A3            [24] 4652 	inc	dptr
   12D3 F0            [24] 4653 	movx	@dptr,a
   12D4 E4            [12] 4654 	clr	a
   12D5 A3            [24] 4655 	inc	dptr
   12D6 F0            [24] 4656 	movx	@dptr,a
   12D7 90 00 2B      [24] 4657 	mov	dptr,#_rf_read_register_PARM_3
   12DA 74 01         [12] 4658 	mov	a,#0x01
   12DC F0            [24] 4659 	movx	@dptr,a
   12DD E4            [12] 4660 	clr	a
   12DE A3            [24] 4661 	inc	dptr
   12DF F0            [24] 4662 	movx	@dptr,a
   12E0 75 82 06      [24] 4663 	mov	dpl,#0x06
   12E3 12 03 ED      [24] 4664 	lcall	_rf_read_register
                           4665 ;	../nRFLE.c:45: buffer &= ~(_BV(RF_DR_LOW) | _BV(RF_DR_HIGH)) ;
   12E6 90 00 7D      [24] 4666 	mov	dptr,#_setDataRate_buffer_1_231
   12E9 E0            [24] 4667 	movx	a,@dptr
   12EA 54 D7         [12] 4668 	anl	a,#0xD7
   12EC F0            [24] 4669 	movx	@dptr,a
                           4670 ;	../nRFLE.c:47: if( speed == 1 )	 buffer |= _BV(RF_DR_LOW);
   12ED 90 00 7C      [24] 4671 	mov	dptr,#_setDataRate_speed_1_230
   12F0 E0            [24] 4672 	movx	a,@dptr
   12F1 FF            [12] 4673 	mov	r7,a
   12F2 BF 01 0A      [24] 4674 	cjne	r7,#0x01,00104$
   12F5 90 00 7D      [24] 4675 	mov	dptr,#_setDataRate_buffer_1_231
   12F8 E0            [24] 4676 	movx	a,@dptr
   12F9 FE            [12] 4677 	mov	r6,a
   12FA 44 20         [12] 4678 	orl	a,#0x20
   12FC F0            [24] 4679 	movx	@dptr,a
   12FD 80 0B         [24] 4680 	sjmp	00105$
   12FF                    4681 00104$:
                           4682 ;	../nRFLE.c:49: else if ( speed == 3 ) buffer |= _BV(RF_DR_HIGH);
   12FF BF 03 08      [24] 4683 	cjne	r7,#0x03,00105$
   1302 90 00 7D      [24] 4684 	mov	dptr,#_setDataRate_buffer_1_231
   1305 E0            [24] 4685 	movx	a,@dptr
   1306 FF            [12] 4686 	mov	r7,a
   1307 44 08         [12] 4687 	orl	a,#0x08
   1309 F0            [24] 4688 	movx	@dptr,a
   130A                    4689 00105$:
                           4690 ;	../nRFLE.c:51: rf_write_register(RF_RF_SETUP,&buffer,1 ) ;
   130A 90 00 08      [24] 4691 	mov	dptr,#_rf_write_register_PARM_2
   130D 74 7D         [12] 4692 	mov	a,#_setDataRate_buffer_1_231
   130F F0            [24] 4693 	movx	@dptr,a
   1310 74 00         [12] 4694 	mov	a,#(_setDataRate_buffer_1_231 >> 8)
   1312 A3            [24] 4695 	inc	dptr
   1313 F0            [24] 4696 	movx	@dptr,a
   1314 E4            [12] 4697 	clr	a
   1315 A3            [24] 4698 	inc	dptr
   1316 F0            [24] 4699 	movx	@dptr,a
   1317 90 00 0B      [24] 4700 	mov	dptr,#_rf_write_register_PARM_3
   131A 74 01         [12] 4701 	mov	a,#0x01
   131C F0            [24] 4702 	movx	@dptr,a
   131D E4            [12] 4703 	clr	a
   131E A3            [24] 4704 	inc	dptr
   131F F0            [24] 4705 	movx	@dptr,a
   1320 75 82 06      [24] 4706 	mov	dpl,#0x06
   1323 02 01 39      [24] 4707 	ljmp	_rf_write_register
                           4708 ;------------------------------------------------------------
                           4709 ;Allocation info for local variables in function 'setAutoAck'
                           4710 ;------------------------------------------------------------
                           4711 ;enable                    Allocated with name '_setAutoAck_enable_1_232'
                           4712 ;buffer                    Allocated with name '_setAutoAck_buffer_1_233'
                           4713 ;------------------------------------------------------------
                           4714 ;	../nRFLE.c:56: void setAutoAck(unsigned char enable)
                           4715 ;	-----------------------------------------
                           4716 ;	 function setAutoAck
                           4717 ;	-----------------------------------------
   1326                    4718 _setAutoAck:
   1326 E5 82         [12] 4719 	mov	a,dpl
                           4720 ;	../nRFLE.c:60: if (enable==1) buffer=63;
   1328 90 00 7E      [24] 4721 	mov	dptr,#_setAutoAck_enable_1_232
   132B F0            [24] 4722 	movx	@dptr,a
   132C FF            [12] 4723 	mov	r7,a
   132D BF 01 08      [24] 4724 	cjne	r7,#0x01,00102$
   1330 90 00 7F      [24] 4725 	mov	dptr,#_setAutoAck_buffer_1_233
   1333 74 3F         [12] 4726 	mov	a,#0x3F
   1335 F0            [24] 4727 	movx	@dptr,a
   1336 80 05         [24] 4728 	sjmp	00103$
   1338                    4729 00102$:
                           4730 ;	../nRFLE.c:61: else        buffer=0;
   1338 90 00 7F      [24] 4731 	mov	dptr,#_setAutoAck_buffer_1_233
   133B E4            [12] 4732 	clr	a
   133C F0            [24] 4733 	movx	@dptr,a
   133D                    4734 00103$:
                           4735 ;	../nRFLE.c:62: rf_write_register(RF_EN_AA, &buffer,1);
   133D 90 00 08      [24] 4736 	mov	dptr,#_rf_write_register_PARM_2
   1340 74 7F         [12] 4737 	mov	a,#_setAutoAck_buffer_1_233
   1342 F0            [24] 4738 	movx	@dptr,a
   1343 74 00         [12] 4739 	mov	a,#(_setAutoAck_buffer_1_233 >> 8)
   1345 A3            [24] 4740 	inc	dptr
   1346 F0            [24] 4741 	movx	@dptr,a
   1347 E4            [12] 4742 	clr	a
   1348 A3            [24] 4743 	inc	dptr
   1349 F0            [24] 4744 	movx	@dptr,a
   134A 90 00 0B      [24] 4745 	mov	dptr,#_rf_write_register_PARM_3
   134D 74 01         [12] 4746 	mov	a,#0x01
   134F F0            [24] 4747 	movx	@dptr,a
   1350 E4            [12] 4748 	clr	a
   1351 A3            [24] 4749 	inc	dptr
   1352 F0            [24] 4750 	movx	@dptr,a
   1353 75 82 01      [24] 4751 	mov	dpl,#0x01
   1356 02 01 39      [24] 4752 	ljmp	_rf_write_register
                           4753 ;------------------------------------------------------------
                           4754 ;Allocation info for local variables in function 'setCRCLength'
                           4755 ;------------------------------------------------------------
                           4756 ;length                    Allocated with name '_setCRCLength_length_1_234'
                           4757 ;buffer                    Allocated with name '_setCRCLength_buffer_1_235'
                           4758 ;------------------------------------------------------------
                           4759 ;	../nRFLE.c:67: void setCRCLength(unsigned char length)
                           4760 ;	-----------------------------------------
                           4761 ;	 function setCRCLength
                           4762 ;	-----------------------------------------
   1359                    4763 _setCRCLength:
   1359 E5 82         [12] 4764 	mov	a,dpl
   135B 90 00 80      [24] 4765 	mov	dptr,#_setCRCLength_length_1_234
   135E F0            [24] 4766 	movx	@dptr,a
                           4767 ;	../nRFLE.c:71: rf_read_register(RF_CONFIG,&buffer,1);
   135F 90 00 28      [24] 4768 	mov	dptr,#_rf_read_register_PARM_2
   1362 74 81         [12] 4769 	mov	a,#_setCRCLength_buffer_1_235
   1364 F0            [24] 4770 	movx	@dptr,a
   1365 74 00         [12] 4771 	mov	a,#(_setCRCLength_buffer_1_235 >> 8)
   1367 A3            [24] 4772 	inc	dptr
   1368 F0            [24] 4773 	movx	@dptr,a
   1369 E4            [12] 4774 	clr	a
   136A A3            [24] 4775 	inc	dptr
   136B F0            [24] 4776 	movx	@dptr,a
   136C 90 00 2B      [24] 4777 	mov	dptr,#_rf_read_register_PARM_3
   136F 74 01         [12] 4778 	mov	a,#0x01
   1371 F0            [24] 4779 	movx	@dptr,a
   1372 E4            [12] 4780 	clr	a
   1373 A3            [24] 4781 	inc	dptr
   1374 F0            [24] 4782 	movx	@dptr,a
   1375 75 82 00      [24] 4783 	mov	dpl,#0x00
   1378 12 03 ED      [24] 4784 	lcall	_rf_read_register
                           4785 ;	../nRFLE.c:73: buffer = buffer & ~( _BV(RF_CRCO) | _BV(RF_EN_CRC)) ;
   137B 90 00 81      [24] 4786 	mov	dptr,#_setCRCLength_buffer_1_235
   137E E0            [24] 4787 	movx	a,@dptr
   137F 54 F3         [12] 4788 	anl	a,#0xF3
   1381 F0            [24] 4789 	movx	@dptr,a
                           4790 ;	../nRFLE.c:75: if (length==1) buffer |= _BV(RF_EN_CRC);
   1382 90 00 80      [24] 4791 	mov	dptr,#_setCRCLength_length_1_234
   1385 E0            [24] 4792 	movx	a,@dptr
   1386 FF            [12] 4793 	mov	r7,a
   1387 BF 01 0A      [24] 4794 	cjne	r7,#0x01,00104$
   138A 90 00 81      [24] 4795 	mov	dptr,#_setCRCLength_buffer_1_235
   138D E0            [24] 4796 	movx	a,@dptr
   138E FE            [12] 4797 	mov	r6,a
   138F 44 08         [12] 4798 	orl	a,#0x08
   1391 F0            [24] 4799 	movx	@dptr,a
   1392 80 0B         [24] 4800 	sjmp	00105$
   1394                    4801 00104$:
                           4802 ;	../nRFLE.c:76: else if (length==2) buffer |= _BV(RF_EN_CRC) | _BV( RF_CRCO );
   1394 BF 02 08      [24] 4803 	cjne	r7,#0x02,00105$
   1397 90 00 81      [24] 4804 	mov	dptr,#_setCRCLength_buffer_1_235
   139A E0            [24] 4805 	movx	a,@dptr
   139B FF            [12] 4806 	mov	r7,a
   139C 44 0C         [12] 4807 	orl	a,#0x0C
   139E F0            [24] 4808 	movx	@dptr,a
   139F                    4809 00105$:
                           4810 ;	../nRFLE.c:78: buffer |=1<<PWR_UP;
   139F 90 00 81      [24] 4811 	mov	dptr,#_setCRCLength_buffer_1_235
   13A2 E0            [24] 4812 	movx	a,@dptr
   13A3 44 02         [12] 4813 	orl	a,#0x02
   13A5 F0            [24] 4814 	movx	@dptr,a
                           4815 ;	../nRFLE.c:80: rf_write_register(RF_CONFIG,&buffer,1 ) ;
   13A6 90 00 08      [24] 4816 	mov	dptr,#_rf_write_register_PARM_2
   13A9 74 81         [12] 4817 	mov	a,#_setCRCLength_buffer_1_235
   13AB F0            [24] 4818 	movx	@dptr,a
   13AC 74 00         [12] 4819 	mov	a,#(_setCRCLength_buffer_1_235 >> 8)
   13AE A3            [24] 4820 	inc	dptr
   13AF F0            [24] 4821 	movx	@dptr,a
   13B0 E4            [12] 4822 	clr	a
   13B1 A3            [24] 4823 	inc	dptr
   13B2 F0            [24] 4824 	movx	@dptr,a
   13B3 90 00 0B      [24] 4825 	mov	dptr,#_rf_write_register_PARM_3
   13B6 74 01         [12] 4826 	mov	a,#0x01
   13B8 F0            [24] 4827 	movx	@dptr,a
   13B9 E4            [12] 4828 	clr	a
   13BA A3            [24] 4829 	inc	dptr
   13BB F0            [24] 4830 	movx	@dptr,a
   13BC 75 82 00      [24] 4831 	mov	dpl,#0x00
   13BF 02 01 39      [24] 4832 	ljmp	_rf_write_register
                           4833 ;------------------------------------------------------------
                           4834 ;Allocation info for local variables in function 'setPALevel'
                           4835 ;------------------------------------------------------------
                           4836 ;level                     Allocated with name '_setPALevel_level_1_236'
                           4837 ;setup                     Allocated with name '_setPALevel_setup_1_237'
                           4838 ;------------------------------------------------------------
                           4839 ;	../nRFLE.c:84: void setPALevel(unsigned char level)
                           4840 ;	-----------------------------------------
                           4841 ;	 function setPALevel
                           4842 ;	-----------------------------------------
   13C2                    4843 _setPALevel:
                           4844 ;	../nRFLE.c:88: rf_read_register(RF_RF_SETUP,&setup,1) ;
   13C2 90 00 28      [24] 4845 	mov	dptr,#_rf_read_register_PARM_2
   13C5 74 82         [12] 4846 	mov	a,#_setPALevel_setup_1_237
   13C7 F0            [24] 4847 	movx	@dptr,a
   13C8 74 00         [12] 4848 	mov	a,#(_setPALevel_setup_1_237 >> 8)
   13CA A3            [24] 4849 	inc	dptr
   13CB F0            [24] 4850 	movx	@dptr,a
   13CC E4            [12] 4851 	clr	a
   13CD A3            [24] 4852 	inc	dptr
   13CE F0            [24] 4853 	movx	@dptr,a
   13CF 90 00 2B      [24] 4854 	mov	dptr,#_rf_read_register_PARM_3
   13D2 74 01         [12] 4855 	mov	a,#0x01
   13D4 F0            [24] 4856 	movx	@dptr,a
   13D5 E4            [12] 4857 	clr	a
   13D6 A3            [24] 4858 	inc	dptr
   13D7 F0            [24] 4859 	movx	@dptr,a
   13D8 75 82 06      [24] 4860 	mov	dpl,#0x06
   13DB 12 03 ED      [24] 4861 	lcall	_rf_read_register
                           4862 ;	../nRFLE.c:90: setup &= ~(_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH)) ;
   13DE 90 00 82      [24] 4863 	mov	dptr,#_setPALevel_setup_1_237
   13E1 E0            [24] 4864 	movx	a,@dptr
   13E2 54 F9         [12] 4865 	anl	a,#0xF9
   13E4 F0            [24] 4866 	movx	@dptr,a
                           4867 ;	../nRFLE.c:93: rf_write_register(RF_RF_SETUP,&setup,1);
   13E5 90 00 08      [24] 4868 	mov	dptr,#_rf_write_register_PARM_2
   13E8 74 82         [12] 4869 	mov	a,#_setPALevel_setup_1_237
   13EA F0            [24] 4870 	movx	@dptr,a
   13EB 74 00         [12] 4871 	mov	a,#(_setPALevel_setup_1_237 >> 8)
   13ED A3            [24] 4872 	inc	dptr
   13EE F0            [24] 4873 	movx	@dptr,a
   13EF E4            [12] 4874 	clr	a
   13F0 A3            [24] 4875 	inc	dptr
   13F1 F0            [24] 4876 	movx	@dptr,a
   13F2 90 00 0B      [24] 4877 	mov	dptr,#_rf_write_register_PARM_3
   13F5 74 01         [12] 4878 	mov	a,#0x01
   13F7 F0            [24] 4879 	movx	@dptr,a
   13F8 E4            [12] 4880 	clr	a
   13F9 A3            [24] 4881 	inc	dptr
   13FA F0            [24] 4882 	movx	@dptr,a
   13FB 75 82 06      [24] 4883 	mov	dpl,#0x06
   13FE 02 01 39      [24] 4884 	ljmp	_rf_write_register
                           4885 ;------------------------------------------------------------
                           4886 ;Allocation info for local variables in function 'openAllPipe'
                           4887 ;------------------------------------------------------------
                           4888 ;buffer                    Allocated with name '_openAllPipe_buffer_1_238'
                           4889 ;setup                     Allocated with name '_openAllPipe_setup_1_238'
                           4890 ;------------------------------------------------------------
                           4891 ;	../nRFLE.c:101: void openAllPipe()
                           4892 ;	-----------------------------------------
                           4893 ;	 function openAllPipe
                           4894 ;	-----------------------------------------
   1401                    4895 _openAllPipe:
                           4896 ;	../nRFLE.c:106: buffer[1]=adr1;
   1401 90 00 84      [24] 4897 	mov	dptr,#(_openAllPipe_buffer_1_238 + 0x0001)
   1404 74 F0         [12] 4898 	mov	a,#0xF0
   1406 F0            [24] 4899 	movx	@dptr,a
                           4900 ;	../nRFLE.c:107: buffer[2]=adr2;
   1407 90 00 85      [24] 4901 	mov	dptr,#(_openAllPipe_buffer_1_238 + 0x0002)
   140A 74 F0         [12] 4902 	mov	a,#0xF0
   140C F0            [24] 4903 	movx	@dptr,a
                           4904 ;	../nRFLE.c:108: buffer[3]=adr3;
   140D 90 00 86      [24] 4905 	mov	dptr,#(_openAllPipe_buffer_1_238 + 0x0003)
   1410 74 F0         [12] 4906 	mov	a,#0xF0
   1412 F0            [24] 4907 	movx	@dptr,a
                           4908 ;	../nRFLE.c:109: buffer[4]=adr4;
   1413 90 00 87      [24] 4909 	mov	dptr,#(_openAllPipe_buffer_1_238 + 0x0004)
   1416 74 F0         [12] 4910 	mov	a,#0xF0
   1418 F0            [24] 4911 	movx	@dptr,a
                           4912 ;	../nRFLE.c:111: setup = 2; // en_rxaddr ,биты включения каналов B00000010 на прием
   1419 90 00 88      [24] 4913 	mov	dptr,#_openAllPipe_setup_1_238
   141C 74 02         [12] 4914 	mov	a,#0x02
   141E F0            [24] 4915 	movx	@dptr,a
                           4916 ;	../nRFLE.c:112: rf_write_register(RF_EN_RXADDR, &setup, 1);
   141F 90 00 08      [24] 4917 	mov	dptr,#_rf_write_register_PARM_2
   1422 74 88         [12] 4918 	mov	a,#_openAllPipe_setup_1_238
   1424 F0            [24] 4919 	movx	@dptr,a
   1425 74 00         [12] 4920 	mov	a,#(_openAllPipe_setup_1_238 >> 8)
   1427 A3            [24] 4921 	inc	dptr
   1428 F0            [24] 4922 	movx	@dptr,a
   1429 E4            [12] 4923 	clr	a
   142A A3            [24] 4924 	inc	dptr
   142B F0            [24] 4925 	movx	@dptr,a
   142C 90 00 0B      [24] 4926 	mov	dptr,#_rf_write_register_PARM_3
   142F 74 01         [12] 4927 	mov	a,#0x01
   1431 F0            [24] 4928 	movx	@dptr,a
   1432 E4            [12] 4929 	clr	a
   1433 A3            [24] 4930 	inc	dptr
   1434 F0            [24] 4931 	movx	@dptr,a
   1435 75 82 02      [24] 4932 	mov	dpl,#0x02
   1438 12 01 39      [24] 4933 	lcall	_rf_write_register
                           4934 ;	../nRFLE.c:115: buffer[0]=0xD2;
   143B 90 00 83      [24] 4935 	mov	dptr,#_openAllPipe_buffer_1_238
   143E 74 D2         [12] 4936 	mov	a,#0xD2
   1440 F0            [24] 4937 	movx	@dptr,a
                           4938 ;	../nRFLE.c:117: rf_write_register(RF_RX_ADDR_P0,buffer,5);
   1441 90 00 08      [24] 4939 	mov	dptr,#_rf_write_register_PARM_2
   1444 74 83         [12] 4940 	mov	a,#_openAllPipe_buffer_1_238
   1446 F0            [24] 4941 	movx	@dptr,a
   1447 74 00         [12] 4942 	mov	a,#(_openAllPipe_buffer_1_238 >> 8)
   1449 A3            [24] 4943 	inc	dptr
   144A F0            [24] 4944 	movx	@dptr,a
   144B E4            [12] 4945 	clr	a
   144C A3            [24] 4946 	inc	dptr
   144D F0            [24] 4947 	movx	@dptr,a
   144E 90 00 0B      [24] 4948 	mov	dptr,#_rf_write_register_PARM_3
   1451 74 05         [12] 4949 	mov	a,#0x05
   1453 F0            [24] 4950 	movx	@dptr,a
   1454 E4            [12] 4951 	clr	a
   1455 A3            [24] 4952 	inc	dptr
   1456 F0            [24] 4953 	movx	@dptr,a
   1457 75 82 0A      [24] 4954 	mov	dpl,#0x0A
   145A 12 01 39      [24] 4955 	lcall	_rf_write_register
                           4956 ;	../nRFLE.c:118: rf_write_register(RF_TX_ADDR,buffer,5);
   145D 90 00 08      [24] 4957 	mov	dptr,#_rf_write_register_PARM_2
   1460 74 83         [12] 4958 	mov	a,#_openAllPipe_buffer_1_238
   1462 F0            [24] 4959 	movx	@dptr,a
   1463 74 00         [12] 4960 	mov	a,#(_openAllPipe_buffer_1_238 >> 8)
   1465 A3            [24] 4961 	inc	dptr
   1466 F0            [24] 4962 	movx	@dptr,a
   1467 E4            [12] 4963 	clr	a
   1468 A3            [24] 4964 	inc	dptr
   1469 F0            [24] 4965 	movx	@dptr,a
   146A 90 00 0B      [24] 4966 	mov	dptr,#_rf_write_register_PARM_3
   146D 74 05         [12] 4967 	mov	a,#0x05
   146F F0            [24] 4968 	movx	@dptr,a
   1470 E4            [12] 4969 	clr	a
   1471 A3            [24] 4970 	inc	dptr
   1472 F0            [24] 4971 	movx	@dptr,a
   1473 75 82 10      [24] 4972 	mov	dpl,#0x10
   1476 12 01 39      [24] 4973 	lcall	_rf_write_register
                           4974 ;	../nRFLE.c:122: buffer[0]=0xE1;
   1479 90 00 83      [24] 4975 	mov	dptr,#_openAllPipe_buffer_1_238
   147C 74 E1         [12] 4976 	mov	a,#0xE1
   147E F0            [24] 4977 	movx	@dptr,a
                           4978 ;	../nRFLE.c:124: rf_write_register(RF_RX_ADDR_P0+1,buffer,5);
   147F 90 00 08      [24] 4979 	mov	dptr,#_rf_write_register_PARM_2
   1482 74 83         [12] 4980 	mov	a,#_openAllPipe_buffer_1_238
   1484 F0            [24] 4981 	movx	@dptr,a
   1485 74 00         [12] 4982 	mov	a,#(_openAllPipe_buffer_1_238 >> 8)
   1487 A3            [24] 4983 	inc	dptr
   1488 F0            [24] 4984 	movx	@dptr,a
   1489 E4            [12] 4985 	clr	a
   148A A3            [24] 4986 	inc	dptr
   148B F0            [24] 4987 	movx	@dptr,a
   148C 90 00 0B      [24] 4988 	mov	dptr,#_rf_write_register_PARM_3
   148F 74 05         [12] 4989 	mov	a,#0x05
   1491 F0            [24] 4990 	movx	@dptr,a
   1492 E4            [12] 4991 	clr	a
   1493 A3            [24] 4992 	inc	dptr
   1494 F0            [24] 4993 	movx	@dptr,a
   1495 75 82 0B      [24] 4994 	mov	dpl,#0x0B
   1498 12 01 39      [24] 4995 	lcall	_rf_write_register
                           4996 ;	../nRFLE.c:126: setup=32; //
   149B 90 00 88      [24] 4997 	mov	dptr,#_openAllPipe_setup_1_238
   149E 74 20         [12] 4998 	mov	a,#0x20
   14A0 F0            [24] 4999 	movx	@dptr,a
                           5000 ;	../nRFLE.c:127: rf_write_register(RF_RX_PW_P0+1,&setup,1);
   14A1 90 00 08      [24] 5001 	mov	dptr,#_rf_write_register_PARM_2
   14A4 74 88         [12] 5002 	mov	a,#_openAllPipe_setup_1_238
   14A6 F0            [24] 5003 	movx	@dptr,a
   14A7 74 00         [12] 5004 	mov	a,#(_openAllPipe_setup_1_238 >> 8)
   14A9 A3            [24] 5005 	inc	dptr
   14AA F0            [24] 5006 	movx	@dptr,a
   14AB E4            [12] 5007 	clr	a
   14AC A3            [24] 5008 	inc	dptr
   14AD F0            [24] 5009 	movx	@dptr,a
   14AE 90 00 0B      [24] 5010 	mov	dptr,#_rf_write_register_PARM_3
   14B1 74 01         [12] 5011 	mov	a,#0x01
   14B3 F0            [24] 5012 	movx	@dptr,a
   14B4 E4            [12] 5013 	clr	a
   14B5 A3            [24] 5014 	inc	dptr
   14B6 F0            [24] 5015 	movx	@dptr,a
   14B7 75 82 12      [24] 5016 	mov	dpl,#0x12
   14BA 02 01 39      [24] 5017 	ljmp	_rf_write_register
                           5018 ;------------------------------------------------------------
                           5019 ;Allocation info for local variables in function 'isr_ifp'
                           5020 ;------------------------------------------------------------
                           5021 ;	main.c:46: interrupt_isr_ifp()
                           5022 ;	-----------------------------------------
                           5023 ;	 function isr_ifp
                           5024 ;	-----------------------------------------
   14BD                    5025 _isr_ifp:
   14BD C0 21         [24] 5026 	push	bits
   14BF C0 E0         [24] 5027 	push	acc
   14C1 C0 F0         [24] 5028 	push	b
   14C3 C0 82         [24] 5029 	push	dpl
   14C5 C0 83         [24] 5030 	push	dph
   14C7 C0 07         [24] 5031 	push	(0+7)
   14C9 C0 06         [24] 5032 	push	(0+6)
   14CB C0 05         [24] 5033 	push	(0+5)
   14CD C0 04         [24] 5034 	push	(0+4)
   14CF C0 03         [24] 5035 	push	(0+3)
   14D1 C0 02         [24] 5036 	push	(0+2)
   14D3 C0 01         [24] 5037 	push	(0+1)
   14D5 C0 00         [24] 5038 	push	(0+0)
   14D7 C0 D0         [24] 5039 	push	psw
   14D9 75 D0 00      [24] 5040 	mov	psw,#0x00
                           5041 ;	main.c:48: timer1_stop();
   14DC C2 8E         [12] 5042 	clr _TCON_SB_TR1 
                           5043 ;	main.c:49: if(clientnf.countPWM !=0) {
   14DE 90 00 8A      [24] 5044 	mov	dptr,#(_clientnf + 0x0001)
   14E1 E0            [24] 5045 	movx	a,@dptr
   14E2 FE            [12] 5046 	mov	r6,a
   14E3 A3            [24] 5047 	inc	dptr
   14E4 E0            [24] 5048 	movx	a,@dptr
   14E5 FF            [12] 5049 	mov	r7,a
   14E6 4E            [12] 5050 	orl	a,r6
   14E7 60 3F         [24] 5051 	jz	00102$
                           5052 ;	main.c:51: timer1_set_t1_val(65535-DIMSTART*(DIMMERSTEP-clientnf.countPWM) );
   14E9 74 64         [12] 5053 	mov	a,#0x64
   14EB C3            [12] 5054 	clr	c
   14EC 9E            [12] 5055 	subb	a,r6
   14ED FE            [12] 5056 	mov	r6,a
   14EE E4            [12] 5057 	clr	a
   14EF 9F            [12] 5058 	subb	a,r7
   14F0 FF            [12] 5059 	mov	r7,a
   14F1 90 00 CC      [24] 5060 	mov	dptr,#__mullong_PARM_2
   14F4 EE            [12] 5061 	mov	a,r6
   14F5 F0            [24] 5062 	movx	@dptr,a
   14F6 EF            [12] 5063 	mov	a,r7
   14F7 A3            [24] 5064 	inc	dptr
   14F8 F0            [24] 5065 	movx	@dptr,a
   14F9 EF            [12] 5066 	mov	a,r7
   14FA 33            [12] 5067 	rlc	a
   14FB 95 E0         [12] 5068 	subb	a,acc
   14FD A3            [24] 5069 	inc	dptr
   14FE F0            [24] 5070 	movx	@dptr,a
   14FF A3            [24] 5071 	inc	dptr
   1500 F0            [24] 5072 	movx	@dptr,a
   1501 90 00 85      [24] 5073 	mov	dptr,#(0x85&0x00ff)
   1504 E4            [12] 5074 	clr	a
   1505 F5 F0         [12] 5075 	mov	b,a
   1507 12 18 DF      [24] 5076 	lcall	__mullong
   150A AC 82         [24] 5077 	mov	r4,dpl
   150C AD 83         [24] 5078 	mov	r5,dph
   150E AE F0         [24] 5079 	mov	r6,b
   1510 FF            [12] 5080 	mov	r7,a
   1511 74 FF         [12] 5081 	mov	a,#0xFF
   1513 C3            [12] 5082 	clr	c
   1514 9C            [12] 5083 	subb	a,r4
   1515 FC            [12] 5084 	mov	r4,a
   1516 74 FF         [12] 5085 	mov	a,#0xFF
   1518 9D            [12] 5086 	subb	a,r5
   1519 FD            [12] 5087 	mov	r5,a
   151A E4            [12] 5088 	clr	a
   151B 9E            [12] 5089 	subb	a,r6
   151C FE            [12] 5090 	mov	r6,a
   151D E4            [12] 5091 	clr	a
   151E 9F            [12] 5092 	subb	a,r7
   151F FF            [12] 5093 	mov	r7,a
   1520 8C 8B         [24] 5094 	mov	((_T1 >> 0) & 0xFF),r4
   1522 8D 8D         [24] 5095 	mov	((_T1 >> 8) & 0xFF),r5
                           5096 ;	main.c:53: timer1_run();
   1524 D2 8E         [12] 5097 	setb _TCON_SB_TR1 
   1526 80 06         [24] 5098 	sjmp	00103$
   1528                    5099 00102$:
                           5100 ;	main.c:55: else gpio_pin_val_clear(DIMMPIN);
   1528 75 82 02      [24] 5101 	mov	dpl,#0x02
   152B 12 07 CE      [24] 5102 	lcall	_gpio_pin_val_clear
   152E                    5103 00103$:
                           5104 ;	main.c:56: stdimm=1;
   152E 90 00 9B      [24] 5105 	mov	dptr,#_stdimm
   1531 74 01         [12] 5106 	mov	a,#0x01
   1533 F0            [24] 5107 	movx	@dptr,a
   1534 D0 D0         [24] 5108 	pop	psw
   1536 D0 00         [24] 5109 	pop	(0+0)
   1538 D0 01         [24] 5110 	pop	(0+1)
   153A D0 02         [24] 5111 	pop	(0+2)
   153C D0 03         [24] 5112 	pop	(0+3)
   153E D0 04         [24] 5113 	pop	(0+4)
   1540 D0 05         [24] 5114 	pop	(0+5)
   1542 D0 06         [24] 5115 	pop	(0+6)
   1544 D0 07         [24] 5116 	pop	(0+7)
   1546 D0 83         [24] 5117 	pop	dph
   1548 D0 82         [24] 5118 	pop	dpl
   154A D0 F0         [24] 5119 	pop	b
   154C D0 E0         [24] 5120 	pop	acc
   154E D0 21         [24] 5121 	pop	bits
   1550 32            [24] 5122 	reti
                           5123 ;------------------------------------------------------------
                           5124 ;Allocation info for local variables in function 'isr_t1'
                           5125 ;------------------------------------------------------------
                           5126 ;	main.c:60: interrupt_isr_t1() {
                           5127 ;	-----------------------------------------
                           5128 ;	 function isr_t1
                           5129 ;	-----------------------------------------
   1551                    5130 _isr_t1:
   1551 C0 21         [24] 5131 	push	bits
   1553 C0 E0         [24] 5132 	push	acc
   1555 C0 F0         [24] 5133 	push	b
   1557 C0 82         [24] 5134 	push	dpl
   1559 C0 83         [24] 5135 	push	dph
   155B C0 07         [24] 5136 	push	(0+7)
   155D C0 06         [24] 5137 	push	(0+6)
   155F C0 05         [24] 5138 	push	(0+5)
   1561 C0 04         [24] 5139 	push	(0+4)
   1563 C0 03         [24] 5140 	push	(0+3)
   1565 C0 02         [24] 5141 	push	(0+2)
   1567 C0 01         [24] 5142 	push	(0+1)
   1569 C0 00         [24] 5143 	push	(0+0)
   156B C0 D0         [24] 5144 	push	psw
   156D 75 D0 00      [24] 5145 	mov	psw,#0x00
                           5146 ;	main.c:62: if (stdimm) {
   1570 90 00 9B      [24] 5147 	mov	dptr,#_stdimm
   1573 E0            [24] 5148 	movx	a,@dptr
   1574 FF            [12] 5149 	mov	r7,a
   1575 60 13         [24] 5150 	jz	00102$
                           5151 ;	main.c:63: gpio_pin_val_set(DIMMPIN); 
   1577 75 82 02      [24] 5152 	mov	dpl,#0x02
   157A 12 08 39      [24] 5153 	lcall	_gpio_pin_val_set
                           5154 ;	main.c:64: timer1_set_t1_val(65535-100);
   157D 75 8B 9B      [24] 5155 	mov	((_T1 >> 0) & 0xFF),#0x9B
   1580 75 8D FF      [24] 5156 	mov	((_T1 >> 8) & 0xFF),#0xFF
                           5157 ;	main.c:65: stdimm=0;
   1583 90 00 9B      [24] 5158 	mov	dptr,#_stdimm
   1586 E4            [12] 5159 	clr	a
   1587 F0            [24] 5160 	movx	@dptr,a
   1588 80 06         [24] 5161 	sjmp	00104$
   158A                    5162 00102$:
                           5163 ;	main.c:67: gpio_pin_val_clear(DIMMPIN);
   158A 75 82 02      [24] 5164 	mov	dpl,#0x02
   158D 12 07 CE      [24] 5165 	lcall	_gpio_pin_val_clear
   1590                    5166 00104$:
   1590 D0 D0         [24] 5167 	pop	psw
   1592 D0 00         [24] 5168 	pop	(0+0)
   1594 D0 01         [24] 5169 	pop	(0+1)
   1596 D0 02         [24] 5170 	pop	(0+2)
   1598 D0 03         [24] 5171 	pop	(0+3)
   159A D0 04         [24] 5172 	pop	(0+4)
   159C D0 05         [24] 5173 	pop	(0+5)
   159E D0 06         [24] 5174 	pop	(0+6)
   15A0 D0 07         [24] 5175 	pop	(0+7)
   15A2 D0 83         [24] 5176 	pop	dph
   15A4 D0 82         [24] 5177 	pop	dpl
   15A6 D0 F0         [24] 5178 	pop	b
   15A8 D0 E0         [24] 5179 	pop	acc
   15AA D0 21         [24] 5180 	pop	bits
   15AC 32            [24] 5181 	reti
                           5182 ;------------------------------------------------------------
                           5183 ;Allocation info for local variables in function 'dimmon'
                           5184 ;------------------------------------------------------------
                           5185 ;mode                      Allocated with name '_dimmon_mode_1_243'
                           5186 ;------------------------------------------------------------
                           5187 ;	main.c:70: void dimmon(uint8_t mode)
                           5188 ;	-----------------------------------------
                           5189 ;	 function dimmon
                           5190 ;	-----------------------------------------
   15AD                    5191 _dimmon:
   15AD E5 82         [12] 5192 	mov	a,dpl
                           5193 ;	main.c:72: if (mode) interrupt_control_ifp_enable();
   15AF 90 00 9C      [24] 5194 	mov	dptr,#_dimmon_mode_1_243
   15B2 F0            [24] 5195 	movx	@dptr,a
   15B3 FF            [12] 5196 	mov	r7,a
   15B4 60 04         [24] 5197 	jz	00102$
   15B6 D2 A8         [12] 5198 	setb _IEN0_SB_IFP 
   15B8 80 0C         [24] 5199 	sjmp	00103$
   15BA                    5200 00102$:
                           5201 ;	main.c:74: interrupt_control_ifp_disable();
   15BA C2 A8         [12] 5202 	clr _IEN0_SB_IFP 
                           5203 ;	main.c:75: gpio_pin_val_clear(DIMMPIN);
   15BC 75 82 02      [24] 5204 	mov	dpl,#0x02
   15BF C0 07         [24] 5205 	push	ar7
   15C1 12 07 CE      [24] 5206 	lcall	_gpio_pin_val_clear
   15C4 D0 07         [24] 5207 	pop	ar7
   15C6                    5208 00103$:
                           5209 ;	main.c:77: clientnf.test_data=mode;
   15C6 90 00 8C      [24] 5210 	mov	dptr,#(_clientnf + 0x0003)
   15C9 EF            [12] 5211 	mov	a,r7
   15CA F0            [24] 5212 	movx	@dptr,a
   15CB 22            [24] 5213 	ret
                           5214 ;------------------------------------------------------------
                           5215 ;Allocation info for local variables in function 'main'
                           5216 ;------------------------------------------------------------
                           5217 ;state                     Allocated with name '_main_state_1_246'
                           5218 ;count                     Allocated with name '_main_count_1_246'
                           5219 ;------------------------------------------------------------
                           5220 ;	main.c:85: void main()
                           5221 ;	-----------------------------------------
                           5222 ;	 function main
                           5223 ;	-----------------------------------------
   15CC                    5224 _main:
                           5225 ;	main.c:93: gpio_pin_configure(DIMMPIN,GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);
   15CC 90 00 38      [24] 5226 	mov	dptr,#_gpio_pin_configure_PARM_2
   15CF 74 01         [12] 5227 	mov	a,#0x01
   15D1 F0            [24] 5228 	movx	@dptr,a
   15D2 75 82 02      [24] 5229 	mov	dpl,#0x02
   15D5 12 05 3F      [24] 5230 	lcall	_gpio_pin_configure
                           5231 ;	main.c:94: gpio_pin_val_set(DIMMPIN);
   15D8 75 82 02      [24] 5232 	mov	dpl,#0x02
   15DB 12 08 39      [24] 5233 	lcall	_gpio_pin_val_set
                           5234 ;	main.c:95: delay_ms(500); 
   15DE 90 01 F4      [24] 5235 	mov	dptr,#0x01F4
   15E1 12 09 3C      [24] 5236 	lcall	_delay_ms
                           5237 ;	main.c:96: gpio_pin_val_clear(DIMMPIN);
   15E4 75 82 02      [24] 5238 	mov	dpl,#0x02
   15E7 12 07 CE      [24] 5239 	lcall	_gpio_pin_val_clear
                           5240 ;	main.c:97: delay_ms(500); 
   15EA 90 01 F4      [24] 5241 	mov	dptr,#0x01F4
   15ED 12 09 3C      [24] 5242 	lcall	_delay_ms
                           5243 ;	main.c:100: radiobegin(); //
   15F0 12 12 7D      [24] 5244 	lcall	_radiobegin
                           5245 ;	main.c:101: openAllPipe(); // открываем прием/передачу
   15F3 12 14 01      [24] 5246 	lcall	_openAllPipe
                           5247 ;	main.c:103: setChannel(100);
   15F6 75 82 64      [24] 5248 	mov	dpl,#0x64
   15F9 12 12 A2      [24] 5249 	lcall	_setChannel
                           5250 ;	main.c:104: setDataRate(2); // 1 - 250кб , 2 - 1 мб , 3 -2 мб.
   15FC 75 82 02      [24] 5251 	mov	dpl,#0x02
   15FF 12 12 C4      [24] 5252 	lcall	_setDataRate
                           5253 ;	main.c:105: setAutoAck(false);
   1602 75 82 00      [24] 5254 	mov	dpl,#0x00
   1605 12 13 26      [24] 5255 	lcall	_setAutoAck
                           5256 ;	main.c:106: setCRCLength(2); // 0 - crc off ,1 - 8bit ,2 - 16bit
   1608 75 82 02      [24] 5257 	mov	dpl,#0x02
   160B 12 13 59      [24] 5258 	lcall	_setCRCLength
                           5259 ;	main.c:107: setPALevel(3) ; // мощность 0..3
   160E 75 82 03      [24] 5260 	mov	dpl,#0x03
   1611 12 13 C2      [24] 5261 	lcall	_setPALevel
                           5262 ;	main.c:110: clientnf.identifier=chclient;
   1614 90 00 89      [24] 5263 	mov	dptr,#_clientnf
   1617 74 01         [12] 5264 	mov	a,#0x01
   1619 F0            [24] 5265 	movx	@dptr,a
                           5266 ;	main.c:111: clientnf.countPWM=10;
   161A 90 00 8A      [24] 5267 	mov	dptr,#(_clientnf + 0x0001)
   161D 74 0A         [12] 5268 	mov	a,#0x0A
   161F F0            [24] 5269 	movx	@dptr,a
   1620 E4            [12] 5270 	clr	a
   1621 A3            [24] 5271 	inc	dptr
   1622 F0            [24] 5272 	movx	@dptr,a
                           5273 ;	main.c:113: sti();
   1623 D2 AF         [12] 5274 	setb _IEN0_SB_GLOBAL 
                           5275 ;	main.c:114: interrupt_configure_ifp(INTERRUPT_IFP_INPUT_GPINT0,INTERRUPT_IFP_CONFIG_OPTION_ENABLE | INTERRUPT_IFP_CONFIG_OPTION_TYPE_FALLING_EDGE);
   1625 90 00 56      [24] 5276 	mov	dptr,#_interrupt_configure_ifp_PARM_2
   1628 74 81         [12] 5277 	mov	a,#0x81
   162A F0            [24] 5278 	movx	@dptr,a
   162B 75 82 08      [24] 5279 	mov	dpl,#0x08
   162E 12 0A EB      [24] 5280 	lcall	_interrupt_configure_ifp
                           5281 ;	main.c:115: interrupt_control_ifp_enable();
   1631 D2 A8         [12] 5282 	setb _IEN0_SB_IFP 
                           5283 ;	main.c:117: interrupt_control_t1_enable()	;
   1633 D2 AB         [12] 5284 	setb _IEN0_SB_T1 
                           5285 ;	main.c:118: timer1_configure(TIMER1_CONFIG_OPTION_MODE_1_16_BIT_CTR_TMR,0);
   1635 90 00 60      [24] 5286 	mov	dptr,#_timer1_configure_PARM_2
   1638 E4            [12] 5287 	clr	a
   1639 F0            [24] 5288 	movx	@dptr,a
   163A E4            [12] 5289 	clr	a
   163B A3            [24] 5290 	inc	dptr
   163C F0            [24] 5291 	movx	@dptr,a
   163D 75 82 10      [24] 5292 	mov	dpl,#0x10
   1640 12 0B FE      [24] 5293 	lcall	_timer1_configure
                           5294 ;	main.c:119: timer1_run();
   1643 D2 8E         [12] 5295 	setb _TCON_SB_TR1 
                           5296 ;	main.c:124: while(1)
   1645                    5297 00121$:
                           5298 ;	main.c:132: rf_write_tx_payload((const uint8_t*)&clientnf, 32, true); //transmit received char over RF
   1645 7E 89         [12] 5299 	mov	r6,#_clientnf
   1647 7F 00         [12] 5300 	mov	r7,#(_clientnf >> 8)
   1649 7D 00         [12] 5301 	mov	r5,#0x00
   164B 90 00 0E      [24] 5302 	mov	dptr,#_rf_write_tx_payload_PARM_2
   164E 74 20         [12] 5303 	mov	a,#0x20
   1650 F0            [24] 5304 	movx	@dptr,a
   1651 E4            [12] 5305 	clr	a
   1652 A3            [24] 5306 	inc	dptr
   1653 F0            [24] 5307 	movx	@dptr,a
   1654 90 00 10      [24] 5308 	mov	dptr,#_rf_write_tx_payload_PARM_3
   1657 74 01         [12] 5309 	mov	a,#0x01
   1659 F0            [24] 5310 	movx	@dptr,a
   165A 8E 82         [24] 5311 	mov	dpl,r6
   165C 8F 83         [24] 5312 	mov	dph,r7
   165E 8D F0         [24] 5313 	mov	b,r5
   1660 12 01 7D      [24] 5314 	lcall	_rf_write_tx_payload
                           5315 ;	main.c:135: while(!(rf_irq_pin_active() && rf_irq_tx_ds_active()));
   1663                    5316 00102$:
   1663 30 C1 FD      [24] 5317 	jnb	_IRCON_SB_RFIRQ,00102$
   1666 90 00 18      [24] 5318 	mov	dptr,#_rf_spi_execute_command_PARM_2
   1669 E4            [12] 5319 	clr	a
   166A F0            [24] 5320 	movx	@dptr,a
   166B E4            [12] 5321 	clr	a
   166C A3            [24] 5322 	inc	dptr
   166D F0            [24] 5323 	movx	@dptr,a
   166E E4            [12] 5324 	clr	a
   166F A3            [24] 5325 	inc	dptr
   1670 F0            [24] 5326 	movx	@dptr,a
   1671 90 00 1B      [24] 5327 	mov	dptr,#_rf_spi_execute_command_PARM_3
   1674 E4            [12] 5328 	clr	a
   1675 F0            [24] 5329 	movx	@dptr,a
   1676 E4            [12] 5330 	clr	a
   1677 A3            [24] 5331 	inc	dptr
   1678 F0            [24] 5332 	movx	@dptr,a
   1679 90 00 1D      [24] 5333 	mov	dptr,#_rf_spi_execute_command_PARM_4
   167C 74 01         [12] 5334 	mov	a,#0x01
   167E F0            [24] 5335 	movx	@dptr,a
   167F 75 82 FF      [24] 5336 	mov	dpl,#0xFF
   1682 12 02 B2      [24] 5337 	lcall	_rf_spi_execute_command
   1685 E5 82         [12] 5338 	mov	a,dpl
   1687 30 E5 D9      [24] 5339 	jnb	acc.5,00102$
                           5340 ;	main.c:137: rf_irq_clear_all(); //clear all interrupts in the 24L01
   168A 12 02 43      [24] 5341 	lcall	_rf_irq_clear_all
                           5342 ;	main.c:138: rf_set_as_rx(true); //change the device to an RX to get the character back from the other 24L01
   168D 75 82 01      [24] 5343 	mov	dpl,#0x01
   1690 12 01 E3      [24] 5344 	lcall	_rf_set_as_rx
                           5345 ;	main.c:142: for(count = 0; count < 25000; count++)
   1693 7E 00         [12] 5346 	mov	r6,#0x00
   1695 7F 00         [12] 5347 	mov	r7,#0x00
   1697                    5348 00123$:
                           5349 ;	main.c:145: if((rf_irq_pin_active() && rf_irq_rx_dr_active()))
   1697 20 C1 03      [24] 5350 	jb	_IRCON_SB_RFIRQ,00165$
   169A 02 17 2B      [24] 5351 	ljmp	00109$
   169D                    5352 00165$:
   169D 90 00 18      [24] 5353 	mov	dptr,#_rf_spi_execute_command_PARM_2
   16A0 E4            [12] 5354 	clr	a
   16A1 F0            [24] 5355 	movx	@dptr,a
   16A2 E4            [12] 5356 	clr	a
   16A3 A3            [24] 5357 	inc	dptr
   16A4 F0            [24] 5358 	movx	@dptr,a
   16A5 E4            [12] 5359 	clr	a
   16A6 A3            [24] 5360 	inc	dptr
   16A7 F0            [24] 5361 	movx	@dptr,a
   16A8 90 00 1B      [24] 5362 	mov	dptr,#_rf_spi_execute_command_PARM_3
   16AB E4            [12] 5363 	clr	a
   16AC F0            [24] 5364 	movx	@dptr,a
   16AD E4            [12] 5365 	clr	a
   16AE A3            [24] 5366 	inc	dptr
   16AF F0            [24] 5367 	movx	@dptr,a
   16B0 90 00 1D      [24] 5368 	mov	dptr,#_rf_spi_execute_command_PARM_4
   16B3 74 01         [12] 5369 	mov	a,#0x01
   16B5 F0            [24] 5370 	movx	@dptr,a
   16B6 75 82 FF      [24] 5371 	mov	dpl,#0xFF
   16B9 C0 07         [24] 5372 	push	ar7
   16BB C0 06         [24] 5373 	push	ar6
   16BD 12 02 B2      [24] 5374 	lcall	_rf_spi_execute_command
   16C0 E5 82         [12] 5375 	mov	a,dpl
   16C2 D0 06         [24] 5376 	pop	ar6
   16C4 D0 07         [24] 5377 	pop	ar7
   16C6 30 E6 62      [24] 5378 	jnb	acc.6,00109$
                           5379 ;	main.c:148: if (clientnf.count <= 2147483646) clientnf.count++;      /// счетчик передач для контроля качества канала
   16C9 90 00 8F      [24] 5380 	mov	dptr,#(_clientnf + 0x0006)
   16CC E0            [24] 5381 	movx	a,@dptr
   16CD FA            [12] 5382 	mov	r2,a
   16CE A3            [24] 5383 	inc	dptr
   16CF E0            [24] 5384 	movx	a,@dptr
   16D0 FB            [12] 5385 	mov	r3,a
   16D1 A3            [24] 5386 	inc	dptr
   16D2 E0            [24] 5387 	movx	a,@dptr
   16D3 FC            [12] 5388 	mov	r4,a
   16D4 A3            [24] 5389 	inc	dptr
   16D5 E0            [24] 5390 	movx	a,@dptr
   16D6 FD            [12] 5391 	mov	r5,a
   16D7 C3            [12] 5392 	clr	c
   16D8 74 FE         [12] 5393 	mov	a,#0xFE
   16DA 9A            [12] 5394 	subb	a,r2
   16DB 74 FF         [12] 5395 	mov	a,#0xFF
   16DD 9B            [12] 5396 	subb	a,r3
   16DE 74 FF         [12] 5397 	mov	a,#0xFF
   16E0 9C            [12] 5398 	subb	a,r4
   16E1 74 FF         [12] 5399 	mov	a,#(0x7F ^ 0x80)
   16E3 8D F0         [24] 5400 	mov	b,r5
   16E5 63 F0 80      [24] 5401 	xrl	b,#0x80
   16E8 95 F0         [12] 5402 	subb	a,b
   16EA 40 1D         [24] 5403 	jc	00106$
   16EC 0A            [12] 5404 	inc	r2
   16ED BA 00 09      [24] 5405 	cjne	r2,#0x00,00168$
   16F0 0B            [12] 5406 	inc	r3
   16F1 BB 00 05      [24] 5407 	cjne	r3,#0x00,00168$
   16F4 0C            [12] 5408 	inc	r4
   16F5 BC 00 01      [24] 5409 	cjne	r4,#0x00,00168$
   16F8 0D            [12] 5410 	inc	r5
   16F9                    5411 00168$:
   16F9 90 00 8F      [24] 5412 	mov	dptr,#(_clientnf + 0x0006)
   16FC EA            [12] 5413 	mov	a,r2
   16FD F0            [24] 5414 	movx	@dptr,a
   16FE EB            [12] 5415 	mov	a,r3
   16FF A3            [24] 5416 	inc	dptr
   1700 F0            [24] 5417 	movx	@dptr,a
   1701 EC            [12] 5418 	mov	a,r4
   1702 A3            [24] 5419 	inc	dptr
   1703 F0            [24] 5420 	movx	@dptr,a
   1704 ED            [12] 5421 	mov	a,r5
   1705 A3            [24] 5422 	inc	dptr
   1706 F0            [24] 5423 	movx	@dptr,a
   1707 80 0E         [24] 5424 	sjmp	00107$
   1709                    5425 00106$:
                           5426 ;	main.c:149: else clientnf.count = 0;
   1709 90 00 8F      [24] 5427 	mov	dptr,#(_clientnf + 0x0006)
   170C E4            [12] 5428 	clr	a
   170D F0            [24] 5429 	movx	@dptr,a
   170E E4            [12] 5430 	clr	a
   170F A3            [24] 5431 	inc	dptr
   1710 F0            [24] 5432 	movx	@dptr,a
   1711 E4            [12] 5433 	clr	a
   1712 A3            [24] 5434 	inc	dptr
   1713 F0            [24] 5435 	movx	@dptr,a
   1714 E4            [12] 5436 	clr	a
   1715 A3            [24] 5437 	inc	dptr
   1716 F0            [24] 5438 	movx	@dptr,a
   1717                    5439 00107$:
                           5440 ;	main.c:151: rf_read_rx_payload((const uint8_t*)&servernf, 32); //get the payload into data
   1717 90 00 00      [24] 5441 	mov	dptr,#_rf_read_rx_payload_PARM_2
   171A 74 20         [12] 5442 	mov	a,#0x20
   171C F0            [24] 5443 	movx	@dptr,a
   171D E4            [12] 5444 	clr	a
   171E A3            [24] 5445 	inc	dptr
   171F F0            [24] 5446 	movx	@dptr,a
   1720 90 00 9D      [24] 5447 	mov	dptr,#_servernf
   1723 75 F0 00      [24] 5448 	mov	b,#0x00
   1726 12 00 7D      [24] 5449 	lcall	_rf_read_rx_payload
                           5450 ;	main.c:152: break;
   1729 80 2C         [24] 5451 	sjmp	00113$
   172B                    5452 00109$:
                           5453 ;	main.c:159: if(count == 24999) clientnf.Error_Message++;
   172B BE A7 18      [24] 5454 	cjne	r6,#0xA7,00124$
   172E BF 61 15      [24] 5455 	cjne	r7,#0x61,00124$
   1731 90 00 8D      [24] 5456 	mov	dptr,#(_clientnf + 0x0004)
   1734 E0            [24] 5457 	movx	a,@dptr
   1735 FC            [12] 5458 	mov	r4,a
   1736 A3            [24] 5459 	inc	dptr
   1737 E0            [24] 5460 	movx	a,@dptr
   1738 FD            [12] 5461 	mov	r5,a
   1739 0C            [12] 5462 	inc	r4
   173A BC 00 01      [24] 5463 	cjne	r4,#0x00,00171$
   173D 0D            [12] 5464 	inc	r5
   173E                    5465 00171$:
   173E 90 00 8D      [24] 5466 	mov	dptr,#(_clientnf + 0x0004)
   1741 EC            [12] 5467 	mov	a,r4
   1742 F0            [24] 5468 	movx	@dptr,a
   1743 ED            [12] 5469 	mov	a,r5
   1744 A3            [24] 5470 	inc	dptr
   1745 F0            [24] 5471 	movx	@dptr,a
   1746                    5472 00124$:
                           5473 ;	main.c:142: for(count = 0; count < 25000; count++)
   1746 0E            [12] 5474 	inc	r6
   1747 BE 00 01      [24] 5475 	cjne	r6,#0x00,00172$
   174A 0F            [12] 5476 	inc	r7
   174B                    5477 00172$:
   174B C3            [12] 5478 	clr	c
   174C EE            [12] 5479 	mov	a,r6
   174D 94 A8         [12] 5480 	subb	a,#0xA8
   174F EF            [12] 5481 	mov	a,r7
   1750 94 61         [12] 5482 	subb	a,#0x61
   1752 50 03         [24] 5483 	jnc	00173$
   1754 02 16 97      [24] 5484 	ljmp	00123$
   1757                    5485 00173$:
   1757                    5486 00113$:
                           5487 ;	main.c:164: rf_irq_clear_all(); //clear interrupts again
   1757 12 02 43      [24] 5488 	lcall	_rf_irq_clear_all
                           5489 ;	main.c:166: rf_set_as_tx(); //resume normal operation as a TX
   175A 12 02 68      [24] 5490 	lcall	_rf_set_as_tx
                           5491 ;	main.c:169: if (servernf[0]==chclient){	
   175D 90 00 9D      [24] 5492 	mov	dptr,#_servernf
   1760 E0            [24] 5493 	movx	a,@dptr
   1761 FF            [12] 5494 	mov	r7,a
   1762 BF 01 28      [24] 5495 	cjne	r7,#0x01,00119$
                           5496 ;	main.c:172: if (servernf[1]==10) {
   1765 90 00 9E      [24] 5497 	mov	dptr,#(_servernf + 0x0001)
   1768 E0            [24] 5498 	movx	a,@dptr
   1769 FF            [12] 5499 	mov	r7,a
   176A BF 0A 09      [24] 5500 	cjne	r7,#0x0A,00115$
                           5501 ;	main.c:174: dimmon(servernf[3]);
   176D 90 00 A0      [24] 5502 	mov	dptr,#(_servernf + 0x0003)
   1770 E0            [24] 5503 	movx	a,@dptr
   1771 F5 82         [12] 5504 	mov	dpl,a
   1773 12 15 AD      [24] 5505 	lcall	_dimmon
   1776                    5506 00115$:
                           5507 ;	main.c:177: if (servernf[1]==11) clientnf.countPWM=servernf[3];
   1776 90 00 9E      [24] 5508 	mov	dptr,#(_servernf + 0x0001)
   1779 E0            [24] 5509 	movx	a,@dptr
   177A FF            [12] 5510 	mov	r7,a
   177B BF 0B 0F      [24] 5511 	cjne	r7,#0x0B,00119$
   177E 90 00 A0      [24] 5512 	mov	dptr,#(_servernf + 0x0003)
   1781 E0            [24] 5513 	movx	a,@dptr
   1782 FF            [12] 5514 	mov	r7,a
   1783 7E 00         [12] 5515 	mov	r6,#0x00
   1785 90 00 8A      [24] 5516 	mov	dptr,#(_clientnf + 0x0001)
   1788 EF            [12] 5517 	mov	a,r7
   1789 F0            [24] 5518 	movx	@dptr,a
   178A EE            [12] 5519 	mov	a,r6
   178B A3            [24] 5520 	inc	dptr
   178C F0            [24] 5521 	movx	@dptr,a
   178D                    5522 00119$:
                           5523 ;	main.c:181: delay_ms(timesend);
   178D 90 01 2C      [24] 5524 	mov	dptr,#0x012C
   1790 12 09 3C      [24] 5525 	lcall	_delay_ms
   1793 02 16 45      [24] 5526 	ljmp	00121$
                           5527 	.area CSEG    (CODE)
                           5528 	.area CONST   (CODE)
                           5529 	.area XINIT   (CODE)
                           5530 	.area CABS    (ABS,CODE)
