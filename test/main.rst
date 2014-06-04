                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Thu Jan 30 10:58:01 2014
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _watchdog_start_and_set_timeout_in_ms
                             14 	.globl _watchdog_set_wdsv_count
                             15 	.globl _gpio_pin_val_write
                             16 	.globl _gpio_pin_val_set
                             17 	.globl _gpio_pin_val_clear
                             18 	.globl _gpio_pin_val_read
                             19 	.globl _uart_configure_manual_baud_calc
                             20 	.globl _printf
                             21 	.globl _FSR_SB_ENDBG
                             22 	.globl _FSR_SB_STP
                             23 	.globl _FSR_SB_WEN
                             24 	.globl _FSR_SB_RDYN
                             25 	.globl _FSR_SB_INFEN
                             26 	.globl _FSR_SB_RDISMB
                             27 	.globl _RFCON_SB_RFCKEN
                             28 	.globl _RFCON_SB_RFCSN
                             29 	.globl _RFCON_SB_RFCE
                             30 	.globl _ADCON_SB_BD
                             31 	.globl _PSW_SB_P
                             32 	.globl _PSW_SB_F1
                             33 	.globl _PSW_SB_OV
                             34 	.globl _PSW_SB_RS0
                             35 	.globl _PSW_SB_RS1
                             36 	.globl _PSW_SB_F0
                             37 	.globl _PSW_SB_AC
                             38 	.globl _PSW_SB_CY
                             39 	.globl _T2CON_SB_T2PS
                             40 	.globl _T2CON_SB_I3FR
                             41 	.globl _T2CON_SB_I2FR
                             42 	.globl _T2CON_SB_T2R1
                             43 	.globl _T2CON_SB_T2R0
                             44 	.globl _T2CON_SB_T2CM
                             45 	.globl _T2CON_SB_T2I1
                             46 	.globl _T2CON_SB_T2I0
                             47 	.globl _IRCON_SB_EXF2
                             48 	.globl _IRCON_SB_TF2
                             49 	.globl _IRCON_SB_TICK
                             50 	.globl _IRCON_SB_MISCIRQ
                             51 	.globl _IRCON_SB_WUOPIRQ
                             52 	.globl _IRCON_SB_SPI_2WIRE
                             53 	.globl _IRCON_SB_RFIRQ
                             54 	.globl _IRCON_SB_RFRDY
                             55 	.globl _IEN1_SB_T2EXTRLD
                             56 	.globl _IEN1_SB_TICK
                             57 	.globl _IEN1_SB_MISCIRQ
                             58 	.globl _IEN1_SB_WUOPIRQ
                             59 	.globl _IEN1_SB_SPI_2WIRE
                             60 	.globl _IEN1_SB_RFIRQ
                             61 	.globl _IEN1_SB_RFRDY
                             62 	.globl _P3_SB_D7
                             63 	.globl _P3_SB_D6
                             64 	.globl _P3_SB_D5
                             65 	.globl _P3_SB_D4
                             66 	.globl _P3_SB_D3
                             67 	.globl _P3_SB_D2
                             68 	.globl _P3_SB_D1
                             69 	.globl _P3_SB_D0
                             70 	.globl _IEN0_SB_GLOBAL
                             71 	.globl _IEN0_SB_T2
                             72 	.globl _IEN0_SB_UART
                             73 	.globl _IEN0_SB_T1
                             74 	.globl _IEN0_SB_POFIRQ
                             75 	.globl _IEN0_SB_T0
                             76 	.globl _IEN0_SB_IFP
                             77 	.globl _P2_SB_D7
                             78 	.globl _P2_SB_D6
                             79 	.globl _P2_SB_D5
                             80 	.globl _P2_SB_D4
                             81 	.globl _P2_SB_D3
                             82 	.globl _P2_SB_D2
                             83 	.globl _P2_SB_D1
                             84 	.globl _P2_SB_D0
                             85 	.globl _S0CON_SB_SM0
                             86 	.globl _S0CON_SB_SM1
                             87 	.globl _S0CON_SB_SM20
                             88 	.globl _S0CON_SB_REN0
                             89 	.globl _S0CON_SB_TB80
                             90 	.globl _S0CON_SB_RB80
                             91 	.globl _S0CON_SB_TI0
                             92 	.globl _S0CON_SB_RI0
                             93 	.globl _P1_SB_D7
                             94 	.globl _P1_SB_D6
                             95 	.globl _P1_SB_D5
                             96 	.globl _P1_SB_D4
                             97 	.globl _P1_SB_D3
                             98 	.globl _P1_SB_D2
                             99 	.globl _P1_SB_D1
                            100 	.globl _P1_SB_D0
                            101 	.globl _TCON_SB_TF1
                            102 	.globl _TCON_SB_TR1
                            103 	.globl _TCON_SB_TF0
                            104 	.globl _TCON_SB_TR0
                            105 	.globl _TCON_SB_IE1
                            106 	.globl _TCON_SB_IT1
                            107 	.globl _TCON_SB_IE0
                            108 	.globl _TCON_SB_IT0
                            109 	.globl _P0_SB_D7
                            110 	.globl _P0_SB_D6
                            111 	.globl _P0_SB_D5
                            112 	.globl _P0_SB_D4
                            113 	.globl _P0_SB_D3
                            114 	.globl _P0_SB_D2
                            115 	.globl _P0_SB_D1
                            116 	.globl _P0_SB_D0
                            117 	.globl _ADCDAT
                            118 	.globl _S0REL
                            119 	.globl _T2
                            120 	.globl _T1
                            121 	.globl _T0
                            122 	.globl _CRC
                            123 	.globl _CC3
                            124 	.globl _CC2
                            125 	.globl _CC1
                            126 	.globl _SPIMDAT
                            127 	.globl _SPIMSTAT
                            128 	.globl _SPIMCON1
                            129 	.globl _SPIMCON0
                            130 	.globl _FCR
                            131 	.globl _FPCR
                            132 	.globl _FSR
                            133 	.globl _B
                            134 	.globl _ARCON
                            135 	.globl _MD5
                            136 	.globl _MD4
                            137 	.globl _MD3
                            138 	.globl _MD2
                            139 	.globl _MD1
                            140 	.globl _MD0
                            141 	.globl _RFCON
                            142 	.globl _SPIRDAT
                            143 	.globl _SPIRSTAT
                            144 	.globl _SPIRCON1
                            145 	.globl _SPIRCON0
                            146 	.globl _W2CON0
                            147 	.globl _W2CON1
                            148 	.globl _ACC
                            149 	.globl _CCPDATO
                            150 	.globl _CCPDATIB
                            151 	.globl _CCPDATIA
                            152 	.globl _POFCON
                            153 	.globl _COMPCON
                            154 	.globl _W2DAT
                            155 	.globl _W2SADR
                            156 	.globl _ADCON
                            157 	.globl _RNGDAT
                            158 	.globl _RNGCTL
                            159 	.globl _ADCDATL
                            160 	.globl _ADCDATH
                            161 	.globl _ADCCON1
                            162 	.globl _ADCCON2
                            163 	.globl _ADCCON3
                            164 	.globl _PSW
                            165 	.globl _WUOPC0
                            166 	.globl _WUOPC1
                            167 	.globl _TH2
                            168 	.globl _TL2
                            169 	.globl _CRCH
                            170 	.globl _CRCL
                            171 	.globl __XPAGE
                            172 	.globl _MPAGE
                            173 	.globl _T2CON
                            174 	.globl _CCH3
                            175 	.globl _CCL3
                            176 	.globl _CCH2
                            177 	.globl _CCL2
                            178 	.globl _CCH1
                            179 	.globl _CCL1
                            180 	.globl _CCEN
                            181 	.globl _IRCON
                            182 	.globl _SPISDAT
                            183 	.globl _SPISSTAT
                            184 	.globl _SPISCON1
                            185 	.globl _SPISCON0
                            186 	.globl _S0RELH
                            187 	.globl _IP1
                            188 	.globl _IEN1
                            189 	.globl _SPISRDSZ
                            190 	.globl _RTC2CPT00
                            191 	.globl _RTC2CMP1
                            192 	.globl _RTC2CMP0
                            193 	.globl _RTC2CON
                            194 	.globl _PWMCON
                            195 	.globl _RSTREAS
                            196 	.globl _P3
                            197 	.globl _WDSV
                            198 	.globl _OPMCON
                            199 	.globl _CLKLFCTRL
                            200 	.globl _RTC2CPT10
                            201 	.globl _RTC2CPT01
                            202 	.globl _S0RELL
                            203 	.globl _IP0
                            204 	.globl _IEN0
                            205 	.globl _MEMCON
                            206 	.globl _INTEXP
                            207 	.globl _WUCON
                            208 	.globl _PWRDWN
                            209 	.globl _CLKCTRL
                            210 	.globl _PWMDC1
                            211 	.globl _PWMDC0
                            212 	.globl _P2
                            213 	.globl _P1CON
                            214 	.globl _P0CON
                            215 	.globl _S0BUF
                            216 	.globl _S0CON
                            217 	.globl _P2CON
                            218 	.globl _P3DIR
                            219 	.globl _P2DIR
                            220 	.globl _P1DIR
                            221 	.globl _P0DIR
                            222 	.globl _DPS
                            223 	.globl _P1
                            224 	.globl _P3CON
                            225 	.globl _TH1
                            226 	.globl _TH0
                            227 	.globl _TL1
                            228 	.globl _TL0
                            229 	.globl _TMOD
                            230 	.globl _TCON
                            231 	.globl _PCON
                            232 	.globl _DPH1
                            233 	.globl _DPL1
                            234 	.globl _DPH
                            235 	.globl _DPL
                            236 	.globl _SP
                            237 	.globl _P0
                            238 	.globl _timer1_configure_PARM_2
                            239 	.globl _timer0_configure_PARM_2
                            240 	.globl _interrupt_configure_ifp_PARM_2
                            241 	.globl _pwm_start_PARM_2
                            242 	.globl _gpio_pin_val_write_PARM_2
                            243 	.globl _gpio_pin_configure_PARM_2
                            244 	.globl _rf_set_rx_addr_PARM_3
                            245 	.globl _rf_set_rx_addr_PARM_2
                            246 	.globl _rf_read_register_PARM_3
                            247 	.globl _rf_read_register_PARM_2
                            248 	.globl _rf_power_up_param_PARM_2
                            249 	.globl _rf_spi_send_read_PARM_3
                            250 	.globl _rf_spi_send_read_PARM_2
                            251 	.globl _rf_spi_execute_command_PARM_4
                            252 	.globl _rf_spi_execute_command_PARM_3
                            253 	.globl _rf_spi_execute_command_PARM_2
                            254 	.globl _rf_write_tx_payload_PARM_3
                            255 	.globl _rf_write_tx_payload_PARM_2
                            256 	.globl _rf_write_register_PARM_3
                            257 	.globl _rf_write_register_PARM_2
                            258 	.globl _rf_configure_debug_lite_PARM_2
                            259 	.globl _rf_read_rx_payload_PARM_2
                            260 	.globl _rf_read_rx_payload
                            261 	.globl _rf_configure_debug_lite
                            262 	.globl _rf_write_register
                            263 	.globl _rf_spi_configure_enable
                            264 	.globl _rf_write_tx_payload
                            265 	.globl _rf_transmit
                            266 	.globl _rf_set_as_rx
                            267 	.globl _rf_irq_clear_all
                            268 	.globl _rf_set_as_tx
                            269 	.globl _rf_spi_execute_command
                            270 	.globl _rf_spi_send_read
                            271 	.globl _rf_power_up_param
                            272 	.globl _rf_read_register
                            273 	.globl _rf_spi_send_read_byte
                            274 	.globl _rf_set_rx_addr
                            275 	.globl _gpio_pin_configure
                            276 	.globl _delay_us
                            277 	.globl _delay_s
                            278 	.globl _delay_ms
                            279 	.globl _pwm_configure
                            280 	.globl _pwm_start
                            281 	.globl _pwr_clk_mgmt_clklf_configure
                            282 	.globl _pwr_clk_mgmt_get_cclk_freq_in_hz
                            283 	.globl _interrupt_configure_ifp
                            284 	.globl _adc_configure
                            285 	.globl _adc_set_input_channel
                            286 	.globl _adc_start_single_conversion
                            287 	.globl _adc_start_single_conversion_get_value
                            288 	.globl _timer0_configure
                            289 	.globl _timer1_configure
                            290 	.globl _initialize
                            291 	.globl _putchar
                            292 	.globl _getchar
                            293 ;--------------------------------------------------------
                            294 ; special function registers
                            295 ;--------------------------------------------------------
                            296 	.area RSEG    (ABS,DATA)
   0000                     297 	.org 0x0000
                     0080   298 _P0	=	0x0080
                     0081   299 _SP	=	0x0081
                     0082   300 _DPL	=	0x0082
                     0083   301 _DPH	=	0x0083
                     0084   302 _DPL1	=	0x0084
                     0085   303 _DPH1	=	0x0085
                     0087   304 _PCON	=	0x0087
                     0088   305 _TCON	=	0x0088
                     0089   306 _TMOD	=	0x0089
                     008A   307 _TL0	=	0x008a
                     008B   308 _TL1	=	0x008b
                     008C   309 _TH0	=	0x008c
                     008D   310 _TH1	=	0x008d
                     008F   311 _P3CON	=	0x008f
                     0090   312 _P1	=	0x0090
                     0092   313 _DPS	=	0x0092
                     0093   314 _P0DIR	=	0x0093
                     0094   315 _P1DIR	=	0x0094
                     0095   316 _P2DIR	=	0x0095
                     0096   317 _P3DIR	=	0x0096
                     0097   318 _P2CON	=	0x0097
                     0098   319 _S0CON	=	0x0098
                     0099   320 _S0BUF	=	0x0099
                     009E   321 _P0CON	=	0x009e
                     009F   322 _P1CON	=	0x009f
                     00A0   323 _P2	=	0x00a0
                     00A1   324 _PWMDC0	=	0x00a1
                     00A2   325 _PWMDC1	=	0x00a2
                     00A3   326 _CLKCTRL	=	0x00a3
                     00A4   327 _PWRDWN	=	0x00a4
                     00A5   328 _WUCON	=	0x00a5
                     00A6   329 _INTEXP	=	0x00a6
                     00A7   330 _MEMCON	=	0x00a7
                     00A8   331 _IEN0	=	0x00a8
                     00A9   332 _IP0	=	0x00a9
                     00AA   333 _S0RELL	=	0x00aa
                     00AB   334 _RTC2CPT01	=	0x00ab
                     00AC   335 _RTC2CPT10	=	0x00ac
                     00AD   336 _CLKLFCTRL	=	0x00ad
                     00AE   337 _OPMCON	=	0x00ae
                     00AF   338 _WDSV	=	0x00af
                     00B0   339 _P3	=	0x00b0
                     00B1   340 _RSTREAS	=	0x00b1
                     00B2   341 _PWMCON	=	0x00b2
                     00B3   342 _RTC2CON	=	0x00b3
                     00B4   343 _RTC2CMP0	=	0x00b4
                     00B5   344 _RTC2CMP1	=	0x00b5
                     00B6   345 _RTC2CPT00	=	0x00b6
                     00B7   346 _SPISRDSZ	=	0x00b7
                     00B8   347 _IEN1	=	0x00b8
                     00B9   348 _IP1	=	0x00b9
                     00BA   349 _S0RELH	=	0x00ba
                     00BC   350 _SPISCON0	=	0x00bc
                     00BD   351 _SPISCON1	=	0x00bd
                     00BE   352 _SPISSTAT	=	0x00be
                     00BF   353 _SPISDAT	=	0x00bf
                     00C0   354 _IRCON	=	0x00c0
                     00C1   355 _CCEN	=	0x00c1
                     00C2   356 _CCL1	=	0x00c2
                     00C3   357 _CCH1	=	0x00c3
                     00C4   358 _CCL2	=	0x00c4
                     00C5   359 _CCH2	=	0x00c5
                     00C6   360 _CCL3	=	0x00c6
                     00C7   361 _CCH3	=	0x00c7
                     00C8   362 _T2CON	=	0x00c8
                     00C9   363 _MPAGE	=	0x00c9
                     00C9   364 __XPAGE	=	0x00c9
                     00CA   365 _CRCL	=	0x00ca
                     00CB   366 _CRCH	=	0x00cb
                     00CC   367 _TL2	=	0x00cc
                     00CD   368 _TH2	=	0x00cd
                     00CE   369 _WUOPC1	=	0x00ce
                     00CF   370 _WUOPC0	=	0x00cf
                     00D0   371 _PSW	=	0x00d0
                     00D1   372 _ADCCON3	=	0x00d1
                     00D2   373 _ADCCON2	=	0x00d2
                     00D3   374 _ADCCON1	=	0x00d3
                     00D4   375 _ADCDATH	=	0x00d4
                     00D5   376 _ADCDATL	=	0x00d5
                     00D6   377 _RNGCTL	=	0x00d6
                     00D7   378 _RNGDAT	=	0x00d7
                     00D8   379 _ADCON	=	0x00d8
                     00D9   380 _W2SADR	=	0x00d9
                     00DA   381 _W2DAT	=	0x00da
                     00DB   382 _COMPCON	=	0x00db
                     00DC   383 _POFCON	=	0x00dc
                     00DD   384 _CCPDATIA	=	0x00dd
                     00DE   385 _CCPDATIB	=	0x00de
                     00DF   386 _CCPDATO	=	0x00df
                     00E0   387 _ACC	=	0x00e0
                     00E1   388 _W2CON1	=	0x00e1
                     00E2   389 _W2CON0	=	0x00e2
                     00E4   390 _SPIRCON0	=	0x00e4
                     00E5   391 _SPIRCON1	=	0x00e5
                     00E6   392 _SPIRSTAT	=	0x00e6
                     00E7   393 _SPIRDAT	=	0x00e7
                     00E8   394 _RFCON	=	0x00e8
                     00E9   395 _MD0	=	0x00e9
                     00EA   396 _MD1	=	0x00ea
                     00EB   397 _MD2	=	0x00eb
                     00EC   398 _MD3	=	0x00ec
                     00ED   399 _MD4	=	0x00ed
                     00EE   400 _MD5	=	0x00ee
                     00EF   401 _ARCON	=	0x00ef
                     00F0   402 _B	=	0x00f0
                     00F8   403 _FSR	=	0x00f8
                     00F9   404 _FPCR	=	0x00f9
                     00FA   405 _FCR	=	0x00fa
                     00FC   406 _SPIMCON0	=	0x00fc
                     00FD   407 _SPIMCON1	=	0x00fd
                     00FE   408 _SPIMSTAT	=	0x00fe
                     00FF   409 _SPIMDAT	=	0x00ff
                     C3C2   410 _CC1	=	0xc3c2
                     C5C4   411 _CC2	=	0xc5c4
                     C7C6   412 _CC3	=	0xc7c6
                     CBCA   413 _CRC	=	0xcbca
                     8C8A   414 _T0	=	0x8c8a
                     8D8B   415 _T1	=	0x8d8b
                     CDCC   416 _T2	=	0xcdcc
                     BAAA   417 _S0REL	=	0xbaaa
                     D4D5   418 _ADCDAT	=	0xd4d5
                            419 ;--------------------------------------------------------
                            420 ; special function bits
                            421 ;--------------------------------------------------------
                            422 	.area RSEG    (ABS,DATA)
   0000                     423 	.org 0x0000
                     0080   424 _P0_SB_D0	=	0x0080
                     0081   425 _P0_SB_D1	=	0x0081
                     0082   426 _P0_SB_D2	=	0x0082
                     0083   427 _P0_SB_D3	=	0x0083
                     0084   428 _P0_SB_D4	=	0x0084
                     0085   429 _P0_SB_D5	=	0x0085
                     0086   430 _P0_SB_D6	=	0x0086
                     0087   431 _P0_SB_D7	=	0x0087
                     0088   432 _TCON_SB_IT0	=	0x0088
                     0089   433 _TCON_SB_IE0	=	0x0089
                     008A   434 _TCON_SB_IT1	=	0x008a
                     008B   435 _TCON_SB_IE1	=	0x008b
                     008C   436 _TCON_SB_TR0	=	0x008c
                     008D   437 _TCON_SB_TF0	=	0x008d
                     008E   438 _TCON_SB_TR1	=	0x008e
                     008F   439 _TCON_SB_TF1	=	0x008f
                     0090   440 _P1_SB_D0	=	0x0090
                     0091   441 _P1_SB_D1	=	0x0091
                     0092   442 _P1_SB_D2	=	0x0092
                     0093   443 _P1_SB_D3	=	0x0093
                     0094   444 _P1_SB_D4	=	0x0094
                     0095   445 _P1_SB_D5	=	0x0095
                     0096   446 _P1_SB_D6	=	0x0096
                     0097   447 _P1_SB_D7	=	0x0097
                     0098   448 _S0CON_SB_RI0	=	0x0098
                     0099   449 _S0CON_SB_TI0	=	0x0099
                     009A   450 _S0CON_SB_RB80	=	0x009a
                     009B   451 _S0CON_SB_TB80	=	0x009b
                     009C   452 _S0CON_SB_REN0	=	0x009c
                     009D   453 _S0CON_SB_SM20	=	0x009d
                     009E   454 _S0CON_SB_SM1	=	0x009e
                     009F   455 _S0CON_SB_SM0	=	0x009f
                     00A0   456 _P2_SB_D0	=	0x00a0
                     00A1   457 _P2_SB_D1	=	0x00a1
                     00A2   458 _P2_SB_D2	=	0x00a2
                     00A3   459 _P2_SB_D3	=	0x00a3
                     00A4   460 _P2_SB_D4	=	0x00a4
                     00A5   461 _P2_SB_D5	=	0x00a5
                     00A6   462 _P2_SB_D6	=	0x00a6
                     00A7   463 _P2_SB_D7	=	0x00a7
                     00A8   464 _IEN0_SB_IFP	=	0x00a8
                     00A9   465 _IEN0_SB_T0	=	0x00a9
                     00AA   466 _IEN0_SB_POFIRQ	=	0x00aa
                     00AB   467 _IEN0_SB_T1	=	0x00ab
                     00AC   468 _IEN0_SB_UART	=	0x00ac
                     00AD   469 _IEN0_SB_T2	=	0x00ad
                     00AF   470 _IEN0_SB_GLOBAL	=	0x00af
                     00B0   471 _P3_SB_D0	=	0x00b0
                     00B1   472 _P3_SB_D1	=	0x00b1
                     00B2   473 _P3_SB_D2	=	0x00b2
                     00B3   474 _P3_SB_D3	=	0x00b3
                     00B4   475 _P3_SB_D4	=	0x00b4
                     00B5   476 _P3_SB_D5	=	0x00b5
                     00B6   477 _P3_SB_D6	=	0x00b6
                     00B7   478 _P3_SB_D7	=	0x00b7
                     00B8   479 _IEN1_SB_RFRDY	=	0x00b8
                     00B9   480 _IEN1_SB_RFIRQ	=	0x00b9
                     00BA   481 _IEN1_SB_SPI_2WIRE	=	0x00ba
                     00BB   482 _IEN1_SB_WUOPIRQ	=	0x00bb
                     00BC   483 _IEN1_SB_MISCIRQ	=	0x00bc
                     00BD   484 _IEN1_SB_TICK	=	0x00bd
                     00BF   485 _IEN1_SB_T2EXTRLD	=	0x00bf
                     00C0   486 _IRCON_SB_RFRDY	=	0x00c0
                     00C1   487 _IRCON_SB_RFIRQ	=	0x00c1
                     00C2   488 _IRCON_SB_SPI_2WIRE	=	0x00c2
                     00C3   489 _IRCON_SB_WUOPIRQ	=	0x00c3
                     00C4   490 _IRCON_SB_MISCIRQ	=	0x00c4
                     00C5   491 _IRCON_SB_TICK	=	0x00c5
                     00C6   492 _IRCON_SB_TF2	=	0x00c6
                     00C7   493 _IRCON_SB_EXF2	=	0x00c7
                     00C8   494 _T2CON_SB_T2I0	=	0x00c8
                     00C9   495 _T2CON_SB_T2I1	=	0x00c9
                     00CA   496 _T2CON_SB_T2CM	=	0x00ca
                     00CB   497 _T2CON_SB_T2R0	=	0x00cb
                     00CC   498 _T2CON_SB_T2R1	=	0x00cc
                     00CD   499 _T2CON_SB_I2FR	=	0x00cd
                     00CE   500 _T2CON_SB_I3FR	=	0x00ce
                     00CF   501 _T2CON_SB_T2PS	=	0x00cf
                     00D7   502 _PSW_SB_CY	=	0x00d7
                     00D6   503 _PSW_SB_AC	=	0x00d6
                     00D5   504 _PSW_SB_F0	=	0x00d5
                     00D4   505 _PSW_SB_RS1	=	0x00d4
                     00D3   506 _PSW_SB_RS0	=	0x00d3
                     00D2   507 _PSW_SB_OV	=	0x00d2
                     00D1   508 _PSW_SB_F1	=	0x00d1
                     00D0   509 _PSW_SB_P	=	0x00d0
                     00DF   510 _ADCON_SB_BD	=	0x00df
                     00E8   511 _RFCON_SB_RFCE	=	0x00e8
                     00E9   512 _RFCON_SB_RFCSN	=	0x00e9
                     00EA   513 _RFCON_SB_RFCKEN	=	0x00ea
                     00FA   514 _FSR_SB_RDISMB	=	0x00fa
                     00FB   515 _FSR_SB_INFEN	=	0x00fb
                     00FC   516 _FSR_SB_RDYN	=	0x00fc
                     00FD   517 _FSR_SB_WEN	=	0x00fd
                     00FE   518 _FSR_SB_STP	=	0x00fe
                     00FF   519 _FSR_SB_ENDBG	=	0x00ff
                            520 ;--------------------------------------------------------
                            521 ; overlayable register banks
                            522 ;--------------------------------------------------------
                            523 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     524 	.ds 8
                            525 ;--------------------------------------------------------
                            526 ; internal ram data
                            527 ;--------------------------------------------------------
                            528 	.area DSEG    (DATA)
   0008                     529 _rf_spi_send_read_sloc0_1_0:
   0008                     530 	.ds 3
   000B                     531 _rf_spi_send_read_sloc1_1_0:
   000B                     532 	.ds 1
                            533 ;--------------------------------------------------------
                            534 ; overlayable items in internal ram 
                            535 ;--------------------------------------------------------
                            536 ;--------------------------------------------------------
                            537 ; Stack segment in internal ram 
                            538 ;--------------------------------------------------------
                            539 	.area	SSEG	(DATA)
   0022                     540 __start__stack:
   0022                     541 	.ds	1
                            542 
                            543 ;--------------------------------------------------------
                            544 ; indirectly addressable internal ram data
                            545 ;--------------------------------------------------------
                            546 	.area ISEG    (DATA)
                            547 ;--------------------------------------------------------
                            548 ; absolute internal ram data
                            549 ;--------------------------------------------------------
                            550 	.area IABS    (ABS,DATA)
                            551 	.area IABS    (ABS,DATA)
                            552 ;--------------------------------------------------------
                            553 ; bit data
                            554 ;--------------------------------------------------------
                            555 	.area BSEG    (BIT)
                            556 ;--------------------------------------------------------
                            557 ; paged external ram data
                            558 ;--------------------------------------------------------
                            559 	.area PSEG    (PAG,XDATA)
                            560 ;--------------------------------------------------------
                            561 ; external ram data
                            562 ;--------------------------------------------------------
                            563 	.area XSEG    (XDATA)
   0000                     564 _rf_read_rx_payload_PARM_2:
   0000                     565 	.ds 2
   0002                     566 _rf_read_rx_payload_dataptr_1_44:
   0002                     567 	.ds 3
   0005                     568 _rf_configure_debug_lite_PARM_2:
   0005                     569 	.ds 1
   0006                     570 _rf_configure_debug_lite_rx_1_46:
   0006                     571 	.ds 1
   0007                     572 _rf_configure_debug_lite_config_1_47:
   0007                     573 	.ds 1
   0008                     574 _rf_write_register_PARM_2:
   0008                     575 	.ds 3
   000B                     576 _rf_write_register_PARM_3:
   000B                     577 	.ds 2
   000D                     578 _rf_write_register_regnumber_1_49:
   000D                     579 	.ds 1
   000E                     580 _rf_write_tx_payload_PARM_2:
   000E                     581 	.ds 2
   0010                     582 _rf_write_tx_payload_PARM_3:
   0010                     583 	.ds 1
   0011                     584 _rf_write_tx_payload_dataptr_1_52:
   0011                     585 	.ds 3
   0014                     586 _rf_set_as_rx_rx_active_mode_1_56:
   0014                     587 	.ds 1
   0015                     588 _rf_set_as_rx_config_1_57:
   0015                     589 	.ds 1
   0016                     590 _rf_irq_clear_all_dataptr_1_61:
   0016                     591 	.ds 1
   0017                     592 _rf_set_as_tx_config_1_62:
   0017                     593 	.ds 1
   0018                     594 _rf_spi_execute_command_PARM_2:
   0018                     595 	.ds 3
   001B                     596 _rf_spi_execute_command_PARM_3:
   001B                     597 	.ds 2
   001D                     598 _rf_spi_execute_command_PARM_4:
   001D                     599 	.ds 1
   001E                     600 _rf_spi_execute_command_instruction_1_64:
   001E                     601 	.ds 1
   001F                     602 _rf_spi_execute_command_status_1_65:
   001F                     603 	.ds 1
   0020                     604 _rf_spi_send_read_PARM_2:
   0020                     605 	.ds 2
   0022                     606 _rf_spi_send_read_PARM_3:
   0022                     607 	.ds 1
   0023                     608 _rf_spi_send_read_dataptr_1_66:
   0023                     609 	.ds 3
   0026                     610 _rf_power_up_param_PARM_2:
   0026                     611 	.ds 1
   0027                     612 _rf_power_up_param_rx_active_mode_1_70:
   0027                     613 	.ds 1
   0028                     614 _rf_read_register_PARM_2:
   0028                     615 	.ds 3
   002B                     616 _rf_read_register_PARM_3:
   002B                     617 	.ds 2
   002D                     618 _rf_read_register_regnumber_1_76:
   002D                     619 	.ds 1
   002E                     620 _rf_spi_send_read_byte_byte_1_78:
   002E                     621 	.ds 1
   002F                     622 _rf_set_rx_addr_PARM_2:
   002F                     623 	.ds 2
   0031                     624 _rf_set_rx_addr_PARM_3:
   0031                     625 	.ds 1
   0032                     626 _rf_set_rx_addr_address_1_80:
   0032                     627 	.ds 3
   0035                     628 _gpio_pin_configure_PARM_2:
   0035                     629 	.ds 1
   0036                     630 _gpio_pin_configure_gpio_pin_id_1_83:
   0036                     631 	.ds 1
   0037                     632 _gpio_pin_val_read_gpio_pin_id_1_105:
   0037                     633 	.ds 1
   0038                     634 _gpio_pin_val_read_value_1_106:
   0038                     635 	.ds 1
   0039                     636 _gpio_pin_val_clear_gpio_pin_id_1_113:
   0039                     637 	.ds 1
   003A                     638 _gpio_pin_val_set_gpio_pin_id_1_119:
   003A                     639 	.ds 1
   003B                     640 _gpio_pin_val_write_PARM_2:
   003B                     641 	.ds 1
   003C                     642 _gpio_pin_val_write_gpio_pin_id_1_125:
   003C                     643 	.ds 1
   003D                     644 _delay_us_microseconds_1_129:
   003D                     645 	.ds 2
   003F                     646 _delay_s_seconds_1_132:
   003F                     647 	.ds 2
   0041                     648 _delay_ms_milliseconds_1_135:
   0041                     649 	.ds 2
   0043                     650 _pwm_configure_pwm_config_options_1_140:
   0043                     651 	.ds 1
   0044                     652 _pwm_start_PARM_2:
   0044                     653 	.ds 1
   0045                     654 _pwm_start_pwm_channel_1_142:
   0045                     655 	.ds 1
   0046                     656 _pwr_clk_mgmt_clklf_configure_clklf_config_options_1_151:
   0046                     657 	.ds 1
   0047                     658 _pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_153:
   0047                     659 	.ds 4
   004B                     660 _watchdog_set_wdsv_count_wdsv_value_1_156:
   004B                     661 	.ds 2
   004D                     662 _watchdog_start_and_set_timeout_in_ms_milliseconds_1_158:
   004D                     663 	.ds 4
   0051                     664 _watchdog_start_and_set_timeout_in_ms_wd_value_1_159:
   0051                     665 	.ds 2
   0053                     666 _interrupt_configure_ifp_PARM_2:
   0053                     667 	.ds 1
   0054                     668 _interrupt_configure_ifp_interrupt_ifp_input_1_162:
   0054                     669 	.ds 1
   0055                     670 _adc_configure_adc_config_options_1_176:
   0055                     671 	.ds 2
   0057                     672 _adc_set_input_channel_adc_channel_1_178:
   0057                     673 	.ds 1
   0058                     674 _adc_start_single_conversion_adc_channel_1_180:
   0058                     675 	.ds 1
   0059                     676 _adc_start_single_conversion_get_value_adc_channel_1_182:
   0059                     677 	.ds 1
   005A                     678 _timer0_configure_PARM_2:
   005A                     679 	.ds 2
   005C                     680 _timer0_configure_timer0_config_options_1_185:
   005C                     681 	.ds 1
   005D                     682 _timer1_configure_PARM_2:
   005D                     683 	.ds 2
   005F                     684 _timer1_configure_timer1_config_options_1_190:
   005F                     685 	.ds 1
   0060                     686 _main_datavar_1_195:
   0060                     687 	.ds 1
   0061                     688 _putchar_c_1_200:
   0061                     689 	.ds 1
   0062                     690 _getchar_retchar_1_202:
   0062                     691 	.ds 1
                            692 ;--------------------------------------------------------
                            693 ; absolute external ram data
                            694 ;--------------------------------------------------------
                            695 	.area XABS    (ABS,XDATA)
                            696 ;--------------------------------------------------------
                            697 ; external initialized ram data
                            698 ;--------------------------------------------------------
                            699 	.area XISEG   (XDATA)
                            700 	.area HOME    (CODE)
                            701 	.area GSINIT0 (CODE)
                            702 	.area GSINIT1 (CODE)
                            703 	.area GSINIT2 (CODE)
                            704 	.area GSINIT3 (CODE)
                            705 	.area GSINIT4 (CODE)
                            706 	.area GSINIT5 (CODE)
                            707 	.area GSINIT  (CODE)
                            708 	.area GSFINAL (CODE)
                            709 	.area CSEG    (CODE)
                            710 ;--------------------------------------------------------
                            711 ; interrupt vector 
                            712 ;--------------------------------------------------------
                            713 	.area HOME    (CODE)
   0000                     714 __interrupt_vect:
   0000 02 00 06      [24]  715 	ljmp	__sdcc_gsinit_startup
                            716 ;--------------------------------------------------------
                            717 ; global & static initialisations
                            718 ;--------------------------------------------------------
                            719 	.area HOME    (CODE)
                            720 	.area GSINIT  (CODE)
                            721 	.area GSFINAL (CODE)
                            722 	.area GSINIT  (CODE)
                            723 	.globl __sdcc_gsinit_startup
                            724 	.globl __sdcc_program_startup
                            725 	.globl __start__stack
                            726 	.globl __mcs51_genXINIT
                            727 	.globl __mcs51_genXRAMCLEAR
                            728 	.globl __mcs51_genRAMCLEAR
                            729 	.area GSFINAL (CODE)
   005F 02 00 03      [24]  730 	ljmp	__sdcc_program_startup
                            731 ;--------------------------------------------------------
                            732 ; Home
                            733 ;--------------------------------------------------------
                            734 	.area HOME    (CODE)
                            735 	.area HOME    (CODE)
   0003                     736 __sdcc_program_startup:
   0003 02 0B 5B      [24]  737 	ljmp	_main
                            738 ;	return from main will return to caller
                            739 ;--------------------------------------------------------
                            740 ; code
                            741 ;--------------------------------------------------------
                            742 	.area CSEG    (CODE)
                            743 ;------------------------------------------------------------
                            744 ;Allocation info for local variables in function 'rf_read_rx_payload'
                            745 ;------------------------------------------------------------
                            746 ;len                       Allocated with name '_rf_read_rx_payload_PARM_2'
                            747 ;dataptr                   Allocated with name '_rf_read_rx_payload_dataptr_1_44'
                            748 ;status                    Allocated with name '_rf_read_rx_payload_status_1_45'
                            749 ;------------------------------------------------------------
                            750 ;	../src/rf/src/rf_read_rx_payload.c:48: unsigned char rf_read_rx_payload(unsigned char * dataptr, unsigned int len)
                            751 ;	-----------------------------------------
                            752 ;	 function rf_read_rx_payload
                            753 ;	-----------------------------------------
   0062                     754 _rf_read_rx_payload:
                     0007   755 	ar7 = 0x07
                     0006   756 	ar6 = 0x06
                     0005   757 	ar5 = 0x05
                     0004   758 	ar4 = 0x04
                     0003   759 	ar3 = 0x03
                     0002   760 	ar2 = 0x02
                     0001   761 	ar1 = 0x01
                     0000   762 	ar0 = 0x00
   0062 AF F0         [24]  763 	mov	r7,b
   0064 AE 83         [24]  764 	mov	r6,dph
   0066 E5 82         [12]  765 	mov	a,dpl
   0068 90 00 02      [24]  766 	mov	dptr,#_rf_read_rx_payload_dataptr_1_44
   006B F0            [24]  767 	movx	@dptr,a
   006C EE            [12]  768 	mov	a,r6
   006D A3            [24]  769 	inc	dptr
   006E F0            [24]  770 	movx	@dptr,a
   006F EF            [12]  771 	mov	a,r7
   0070 A3            [24]  772 	inc	dptr
   0071 F0            [24]  773 	movx	@dptr,a
                            774 ;	../src/rf/src/rf_read_rx_payload.c:53: rf_clear_ce();
   0072 C2 E8         [12]  775 	clr _RFCON_SB_RFCE 
                            776 ;	../src/rf/src/rf_read_rx_payload.c:54: status = rf_spi_execute_command(RF_R_RX_PAYLOAD, dataptr, len, true);
   0074 90 00 02      [24]  777 	mov	dptr,#_rf_read_rx_payload_dataptr_1_44
   0077 E0            [24]  778 	movx	a,@dptr
   0078 FD            [12]  779 	mov	r5,a
   0079 A3            [24]  780 	inc	dptr
   007A E0            [24]  781 	movx	a,@dptr
   007B FE            [12]  782 	mov	r6,a
   007C A3            [24]  783 	inc	dptr
   007D E0            [24]  784 	movx	a,@dptr
   007E FF            [12]  785 	mov	r7,a
   007F 90 00 00      [24]  786 	mov	dptr,#_rf_read_rx_payload_PARM_2
   0082 E0            [24]  787 	movx	a,@dptr
   0083 FB            [12]  788 	mov	r3,a
   0084 A3            [24]  789 	inc	dptr
   0085 E0            [24]  790 	movx	a,@dptr
   0086 FC            [12]  791 	mov	r4,a
   0087 90 00 18      [24]  792 	mov	dptr,#_rf_spi_execute_command_PARM_2
   008A ED            [12]  793 	mov	a,r5
   008B F0            [24]  794 	movx	@dptr,a
   008C EE            [12]  795 	mov	a,r6
   008D A3            [24]  796 	inc	dptr
   008E F0            [24]  797 	movx	@dptr,a
   008F EF            [12]  798 	mov	a,r7
   0090 A3            [24]  799 	inc	dptr
   0091 F0            [24]  800 	movx	@dptr,a
   0092 90 00 1B      [24]  801 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0095 EB            [12]  802 	mov	a,r3
   0096 F0            [24]  803 	movx	@dptr,a
   0097 EC            [12]  804 	mov	a,r4
   0098 A3            [24]  805 	inc	dptr
   0099 F0            [24]  806 	movx	@dptr,a
   009A 90 00 1D      [24]  807 	mov	dptr,#_rf_spi_execute_command_PARM_4
   009D 74 01         [12]  808 	mov	a,#0x01
   009F F0            [24]  809 	movx	@dptr,a
   00A0 75 82 61      [24]  810 	mov	dpl,#0x61
   00A3 12 02 97      [24]  811 	lcall	_rf_spi_execute_command
   00A6 AF 82         [24]  812 	mov	r7,dpl
                            813 ;	../src/rf/src/rf_read_rx_payload.c:55: rf_set_ce();
   00A8 D2 E8         [12]  814 	setb _RFCON_SB_RFCE 
   00AA 90 00 04      [24]  815 	mov	dptr,#0x0004
   00AD C0 07         [24]  816 	push	ar7
   00AF 12 07 E9      [24]  817 	lcall	_delay_us
   00B2 D0 07         [24]  818 	pop	ar7
                            819 ;	../src/rf/src/rf_read_rx_payload.c:57: return status; //Return the STATUS register value
   00B4 8F 82         [24]  820 	mov	dpl,r7
   00B6 22            [24]  821 	ret
                            822 ;------------------------------------------------------------
                            823 ;Allocation info for local variables in function 'rf_configure_debug_lite'
                            824 ;------------------------------------------------------------
                            825 ;p0_payload_width          Allocated with name '_rf_configure_debug_lite_PARM_2'
                            826 ;rx                        Allocated with name '_rf_configure_debug_lite_rx_1_46'
                            827 ;config                    Allocated with name '_rf_configure_debug_lite_config_1_47'
                            828 ;------------------------------------------------------------
                            829 ;	../src/rf/src/rf_configure_debug_lite.c:48: void rf_configure_debug_lite(bool rx, unsigned char p0_payload_width)
                            830 ;	-----------------------------------------
                            831 ;	 function rf_configure_debug_lite
                            832 ;	-----------------------------------------
   00B7                     833 _rf_configure_debug_lite:
   00B7 E5 82         [12]  834 	mov	a,dpl
   00B9 90 00 06      [24]  835 	mov	dptr,#_rf_configure_debug_lite_rx_1_46
   00BC F0            [24]  836 	movx	@dptr,a
                            837 ;	../src/rf/src/rf_configure_debug_lite.c:52: rf_spi_configure_enable(); //Enable RF SPI
   00BD 12 01 5B      [24]  838 	lcall	_rf_spi_configure_enable
                            839 ;	../src/rf/src/rf_configure_debug_lite.c:55: config = 0;
   00C0 90 00 07      [24]  840 	mov	dptr,#_rf_configure_debug_lite_config_1_47
   00C3 E4            [12]  841 	clr	a
   00C4 F0            [24]  842 	movx	@dptr,a
                            843 ;	../src/rf/src/rf_configure_debug_lite.c:56: rf_write_register(RF_EN_AA, &config, 1); //Turn auto-acknowledge off
   00C5 90 00 08      [24]  844 	mov	dptr,#_rf_write_register_PARM_2
   00C8 74 07         [12]  845 	mov	a,#_rf_configure_debug_lite_config_1_47
   00CA F0            [24]  846 	movx	@dptr,a
   00CB 74 00         [12]  847 	mov	a,#(_rf_configure_debug_lite_config_1_47 >> 8)
   00CD A3            [24]  848 	inc	dptr
   00CE F0            [24]  849 	movx	@dptr,a
   00CF E4            [12]  850 	clr	a
   00D0 A3            [24]  851 	inc	dptr
   00D1 F0            [24]  852 	movx	@dptr,a
   00D2 90 00 0B      [24]  853 	mov	dptr,#_rf_write_register_PARM_3
   00D5 74 01         [12]  854 	mov	a,#0x01
   00D7 F0            [24]  855 	movx	@dptr,a
   00D8 E4            [12]  856 	clr	a
   00D9 A3            [24]  857 	inc	dptr
   00DA F0            [24]  858 	movx	@dptr,a
   00DB 75 82 01      [24]  859 	mov	dpl,#0x01
   00DE 12 01 1E      [24]  860 	lcall	_rf_write_register
                            861 ;	../src/rf/src/rf_configure_debug_lite.c:59: config = RF_CONFIG_DEFAULT_VAL; //Set config to the default value of the CONFIG register
   00E1 90 00 07      [24]  862 	mov	dptr,#_rf_configure_debug_lite_config_1_47
   00E4 74 08         [12]  863 	mov	a,#0x08
   00E6 F0            [24]  864 	movx	@dptr,a
                            865 ;	../src/rf/src/rf_configure_debug_lite.c:62: rf_write_register(RF_RX_PW_P0, &p0_payload_width, 1);
   00E7 90 00 08      [24]  866 	mov	dptr,#_rf_write_register_PARM_2
   00EA 74 05         [12]  867 	mov	a,#_rf_configure_debug_lite_PARM_2
   00EC F0            [24]  868 	movx	@dptr,a
   00ED 74 00         [12]  869 	mov	a,#(_rf_configure_debug_lite_PARM_2 >> 8)
   00EF A3            [24]  870 	inc	dptr
   00F0 F0            [24]  871 	movx	@dptr,a
   00F1 E4            [12]  872 	clr	a
   00F2 A3            [24]  873 	inc	dptr
   00F3 F0            [24]  874 	movx	@dptr,a
   00F4 90 00 0B      [24]  875 	mov	dptr,#_rf_write_register_PARM_3
   00F7 74 01         [12]  876 	mov	a,#0x01
   00F9 F0            [24]  877 	movx	@dptr,a
   00FA E4            [12]  878 	clr	a
   00FB A3            [24]  879 	inc	dptr
   00FC F0            [24]  880 	movx	@dptr,a
   00FD 75 82 11      [24]  881 	mov	dpl,#0x11
   0100 12 01 1E      [24]  882 	lcall	_rf_write_register
                            883 ;	../src/rf/src/rf_configure_debug_lite.c:65: if(rx != false)
   0103 90 00 06      [24]  884 	mov	dptr,#_rf_configure_debug_lite_rx_1_46
   0106 E0            [24]  885 	movx	a,@dptr
   0107 FF            [12]  886 	mov	r7,a
   0108 60 06         [24]  887 	jz	00102$
                            888 ;	../src/rf/src/rf_configure_debug_lite.c:67: config |= RF_CONFIG_PRIM_RX;
   010A 90 00 07      [24]  889 	mov	dptr,#_rf_configure_debug_lite_config_1_47
   010D 74 09         [12]  890 	mov	a,#0x09
   010F F0            [24]  891 	movx	@dptr,a
   0110                     892 00102$:
                            893 ;	../src/rf/src/rf_configure_debug_lite.c:70: rf_power_up_param(true, config);
   0110 90 00 07      [24]  894 	mov	dptr,#_rf_configure_debug_lite_config_1_47
   0113 E0            [24]  895 	movx	a,@dptr
   0114 90 00 26      [24]  896 	mov	dptr,#_rf_power_up_param_PARM_2
   0117 F0            [24]  897 	movx	@dptr,a
   0118 75 82 01      [24]  898 	mov	dpl,#0x01
   011B 02 03 86      [24]  899 	ljmp	_rf_power_up_param
                            900 ;------------------------------------------------------------
                            901 ;Allocation info for local variables in function 'rf_write_register'
                            902 ;------------------------------------------------------------
                            903 ;dataptr                   Allocated with name '_rf_write_register_PARM_2'
                            904 ;len                       Allocated with name '_rf_write_register_PARM_3'
                            905 ;regnumber                 Allocated with name '_rf_write_register_regnumber_1_49'
                            906 ;------------------------------------------------------------
                            907 ;	../src/rf/src/rf_write_register.c:49: unsigned char rf_write_register(unsigned char regnumber, unsigned char * dataptr, unsigned int len)
                            908 ;	-----------------------------------------
                            909 ;	 function rf_write_register
                            910 ;	-----------------------------------------
   011E                     911 _rf_write_register:
   011E E5 82         [12]  912 	mov	a,dpl
                            913 ;	../src/rf/src/rf_write_register.c:52: return rf_spi_execute_command(RF_W_REGISTER | (regnumber & RF_W_REGISTER_DATA), dataptr, len, false);
   0120 90 00 0D      [24]  914 	mov	dptr,#_rf_write_register_regnumber_1_49
   0123 F0            [24]  915 	movx	@dptr,a
   0124 FF            [12]  916 	mov	r7,a
   0125 74 1F         [12]  917 	mov	a,#0x1F
   0127 5F            [12]  918 	anl	a,r7
   0128 44 20         [12]  919 	orl	a,#0x20
   012A FF            [12]  920 	mov	r7,a
   012B 90 00 08      [24]  921 	mov	dptr,#_rf_write_register_PARM_2
   012E E0            [24]  922 	movx	a,@dptr
   012F FC            [12]  923 	mov	r4,a
   0130 A3            [24]  924 	inc	dptr
   0131 E0            [24]  925 	movx	a,@dptr
   0132 FD            [12]  926 	mov	r5,a
   0133 A3            [24]  927 	inc	dptr
   0134 E0            [24]  928 	movx	a,@dptr
   0135 FE            [12]  929 	mov	r6,a
   0136 90 00 0B      [24]  930 	mov	dptr,#_rf_write_register_PARM_3
   0139 E0            [24]  931 	movx	a,@dptr
   013A FA            [12]  932 	mov	r2,a
   013B A3            [24]  933 	inc	dptr
   013C E0            [24]  934 	movx	a,@dptr
   013D FB            [12]  935 	mov	r3,a
   013E 90 00 18      [24]  936 	mov	dptr,#_rf_spi_execute_command_PARM_2
   0141 EC            [12]  937 	mov	a,r4
   0142 F0            [24]  938 	movx	@dptr,a
   0143 ED            [12]  939 	mov	a,r5
   0144 A3            [24]  940 	inc	dptr
   0145 F0            [24]  941 	movx	@dptr,a
   0146 EE            [12]  942 	mov	a,r6
   0147 A3            [24]  943 	inc	dptr
   0148 F0            [24]  944 	movx	@dptr,a
   0149 90 00 1B      [24]  945 	mov	dptr,#_rf_spi_execute_command_PARM_3
   014C EA            [12]  946 	mov	a,r2
   014D F0            [24]  947 	movx	@dptr,a
   014E EB            [12]  948 	mov	a,r3
   014F A3            [24]  949 	inc	dptr
   0150 F0            [24]  950 	movx	@dptr,a
   0151 90 00 1D      [24]  951 	mov	dptr,#_rf_spi_execute_command_PARM_4
   0154 E4            [12]  952 	clr	a
   0155 F0            [24]  953 	movx	@dptr,a
   0156 8F 82         [24]  954 	mov	dpl,r7
   0158 02 02 97      [24]  955 	ljmp	_rf_spi_execute_command
                            956 ;------------------------------------------------------------
                            957 ;Allocation info for local variables in function 'rf_spi_configure_enable'
                            958 ;------------------------------------------------------------
                            959 ;	../src/rf/src/rf_spi_configure_enable.c:47: void rf_spi_configure_enable()
                            960 ;	-----------------------------------------
                            961 ;	 function rf_spi_configure_enable
                            962 ;	-----------------------------------------
   015B                     963 _rf_spi_configure_enable:
                            964 ;	../src/rf/src/rf_spi_configure_enable.c:50: RFCON = 0x02;
   015B 75 E8 02      [24]  965 	mov	_RFCON,#0x02
                            966 ;	../src/rf/src/rf_spi_configure_enable.c:51: RFCON = RFCON_RFCKEN;
   015E 75 E8 04      [24]  967 	mov	_RFCON,#0x04
   0161 22            [24]  968 	ret
                            969 ;------------------------------------------------------------
                            970 ;Allocation info for local variables in function 'rf_write_tx_payload'
                            971 ;------------------------------------------------------------
                            972 ;len                       Allocated with name '_rf_write_tx_payload_PARM_2'
                            973 ;transmit                  Allocated with name '_rf_write_tx_payload_PARM_3'
                            974 ;dataptr                   Allocated with name '_rf_write_tx_payload_dataptr_1_52'
                            975 ;status                    Allocated with name '_rf_write_tx_payload_status_1_53'
                            976 ;------------------------------------------------------------
                            977 ;	../src/rf/src/rf_write_tx_payload.c:49: unsigned char rf_write_tx_payload(unsigned char * dataptr, unsigned int len, bool transmit)
                            978 ;	-----------------------------------------
                            979 ;	 function rf_write_tx_payload
                            980 ;	-----------------------------------------
   0162                     981 _rf_write_tx_payload:
   0162 AF F0         [24]  982 	mov	r7,b
   0164 AE 83         [24]  983 	mov	r6,dph
   0166 E5 82         [12]  984 	mov	a,dpl
   0168 90 00 11      [24]  985 	mov	dptr,#_rf_write_tx_payload_dataptr_1_52
   016B F0            [24]  986 	movx	@dptr,a
   016C EE            [12]  987 	mov	a,r6
   016D A3            [24]  988 	inc	dptr
   016E F0            [24]  989 	movx	@dptr,a
   016F EF            [12]  990 	mov	a,r7
   0170 A3            [24]  991 	inc	dptr
   0171 F0            [24]  992 	movx	@dptr,a
                            993 ;	../src/rf/src/rf_write_tx_payload.c:53: status = rf_spi_execute_command(RF_W_TX_PAYLOAD, dataptr, len, false); //Write the payload
   0172 90 00 11      [24]  994 	mov	dptr,#_rf_write_tx_payload_dataptr_1_52
   0175 E0            [24]  995 	movx	a,@dptr
   0176 FD            [12]  996 	mov	r5,a
   0177 A3            [24]  997 	inc	dptr
   0178 E0            [24]  998 	movx	a,@dptr
   0179 FE            [12]  999 	mov	r6,a
   017A A3            [24] 1000 	inc	dptr
   017B E0            [24] 1001 	movx	a,@dptr
   017C FF            [12] 1002 	mov	r7,a
   017D 90 00 0E      [24] 1003 	mov	dptr,#_rf_write_tx_payload_PARM_2
   0180 E0            [24] 1004 	movx	a,@dptr
   0181 FB            [12] 1005 	mov	r3,a
   0182 A3            [24] 1006 	inc	dptr
   0183 E0            [24] 1007 	movx	a,@dptr
   0184 FC            [12] 1008 	mov	r4,a
   0185 90 00 18      [24] 1009 	mov	dptr,#_rf_spi_execute_command_PARM_2
   0188 ED            [12] 1010 	mov	a,r5
   0189 F0            [24] 1011 	movx	@dptr,a
   018A EE            [12] 1012 	mov	a,r6
   018B A3            [24] 1013 	inc	dptr
   018C F0            [24] 1014 	movx	@dptr,a
   018D EF            [12] 1015 	mov	a,r7
   018E A3            [24] 1016 	inc	dptr
   018F F0            [24] 1017 	movx	@dptr,a
   0190 90 00 1B      [24] 1018 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0193 EB            [12] 1019 	mov	a,r3
   0194 F0            [24] 1020 	movx	@dptr,a
   0195 EC            [12] 1021 	mov	a,r4
   0196 A3            [24] 1022 	inc	dptr
   0197 F0            [24] 1023 	movx	@dptr,a
   0198 90 00 1D      [24] 1024 	mov	dptr,#_rf_spi_execute_command_PARM_4
   019B E4            [12] 1025 	clr	a
   019C F0            [24] 1026 	movx	@dptr,a
   019D 75 82 A0      [24] 1027 	mov	dpl,#0xA0
   01A0 12 02 97      [24] 1028 	lcall	_rf_spi_execute_command
   01A3 AF 82         [24] 1029 	mov	r7,dpl
                           1030 ;	../src/rf/src/rf_write_tx_payload.c:56: if(transmit == true)
   01A5 90 00 10      [24] 1031 	mov	dptr,#_rf_write_tx_payload_PARM_3
   01A8 E0            [24] 1032 	movx	a,@dptr
   01A9 FE            [12] 1033 	mov	r6,a
   01AA BE 01 07      [24] 1034 	cjne	r6,#0x01,00102$
                           1035 ;	../src/rf/src/rf_write_tx_payload.c:58: rf_transmit();
   01AD C0 07         [24] 1036 	push	ar7
   01AF 12 01 B7      [24] 1037 	lcall	_rf_transmit
   01B2 D0 07         [24] 1038 	pop	ar7
   01B4                    1039 00102$:
                           1040 ;	../src/rf/src/rf_write_tx_payload.c:61: return status; //Return the value of STATUS
   01B4 8F 82         [24] 1041 	mov	dpl,r7
   01B6 22            [24] 1042 	ret
                           1043 ;------------------------------------------------------------
                           1044 ;Allocation info for local variables in function 'rf_transmit'
                           1045 ;------------------------------------------------------------
                           1046 ;	../src/rf/src/rf_transmit.c:47: void rf_transmit()
                           1047 ;	-----------------------------------------
                           1048 ;	 function rf_transmit
                           1049 ;	-----------------------------------------
   01B7                    1050 _rf_transmit:
                           1051 ;	../src/rf/src/rf_transmit.c:50: rf_set_ce();
   01B7 D2 E8         [12] 1052 	setb _RFCON_SB_RFCE 
   01B9 90 00 04      [24] 1053 	mov	dptr,#0x0004
   01BC 12 07 E9      [24] 1054 	lcall	_delay_us
                           1055 ;	../src/rf/src/rf_transmit.c:51: delay_us(10);
   01BF 90 00 0A      [24] 1056 	mov	dptr,#0x000A
   01C2 12 07 E9      [24] 1057 	lcall	_delay_us
                           1058 ;	../src/rf/src/rf_transmit.c:52: rf_clear_ce();
   01C5 C2 E8         [12] 1059 	clr _RFCON_SB_RFCE 
   01C7 22            [24] 1060 	ret
                           1061 ;------------------------------------------------------------
                           1062 ;Allocation info for local variables in function 'rf_set_as_rx'
                           1063 ;------------------------------------------------------------
                           1064 ;rx_active_mode            Allocated with name '_rf_set_as_rx_rx_active_mode_1_56'
                           1065 ;config                    Allocated with name '_rf_set_as_rx_config_1_57'
                           1066 ;------------------------------------------------------------
                           1067 ;	../src/rf/src/rf_set_as_rx.c:47: void rf_set_as_rx(bool rx_active_mode)
                           1068 ;	-----------------------------------------
                           1069 ;	 function rf_set_as_rx
                           1070 ;	-----------------------------------------
   01C8                    1071 _rf_set_as_rx:
   01C8 E5 82         [12] 1072 	mov	a,dpl
   01CA 90 00 14      [24] 1073 	mov	dptr,#_rf_set_as_rx_rx_active_mode_1_56
   01CD F0            [24] 1074 	movx	@dptr,a
                           1075 ;	../src/rf/src/rf_set_as_rx.c:51: rf_read_register(RF_CONFIG, &config, 1); //Read the current CONFIG value
   01CE 90 00 28      [24] 1076 	mov	dptr,#_rf_read_register_PARM_2
   01D1 74 15         [12] 1077 	mov	a,#_rf_set_as_rx_config_1_57
   01D3 F0            [24] 1078 	movx	@dptr,a
   01D4 74 00         [12] 1079 	mov	a,#(_rf_set_as_rx_config_1_57 >> 8)
   01D6 A3            [24] 1080 	inc	dptr
   01D7 F0            [24] 1081 	movx	@dptr,a
   01D8 E4            [12] 1082 	clr	a
   01D9 A3            [24] 1083 	inc	dptr
   01DA F0            [24] 1084 	movx	@dptr,a
   01DB 90 00 2B      [24] 1085 	mov	dptr,#_rf_read_register_PARM_3
   01DE 74 01         [12] 1086 	mov	a,#0x01
   01E0 F0            [24] 1087 	movx	@dptr,a
   01E1 E4            [12] 1088 	clr	a
   01E2 A3            [24] 1089 	inc	dptr
   01E3 F0            [24] 1090 	movx	@dptr,a
   01E4 75 82 00      [24] 1091 	mov	dpl,#0x00
   01E7 12 03 D2      [24] 1092 	lcall	_rf_read_register
                           1093 ;	../src/rf/src/rf_set_as_rx.c:54: if((config & RF_CONFIG_PRIM_RX) != 0)
   01EA 90 00 15      [24] 1094 	mov	dptr,#_rf_set_as_rx_config_1_57
   01ED E0            [24] 1095 	movx	a,@dptr
   01EE FF            [12] 1096 	mov	r7,a
   01EF 30 E0 01      [24] 1097 	jnb	acc.0,00102$
                           1098 ;	../src/rf/src/rf_set_as_rx.c:56: return;
   01F2 22            [24] 1099 	ret
   01F3                    1100 00102$:
                           1101 ;	../src/rf/src/rf_set_as_rx.c:60: config |= RF_CONFIG_PRIM_RX;
   01F3 90 00 15      [24] 1102 	mov	dptr,#_rf_set_as_rx_config_1_57
   01F6 74 01         [12] 1103 	mov	a,#0x01
   01F8 4F            [12] 1104 	orl	a,r7
   01F9 F0            [24] 1105 	movx	@dptr,a
                           1106 ;	../src/rf/src/rf_set_as_rx.c:61: rf_write_register(RF_CONFIG, &config, 1);
   01FA 90 00 08      [24] 1107 	mov	dptr,#_rf_write_register_PARM_2
   01FD 74 15         [12] 1108 	mov	a,#_rf_set_as_rx_config_1_57
   01FF F0            [24] 1109 	movx	@dptr,a
   0200 74 00         [12] 1110 	mov	a,#(_rf_set_as_rx_config_1_57 >> 8)
   0202 A3            [24] 1111 	inc	dptr
   0203 F0            [24] 1112 	movx	@dptr,a
   0204 E4            [12] 1113 	clr	a
   0205 A3            [24] 1114 	inc	dptr
   0206 F0            [24] 1115 	movx	@dptr,a
   0207 90 00 0B      [24] 1116 	mov	dptr,#_rf_write_register_PARM_3
   020A 74 01         [12] 1117 	mov	a,#0x01
   020C F0            [24] 1118 	movx	@dptr,a
   020D E4            [12] 1119 	clr	a
   020E A3            [24] 1120 	inc	dptr
   020F F0            [24] 1121 	movx	@dptr,a
   0210 75 82 00      [24] 1122 	mov	dpl,#0x00
   0213 12 01 1E      [24] 1123 	lcall	_rf_write_register
                           1124 ;	../src/rf/src/rf_set_as_rx.c:64: if(rx_active_mode != false)
   0216 90 00 14      [24] 1125 	mov	dptr,#_rf_set_as_rx_rx_active_mode_1_56
   0219 E0            [24] 1126 	movx	a,@dptr
   021A FF            [12] 1127 	mov	r7,a
   021B 60 08         [24] 1128 	jz	00104$
                           1129 ;	../src/rf/src/rf_set_as_rx.c:66: rf_set_ce();
   021D D2 E8         [12] 1130 	setb _RFCON_SB_RFCE 
   021F 90 00 04      [24] 1131 	mov	dptr,#0x0004
   0222 02 07 E9      [24] 1132 	ljmp	_delay_us
   0225                    1133 00104$:
                           1134 ;	../src/rf/src/rf_set_as_rx.c:70: rf_clear_ce();
   0225 C2 E8         [12] 1135 	clr _RFCON_SB_RFCE 
   0227 22            [24] 1136 	ret
                           1137 ;------------------------------------------------------------
                           1138 ;Allocation info for local variables in function 'rf_irq_clear_all'
                           1139 ;------------------------------------------------------------
                           1140 ;dataptr                   Allocated with name '_rf_irq_clear_all_dataptr_1_61'
                           1141 ;------------------------------------------------------------
                           1142 ;	../src/rf/src/rf_irq_clear_all.c:47: void rf_irq_clear_all()
                           1143 ;	-----------------------------------------
                           1144 ;	 function rf_irq_clear_all
                           1145 ;	-----------------------------------------
   0228                    1146 _rf_irq_clear_all:
                           1147 ;	../src/rf/src/rf_irq_clear_all.c:50: unsigned char dataptr = RF_STATUS_RX_DR | RF_STATUS_TX_DS | RF_STATUS_MAX_RT;
   0228 90 00 16      [24] 1148 	mov	dptr,#_rf_irq_clear_all_dataptr_1_61
   022B 74 70         [12] 1149 	mov	a,#0x70
   022D F0            [24] 1150 	movx	@dptr,a
                           1151 ;	../src/rf/src/rf_irq_clear_all.c:52: rf_write_register(RF_STATUS, &dataptr, 1);
   022E 90 00 08      [24] 1152 	mov	dptr,#_rf_write_register_PARM_2
   0231 74 16         [12] 1153 	mov	a,#_rf_irq_clear_all_dataptr_1_61
   0233 F0            [24] 1154 	movx	@dptr,a
   0234 74 00         [12] 1155 	mov	a,#(_rf_irq_clear_all_dataptr_1_61 >> 8)
   0236 A3            [24] 1156 	inc	dptr
   0237 F0            [24] 1157 	movx	@dptr,a
   0238 E4            [12] 1158 	clr	a
   0239 A3            [24] 1159 	inc	dptr
   023A F0            [24] 1160 	movx	@dptr,a
   023B 90 00 0B      [24] 1161 	mov	dptr,#_rf_write_register_PARM_3
   023E 74 01         [12] 1162 	mov	a,#0x01
   0240 F0            [24] 1163 	movx	@dptr,a
   0241 E4            [12] 1164 	clr	a
   0242 A3            [24] 1165 	inc	dptr
   0243 F0            [24] 1166 	movx	@dptr,a
   0244 75 82 07      [24] 1167 	mov	dpl,#0x07
   0247 12 01 1E      [24] 1168 	lcall	_rf_write_register
                           1169 ;	../src/rf/src/rf_irq_clear_all.c:54: sbit_clear(IRCON_SB_RFIRQ); //Clear the master interrupt
   024A C2 C1         [12] 1170 	clr _IRCON_SB_RFIRQ 
   024C 22            [24] 1171 	ret
                           1172 ;------------------------------------------------------------
                           1173 ;Allocation info for local variables in function 'rf_set_as_tx'
                           1174 ;------------------------------------------------------------
                           1175 ;config                    Allocated with name '_rf_set_as_tx_config_1_62'
                           1176 ;------------------------------------------------------------
                           1177 ;	../src/rf/src/rf_set_as_tx.c:47: void rf_set_as_tx()
                           1178 ;	-----------------------------------------
                           1179 ;	 function rf_set_as_tx
                           1180 ;	-----------------------------------------
   024D                    1181 _rf_set_as_tx:
                           1182 ;	../src/rf/src/rf_set_as_tx.c:51: rf_read_register(RF_CONFIG, &config, 1); //Read the current CONFIG value
   024D 90 00 28      [24] 1183 	mov	dptr,#_rf_read_register_PARM_2
   0250 74 17         [12] 1184 	mov	a,#_rf_set_as_tx_config_1_62
   0252 F0            [24] 1185 	movx	@dptr,a
   0253 74 00         [12] 1186 	mov	a,#(_rf_set_as_tx_config_1_62 >> 8)
   0255 A3            [24] 1187 	inc	dptr
   0256 F0            [24] 1188 	movx	@dptr,a
   0257 E4            [12] 1189 	clr	a
   0258 A3            [24] 1190 	inc	dptr
   0259 F0            [24] 1191 	movx	@dptr,a
   025A 90 00 2B      [24] 1192 	mov	dptr,#_rf_read_register_PARM_3
   025D 74 01         [12] 1193 	mov	a,#0x01
   025F F0            [24] 1194 	movx	@dptr,a
   0260 E4            [12] 1195 	clr	a
   0261 A3            [24] 1196 	inc	dptr
   0262 F0            [24] 1197 	movx	@dptr,a
   0263 75 82 00      [24] 1198 	mov	dpl,#0x00
   0266 12 03 D2      [24] 1199 	lcall	_rf_read_register
                           1200 ;	../src/rf/src/rf_set_as_tx.c:54: if((config & RF_CONFIG_PRIM_RX) == 0)
   0269 90 00 17      [24] 1201 	mov	dptr,#_rf_set_as_tx_config_1_62
   026C E0            [24] 1202 	movx	a,@dptr
   026D FF            [12] 1203 	mov	r7,a
   026E 20 E0 01      [24] 1204 	jb	acc.0,00102$
                           1205 ;	../src/rf/src/rf_set_as_tx.c:56: return;
   0271 22            [24] 1206 	ret
   0272                    1207 00102$:
                           1208 ;	../src/rf/src/rf_set_as_tx.c:59: rf_clear_ce(); //Clear the CE pin
   0272 C2 E8         [12] 1209 	clr _RFCON_SB_RFCE 
                           1210 ;	../src/rf/src/rf_set_as_tx.c:62: config &= (~RF_CONFIG_PRIM_RX);
   0274 90 00 17      [24] 1211 	mov	dptr,#_rf_set_as_tx_config_1_62
   0277 74 FE         [12] 1212 	mov	a,#0xFE
   0279 5F            [12] 1213 	anl	a,r7
   027A F0            [24] 1214 	movx	@dptr,a
                           1215 ;	../src/rf/src/rf_set_as_tx.c:63: rf_write_register(RF_CONFIG, &config, 1);
   027B 90 00 08      [24] 1216 	mov	dptr,#_rf_write_register_PARM_2
   027E 74 17         [12] 1217 	mov	a,#_rf_set_as_tx_config_1_62
   0280 F0            [24] 1218 	movx	@dptr,a
   0281 74 00         [12] 1219 	mov	a,#(_rf_set_as_tx_config_1_62 >> 8)
   0283 A3            [24] 1220 	inc	dptr
   0284 F0            [24] 1221 	movx	@dptr,a
   0285 E4            [12] 1222 	clr	a
   0286 A3            [24] 1223 	inc	dptr
   0287 F0            [24] 1224 	movx	@dptr,a
   0288 90 00 0B      [24] 1225 	mov	dptr,#_rf_write_register_PARM_3
   028B 74 01         [12] 1226 	mov	a,#0x01
   028D F0            [24] 1227 	movx	@dptr,a
   028E E4            [12] 1228 	clr	a
   028F A3            [24] 1229 	inc	dptr
   0290 F0            [24] 1230 	movx	@dptr,a
   0291 75 82 00      [24] 1231 	mov	dpl,#0x00
   0294 02 01 1E      [24] 1232 	ljmp	_rf_write_register
                           1233 ;------------------------------------------------------------
                           1234 ;Allocation info for local variables in function 'rf_spi_execute_command'
                           1235 ;------------------------------------------------------------
                           1236 ;dataptr                   Allocated with name '_rf_spi_execute_command_PARM_2'
                           1237 ;len                       Allocated with name '_rf_spi_execute_command_PARM_3'
                           1238 ;copydata                  Allocated with name '_rf_spi_execute_command_PARM_4'
                           1239 ;instruction               Allocated with name '_rf_spi_execute_command_instruction_1_64'
                           1240 ;status                    Allocated with name '_rf_spi_execute_command_status_1_65'
                           1241 ;------------------------------------------------------------
                           1242 ;	../src/rf/src/rf_spi_execute_command.c:50: unsigned char rf_spi_execute_command(unsigned char instruction, unsigned char * dataptr, unsigned int len, bool copydata)
                           1243 ;	-----------------------------------------
                           1244 ;	 function rf_spi_execute_command
                           1245 ;	-----------------------------------------
   0297                    1246 _rf_spi_execute_command:
   0297 E5 82         [12] 1247 	mov	a,dpl
                           1248 ;	../src/rf/src/rf_spi_execute_command.c:52: unsigned char status = instruction; //status writes the instruction, then reads the current STATUS value
   0299 90 00 1E      [24] 1249 	mov	dptr,#_rf_spi_execute_command_instruction_1_64
   029C F0            [24] 1250 	movx	@dptr,a
   029D FF            [12] 1251 	mov	r7,a
   029E 90 00 1F      [24] 1252 	mov	dptr,#_rf_spi_execute_command_status_1_65
   02A1 F0            [24] 1253 	movx	@dptr,a
                           1254 ;	../src/rf/src/rf_spi_execute_command.c:54: rf_clear_csn(); //Clear CSN to start the transaction
   02A2 C2 E9         [12] 1255 	clr _RFCON_SB_RFCSN 
                           1256 ;	../src/rf/src/rf_spi_execute_command.c:57: rf_spi_send_read(&status, 1, true);
   02A4 90 00 20      [24] 1257 	mov	dptr,#_rf_spi_send_read_PARM_2
   02A7 74 01         [12] 1258 	mov	a,#0x01
   02A9 F0            [24] 1259 	movx	@dptr,a
   02AA E4            [12] 1260 	clr	a
   02AB A3            [24] 1261 	inc	dptr
   02AC F0            [24] 1262 	movx	@dptr,a
   02AD 90 00 22      [24] 1263 	mov	dptr,#_rf_spi_send_read_PARM_3
   02B0 74 01         [12] 1264 	mov	a,#0x01
   02B2 F0            [24] 1265 	movx	@dptr,a
   02B3 90 00 1F      [24] 1266 	mov	dptr,#_rf_spi_execute_command_status_1_65
   02B6 75 F0 00      [24] 1267 	mov	b,#0x00
   02B9 12 02 F3      [24] 1268 	lcall	_rf_spi_send_read
                           1269 ;	../src/rf/src/rf_spi_execute_command.c:58: rf_spi_send_read(dataptr, len, copydata);
   02BC 90 00 18      [24] 1270 	mov	dptr,#_rf_spi_execute_command_PARM_2
   02BF E0            [24] 1271 	movx	a,@dptr
   02C0 FD            [12] 1272 	mov	r5,a
   02C1 A3            [24] 1273 	inc	dptr
   02C2 E0            [24] 1274 	movx	a,@dptr
   02C3 FE            [12] 1275 	mov	r6,a
   02C4 A3            [24] 1276 	inc	dptr
   02C5 E0            [24] 1277 	movx	a,@dptr
   02C6 FF            [12] 1278 	mov	r7,a
   02C7 90 00 1B      [24] 1279 	mov	dptr,#_rf_spi_execute_command_PARM_3
   02CA E0            [24] 1280 	movx	a,@dptr
   02CB FB            [12] 1281 	mov	r3,a
   02CC A3            [24] 1282 	inc	dptr
   02CD E0            [24] 1283 	movx	a,@dptr
   02CE FC            [12] 1284 	mov	r4,a
   02CF 90 00 1D      [24] 1285 	mov	dptr,#_rf_spi_execute_command_PARM_4
   02D2 E0            [24] 1286 	movx	a,@dptr
   02D3 FA            [12] 1287 	mov	r2,a
   02D4 90 00 20      [24] 1288 	mov	dptr,#_rf_spi_send_read_PARM_2
   02D7 EB            [12] 1289 	mov	a,r3
   02D8 F0            [24] 1290 	movx	@dptr,a
   02D9 EC            [12] 1291 	mov	a,r4
   02DA A3            [24] 1292 	inc	dptr
   02DB F0            [24] 1293 	movx	@dptr,a
   02DC 90 00 22      [24] 1294 	mov	dptr,#_rf_spi_send_read_PARM_3
   02DF EA            [12] 1295 	mov	a,r2
   02E0 F0            [24] 1296 	movx	@dptr,a
   02E1 8D 82         [24] 1297 	mov	dpl,r5
   02E3 8E 83         [24] 1298 	mov	dph,r6
   02E5 8F F0         [24] 1299 	mov	b,r7
   02E7 12 02 F3      [24] 1300 	lcall	_rf_spi_send_read
                           1301 ;	../src/rf/src/rf_spi_execute_command.c:60: rf_set_csn(); //Set CSN to end the transaction
   02EA D2 E9         [12] 1302 	setb _RFCON_SB_RFCSN 
                           1303 ;	../src/rf/src/rf_spi_execute_command.c:62: return status; //Return the value of STATUS
   02EC 90 00 1F      [24] 1304 	mov	dptr,#_rf_spi_execute_command_status_1_65
   02EF E0            [24] 1305 	movx	a,@dptr
   02F0 F5 82         [12] 1306 	mov	dpl,a
   02F2 22            [24] 1307 	ret
                           1308 ;------------------------------------------------------------
                           1309 ;Allocation info for local variables in function 'rf_spi_send_read'
                           1310 ;------------------------------------------------------------
                           1311 ;sloc0                     Allocated with name '_rf_spi_send_read_sloc0_1_0'
                           1312 ;sloc1                     Allocated with name '_rf_spi_send_read_sloc1_1_0'
                           1313 ;len                       Allocated with name '_rf_spi_send_read_PARM_2'
                           1314 ;copydata                  Allocated with name '_rf_spi_send_read_PARM_3'
                           1315 ;dataptr                   Allocated with name '_rf_spi_send_read_dataptr_1_66'
                           1316 ;i                         Allocated with name '_rf_spi_send_read_i_1_67'
                           1317 ;tempbyte                  Allocated with name '_rf_spi_send_read_tempbyte_1_67'
                           1318 ;------------------------------------------------------------
                           1319 ;	../src/rf/src/rf_spi_send_read.c:49: void rf_spi_send_read(unsigned char * dataptr, unsigned int len, bool copydata)
                           1320 ;	-----------------------------------------
                           1321 ;	 function rf_spi_send_read
                           1322 ;	-----------------------------------------
   02F3                    1323 _rf_spi_send_read:
   02F3 AF F0         [24] 1324 	mov	r7,b
   02F5 AE 83         [24] 1325 	mov	r6,dph
   02F7 E5 82         [12] 1326 	mov	a,dpl
   02F9 90 00 23      [24] 1327 	mov	dptr,#_rf_spi_send_read_dataptr_1_66
   02FC F0            [24] 1328 	movx	@dptr,a
   02FD EE            [12] 1329 	mov	a,r6
   02FE A3            [24] 1330 	inc	dptr
   02FF F0            [24] 1331 	movx	@dptr,a
   0300 EF            [12] 1332 	mov	a,r7
   0301 A3            [24] 1333 	inc	dptr
   0302 F0            [24] 1334 	movx	@dptr,a
                           1335 ;	../src/rf/src/rf_spi_send_read.c:55: for(i = 0; i < len; i++)
   0303 90 00 23      [24] 1336 	mov	dptr,#_rf_spi_send_read_dataptr_1_66
   0306 E0            [24] 1337 	movx	a,@dptr
   0307 FD            [12] 1338 	mov	r5,a
   0308 A3            [24] 1339 	inc	dptr
   0309 E0            [24] 1340 	movx	a,@dptr
   030A FE            [12] 1341 	mov	r6,a
   030B A3            [24] 1342 	inc	dptr
   030C E0            [24] 1343 	movx	a,@dptr
   030D FF            [12] 1344 	mov	r7,a
   030E 90 00 22      [24] 1345 	mov	dptr,#_rf_spi_send_read_PARM_3
   0311 E0            [24] 1346 	movx	a,@dptr
   0312 FC            [12] 1347 	mov	r4,a
   0313 90 00 20      [24] 1348 	mov	dptr,#_rf_spi_send_read_PARM_2
   0316 E0            [24] 1349 	movx	a,@dptr
   0317 FA            [12] 1350 	mov	r2,a
   0318 A3            [24] 1351 	inc	dptr
   0319 E0            [24] 1352 	movx	a,@dptr
   031A FB            [12] 1353 	mov	r3,a
   031B 78 00         [12] 1354 	mov	r0,#0x00
   031D 79 00         [12] 1355 	mov	r1,#0x00
   031F                    1356 00105$:
   031F C3            [12] 1357 	clr	c
   0320 E8            [12] 1358 	mov	a,r0
   0321 9A            [12] 1359 	subb	a,r2
   0322 E9            [12] 1360 	mov	a,r1
   0323 9B            [12] 1361 	subb	a,r3
   0324 50 5F         [24] 1362 	jnc	00107$
                           1363 ;	../src/rf/src/rf_spi_send_read.c:57: tempbyte = rf_spi_send_read_byte(dataptr[i]); //Send the value, and then save the received value
   0326 C0 02         [24] 1364 	push	ar2
   0328 C0 03         [24] 1365 	push	ar3
   032A E8            [12] 1366 	mov	a,r0
   032B 2D            [12] 1367 	add	a,r5
   032C F5 08         [12] 1368 	mov	_rf_spi_send_read_sloc0_1_0,a
   032E E9            [12] 1369 	mov	a,r1
   032F 3E            [12] 1370 	addc	a,r6
   0330 F5 09         [12] 1371 	mov	(_rf_spi_send_read_sloc0_1_0 + 1),a
   0332 8F 0A         [24] 1372 	mov	(_rf_spi_send_read_sloc0_1_0 + 2),r7
   0334 85 08 82      [24] 1373 	mov	dpl,_rf_spi_send_read_sloc0_1_0
   0337 85 09 83      [24] 1374 	mov	dph,(_rf_spi_send_read_sloc0_1_0 + 1)
   033A 85 0A F0      [24] 1375 	mov	b,(_rf_spi_send_read_sloc0_1_0 + 2)
   033D 12 16 33      [24] 1376 	lcall	__gptrget
   0340 FB            [12] 1377 	mov	r3,a
   0341 F5 82         [12] 1378 	mov	dpl,a
   0343 C0 07         [24] 1379 	push	ar7
   0345 C0 06         [24] 1380 	push	ar6
   0347 C0 05         [24] 1381 	push	ar5
   0349 C0 04         [24] 1382 	push	ar4
   034B C0 03         [24] 1383 	push	ar3
   034D C0 02         [24] 1384 	push	ar2
   034F C0 01         [24] 1385 	push	ar1
   0351 C0 00         [24] 1386 	push	ar0
   0353 12 04 0D      [24] 1387 	lcall	_rf_spi_send_read_byte
   0356 85 82 0B      [24] 1388 	mov	_rf_spi_send_read_sloc1_1_0,dpl
   0359 D0 00         [24] 1389 	pop	ar0
   035B D0 01         [24] 1390 	pop	ar1
   035D D0 02         [24] 1391 	pop	ar2
   035F D0 03         [24] 1392 	pop	ar3
   0361 D0 04         [24] 1393 	pop	ar4
   0363 D0 05         [24] 1394 	pop	ar5
   0365 D0 06         [24] 1395 	pop	ar6
   0367 D0 07         [24] 1396 	pop	ar7
                           1397 ;	../src/rf/src/rf_spi_send_read.c:60: if(copydata != false)
   0369 D0 03         [24] 1398 	pop	ar3
   036B D0 02         [24] 1399 	pop	ar2
   036D EC            [12] 1400 	mov	a,r4
   036E 60 0E         [24] 1401 	jz	00106$
                           1402 ;	../src/rf/src/rf_spi_send_read.c:62: dataptr[i] = tempbyte;
   0370 85 08 82      [24] 1403 	mov	dpl,_rf_spi_send_read_sloc0_1_0
   0373 85 09 83      [24] 1404 	mov	dph,(_rf_spi_send_read_sloc0_1_0 + 1)
   0376 85 0A F0      [24] 1405 	mov	b,(_rf_spi_send_read_sloc0_1_0 + 2)
   0379 E5 0B         [12] 1406 	mov	a,_rf_spi_send_read_sloc1_1_0
   037B 12 0D B1      [24] 1407 	lcall	__gptrput
   037E                    1408 00106$:
                           1409 ;	../src/rf/src/rf_spi_send_read.c:55: for(i = 0; i < len; i++)
   037E 08            [12] 1410 	inc	r0
   037F B8 00 9D      [24] 1411 	cjne	r0,#0x00,00105$
   0382 09            [12] 1412 	inc	r1
   0383 80 9A         [24] 1413 	sjmp	00105$
   0385                    1414 00107$:
   0385 22            [24] 1415 	ret
                           1416 ;------------------------------------------------------------
                           1417 ;Allocation info for local variables in function 'rf_power_up_param'
                           1418 ;------------------------------------------------------------
                           1419 ;config                    Allocated with name '_rf_power_up_param_PARM_2'
                           1420 ;rx_active_mode            Allocated with name '_rf_power_up_param_rx_active_mode_1_70'
                           1421 ;------------------------------------------------------------
                           1422 ;	../src/rf/src/rf_power_up_param.c:49: void rf_power_up_param(bool rx_active_mode, unsigned char config)
                           1423 ;	-----------------------------------------
                           1424 ;	 function rf_power_up_param
                           1425 ;	-----------------------------------------
   0386                    1426 _rf_power_up_param:
   0386 E5 82         [12] 1427 	mov	a,dpl
   0388 90 00 27      [24] 1428 	mov	dptr,#_rf_power_up_param_rx_active_mode_1_70
   038B F0            [24] 1429 	movx	@dptr,a
                           1430 ;	../src/rf/src/rf_power_up_param.c:52: config |= RF_CONFIG_PWR_UP;
   038C 90 00 26      [24] 1431 	mov	dptr,#_rf_power_up_param_PARM_2
   038F E0            [24] 1432 	movx	a,@dptr
   0390 44 02         [12] 1433 	orl	a,#0x02
   0392 F0            [24] 1434 	movx	@dptr,a
                           1435 ;	../src/rf/src/rf_power_up_param.c:53: rf_write_register(RF_CONFIG, &config, 1);
   0393 90 00 08      [24] 1436 	mov	dptr,#_rf_write_register_PARM_2
   0396 74 26         [12] 1437 	mov	a,#_rf_power_up_param_PARM_2
   0398 F0            [24] 1438 	movx	@dptr,a
   0399 74 00         [12] 1439 	mov	a,#(_rf_power_up_param_PARM_2 >> 8)
   039B A3            [24] 1440 	inc	dptr
   039C F0            [24] 1441 	movx	@dptr,a
   039D E4            [12] 1442 	clr	a
   039E A3            [24] 1443 	inc	dptr
   039F F0            [24] 1444 	movx	@dptr,a
   03A0 90 00 0B      [24] 1445 	mov	dptr,#_rf_write_register_PARM_3
   03A3 74 01         [12] 1446 	mov	a,#0x01
   03A5 F0            [24] 1447 	movx	@dptr,a
   03A6 E4            [12] 1448 	clr	a
   03A7 A3            [24] 1449 	inc	dptr
   03A8 F0            [24] 1450 	movx	@dptr,a
   03A9 75 82 00      [24] 1451 	mov	dpl,#0x00
   03AC 12 01 1E      [24] 1452 	lcall	_rf_write_register
                           1453 ;	../src/rf/src/rf_power_up_param.c:55: delay_us(1); //Delay for power up
   03AF 90 00 01      [24] 1454 	mov	dptr,#0x0001
   03B2 12 07 E9      [24] 1455 	lcall	_delay_us
                           1456 ;	../src/rf/src/rf_power_up_param.c:58: if((config & RF_CONFIG_PRIM_RX) == 0)
   03B5 90 00 26      [24] 1457 	mov	dptr,#_rf_power_up_param_PARM_2
   03B8 E0            [24] 1458 	movx	a,@dptr
   03B9 FF            [12] 1459 	mov	r7,a
   03BA 20 E0 03      [24] 1460 	jb	acc.0,00105$
                           1461 ;	../src/rf/src/rf_power_up_param.c:60: rf_clear_ce(); //Clear CE for TX mode
   03BD C2 E8         [12] 1462 	clr _RFCON_SB_RFCE 
   03BF 22            [24] 1463 	ret
   03C0                    1464 00105$:
                           1465 ;	../src/rf/src/rf_power_up_param.c:65: if(rx_active_mode != false)
   03C0 90 00 27      [24] 1466 	mov	dptr,#_rf_power_up_param_rx_active_mode_1_70
   03C3 E0            [24] 1467 	movx	a,@dptr
   03C4 FF            [12] 1468 	mov	r7,a
   03C5 60 08         [24] 1469 	jz	00102$
                           1470 ;	../src/rf/src/rf_power_up_param.c:67: rf_set_ce();
   03C7 D2 E8         [12] 1471 	setb _RFCON_SB_RFCE 
   03C9 90 00 04      [24] 1472 	mov	dptr,#0x0004
   03CC 02 07 E9      [24] 1473 	ljmp	_delay_us
   03CF                    1474 00102$:
                           1475 ;	../src/rf/src/rf_power_up_param.c:71: rf_clear_ce();
   03CF C2 E8         [12] 1476 	clr _RFCON_SB_RFCE 
   03D1 22            [24] 1477 	ret
                           1478 ;------------------------------------------------------------
                           1479 ;Allocation info for local variables in function 'rf_read_register'
                           1480 ;------------------------------------------------------------
                           1481 ;dataptr                   Allocated with name '_rf_read_register_PARM_2'
                           1482 ;len                       Allocated with name '_rf_read_register_PARM_3'
                           1483 ;regnumber                 Allocated with name '_rf_read_register_regnumber_1_76'
                           1484 ;------------------------------------------------------------
                           1485 ;	../src/rf/src/rf_read_register.c:49: unsigned char rf_read_register(unsigned char regnumber, unsigned char * dataptr, unsigned int len)
                           1486 ;	-----------------------------------------
                           1487 ;	 function rf_read_register
                           1488 ;	-----------------------------------------
   03D2                    1489 _rf_read_register:
   03D2 E5 82         [12] 1490 	mov	a,dpl
                           1491 ;	../src/rf/src/rf_read_register.c:52: return rf_spi_execute_command(regnumber & RF_R_REGISTER_DATA, dataptr, len, true);
   03D4 90 00 2D      [24] 1492 	mov	dptr,#_rf_read_register_regnumber_1_76
   03D7 F0            [24] 1493 	movx	@dptr,a
   03D8 FF            [12] 1494 	mov	r7,a
   03D9 53 07 1F      [24] 1495 	anl	ar7,#0x1F
   03DC 90 00 28      [24] 1496 	mov	dptr,#_rf_read_register_PARM_2
   03DF E0            [24] 1497 	movx	a,@dptr
   03E0 FC            [12] 1498 	mov	r4,a
   03E1 A3            [24] 1499 	inc	dptr
   03E2 E0            [24] 1500 	movx	a,@dptr
   03E3 FD            [12] 1501 	mov	r5,a
   03E4 A3            [24] 1502 	inc	dptr
   03E5 E0            [24] 1503 	movx	a,@dptr
   03E6 FE            [12] 1504 	mov	r6,a
   03E7 90 00 2B      [24] 1505 	mov	dptr,#_rf_read_register_PARM_3
   03EA E0            [24] 1506 	movx	a,@dptr
   03EB FA            [12] 1507 	mov	r2,a
   03EC A3            [24] 1508 	inc	dptr
   03ED E0            [24] 1509 	movx	a,@dptr
   03EE FB            [12] 1510 	mov	r3,a
   03EF 90 00 18      [24] 1511 	mov	dptr,#_rf_spi_execute_command_PARM_2
   03F2 EC            [12] 1512 	mov	a,r4
   03F3 F0            [24] 1513 	movx	@dptr,a
   03F4 ED            [12] 1514 	mov	a,r5
   03F5 A3            [24] 1515 	inc	dptr
   03F6 F0            [24] 1516 	movx	@dptr,a
   03F7 EE            [12] 1517 	mov	a,r6
   03F8 A3            [24] 1518 	inc	dptr
   03F9 F0            [24] 1519 	movx	@dptr,a
   03FA 90 00 1B      [24] 1520 	mov	dptr,#_rf_spi_execute_command_PARM_3
   03FD EA            [12] 1521 	mov	a,r2
   03FE F0            [24] 1522 	movx	@dptr,a
   03FF EB            [12] 1523 	mov	a,r3
   0400 A3            [24] 1524 	inc	dptr
   0401 F0            [24] 1525 	movx	@dptr,a
   0402 90 00 1D      [24] 1526 	mov	dptr,#_rf_spi_execute_command_PARM_4
   0405 74 01         [12] 1527 	mov	a,#0x01
   0407 F0            [24] 1528 	movx	@dptr,a
   0408 8F 82         [24] 1529 	mov	dpl,r7
   040A 02 02 97      [24] 1530 	ljmp	_rf_spi_execute_command
                           1531 ;------------------------------------------------------------
                           1532 ;Allocation info for local variables in function 'rf_spi_send_read_byte'
                           1533 ;------------------------------------------------------------
                           1534 ;byte                      Allocated with name '_rf_spi_send_read_byte_byte_1_78'
                           1535 ;------------------------------------------------------------
                           1536 ;	../src/rf/src/rf_spi_send_read_byte.c:47: unsigned char rf_spi_send_read_byte(unsigned char byte)
                           1537 ;	-----------------------------------------
                           1538 ;	 function rf_spi_send_read_byte
                           1539 ;	-----------------------------------------
   040D                    1540 _rf_spi_send_read_byte:
   040D E5 82         [12] 1541 	mov	a,dpl
                           1542 ;	../src/rf/src/rf_spi_send_read_byte.c:49: SPIRDAT = byte; //Send byte over SPI
   040F 90 00 2E      [24] 1543 	mov	dptr,#_rf_spi_send_read_byte_byte_1_78
   0412 F0            [24] 1544 	movx	@dptr,a
   0413 F5 E7         [12] 1545 	mov	_SPIRDAT,a
                           1546 ;	../src/rf/src/rf_spi_send_read_byte.c:51: while(!(SPIRSTAT & SPIRSTAT_IRQ_RX_FIFO_READY)); //Wait for the transaction to finish
   0415                    1547 00101$:
   0415 E5 E6         [12] 1548 	mov	a,_SPIRSTAT
   0417 30 E2 FB      [24] 1549 	jnb	acc.2,00101$
                           1550 ;	../src/rf/src/rf_spi_send_read_byte.c:53: IRCON_SB_RFRDY = BIT_FALSE; //Clear the IRQ bit
   041A C2 C0         [12] 1551 	clr	_IRCON_SB_RFRDY
                           1552 ;	../src/rf/src/rf_spi_send_read_byte.c:55: return SPIRDAT; //Return the received value
   041C 85 E7 82      [24] 1553 	mov	dpl,_SPIRDAT
   041F 22            [24] 1554 	ret
                           1555 ;------------------------------------------------------------
                           1556 ;Allocation info for local variables in function 'rf_set_rx_addr'
                           1557 ;------------------------------------------------------------
                           1558 ;len                       Allocated with name '_rf_set_rx_addr_PARM_2'
                           1559 ;rxpipenum                 Allocated with name '_rf_set_rx_addr_PARM_3'
                           1560 ;address                   Allocated with name '_rf_set_rx_addr_address_1_80'
                           1561 ;------------------------------------------------------------
                           1562 ;	../src/rf/src/rf_set_rx_addr.c:49: void rf_set_rx_addr(unsigned char * address, unsigned int len, unsigned char rxpipenum)
                           1563 ;	-----------------------------------------
                           1564 ;	 function rf_set_rx_addr
                           1565 ;	-----------------------------------------
   0420                    1566 _rf_set_rx_addr:
   0420 AF F0         [24] 1567 	mov	r7,b
   0422 AE 83         [24] 1568 	mov	r6,dph
   0424 E5 82         [12] 1569 	mov	a,dpl
   0426 90 00 32      [24] 1570 	mov	dptr,#_rf_set_rx_addr_address_1_80
   0429 F0            [24] 1571 	movx	@dptr,a
   042A EE            [12] 1572 	mov	a,r6
   042B A3            [24] 1573 	inc	dptr
   042C F0            [24] 1574 	movx	@dptr,a
   042D EF            [12] 1575 	mov	a,r7
   042E A3            [24] 1576 	inc	dptr
   042F F0            [24] 1577 	movx	@dptr,a
                           1578 ;	../src/rf/src/rf_set_rx_addr.c:52: if(rxpipenum > 5)
   0430 90 00 31      [24] 1579 	mov	dptr,#_rf_set_rx_addr_PARM_3
   0433 E0            [24] 1580 	movx	a,@dptr
   0434 FF            [12] 1581 	mov  r7,a
   0435 24 FA         [12] 1582 	add	a,#0xff - 0x05
   0437 50 01         [24] 1583 	jnc	00102$
                           1584 ;	../src/rf/src/rf_set_rx_addr.c:54: return;
   0439 22            [24] 1585 	ret
   043A                    1586 00102$:
                           1587 ;	../src/rf/src/rf_set_rx_addr.c:57: rf_write_register(RF_RX_ADDR_P0 + rxpipenum, address, len); //Write the requested address to the requested RX pipe
   043A 74 0A         [12] 1588 	mov	a,#0x0A
   043C 2F            [12] 1589 	add	a,r7
   043D FF            [12] 1590 	mov	r7,a
   043E 90 00 32      [24] 1591 	mov	dptr,#_rf_set_rx_addr_address_1_80
   0441 E0            [24] 1592 	movx	a,@dptr
   0442 FC            [12] 1593 	mov	r4,a
   0443 A3            [24] 1594 	inc	dptr
   0444 E0            [24] 1595 	movx	a,@dptr
   0445 FD            [12] 1596 	mov	r5,a
   0446 A3            [24] 1597 	inc	dptr
   0447 E0            [24] 1598 	movx	a,@dptr
   0448 FE            [12] 1599 	mov	r6,a
   0449 90 00 2F      [24] 1600 	mov	dptr,#_rf_set_rx_addr_PARM_2
   044C E0            [24] 1601 	movx	a,@dptr
   044D FA            [12] 1602 	mov	r2,a
   044E A3            [24] 1603 	inc	dptr
   044F E0            [24] 1604 	movx	a,@dptr
   0450 FB            [12] 1605 	mov	r3,a
   0451 90 00 08      [24] 1606 	mov	dptr,#_rf_write_register_PARM_2
   0454 EC            [12] 1607 	mov	a,r4
   0455 F0            [24] 1608 	movx	@dptr,a
   0456 ED            [12] 1609 	mov	a,r5
   0457 A3            [24] 1610 	inc	dptr
   0458 F0            [24] 1611 	movx	@dptr,a
   0459 EE            [12] 1612 	mov	a,r6
   045A A3            [24] 1613 	inc	dptr
   045B F0            [24] 1614 	movx	@dptr,a
   045C 90 00 0B      [24] 1615 	mov	dptr,#_rf_write_register_PARM_3
   045F EA            [12] 1616 	mov	a,r2
   0460 F0            [24] 1617 	movx	@dptr,a
   0461 EB            [12] 1618 	mov	a,r3
   0462 A3            [24] 1619 	inc	dptr
   0463 F0            [24] 1620 	movx	@dptr,a
   0464 8F 82         [24] 1621 	mov	dpl,r7
   0466 02 01 1E      [24] 1622 	ljmp	_rf_write_register
                           1623 ;------------------------------------------------------------
                           1624 ;Allocation info for local variables in function 'gpio_pin_configure'
                           1625 ;------------------------------------------------------------
                           1626 ;gpio_pin_config_options   Allocated with name '_gpio_pin_configure_PARM_2'
                           1627 ;gpio_pin_id               Allocated with name '_gpio_pin_configure_gpio_pin_id_1_83'
                           1628 ;------------------------------------------------------------
                           1629 ;	../src/gpio/src/gpio_pin_configure.c:47: void gpio_pin_configure(gpio_pin_id_t gpio_pin_id, uint8_t gpio_pin_config_options)
                           1630 ;	-----------------------------------------
                           1631 ;	 function gpio_pin_configure
                           1632 ;	-----------------------------------------
   0469                    1633 _gpio_pin_configure:
   0469 E5 82         [12] 1634 	mov	a,dpl
                           1635 ;	../src/gpio/src/gpio_pin_configure.c:50: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   046B 90 00 36      [24] 1636 	mov	dptr,#_gpio_pin_configure_gpio_pin_id_1_83
   046E F0            [24] 1637 	movx	@dptr,a
   046F FF            [12] 1638 	mov  r7,a
   0470 24 F8         [12] 1639 	add	a,#0xff - 0x07
   0472 50 03         [24] 1640 	jnc	00174$
   0474 02 04 ED      [24] 1641 	ljmp	00134$
   0477                    1642 00174$:
                           1643 ;	../src/gpio/src/gpio_pin_configure.c:53: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   0477 90 00 35      [24] 1644 	mov	dptr,#_gpio_pin_configure_PARM_2
   047A E0            [24] 1645 	movx	a,@dptr
   047B FE            [12] 1646 	mov	r6,a
   047C FD            [12] 1647 	mov	r5,a
   047D ED            [12] 1648 	mov	a,r5
   047E 30 E0 4C      [24] 1649 	jnb	acc.0,00105$
                           1650 ;	../src/gpio/src/gpio_pin_configure.c:56: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   0481 EE            [12] 1651 	mov	a,r6
   0482 30 E1 15      [24] 1652 	jnb	acc.1,00102$
                           1653 ;	../src/gpio/src/gpio_pin_configure.c:58: gpio_pins_val_set(P0, (1 << (gpio_pin_id % 8)));
   0485 74 07         [12] 1654 	mov	a,#0x07
   0487 5F            [12] 1655 	anl	a,r7
   0488 F5 F0         [12] 1656 	mov	b,a
   048A 05 F0         [12] 1657 	inc	b
   048C 74 01         [12] 1658 	mov	a,#0x01
   048E 80 02         [24] 1659 	sjmp	00179$
   0490                    1660 00177$:
   0490 25 E0         [12] 1661 	add	a,acc
   0492                    1662 00179$:
   0492 D5 F0 FB      [24] 1663 	djnz	b,00177$
   0495 FD            [12] 1664 	mov	r5,a
   0496 42 80         [12] 1665 	orl	_P0,a
   0498 80 14         [24] 1666 	sjmp	00103$
   049A                    1667 00102$:
                           1668 ;	../src/gpio/src/gpio_pin_configure.c:62: gpio_pins_val_clear(P0, (1 << (gpio_pin_id % 8)));
   049A 74 07         [12] 1669 	mov	a,#0x07
   049C 5F            [12] 1670 	anl	a,r7
   049D F5 F0         [12] 1671 	mov	b,a
   049F 05 F0         [12] 1672 	inc	b
   04A1 74 01         [12] 1673 	mov	a,#0x01
   04A3 80 02         [24] 1674 	sjmp	00182$
   04A5                    1675 00180$:
   04A5 25 E0         [12] 1676 	add	a,acc
   04A7                    1677 00182$:
   04A7 D5 F0 FB      [24] 1678 	djnz	b,00180$
   04AA F4            [12] 1679 	cpl	a
   04AB FD            [12] 1680 	mov	r5,a
   04AC 52 80         [12] 1681 	anl	_P0,a
   04AE                    1682 00103$:
                           1683 ;	../src/gpio/src/gpio_pin_configure.c:66: P0CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   04AE 74 07         [12] 1684 	mov	a,#0x07
   04B0 5F            [12] 1685 	anl	a,r7
   04B1 FD            [12] 1686 	mov	r5,a
   04B2 74 07         [12] 1687 	mov	a,#0x07
   04B4 5D            [12] 1688 	anl	a,r5
   04B5 FC            [12] 1689 	mov	r4,a
                           1690 ;	../src/gpio/src/gpio_pin_configure.c:67: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   04B6 74 E0         [12] 1691 	mov	a,#0xE0
   04B8 5E            [12] 1692 	anl	a,r6
   04B9 4C            [12] 1693 	orl	a,r4
   04BA F5 9E         [12] 1694 	mov	_P0CON,a
                           1695 ;	../src/gpio/src/gpio_pin_configure.c:70: gpio_pins_dir_output(P0DIR, (1 << (gpio_pin_id % 8)));
   04BC 8D F0         [24] 1696 	mov	b,r5
   04BE 05 F0         [12] 1697 	inc	b
   04C0 74 01         [12] 1698 	mov	a,#0x01
   04C2 80 02         [24] 1699 	sjmp	00185$
   04C4                    1700 00183$:
   04C4 25 E0         [12] 1701 	add	a,acc
   04C6                    1702 00185$:
   04C6 D5 F0 FB      [24] 1703 	djnz	b,00183$
   04C9 F4            [12] 1704 	cpl	a
   04CA 52 93         [12] 1705 	anl	_P0DIR,a
   04CC 22            [24] 1706 	ret
   04CD                    1707 00105$:
                           1708 ;	../src/gpio/src/gpio_pin_configure.c:75: P0CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   04CD 74 07         [12] 1709 	mov	a,#0x07
   04CF 5F            [12] 1710 	anl	a,r7
   04D0 FD            [12] 1711 	mov	r5,a
   04D1 74 07         [12] 1712 	mov	a,#0x07
   04D3 5D            [12] 1713 	anl	a,r5
   04D4 44 10         [12] 1714 	orl	a,#0x10
   04D6 FC            [12] 1715 	mov	r4,a
                           1716 ;	../src/gpio/src/gpio_pin_configure.c:77: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   04D7 74 E0         [12] 1717 	mov	a,#0xE0
   04D9 5E            [12] 1718 	anl	a,r6
   04DA 4C            [12] 1719 	orl	a,r4
   04DB F5 9E         [12] 1720 	mov	_P0CON,a
                           1721 ;	../src/gpio/src/gpio_pin_configure.c:80: gpio_pins_dir_input(P0DIR, (1 << (gpio_pin_id % 8)));
   04DD 8D F0         [24] 1722 	mov	b,r5
   04DF 05 F0         [12] 1723 	inc	b
   04E1 74 01         [12] 1724 	mov	a,#0x01
   04E3 80 02         [24] 1725 	sjmp	00188$
   04E5                    1726 00186$:
   04E5 25 E0         [12] 1727 	add	a,acc
   04E7                    1728 00188$:
   04E7 D5 F0 FB      [24] 1729 	djnz	b,00186$
   04EA 42 93         [12] 1730 	orl	_P0DIR,a
   04EC 22            [24] 1731 	ret
   04ED                    1732 00134$:
                           1733 ;	../src/gpio/src/gpio_pin_configure.c:83: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   04ED EF            [12] 1734 	mov	a,r7
   04EE 24 F0         [12] 1735 	add	a,#0xff - 0x0F
   04F0 50 03         [24] 1736 	jnc	00189$
   04F2 02 05 6B      [24] 1737 	ljmp	00131$
   04F5                    1738 00189$:
                           1739 ;	../src/gpio/src/gpio_pin_configure.c:86: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   04F5 90 00 35      [24] 1740 	mov	dptr,#_gpio_pin_configure_PARM_2
   04F8 E0            [24] 1741 	movx	a,@dptr
   04F9 FE            [12] 1742 	mov	r6,a
   04FA FD            [12] 1743 	mov	r5,a
   04FB ED            [12] 1744 	mov	a,r5
   04FC 30 E0 4C      [24] 1745 	jnb	acc.0,00111$
                           1746 ;	../src/gpio/src/gpio_pin_configure.c:89: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   04FF EE            [12] 1747 	mov	a,r6
   0500 30 E1 15      [24] 1748 	jnb	acc.1,00108$
                           1749 ;	../src/gpio/src/gpio_pin_configure.c:91: gpio_pins_val_set(P1, (1 << (gpio_pin_id % 8)));
   0503 74 07         [12] 1750 	mov	a,#0x07
   0505 5F            [12] 1751 	anl	a,r7
   0506 F5 F0         [12] 1752 	mov	b,a
   0508 05 F0         [12] 1753 	inc	b
   050A 74 01         [12] 1754 	mov	a,#0x01
   050C 80 02         [24] 1755 	sjmp	00194$
   050E                    1756 00192$:
   050E 25 E0         [12] 1757 	add	a,acc
   0510                    1758 00194$:
   0510 D5 F0 FB      [24] 1759 	djnz	b,00192$
   0513 FD            [12] 1760 	mov	r5,a
   0514 42 90         [12] 1761 	orl	_P1,a
   0516 80 14         [24] 1762 	sjmp	00109$
   0518                    1763 00108$:
                           1764 ;	../src/gpio/src/gpio_pin_configure.c:95: gpio_pins_val_clear(P1, (1 << (gpio_pin_id % 8)));
   0518 74 07         [12] 1765 	mov	a,#0x07
   051A 5F            [12] 1766 	anl	a,r7
   051B F5 F0         [12] 1767 	mov	b,a
   051D 05 F0         [12] 1768 	inc	b
   051F 74 01         [12] 1769 	mov	a,#0x01
   0521 80 02         [24] 1770 	sjmp	00197$
   0523                    1771 00195$:
   0523 25 E0         [12] 1772 	add	a,acc
   0525                    1773 00197$:
   0525 D5 F0 FB      [24] 1774 	djnz	b,00195$
   0528 F4            [12] 1775 	cpl	a
   0529 FD            [12] 1776 	mov	r5,a
   052A 52 90         [12] 1777 	anl	_P1,a
   052C                    1778 00109$:
                           1779 ;	../src/gpio/src/gpio_pin_configure.c:99: P1CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   052C 74 07         [12] 1780 	mov	a,#0x07
   052E 5F            [12] 1781 	anl	a,r7
   052F FD            [12] 1782 	mov	r5,a
   0530 74 07         [12] 1783 	mov	a,#0x07
   0532 5D            [12] 1784 	anl	a,r5
   0533 FC            [12] 1785 	mov	r4,a
                           1786 ;	../src/gpio/src/gpio_pin_configure.c:100: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   0534 74 E0         [12] 1787 	mov	a,#0xE0
   0536 5E            [12] 1788 	anl	a,r6
   0537 4C            [12] 1789 	orl	a,r4
   0538 F5 9F         [12] 1790 	mov	_P1CON,a
                           1791 ;	../src/gpio/src/gpio_pin_configure.c:103: gpio_pins_dir_output(P1DIR, (1 << (gpio_pin_id % 8)));
   053A 8D F0         [24] 1792 	mov	b,r5
   053C 05 F0         [12] 1793 	inc	b
   053E 74 01         [12] 1794 	mov	a,#0x01
   0540 80 02         [24] 1795 	sjmp	00200$
   0542                    1796 00198$:
   0542 25 E0         [12] 1797 	add	a,acc
   0544                    1798 00200$:
   0544 D5 F0 FB      [24] 1799 	djnz	b,00198$
   0547 F4            [12] 1800 	cpl	a
   0548 52 94         [12] 1801 	anl	_P1DIR,a
   054A 22            [24] 1802 	ret
   054B                    1803 00111$:
                           1804 ;	../src/gpio/src/gpio_pin_configure.c:108: P1CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   054B 74 07         [12] 1805 	mov	a,#0x07
   054D 5F            [12] 1806 	anl	a,r7
   054E FD            [12] 1807 	mov	r5,a
   054F 74 07         [12] 1808 	mov	a,#0x07
   0551 5D            [12] 1809 	anl	a,r5
   0552 44 10         [12] 1810 	orl	a,#0x10
   0554 FC            [12] 1811 	mov	r4,a
                           1812 ;	../src/gpio/src/gpio_pin_configure.c:110: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   0555 74 E0         [12] 1813 	mov	a,#0xE0
   0557 5E            [12] 1814 	anl	a,r6
   0558 4C            [12] 1815 	orl	a,r4
   0559 F5 9F         [12] 1816 	mov	_P1CON,a
                           1817 ;	../src/gpio/src/gpio_pin_configure.c:113: gpio_pins_dir_input(P1DIR, (1 << (gpio_pin_id % 8)));
   055B 8D F0         [24] 1818 	mov	b,r5
   055D 05 F0         [12] 1819 	inc	b
   055F 74 01         [12] 1820 	mov	a,#0x01
   0561 80 02         [24] 1821 	sjmp	00203$
   0563                    1822 00201$:
   0563 25 E0         [12] 1823 	add	a,acc
   0565                    1824 00203$:
   0565 D5 F0 FB      [24] 1825 	djnz	b,00201$
   0568 42 94         [12] 1826 	orl	_P1DIR,a
   056A 22            [24] 1827 	ret
   056B                    1828 00131$:
                           1829 ;	../src/gpio/src/gpio_pin_configure.c:116: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   056B EF            [12] 1830 	mov	a,r7
   056C 24 E8         [12] 1831 	add	a,#0xff - 0x17
   056E 50 03         [24] 1832 	jnc	00204$
   0570 02 05 E9      [24] 1833 	ljmp	00128$
   0573                    1834 00204$:
                           1835 ;	../src/gpio/src/gpio_pin_configure.c:119: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   0573 90 00 35      [24] 1836 	mov	dptr,#_gpio_pin_configure_PARM_2
   0576 E0            [24] 1837 	movx	a,@dptr
   0577 FE            [12] 1838 	mov	r6,a
   0578 FD            [12] 1839 	mov	r5,a
   0579 ED            [12] 1840 	mov	a,r5
   057A 30 E0 4C      [24] 1841 	jnb	acc.0,00117$
                           1842 ;	../src/gpio/src/gpio_pin_configure.c:122: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   057D EE            [12] 1843 	mov	a,r6
   057E 30 E1 15      [24] 1844 	jnb	acc.1,00114$
                           1845 ;	../src/gpio/src/gpio_pin_configure.c:124: gpio_pins_val_set(P2, (1 << (gpio_pin_id % 8)));
   0581 74 07         [12] 1846 	mov	a,#0x07
   0583 5F            [12] 1847 	anl	a,r7
   0584 F5 F0         [12] 1848 	mov	b,a
   0586 05 F0         [12] 1849 	inc	b
   0588 74 01         [12] 1850 	mov	a,#0x01
   058A 80 02         [24] 1851 	sjmp	00209$
   058C                    1852 00207$:
   058C 25 E0         [12] 1853 	add	a,acc
   058E                    1854 00209$:
   058E D5 F0 FB      [24] 1855 	djnz	b,00207$
   0591 FD            [12] 1856 	mov	r5,a
   0592 42 A0         [12] 1857 	orl	_P2,a
   0594 80 14         [24] 1858 	sjmp	00115$
   0596                    1859 00114$:
                           1860 ;	../src/gpio/src/gpio_pin_configure.c:128: gpio_pins_val_clear(P2, (1 << (gpio_pin_id % 8)));
   0596 74 07         [12] 1861 	mov	a,#0x07
   0598 5F            [12] 1862 	anl	a,r7
   0599 F5 F0         [12] 1863 	mov	b,a
   059B 05 F0         [12] 1864 	inc	b
   059D 74 01         [12] 1865 	mov	a,#0x01
   059F 80 02         [24] 1866 	sjmp	00212$
   05A1                    1867 00210$:
   05A1 25 E0         [12] 1868 	add	a,acc
   05A3                    1869 00212$:
   05A3 D5 F0 FB      [24] 1870 	djnz	b,00210$
   05A6 F4            [12] 1871 	cpl	a
   05A7 FD            [12] 1872 	mov	r5,a
   05A8 52 A0         [12] 1873 	anl	_P2,a
   05AA                    1874 00115$:
                           1875 ;	../src/gpio/src/gpio_pin_configure.c:132: P2CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   05AA 74 07         [12] 1876 	mov	a,#0x07
   05AC 5F            [12] 1877 	anl	a,r7
   05AD FD            [12] 1878 	mov	r5,a
   05AE 74 07         [12] 1879 	mov	a,#0x07
   05B0 5D            [12] 1880 	anl	a,r5
   05B1 FC            [12] 1881 	mov	r4,a
                           1882 ;	../src/gpio/src/gpio_pin_configure.c:133: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   05B2 74 E0         [12] 1883 	mov	a,#0xE0
   05B4 5E            [12] 1884 	anl	a,r6
   05B5 4C            [12] 1885 	orl	a,r4
   05B6 F5 97         [12] 1886 	mov	_P2CON,a
                           1887 ;	../src/gpio/src/gpio_pin_configure.c:136: gpio_pins_dir_output(P2DIR, (1 << (gpio_pin_id % 8)));
   05B8 8D F0         [24] 1888 	mov	b,r5
   05BA 05 F0         [12] 1889 	inc	b
   05BC 74 01         [12] 1890 	mov	a,#0x01
   05BE 80 02         [24] 1891 	sjmp	00215$
   05C0                    1892 00213$:
   05C0 25 E0         [12] 1893 	add	a,acc
   05C2                    1894 00215$:
   05C2 D5 F0 FB      [24] 1895 	djnz	b,00213$
   05C5 F4            [12] 1896 	cpl	a
   05C6 52 95         [12] 1897 	anl	_P2DIR,a
   05C8 22            [24] 1898 	ret
   05C9                    1899 00117$:
                           1900 ;	../src/gpio/src/gpio_pin_configure.c:141: P2CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   05C9 74 07         [12] 1901 	mov	a,#0x07
   05CB 5F            [12] 1902 	anl	a,r7
   05CC FD            [12] 1903 	mov	r5,a
   05CD 74 07         [12] 1904 	mov	a,#0x07
   05CF 5D            [12] 1905 	anl	a,r5
   05D0 44 10         [12] 1906 	orl	a,#0x10
   05D2 FC            [12] 1907 	mov	r4,a
                           1908 ;	../src/gpio/src/gpio_pin_configure.c:143: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   05D3 74 E0         [12] 1909 	mov	a,#0xE0
   05D5 5E            [12] 1910 	anl	a,r6
   05D6 4C            [12] 1911 	orl	a,r4
   05D7 F5 97         [12] 1912 	mov	_P2CON,a
                           1913 ;	../src/gpio/src/gpio_pin_configure.c:146: gpio_pins_dir_input(P2DIR, (1 << (gpio_pin_id % 8)));
   05D9 8D F0         [24] 1914 	mov	b,r5
   05DB 05 F0         [12] 1915 	inc	b
   05DD 74 01         [12] 1916 	mov	a,#0x01
   05DF 80 02         [24] 1917 	sjmp	00218$
   05E1                    1918 00216$:
   05E1 25 E0         [12] 1919 	add	a,acc
   05E3                    1920 00218$:
   05E3 D5 F0 FB      [24] 1921 	djnz	b,00216$
   05E6 42 95         [12] 1922 	orl	_P2DIR,a
   05E8 22            [24] 1923 	ret
   05E9                    1924 00128$:
                           1925 ;	../src/gpio/src/gpio_pin_configure.c:149: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   05E9 EF            [12] 1926 	mov	a,r7
   05EA 24 E1         [12] 1927 	add	a,#0xff - 0x1E
   05EC 40 75         [24] 1928 	jc	00136$
                           1929 ;	../src/gpio/src/gpio_pin_configure.c:152: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
   05EE 90 00 35      [24] 1930 	mov	dptr,#_gpio_pin_configure_PARM_2
   05F1 E0            [24] 1931 	movx	a,@dptr
   05F2 FE            [12] 1932 	mov	r6,a
   05F3 FD            [12] 1933 	mov	r5,a
   05F4 ED            [12] 1934 	mov	a,r5
   05F5 30 E0 4C      [24] 1935 	jnb	acc.0,00123$
                           1936 ;	../src/gpio/src/gpio_pin_configure.c:155: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
   05F8 EE            [12] 1937 	mov	a,r6
   05F9 30 E1 15      [24] 1938 	jnb	acc.1,00120$
                           1939 ;	../src/gpio/src/gpio_pin_configure.c:157: gpio_pins_val_set(P3, (1 << (gpio_pin_id % 8)));
   05FC 74 07         [12] 1940 	mov	a,#0x07
   05FE 5F            [12] 1941 	anl	a,r7
   05FF F5 F0         [12] 1942 	mov	b,a
   0601 05 F0         [12] 1943 	inc	b
   0603 74 01         [12] 1944 	mov	a,#0x01
   0605 80 02         [24] 1945 	sjmp	00224$
   0607                    1946 00222$:
   0607 25 E0         [12] 1947 	add	a,acc
   0609                    1948 00224$:
   0609 D5 F0 FB      [24] 1949 	djnz	b,00222$
   060C FD            [12] 1950 	mov	r5,a
   060D 42 B0         [12] 1951 	orl	_P3,a
   060F 80 14         [24] 1952 	sjmp	00121$
   0611                    1953 00120$:
                           1954 ;	../src/gpio/src/gpio_pin_configure.c:161: gpio_pins_val_clear(P3, (1 << (gpio_pin_id % 8)));
   0611 74 07         [12] 1955 	mov	a,#0x07
   0613 5F            [12] 1956 	anl	a,r7
   0614 F5 F0         [12] 1957 	mov	b,a
   0616 05 F0         [12] 1958 	inc	b
   0618 74 01         [12] 1959 	mov	a,#0x01
   061A 80 02         [24] 1960 	sjmp	00227$
   061C                    1961 00225$:
   061C 25 E0         [12] 1962 	add	a,acc
   061E                    1963 00227$:
   061E D5 F0 FB      [24] 1964 	djnz	b,00225$
   0621 F4            [12] 1965 	cpl	a
   0622 FD            [12] 1966 	mov	r5,a
   0623 52 B0         [12] 1967 	anl	_P3,a
   0625                    1968 00121$:
                           1969 ;	../src/gpio/src/gpio_pin_configure.c:165: P3CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   0625 74 07         [12] 1970 	mov	a,#0x07
   0627 5F            [12] 1971 	anl	a,r7
   0628 FD            [12] 1972 	mov	r5,a
   0629 74 07         [12] 1973 	mov	a,#0x07
   062B 5D            [12] 1974 	anl	a,r5
   062C FC            [12] 1975 	mov	r4,a
                           1976 ;	../src/gpio/src/gpio_pin_configure.c:166: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   062D 74 E0         [12] 1977 	mov	a,#0xE0
   062F 5E            [12] 1978 	anl	a,r6
   0630 4C            [12] 1979 	orl	a,r4
   0631 F5 8F         [12] 1980 	mov	_P3CON,a
                           1981 ;	../src/gpio/src/gpio_pin_configure.c:169: gpio_pins_dir_output(P3DIR, (1 << (gpio_pin_id % 8)));
   0633 8D F0         [24] 1982 	mov	b,r5
   0635 05 F0         [12] 1983 	inc	b
   0637 74 01         [12] 1984 	mov	a,#0x01
   0639 80 02         [24] 1985 	sjmp	00230$
   063B                    1986 00228$:
   063B 25 E0         [12] 1987 	add	a,acc
   063D                    1988 00230$:
   063D D5 F0 FB      [24] 1989 	djnz	b,00228$
   0640 F4            [12] 1990 	cpl	a
   0641 52 96         [12] 1991 	anl	_P3DIR,a
   0643 22            [24] 1992 	ret
   0644                    1993 00123$:
                           1994 ;	../src/gpio/src/gpio_pin_configure.c:174: P3CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
   0644 53 07 07      [24] 1995 	anl	ar7,#0x07
   0647 74 07         [12] 1996 	mov	a,#0x07
   0649 5F            [12] 1997 	anl	a,r7
   064A 44 10         [12] 1998 	orl	a,#0x10
   064C FD            [12] 1999 	mov	r5,a
                           2000 ;	../src/gpio/src/gpio_pin_configure.c:176: (gpio_pin_config_options & PXCON_PINMODE_MASK);
   064D 74 E0         [12] 2001 	mov	a,#0xE0
   064F 5E            [12] 2002 	anl	a,r6
   0650 4D            [12] 2003 	orl	a,r5
   0651 F5 8F         [12] 2004 	mov	_P3CON,a
                           2005 ;	../src/gpio/src/gpio_pin_configure.c:179: gpio_pins_dir_input(P3DIR, (1 << (gpio_pin_id % 8)));
   0653 8F F0         [24] 2006 	mov	b,r7
   0655 05 F0         [12] 2007 	inc	b
   0657 74 01         [12] 2008 	mov	a,#0x01
   0659 80 02         [24] 2009 	sjmp	00233$
   065B                    2010 00231$:
   065B 25 E0         [12] 2011 	add	a,acc
   065D                    2012 00233$:
   065D D5 F0 FB      [24] 2013 	djnz	b,00231$
   0660 FF            [12] 2014 	mov	r7,a
   0661 42 96         [12] 2015 	orl	_P3DIR,a
   0663                    2016 00136$:
   0663 22            [24] 2017 	ret
                           2018 ;------------------------------------------------------------
                           2019 ;Allocation info for local variables in function 'gpio_pin_val_read'
                           2020 ;------------------------------------------------------------
                           2021 ;gpio_pin_id               Allocated with name '_gpio_pin_val_read_gpio_pin_id_1_105'
                           2022 ;value                     Allocated with name '_gpio_pin_val_read_value_1_106'
                           2023 ;------------------------------------------------------------
                           2024 ;	../src/gpio/src/gpio_pin_val_read.c:46: bool gpio_pin_val_read(gpio_pin_id_t gpio_pin_id)
                           2025 ;	-----------------------------------------
                           2026 ;	 function gpio_pin_val_read
                           2027 ;	-----------------------------------------
   0664                    2028 _gpio_pin_val_read:
   0664 E5 82         [12] 2029 	mov	a,dpl
   0666 90 00 37      [24] 2030 	mov	dptr,#_gpio_pin_val_read_gpio_pin_id_1_105
   0669 F0            [24] 2031 	movx	@dptr,a
                           2032 ;	../src/gpio/src/gpio_pin_val_read.c:48: bool value = false;
   066A 90 00 38      [24] 2033 	mov	dptr,#_gpio_pin_val_read_value_1_106
   066D E4            [12] 2034 	clr	a
   066E F0            [24] 2035 	movx	@dptr,a
                           2036 ;	../src/gpio/src/gpio_pin_val_read.c:51: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   066F 90 00 37      [24] 2037 	mov	dptr,#_gpio_pin_val_read_gpio_pin_id_1_105
   0672 E0            [24] 2038 	movx	a,@dptr
   0673 FF            [12] 2039 	mov  r7,a
   0674 24 F8         [12] 2040 	add	a,#0xff - 0x07
   0676 40 19         [24] 2041 	jc	00110$
                           2042 ;	../src/gpio/src/gpio_pin_val_read.c:53: value = P0 & (1 << (gpio_pin_id % 8));
   0678 74 07         [12] 2043 	mov	a,#0x07
   067A 5F            [12] 2044 	anl	a,r7
   067B F5 F0         [12] 2045 	mov	b,a
   067D 05 F0         [12] 2046 	inc	b
   067F 74 01         [12] 2047 	mov	a,#0x01
   0681 80 02         [24] 2048 	sjmp	00135$
   0683                    2049 00133$:
   0683 25 E0         [12] 2050 	add	a,acc
   0685                    2051 00135$:
   0685 D5 F0 FB      [24] 2052 	djnz	b,00133$
   0688 FE            [12] 2053 	mov	r6,a
   0689 90 00 38      [24] 2054 	mov	dptr,#_gpio_pin_val_read_value_1_106
   068C 55 80         [12] 2055 	anl	a,_P0
   068E F0            [24] 2056 	movx	@dptr,a
   068F 80 58         [24] 2057 	sjmp	00111$
   0691                    2058 00110$:
                           2059 ;	../src/gpio/src/gpio_pin_val_read.c:55: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   0691 EF            [12] 2060 	mov	a,r7
   0692 24 F0         [12] 2061 	add	a,#0xff - 0x0F
   0694 40 19         [24] 2062 	jc	00107$
                           2063 ;	../src/gpio/src/gpio_pin_val_read.c:57: value = P1 & (1 << (gpio_pin_id % 8));
   0696 74 07         [12] 2064 	mov	a,#0x07
   0698 5F            [12] 2065 	anl	a,r7
   0699 F5 F0         [12] 2066 	mov	b,a
   069B 05 F0         [12] 2067 	inc	b
   069D 74 01         [12] 2068 	mov	a,#0x01
   069F 80 02         [24] 2069 	sjmp	00139$
   06A1                    2070 00137$:
   06A1 25 E0         [12] 2071 	add	a,acc
   06A3                    2072 00139$:
   06A3 D5 F0 FB      [24] 2073 	djnz	b,00137$
   06A6 FE            [12] 2074 	mov	r6,a
   06A7 90 00 38      [24] 2075 	mov	dptr,#_gpio_pin_val_read_value_1_106
   06AA 55 90         [12] 2076 	anl	a,_P1
   06AC F0            [24] 2077 	movx	@dptr,a
   06AD 80 3A         [24] 2078 	sjmp	00111$
   06AF                    2079 00107$:
                           2080 ;	../src/gpio/src/gpio_pin_val_read.c:59: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   06AF EF            [12] 2081 	mov	a,r7
   06B0 24 E8         [12] 2082 	add	a,#0xff - 0x17
   06B2 40 19         [24] 2083 	jc	00104$
                           2084 ;	../src/gpio/src/gpio_pin_val_read.c:61: value = P2 & (1 << (gpio_pin_id % 8));
   06B4 74 07         [12] 2085 	mov	a,#0x07
   06B6 5F            [12] 2086 	anl	a,r7
   06B7 F5 F0         [12] 2087 	mov	b,a
   06B9 05 F0         [12] 2088 	inc	b
   06BB 74 01         [12] 2089 	mov	a,#0x01
   06BD 80 02         [24] 2090 	sjmp	00143$
   06BF                    2091 00141$:
   06BF 25 E0         [12] 2092 	add	a,acc
   06C1                    2093 00143$:
   06C1 D5 F0 FB      [24] 2094 	djnz	b,00141$
   06C4 FE            [12] 2095 	mov	r6,a
   06C5 90 00 38      [24] 2096 	mov	dptr,#_gpio_pin_val_read_value_1_106
   06C8 55 A0         [12] 2097 	anl	a,_P2
   06CA F0            [24] 2098 	movx	@dptr,a
   06CB 80 1C         [24] 2099 	sjmp	00111$
   06CD                    2100 00104$:
                           2101 ;	../src/gpio/src/gpio_pin_val_read.c:63: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   06CD EF            [12] 2102 	mov	a,r7
   06CE 24 E1         [12] 2103 	add	a,#0xff - 0x1E
   06D0 40 17         [24] 2104 	jc	00111$
                           2105 ;	../src/gpio/src/gpio_pin_val_read.c:65: value = P3 & (1 << (gpio_pin_id % 8));
   06D2 74 07         [12] 2106 	mov	a,#0x07
   06D4 5F            [12] 2107 	anl	a,r7
   06D5 F5 F0         [12] 2108 	mov	b,a
   06D7 05 F0         [12] 2109 	inc	b
   06D9 74 01         [12] 2110 	mov	a,#0x01
   06DB 80 02         [24] 2111 	sjmp	00147$
   06DD                    2112 00145$:
   06DD 25 E0         [12] 2113 	add	a,acc
   06DF                    2114 00147$:
   06DF D5 F0 FB      [24] 2115 	djnz	b,00145$
   06E2 FF            [12] 2116 	mov	r7,a
   06E3 90 00 38      [24] 2117 	mov	dptr,#_gpio_pin_val_read_value_1_106
   06E6 55 B0         [12] 2118 	anl	a,_P3
   06E8 F0            [24] 2119 	movx	@dptr,a
   06E9                    2120 00111$:
                           2121 ;	../src/gpio/src/gpio_pin_val_read.c:68: if(value)
   06E9 90 00 38      [24] 2122 	mov	dptr,#_gpio_pin_val_read_value_1_106
   06EC E0            [24] 2123 	movx	a,@dptr
   06ED FF            [12] 2124 	mov	r7,a
   06EE 60 04         [24] 2125 	jz	00113$
                           2126 ;	../src/gpio/src/gpio_pin_val_read.c:70: return true;
   06F0 75 82 01      [24] 2127 	mov	dpl,#0x01
   06F3 22            [24] 2128 	ret
   06F4                    2129 00113$:
                           2130 ;	../src/gpio/src/gpio_pin_val_read.c:74: return false;
   06F4 75 82 00      [24] 2131 	mov	dpl,#0x00
   06F7 22            [24] 2132 	ret
                           2133 ;------------------------------------------------------------
                           2134 ;Allocation info for local variables in function 'gpio_pin_val_clear'
                           2135 ;------------------------------------------------------------
                           2136 ;gpio_pin_id               Allocated with name '_gpio_pin_val_clear_gpio_pin_id_1_113'
                           2137 ;------------------------------------------------------------
                           2138 ;	../src/gpio/src/gpio_pin_val_clear.c:46: void gpio_pin_val_clear(gpio_pin_id_t gpio_pin_id)
                           2139 ;	-----------------------------------------
                           2140 ;	 function gpio_pin_val_clear
                           2141 ;	-----------------------------------------
   06F8                    2142 _gpio_pin_val_clear:
   06F8 E5 82         [12] 2143 	mov	a,dpl
                           2144 ;	../src/gpio/src/gpio_pin_val_clear.c:49: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   06FA 90 00 39      [24] 2145 	mov	dptr,#_gpio_pin_val_clear_gpio_pin_id_1_113
   06FD F0            [24] 2146 	movx	@dptr,a
   06FE FF            [12] 2147 	mov  r7,a
   06FF 24 F8         [12] 2148 	add	a,#0xff - 0x07
   0701 40 14         [24] 2149 	jc	00110$
                           2150 ;	../src/gpio/src/gpio_pin_val_clear.c:51: gpio_pins_val_clear(P0, (1 << (gpio_pin_id % 8)));
   0703 74 07         [12] 2151 	mov	a,#0x07
   0705 5F            [12] 2152 	anl	a,r7
   0706 F5 F0         [12] 2153 	mov	b,a
   0708 05 F0         [12] 2154 	inc	b
   070A 74 01         [12] 2155 	mov	a,#0x01
   070C 80 02         [24] 2156 	sjmp	00129$
   070E                    2157 00127$:
   070E 25 E0         [12] 2158 	add	a,acc
   0710                    2159 00129$:
   0710 D5 F0 FB      [24] 2160 	djnz	b,00127$
   0713 F4            [12] 2161 	cpl	a
   0714 52 80         [12] 2162 	anl	_P0,a
   0716 22            [24] 2163 	ret
   0717                    2164 00110$:
                           2165 ;	../src/gpio/src/gpio_pin_val_clear.c:53: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   0717 EF            [12] 2166 	mov	a,r7
   0718 24 F0         [12] 2167 	add	a,#0xff - 0x0F
   071A 40 14         [24] 2168 	jc	00107$
                           2169 ;	../src/gpio/src/gpio_pin_val_clear.c:55: gpio_pins_val_clear(P1, (1 << (gpio_pin_id % 8)));
   071C 74 07         [12] 2170 	mov	a,#0x07
   071E 5F            [12] 2171 	anl	a,r7
   071F F5 F0         [12] 2172 	mov	b,a
   0721 05 F0         [12] 2173 	inc	b
   0723 74 01         [12] 2174 	mov	a,#0x01
   0725 80 02         [24] 2175 	sjmp	00133$
   0727                    2176 00131$:
   0727 25 E0         [12] 2177 	add	a,acc
   0729                    2178 00133$:
   0729 D5 F0 FB      [24] 2179 	djnz	b,00131$
   072C F4            [12] 2180 	cpl	a
   072D 52 90         [12] 2181 	anl	_P1,a
   072F 22            [24] 2182 	ret
   0730                    2183 00107$:
                           2184 ;	../src/gpio/src/gpio_pin_val_clear.c:57: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   0730 EF            [12] 2185 	mov	a,r7
   0731 24 E8         [12] 2186 	add	a,#0xff - 0x17
   0733 40 14         [24] 2187 	jc	00104$
                           2188 ;	../src/gpio/src/gpio_pin_val_clear.c:59: gpio_pins_val_clear(P2, (1 << (gpio_pin_id % 8)));
   0735 74 07         [12] 2189 	mov	a,#0x07
   0737 5F            [12] 2190 	anl	a,r7
   0738 F5 F0         [12] 2191 	mov	b,a
   073A 05 F0         [12] 2192 	inc	b
   073C 74 01         [12] 2193 	mov	a,#0x01
   073E 80 02         [24] 2194 	sjmp	00137$
   0740                    2195 00135$:
   0740 25 E0         [12] 2196 	add	a,acc
   0742                    2197 00137$:
   0742 D5 F0 FB      [24] 2198 	djnz	b,00135$
   0745 F4            [12] 2199 	cpl	a
   0746 52 A0         [12] 2200 	anl	_P2,a
   0748 22            [24] 2201 	ret
   0749                    2202 00104$:
                           2203 ;	../src/gpio/src/gpio_pin_val_clear.c:61: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   0749 EF            [12] 2204 	mov	a,r7
   074A 24 E1         [12] 2205 	add	a,#0xff - 0x1E
   074C 40 14         [24] 2206 	jc	00112$
                           2207 ;	../src/gpio/src/gpio_pin_val_clear.c:63: gpio_pins_val_clear(P3, (1 << (gpio_pin_id % 8)));
   074E 74 07         [12] 2208 	mov	a,#0x07
   0750 5F            [12] 2209 	anl	a,r7
   0751 F5 F0         [12] 2210 	mov	b,a
   0753 05 F0         [12] 2211 	inc	b
   0755 74 01         [12] 2212 	mov	a,#0x01
   0757 80 02         [24] 2213 	sjmp	00141$
   0759                    2214 00139$:
   0759 25 E0         [12] 2215 	add	a,acc
   075B                    2216 00141$:
   075B D5 F0 FB      [24] 2217 	djnz	b,00139$
   075E F4            [12] 2218 	cpl	a
   075F FF            [12] 2219 	mov	r7,a
   0760 52 B0         [12] 2220 	anl	_P3,a
   0762                    2221 00112$:
   0762 22            [24] 2222 	ret
                           2223 ;------------------------------------------------------------
                           2224 ;Allocation info for local variables in function 'gpio_pin_val_set'
                           2225 ;------------------------------------------------------------
                           2226 ;gpio_pin_id               Allocated with name '_gpio_pin_val_set_gpio_pin_id_1_119'
                           2227 ;------------------------------------------------------------
                           2228 ;	../src/gpio/src/gpio_pin_val_set.c:46: void gpio_pin_val_set(gpio_pin_id_t gpio_pin_id)
                           2229 ;	-----------------------------------------
                           2230 ;	 function gpio_pin_val_set
                           2231 ;	-----------------------------------------
   0763                    2232 _gpio_pin_val_set:
   0763 E5 82         [12] 2233 	mov	a,dpl
                           2234 ;	../src/gpio/src/gpio_pin_val_set.c:49: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
   0765 90 00 3A      [24] 2235 	mov	dptr,#_gpio_pin_val_set_gpio_pin_id_1_119
   0768 F0            [24] 2236 	movx	@dptr,a
   0769 FF            [12] 2237 	mov  r7,a
   076A 24 F8         [12] 2238 	add	a,#0xff - 0x07
   076C 40 13         [24] 2239 	jc	00110$
                           2240 ;	../src/gpio/src/gpio_pin_val_set.c:51: gpio_pins_val_set(P0, (1 << (gpio_pin_id % 8)));
   076E 74 07         [12] 2241 	mov	a,#0x07
   0770 5F            [12] 2242 	anl	a,r7
   0771 F5 F0         [12] 2243 	mov	b,a
   0773 05 F0         [12] 2244 	inc	b
   0775 74 01         [12] 2245 	mov	a,#0x01
   0777 80 02         [24] 2246 	sjmp	00129$
   0779                    2247 00127$:
   0779 25 E0         [12] 2248 	add	a,acc
   077B                    2249 00129$:
   077B D5 F0 FB      [24] 2250 	djnz	b,00127$
   077E 42 80         [12] 2251 	orl	_P0,a
   0780 22            [24] 2252 	ret
   0781                    2253 00110$:
                           2254 ;	../src/gpio/src/gpio_pin_val_set.c:53: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
   0781 EF            [12] 2255 	mov	a,r7
   0782 24 F0         [12] 2256 	add	a,#0xff - 0x0F
   0784 40 13         [24] 2257 	jc	00107$
                           2258 ;	../src/gpio/src/gpio_pin_val_set.c:55: gpio_pins_val_set(P1, (1 << (gpio_pin_id % 8)));
   0786 74 07         [12] 2259 	mov	a,#0x07
   0788 5F            [12] 2260 	anl	a,r7
   0789 F5 F0         [12] 2261 	mov	b,a
   078B 05 F0         [12] 2262 	inc	b
   078D 74 01         [12] 2263 	mov	a,#0x01
   078F 80 02         [24] 2264 	sjmp	00133$
   0791                    2265 00131$:
   0791 25 E0         [12] 2266 	add	a,acc
   0793                    2267 00133$:
   0793 D5 F0 FB      [24] 2268 	djnz	b,00131$
   0796 42 90         [12] 2269 	orl	_P1,a
   0798 22            [24] 2270 	ret
   0799                    2271 00107$:
                           2272 ;	../src/gpio/src/gpio_pin_val_set.c:57: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
   0799 EF            [12] 2273 	mov	a,r7
   079A 24 E8         [12] 2274 	add	a,#0xff - 0x17
   079C 40 13         [24] 2275 	jc	00104$
                           2276 ;	../src/gpio/src/gpio_pin_val_set.c:59: gpio_pins_val_set(P2, (1 << (gpio_pin_id % 8)));
   079E 74 07         [12] 2277 	mov	a,#0x07
   07A0 5F            [12] 2278 	anl	a,r7
   07A1 F5 F0         [12] 2279 	mov	b,a
   07A3 05 F0         [12] 2280 	inc	b
   07A5 74 01         [12] 2281 	mov	a,#0x01
   07A7 80 02         [24] 2282 	sjmp	00137$
   07A9                    2283 00135$:
   07A9 25 E0         [12] 2284 	add	a,acc
   07AB                    2285 00137$:
   07AB D5 F0 FB      [24] 2286 	djnz	b,00135$
   07AE 42 A0         [12] 2287 	orl	_P2,a
   07B0 22            [24] 2288 	ret
   07B1                    2289 00104$:
                           2290 ;	../src/gpio/src/gpio_pin_val_set.c:61: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
   07B1 EF            [12] 2291 	mov	a,r7
   07B2 24 E1         [12] 2292 	add	a,#0xff - 0x1E
   07B4 40 13         [24] 2293 	jc	00112$
                           2294 ;	../src/gpio/src/gpio_pin_val_set.c:63: gpio_pins_val_set(P3, (1 << (gpio_pin_id % 8)));
   07B6 74 07         [12] 2295 	mov	a,#0x07
   07B8 5F            [12] 2296 	anl	a,r7
   07B9 F5 F0         [12] 2297 	mov	b,a
   07BB 05 F0         [12] 2298 	inc	b
   07BD 74 01         [12] 2299 	mov	a,#0x01
   07BF 80 02         [24] 2300 	sjmp	00141$
   07C1                    2301 00139$:
   07C1 25 E0         [12] 2302 	add	a,acc
   07C3                    2303 00141$:
   07C3 D5 F0 FB      [24] 2304 	djnz	b,00139$
   07C6 FF            [12] 2305 	mov	r7,a
   07C7 42 B0         [12] 2306 	orl	_P3,a
   07C9                    2307 00112$:
   07C9 22            [24] 2308 	ret
                           2309 ;------------------------------------------------------------
                           2310 ;Allocation info for local variables in function 'gpio_pin_val_write'
                           2311 ;------------------------------------------------------------
                           2312 ;value                     Allocated with name '_gpio_pin_val_write_PARM_2'
                           2313 ;gpio_pin_id               Allocated with name '_gpio_pin_val_write_gpio_pin_id_1_125'
                           2314 ;------------------------------------------------------------
                           2315 ;	../src/gpio/src/gpio_pin_val_write.c:47: void gpio_pin_val_write(gpio_pin_id_t gpio_pin_id, bool value)
                           2316 ;	-----------------------------------------
                           2317 ;	 function gpio_pin_val_write
                           2318 ;	-----------------------------------------
   07CA                    2319 _gpio_pin_val_write:
   07CA E5 82         [12] 2320 	mov	a,dpl
   07CC 90 00 3C      [24] 2321 	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_125
   07CF F0            [24] 2322 	movx	@dptr,a
                           2323 ;	../src/gpio/src/gpio_pin_val_write.c:50: if(value)
   07D0 90 00 3B      [24] 2324 	mov	dptr,#_gpio_pin_val_write_PARM_2
   07D3 E0            [24] 2325 	movx	a,@dptr
   07D4 FF            [12] 2326 	mov	r7,a
   07D5 60 09         [24] 2327 	jz	00102$
                           2328 ;	../src/gpio/src/gpio_pin_val_write.c:52: gpio_pin_val_set(gpio_pin_id);
   07D7 90 00 3C      [24] 2329 	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_125
   07DA E0            [24] 2330 	movx	a,@dptr
   07DB F5 82         [12] 2331 	mov	dpl,a
   07DD 02 07 63      [24] 2332 	ljmp	_gpio_pin_val_set
   07E0                    2333 00102$:
                           2334 ;	../src/gpio/src/gpio_pin_val_write.c:56: gpio_pin_val_clear(gpio_pin_id);
   07E0 90 00 3C      [24] 2335 	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_125
   07E3 E0            [24] 2336 	movx	a,@dptr
   07E4 F5 82         [12] 2337 	mov	dpl,a
   07E6 02 06 F8      [24] 2338 	ljmp	_gpio_pin_val_clear
                           2339 ;------------------------------------------------------------
                           2340 ;Allocation info for local variables in function 'delay_us'
                           2341 ;------------------------------------------------------------
                           2342 ;microseconds              Allocated with name '_delay_us_microseconds_1_129'
                           2343 ;count                     Allocated with name '_delay_us_count_1_130'
                           2344 ;------------------------------------------------------------
                           2345 ;	../src/delay/src/delay_us.c:46: void delay_us(uint16_t microseconds)
                           2346 ;	-----------------------------------------
                           2347 ;	 function delay_us
                           2348 ;	-----------------------------------------
   07E9                    2349 _delay_us:
   07E9 AF 83         [24] 2350 	mov	r7,dph
   07EB E5 82         [12] 2351 	mov	a,dpl
   07ED 90 00 3D      [24] 2352 	mov	dptr,#_delay_us_microseconds_1_129
   07F0 F0            [24] 2353 	movx	@dptr,a
   07F1 EF            [12] 2354 	mov	a,r7
   07F2 A3            [24] 2355 	inc	dptr
   07F3 F0            [24] 2356 	movx	@dptr,a
                           2357 ;	../src/delay/src/delay_us.c:51: if(microseconds == 0)
   07F4 90 00 3D      [24] 2358 	mov	dptr,#_delay_us_microseconds_1_129
   07F7 E0            [24] 2359 	movx	a,@dptr
   07F8 FE            [12] 2360 	mov	r6,a
   07F9 A3            [24] 2361 	inc	dptr
   07FA E0            [24] 2362 	movx	a,@dptr
   07FB FF            [12] 2363 	mov	r7,a
   07FC 4E            [12] 2364 	orl	a,r6
   07FD 70 01         [24] 2365 	jnz	00102$
                           2366 ;	../src/delay/src/delay_us.c:52: return;
   07FF 22            [24] 2367 	ret
   0800                    2368 00102$:
                           2369 ;	../src/delay/src/delay_us.c:54: microseconds -= 1;
   0800 1E            [12] 2370 	dec	r6
   0801 BE FF 01      [24] 2371 	cjne	r6,#0xFF,00121$
   0804 1F            [12] 2372 	dec	r7
   0805                    2373 00121$:
   0805 90 00 3D      [24] 2374 	mov	dptr,#_delay_us_microseconds_1_129
   0808 EE            [12] 2375 	mov	a,r6
   0809 F0            [24] 2376 	movx	@dptr,a
   080A EF            [12] 2377 	mov	a,r7
   080B A3            [24] 2378 	inc	dptr
   080C F0            [24] 2379 	movx	@dptr,a
                           2380 ;	../src/delay/src/delay_us.c:56: for(count = 0; count < microseconds; count++)
   080D 90 00 3D      [24] 2381 	mov	dptr,#_delay_us_microseconds_1_129
   0810 E0            [24] 2382 	movx	a,@dptr
   0811 FE            [12] 2383 	mov	r6,a
   0812 A3            [24] 2384 	inc	dptr
   0813 E0            [24] 2385 	movx	a,@dptr
   0814 FF            [12] 2386 	mov	r7,a
   0815 7C 00         [12] 2387 	mov	r4,#0x00
   0817 7D 00         [12] 2388 	mov	r5,#0x00
   0819                    2389 00106$:
   0819 C3            [12] 2390 	clr	c
   081A EC            [12] 2391 	mov	a,r4
   081B 9E            [12] 2392 	subb	a,r6
   081C ED            [12] 2393 	mov	a,r5
   081D 9F            [12] 2394 	subb	a,r7
   081E 50 09         [24] 2395 	jnc	00108$
                           2396 ;	../src/delay/src/delay_us.c:58: nop();
   0820 00            [12] 2397 	nop 
                           2398 ;	../src/delay/src/delay_us.c:59: nop();
   0821 00            [12] 2399 	nop 
                           2400 ;	../src/delay/src/delay_us.c:56: for(count = 0; count < microseconds; count++)
   0822 0C            [12] 2401 	inc	r4
   0823 BC 00 F3      [24] 2402 	cjne	r4,#0x00,00106$
   0826 0D            [12] 2403 	inc	r5
   0827 80 F0         [24] 2404 	sjmp	00106$
   0829                    2405 00108$:
   0829 22            [24] 2406 	ret
                           2407 ;------------------------------------------------------------
                           2408 ;Allocation info for local variables in function 'delay_s'
                           2409 ;------------------------------------------------------------
                           2410 ;seconds                   Allocated with name '_delay_s_seconds_1_132'
                           2411 ;count                     Allocated with name '_delay_s_count_1_133'
                           2412 ;------------------------------------------------------------
                           2413 ;	../src/delay/src/delay_s.c:46: void delay_s(uint16_t seconds)
                           2414 ;	-----------------------------------------
                           2415 ;	 function delay_s
                           2416 ;	-----------------------------------------
   082A                    2417 _delay_s:
   082A AF 83         [24] 2418 	mov	r7,dph
   082C E5 82         [12] 2419 	mov	a,dpl
   082E 90 00 3F      [24] 2420 	mov	dptr,#_delay_s_seconds_1_132
   0831 F0            [24] 2421 	movx	@dptr,a
   0832 EF            [12] 2422 	mov	a,r7
   0833 A3            [24] 2423 	inc	dptr
   0834 F0            [24] 2424 	movx	@dptr,a
                           2425 ;	../src/delay/src/delay_s.c:51: for(count = 0; count < seconds; count++)
   0835 90 00 3F      [24] 2426 	mov	dptr,#_delay_s_seconds_1_132
   0838 E0            [24] 2427 	movx	a,@dptr
   0839 FE            [12] 2428 	mov	r6,a
   083A A3            [24] 2429 	inc	dptr
   083B E0            [24] 2430 	movx	a,@dptr
   083C FF            [12] 2431 	mov	r7,a
   083D 7C 00         [12] 2432 	mov	r4,#0x00
   083F 7D 00         [12] 2433 	mov	r5,#0x00
   0841                    2434 00103$:
   0841 C3            [12] 2435 	clr	c
   0842 EC            [12] 2436 	mov	a,r4
   0843 9E            [12] 2437 	subb	a,r6
   0844 ED            [12] 2438 	mov	a,r5
   0845 9F            [12] 2439 	subb	a,r7
   0846 50 1D         [24] 2440 	jnc	00105$
                           2441 ;	../src/delay/src/delay_s.c:53: delay_ms(1000);
   0848 90 03 E8      [24] 2442 	mov	dptr,#0x03E8
   084B C0 07         [24] 2443 	push	ar7
   084D C0 06         [24] 2444 	push	ar6
   084F C0 05         [24] 2445 	push	ar5
   0851 C0 04         [24] 2446 	push	ar4
   0853 12 08 66      [24] 2447 	lcall	_delay_ms
   0856 D0 04         [24] 2448 	pop	ar4
   0858 D0 05         [24] 2449 	pop	ar5
   085A D0 06         [24] 2450 	pop	ar6
   085C D0 07         [24] 2451 	pop	ar7
                           2452 ;	../src/delay/src/delay_s.c:51: for(count = 0; count < seconds; count++)
   085E 0C            [12] 2453 	inc	r4
   085F BC 00 DF      [24] 2454 	cjne	r4,#0x00,00103$
   0862 0D            [12] 2455 	inc	r5
   0863 80 DC         [24] 2456 	sjmp	00103$
   0865                    2457 00105$:
   0865 22            [24] 2458 	ret
                           2459 ;------------------------------------------------------------
                           2460 ;Allocation info for local variables in function 'delay_ms'
                           2461 ;------------------------------------------------------------
                           2462 ;milliseconds              Allocated with name '_delay_ms_milliseconds_1_135'
                           2463 ;count                     Allocated with name '_delay_ms_count_1_136'
                           2464 ;------------------------------------------------------------
                           2465 ;	../src/delay/src/delay_ms.c:46: void delay_ms(uint16_t milliseconds)
                           2466 ;	-----------------------------------------
                           2467 ;	 function delay_ms
                           2468 ;	-----------------------------------------
   0866                    2469 _delay_ms:
   0866 AF 83         [24] 2470 	mov	r7,dph
   0868 E5 82         [12] 2471 	mov	a,dpl
   086A 90 00 41      [24] 2472 	mov	dptr,#_delay_ms_milliseconds_1_135
   086D F0            [24] 2473 	movx	@dptr,a
   086E EF            [12] 2474 	mov	a,r7
   086F A3            [24] 2475 	inc	dptr
   0870 F0            [24] 2476 	movx	@dptr,a
                           2477 ;	../src/delay/src/delay_ms.c:51: for(count = 0; count < milliseconds; count++)
   0871 90 00 41      [24] 2478 	mov	dptr,#_delay_ms_milliseconds_1_135
   0874 E0            [24] 2479 	movx	a,@dptr
   0875 FE            [12] 2480 	mov	r6,a
   0876 A3            [24] 2481 	inc	dptr
   0877 E0            [24] 2482 	movx	a,@dptr
   0878 FF            [12] 2483 	mov	r7,a
   0879 7C 00         [12] 2484 	mov	r4,#0x00
   087B 7D 00         [12] 2485 	mov	r5,#0x00
   087D                    2486 00103$:
   087D C3            [12] 2487 	clr	c
   087E EC            [12] 2488 	mov	a,r4
   087F 9E            [12] 2489 	subb	a,r6
   0880 ED            [12] 2490 	mov	a,r5
   0881 9F            [12] 2491 	subb	a,r7
   0882 50 1D         [24] 2492 	jnc	00105$
                           2493 ;	../src/delay/src/delay_ms.c:53: delay_us(1000);
   0884 90 03 E8      [24] 2494 	mov	dptr,#0x03E8
   0887 C0 07         [24] 2495 	push	ar7
   0889 C0 06         [24] 2496 	push	ar6
   088B C0 05         [24] 2497 	push	ar5
   088D C0 04         [24] 2498 	push	ar4
   088F 12 07 E9      [24] 2499 	lcall	_delay_us
   0892 D0 04         [24] 2500 	pop	ar4
   0894 D0 05         [24] 2501 	pop	ar5
   0896 D0 06         [24] 2502 	pop	ar6
   0898 D0 07         [24] 2503 	pop	ar7
                           2504 ;	../src/delay/src/delay_ms.c:51: for(count = 0; count < milliseconds; count++)
   089A 0C            [12] 2505 	inc	r4
   089B BC 00 DF      [24] 2506 	cjne	r4,#0x00,00103$
   089E 0D            [12] 2507 	inc	r5
   089F 80 DC         [24] 2508 	sjmp	00103$
   08A1                    2509 00105$:
   08A1 22            [24] 2510 	ret
                           2511 ;------------------------------------------------------------
                           2512 ;Allocation info for local variables in function 'pwm_configure'
                           2513 ;------------------------------------------------------------
                           2514 ;pwm_config_options        Allocated with name '_pwm_configure_pwm_config_options_1_140'
                           2515 ;------------------------------------------------------------
                           2516 ;	../src/pwm/src/pwm_configure.c:52: void pwm_configure(uint8_t pwm_config_options)
                           2517 ;	-----------------------------------------
                           2518 ;	 function pwm_configure
                           2519 ;	-----------------------------------------
   08A2                    2520 _pwm_configure:
   08A2 E5 82         [12] 2521 	mov	a,dpl
   08A4 90 00 43      [24] 2522 	mov	dptr,#_pwm_configure_pwm_config_options_1_140
   08A7 F0            [24] 2523 	movx	@dptr,a
                           2524 ;	../src/pwm/src/pwm_configure.c:55: PWMCON = (PWMCON & ~PWM_CONFIG_OPTION_PWMCON_MASK) | (pwm_config_options & PWM_CONFIG_OPTION_PWMCON_MASK);
   08A8 AF B2         [24] 2525 	mov	r7,_PWMCON
   08AA 53 07 03      [24] 2526 	anl	ar7,#0x03
   08AD 90 00 43      [24] 2527 	mov	dptr,#_pwm_configure_pwm_config_options_1_140
   08B0 E0            [24] 2528 	movx	a,@dptr
   08B1 54 FC         [12] 2529 	anl	a,#0xFC
   08B3 4F            [12] 2530 	orl	a,r7
   08B4 F5 B2         [12] 2531 	mov	_PWMCON,a
   08B6 22            [24] 2532 	ret
                           2533 ;------------------------------------------------------------
                           2534 ;Allocation info for local variables in function 'pwm_start'
                           2535 ;------------------------------------------------------------
                           2536 ;pwm_duty_cycle            Allocated with name '_pwm_start_PARM_2'
                           2537 ;pwm_channel               Allocated with name '_pwm_start_pwm_channel_1_142'
                           2538 ;------------------------------------------------------------
                           2539 ;	../src/pwm/src/pwm_start.c:47: void pwm_start(pwm_channel_t pwm_channel, uint8_t pwm_duty_cycle)
                           2540 ;	-----------------------------------------
                           2541 ;	 function pwm_start
                           2542 ;	-----------------------------------------
   08B7                    2543 _pwm_start:
   08B7 E5 82         [12] 2544 	mov	a,dpl
                           2545 ;	../src/pwm/src/pwm_start.c:50: if(pwm_channel == PWM_CHANNEL_0)
   08B9 90 00 45      [24] 2546 	mov	dptr,#_pwm_start_pwm_channel_1_142
   08BC F0            [24] 2547 	movx	@dptr,a
   08BD FF            [12] 2548 	mov	r7,a
   08BE 70 0A         [24] 2549 	jnz	00102$
                           2550 ;	../src/pwm/src/pwm_start.c:52: PWMDC0 = pwm_duty_cycle;
   08C0 90 00 44      [24] 2551 	mov	dptr,#_pwm_start_PARM_2
   08C3 E0            [24] 2552 	movx	a,@dptr
   08C4 F5 A1         [12] 2553 	mov	_PWMDC0,a
                           2554 ;	../src/pwm/src/pwm_start.c:53: reg_bits_set(PWMCON, PWMCON_PWM0_ENABLE);
   08C6 43 B2 01      [24] 2555 	orl	_PWMCON,#0x01
   08C9 22            [24] 2556 	ret
   08CA                    2557 00102$:
                           2558 ;	../src/pwm/src/pwm_start.c:57: PWMDC1 = pwm_duty_cycle;
   08CA 90 00 44      [24] 2559 	mov	dptr,#_pwm_start_PARM_2
   08CD E0            [24] 2560 	movx	a,@dptr
   08CE F5 A2         [12] 2561 	mov	_PWMDC1,a
                           2562 ;	../src/pwm/src/pwm_start.c:58: reg_bits_set(PWMCON, PWMCON_PWM1_ENABLE);
   08D0 43 B2 02      [24] 2563 	orl	_PWMCON,#0x02
   08D3 22            [24] 2564 	ret
                           2565 ;------------------------------------------------------------
                           2566 ;Allocation info for local variables in function 'pwr_clk_mgmt_clklf_configure'
                           2567 ;------------------------------------------------------------
                           2568 ;clklf_config_options      Allocated with name '_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_151'
                           2569 ;------------------------------------------------------------
                           2570 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_clklf_configure.c:52: void pwr_clk_mgmt_clklf_configure(uint8_t clklf_config_options)
                           2571 ;	-----------------------------------------
                           2572 ;	 function pwr_clk_mgmt_clklf_configure
                           2573 ;	-----------------------------------------
   08D4                    2574 _pwr_clk_mgmt_clklf_configure:
   08D4 E5 82         [12] 2575 	mov	a,dpl
   08D6 90 00 46      [24] 2576 	mov	dptr,#_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_151
   08D9 F0            [24] 2577 	movx	@dptr,a
                           2578 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_clklf_configure.c:55: CLKLFCTRL = (CLKLFCTRL & ~PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLKLFCTRL_MASK) | (clklf_config_options & PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLKLFCTRL_MASK);
   08DA AF AD         [24] 2579 	mov	r7,_CLKLFCTRL
   08DC 53 07 F8      [24] 2580 	anl	ar7,#0xF8
   08DF 90 00 46      [24] 2581 	mov	dptr,#_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_151
   08E2 E0            [24] 2582 	movx	a,@dptr
   08E3 54 07         [12] 2583 	anl	a,#0x07
   08E5 4F            [12] 2584 	orl	a,r7
   08E6 F5 AD         [12] 2585 	mov	_CLKLFCTRL,a
   08E8 22            [24] 2586 	ret
                           2587 ;------------------------------------------------------------
                           2588 ;Allocation info for local variables in function 'pwr_clk_mgmt_get_cclk_freq_in_hz'
                           2589 ;------------------------------------------------------------
                           2590 ;divider                   Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_divider_1_153'
                           2591 ;i                         Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_i_1_153'
                           2592 ;cclk_freq_hz              Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_153'
                           2593 ;------------------------------------------------------------
                           2594 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:46: uint32_t pwr_clk_mgmt_get_cclk_freq_in_hz()
                           2595 ;	-----------------------------------------
                           2596 ;	 function pwr_clk_mgmt_get_cclk_freq_in_hz
                           2597 ;	-----------------------------------------
   08E9                    2598 _pwr_clk_mgmt_get_cclk_freq_in_hz:
                           2599 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:48: uint8_t divider = (CLKCTRL & CLKCTRL_CLK_FREQ_MASK) >> CLKCTRL_CLK_FREQ_SHIFT;
   08E9 74 07         [12] 2600 	mov	a,#0x07
   08EB 55 A3         [12] 2601 	anl	a,_CLKCTRL
   08ED FF            [12] 2602 	mov	r7,a
                           2603 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:50: uint32_t cclk_freq_hz = CCLK_MAX_FREQ_HZ;
   08EE 90 00 47      [24] 2604 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_153
   08F1 E4            [12] 2605 	clr	a
   08F2 F0            [24] 2606 	movx	@dptr,a
   08F3 74 24         [12] 2607 	mov	a,#0x24
   08F5 A3            [24] 2608 	inc	dptr
   08F6 F0            [24] 2609 	movx	@dptr,a
   08F7 74 F4         [12] 2610 	mov	a,#0xF4
   08F9 A3            [24] 2611 	inc	dptr
   08FA F0            [24] 2612 	movx	@dptr,a
   08FB E4            [12] 2613 	clr	a
   08FC A3            [24] 2614 	inc	dptr
   08FD F0            [24] 2615 	movx	@dptr,a
                           2616 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:52: for(i = 0; i < divider; i++)
   08FE 7E 00         [12] 2617 	mov	r6,#0x00
   0900                    2618 00103$:
   0900 C3            [12] 2619 	clr	c
   0901 EE            [12] 2620 	mov	a,r6
   0902 9F            [12] 2621 	subb	a,r7
   0903 50 29         [24] 2622 	jnc	00101$
                           2623 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:54: cclk_freq_hz /= 2;
   0905 90 00 47      [24] 2624 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_153
   0908 E0            [24] 2625 	movx	a,@dptr
   0909 FA            [12] 2626 	mov	r2,a
   090A A3            [24] 2627 	inc	dptr
   090B E0            [24] 2628 	movx	a,@dptr
   090C FB            [12] 2629 	mov	r3,a
   090D A3            [24] 2630 	inc	dptr
   090E E0            [24] 2631 	movx	a,@dptr
   090F FC            [12] 2632 	mov	r4,a
   0910 A3            [24] 2633 	inc	dptr
   0911 E0            [24] 2634 	movx	a,@dptr
   0912 C3            [12] 2635 	clr	c
   0913 13            [12] 2636 	rrc	a
   0914 FD            [12] 2637 	mov	r5,a
   0915 EC            [12] 2638 	mov	a,r4
   0916 13            [12] 2639 	rrc	a
   0917 FC            [12] 2640 	mov	r4,a
   0918 EB            [12] 2641 	mov	a,r3
   0919 13            [12] 2642 	rrc	a
   091A FB            [12] 2643 	mov	r3,a
   091B EA            [12] 2644 	mov	a,r2
   091C 13            [12] 2645 	rrc	a
   091D FA            [12] 2646 	mov	r2,a
   091E 90 00 47      [24] 2647 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_153
   0921 F0            [24] 2648 	movx	@dptr,a
   0922 EB            [12] 2649 	mov	a,r3
   0923 A3            [24] 2650 	inc	dptr
   0924 F0            [24] 2651 	movx	@dptr,a
   0925 EC            [12] 2652 	mov	a,r4
   0926 A3            [24] 2653 	inc	dptr
   0927 F0            [24] 2654 	movx	@dptr,a
   0928 ED            [12] 2655 	mov	a,r5
   0929 A3            [24] 2656 	inc	dptr
   092A F0            [24] 2657 	movx	@dptr,a
                           2658 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:52: for(i = 0; i < divider; i++)
   092B 0E            [12] 2659 	inc	r6
   092C 80 D2         [24] 2660 	sjmp	00103$
   092E                    2661 00101$:
                           2662 ;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:57: return cclk_freq_hz;
   092E 90 00 47      [24] 2663 	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_153
   0931 E0            [24] 2664 	movx	a,@dptr
   0932 FC            [12] 2665 	mov	r4,a
   0933 A3            [24] 2666 	inc	dptr
   0934 E0            [24] 2667 	movx	a,@dptr
   0935 FD            [12] 2668 	mov	r5,a
   0936 A3            [24] 2669 	inc	dptr
   0937 E0            [24] 2670 	movx	a,@dptr
   0938 FE            [12] 2671 	mov	r6,a
   0939 A3            [24] 2672 	inc	dptr
   093A E0            [24] 2673 	movx	a,@dptr
   093B 8C 82         [24] 2674 	mov	dpl,r4
   093D 8D 83         [24] 2675 	mov	dph,r5
   093F 8E F0         [24] 2676 	mov	b,r6
   0941 22            [24] 2677 	ret
                           2678 ;------------------------------------------------------------
                           2679 ;Allocation info for local variables in function 'watchdog_set_wdsv_count'
                           2680 ;------------------------------------------------------------
                           2681 ;wdsv_value                Allocated with name '_watchdog_set_wdsv_count_wdsv_value_1_156'
                           2682 ;------------------------------------------------------------
                           2683 ;	../src/watchdog/src/watchdog_set_wdsv_count.c:46: void watchdog_set_wdsv_count(uint16_t wdsv_value)
                           2684 ;	-----------------------------------------
                           2685 ;	 function watchdog_set_wdsv_count
                           2686 ;	-----------------------------------------
   0942                    2687 _watchdog_set_wdsv_count:
   0942 AF 83         [24] 2688 	mov	r7,dph
   0944 E5 82         [12] 2689 	mov	a,dpl
   0946 90 00 4B      [24] 2690 	mov	dptr,#_watchdog_set_wdsv_count_wdsv_value_1_156
   0949 F0            [24] 2691 	movx	@dptr,a
   094A EF            [12] 2692 	mov	a,r7
   094B A3            [24] 2693 	inc	dptr
   094C F0            [24] 2694 	movx	@dptr,a
                           2695 ;	../src/watchdog/src/watchdog_set_wdsv_count.c:49: WDSV = (uint8_t)wdsv_value;
   094D 90 00 4B      [24] 2696 	mov	dptr,#_watchdog_set_wdsv_count_wdsv_value_1_156
   0950 E0            [24] 2697 	movx	a,@dptr
   0951 FE            [12] 2698 	mov	r6,a
   0952 A3            [24] 2699 	inc	dptr
   0953 E0            [24] 2700 	movx	a,@dptr
   0954 FF            [12] 2701 	mov	r7,a
   0955 8E AF         [24] 2702 	mov	_WDSV,r6
                           2703 ;	../src/watchdog/src/watchdog_set_wdsv_count.c:50: WDSV = (uint8_t)(wdsv_value >> 8);
   0957 8F AF         [24] 2704 	mov	_WDSV,r7
   0959 22            [24] 2705 	ret
                           2706 ;------------------------------------------------------------
                           2707 ;Allocation info for local variables in function 'watchdog_start_and_set_timeout_in_ms'
                           2708 ;------------------------------------------------------------
                           2709 ;milliseconds              Allocated with name '_watchdog_start_and_set_timeout_in_ms_milliseconds_1_158'
                           2710 ;wd_value                  Allocated with name '_watchdog_start_and_set_timeout_in_ms_wd_value_1_159'
                           2711 ;------------------------------------------------------------
                           2712 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:50: uint16_t watchdog_start_and_set_timeout_in_ms(uint32_t milliseconds)
                           2713 ;	-----------------------------------------
                           2714 ;	 function watchdog_start_and_set_timeout_in_ms
                           2715 ;	-----------------------------------------
   095A                    2716 _watchdog_start_and_set_timeout_in_ms:
   095A AF 82         [24] 2717 	mov	r7,dpl
   095C AE 83         [24] 2718 	mov	r6,dph
   095E AD F0         [24] 2719 	mov	r5,b
   0960 FC            [12] 2720 	mov	r4,a
   0961 90 00 4D      [24] 2721 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_milliseconds_1_158
   0964 EF            [12] 2722 	mov	a,r7
   0965 F0            [24] 2723 	movx	@dptr,a
   0966 EE            [12] 2724 	mov	a,r6
   0967 A3            [24] 2725 	inc	dptr
   0968 F0            [24] 2726 	movx	@dptr,a
   0969 ED            [12] 2727 	mov	a,r5
   096A A3            [24] 2728 	inc	dptr
   096B F0            [24] 2729 	movx	@dptr,a
   096C EC            [12] 2730 	mov	a,r4
   096D A3            [24] 2731 	inc	dptr
   096E F0            [24] 2732 	movx	@dptr,a
                           2733 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:52: uint16_t wd_value = 0;
   096F 90 00 51      [24] 2734 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_159
   0972 E4            [12] 2735 	clr	a
   0973 F0            [24] 2736 	movx	@dptr,a
   0974 E4            [12] 2737 	clr	a
   0975 A3            [24] 2738 	inc	dptr
   0976 F0            [24] 2739 	movx	@dptr,a
                           2740 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:55: if(!pwr_clk_mgmt_is_clklf_enabled())
   0977 74 07         [12] 2741 	mov	a,#0x07
   0979 55 AD         [12] 2742 	anl	a,_CLKLFCTRL
   097B FF            [12] 2743 	mov	r7,a
   097C BF 07 0B      [24] 2744 	cjne	r7,#0x07,00105$
                           2745 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:58: pwr_clk_mgmt_clklf_configure(PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLK_SRC_XOSC16M);
   097F 75 82 02      [24] 2746 	mov	dpl,#0x02
   0982 12 08 D4      [24] 2747 	lcall	_pwr_clk_mgmt_clklf_configure
                           2748 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:59: pwr_clk_mgmt_wait_until_clklf_is_ready();
   0985                    2749 00101$:
   0985 E5 AD         [12] 2750 	mov	a,_CLKLFCTRL
   0987 30 E6 FB      [24] 2751 	jnb	acc.6,00101$
   098A                    2752 00105$:
                           2753 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:63: if(milliseconds < 511992)
   098A 90 00 4D      [24] 2754 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_milliseconds_1_158
   098D E0            [24] 2755 	movx	a,@dptr
   098E FC            [12] 2756 	mov	r4,a
   098F A3            [24] 2757 	inc	dptr
   0990 E0            [24] 2758 	movx	a,@dptr
   0991 FD            [12] 2759 	mov	r5,a
   0992 A3            [24] 2760 	inc	dptr
   0993 E0            [24] 2761 	movx	a,@dptr
   0994 FE            [12] 2762 	mov	r6,a
   0995 A3            [24] 2763 	inc	dptr
   0996 E0            [24] 2764 	movx	a,@dptr
   0997 FF            [12] 2765 	mov	r7,a
   0998 C3            [12] 2766 	clr	c
   0999 EC            [12] 2767 	mov	a,r4
   099A 94 F8         [12] 2768 	subb	a,#0xF8
   099C ED            [12] 2769 	mov	a,r5
   099D 94 CF         [12] 2770 	subb	a,#0xCF
   099F EE            [12] 2771 	mov	a,r6
   09A0 94 07         [12] 2772 	subb	a,#0x07
   09A2 EF            [12] 2773 	mov	a,r7
   09A3 94 00         [12] 2774 	subb	a,#0x00
   09A5 50 52         [24] 2775 	jnc	00107$
                           2776 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:90: wd_value = (uint16_t)(((uint32_t)(milliseconds * ((uint32_t)128)) + (uint32_t)500) / ((uint32_t)1000));
   09A7 EF            [12] 2777 	mov	a,r7
   09A8 54 01         [12] 2778 	anl	a,#0x01
   09AA A2 E0         [12] 2779 	mov	c,acc.0
   09AC CE            [12] 2780 	xch	a,r6
   09AD 13            [12] 2781 	rrc	a
   09AE CE            [12] 2782 	xch	a,r6
   09AF 13            [12] 2783 	rrc	a
   09B0 CE            [12] 2784 	xch	a,r6
   09B1 FF            [12] 2785 	mov	r7,a
   09B2 ED            [12] 2786 	mov	a,r5
   09B3 C3            [12] 2787 	clr	c
   09B4 13            [12] 2788 	rrc	a
   09B5 4E            [12] 2789 	orl	a,r6
   09B6 FE            [12] 2790 	mov	r6,a
   09B7 ED            [12] 2791 	mov	a,r5
   09B8 54 01         [12] 2792 	anl	a,#0x01
   09BA A2 E0         [12] 2793 	mov	c,acc.0
   09BC CC            [12] 2794 	xch	a,r4
   09BD 13            [12] 2795 	rrc	a
   09BE CC            [12] 2796 	xch	a,r4
   09BF 13            [12] 2797 	rrc	a
   09C0 CC            [12] 2798 	xch	a,r4
   09C1 FD            [12] 2799 	mov	r5,a
   09C2 74 F4         [12] 2800 	mov	a,#0xF4
   09C4 2C            [12] 2801 	add	a,r4
   09C5 FC            [12] 2802 	mov	r4,a
   09C6 74 01         [12] 2803 	mov	a,#0x01
   09C8 3D            [12] 2804 	addc	a,r5
   09C9 FD            [12] 2805 	mov	r5,a
   09CA E4            [12] 2806 	clr	a
   09CB 3E            [12] 2807 	addc	a,r6
   09CC FE            [12] 2808 	mov	r6,a
   09CD E4            [12] 2809 	clr	a
   09CE 3F            [12] 2810 	addc	a,r7
   09CF FF            [12] 2811 	mov	r7,a
   09D0 90 00 63      [24] 2812 	mov	dptr,#__divulong_PARM_2
   09D3 74 E8         [12] 2813 	mov	a,#0xE8
   09D5 F0            [24] 2814 	movx	@dptr,a
   09D6 74 03         [12] 2815 	mov	a,#0x03
   09D8 A3            [24] 2816 	inc	dptr
   09D9 F0            [24] 2817 	movx	@dptr,a
   09DA E4            [12] 2818 	clr	a
   09DB A3            [24] 2819 	inc	dptr
   09DC F0            [24] 2820 	movx	@dptr,a
   09DD E4            [12] 2821 	clr	a
   09DE A3            [24] 2822 	inc	dptr
   09DF F0            [24] 2823 	movx	@dptr,a
   09E0 8C 82         [24] 2824 	mov	dpl,r4
   09E2 8D 83         [24] 2825 	mov	dph,r5
   09E4 8E F0         [24] 2826 	mov	b,r6
   09E6 EF            [12] 2827 	mov	a,r7
   09E7 12 0C A3      [24] 2828 	lcall	__divulong
   09EA AC 82         [24] 2829 	mov	r4,dpl
   09EC AD 83         [24] 2830 	mov	r5,dph
   09EE AE F0         [24] 2831 	mov	r6,b
   09F0 FF            [12] 2832 	mov	r7,a
   09F1 90 00 51      [24] 2833 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_159
   09F4 EC            [12] 2834 	mov	a,r4
   09F5 F0            [24] 2835 	movx	@dptr,a
   09F6 ED            [12] 2836 	mov	a,r5
   09F7 A3            [24] 2837 	inc	dptr
   09F8 F0            [24] 2838 	movx	@dptr,a
   09F9                    2839 00107$:
                           2840 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:93: watchdog_set_wdsv_count(wd_value);
   09F9 90 00 51      [24] 2841 	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_159
   09FC E0            [24] 2842 	movx	a,@dptr
   09FD FE            [12] 2843 	mov	r6,a
   09FE A3            [24] 2844 	inc	dptr
   09FF E0            [24] 2845 	movx	a,@dptr
   0A00 FF            [12] 2846 	mov	r7,a
   0A01 8E 82         [24] 2847 	mov	dpl,r6
   0A03 8F 83         [24] 2848 	mov	dph,r7
   0A05 C0 07         [24] 2849 	push	ar7
   0A07 C0 06         [24] 2850 	push	ar6
   0A09 12 09 42      [24] 2851 	lcall	_watchdog_set_wdsv_count
   0A0C D0 06         [24] 2852 	pop	ar6
   0A0E D0 07         [24] 2853 	pop	ar7
                           2854 ;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:95: return wd_value;
   0A10 8E 82         [24] 2855 	mov	dpl,r6
   0A12 8F 83         [24] 2856 	mov	dph,r7
   0A14 22            [24] 2857 	ret
                           2858 ;------------------------------------------------------------
                           2859 ;Allocation info for local variables in function 'interrupt_configure_ifp'
                           2860 ;------------------------------------------------------------
                           2861 ;ifp_int_config_options    Allocated with name '_interrupt_configure_ifp_PARM_2'
                           2862 ;interrupt_ifp_input       Allocated with name '_interrupt_configure_ifp_interrupt_ifp_input_1_162'
                           2863 ;------------------------------------------------------------
                           2864 ;	../src/interrupt/src/interrupt_configure_ifp.c:57: bool interrupt_configure_ifp(interrupt_ifp_input_t interrupt_ifp_input, uint8_t ifp_int_config_options)
                           2865 ;	-----------------------------------------
                           2866 ;	 function interrupt_configure_ifp
                           2867 ;	-----------------------------------------
   0A15                    2868 _interrupt_configure_ifp:
   0A15 E5 82         [12] 2869 	mov	a,dpl
   0A17 90 00 54      [24] 2870 	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_162
   0A1A F0            [24] 2871 	movx	@dptr,a
                           2872 ;	../src/interrupt/src/interrupt_configure_ifp.c:60: if(ifp_int_config_options & INTERRUPT_IFP_CONFIG_OPTION_ENABLE)
   0A1B 90 00 53      [24] 2873 	mov	dptr,#_interrupt_configure_ifp_PARM_2
   0A1E E0            [24] 2874 	movx	a,@dptr
   0A1F FF            [12] 2875 	mov	r7,a
   0A20 30 E7 41      [24] 2876 	jnb	acc.7,00116$
                           2877 ;	../src/interrupt/src/interrupt_configure_ifp.c:63: if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT0)
   0A23 90 00 54      [24] 2878 	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_162
   0A26 E0            [24] 2879 	movx	a,@dptr
   0A27 FE            [12] 2880 	mov	r6,a
   0A28 BE 08 0B      [24] 2881 	cjne	r6,#0x08,00108$
                           2882 ;	../src/interrupt/src/interrupt_configure_ifp.c:65: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT0;
   0A2B AD A6         [24] 2883 	mov	r5,_INTEXP
   0A2D 74 C7         [12] 2884 	mov	a,#0xC7
   0A2F 5D            [12] 2885 	anl	a,r5
   0A30 44 08         [12] 2886 	orl	a,#0x08
   0A32 F5 A6         [12] 2887 	mov	_INTEXP,a
   0A34 80 20         [24] 2888 	sjmp	00109$
   0A36                    2889 00108$:
                           2890 ;	../src/interrupt/src/interrupt_configure_ifp.c:67: else if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT1)
   0A36 BE 10 0B      [24] 2891 	cjne	r6,#0x10,00105$
                           2892 ;	../src/interrupt/src/interrupt_configure_ifp.c:69: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT1;
   0A39 AD A6         [24] 2893 	mov	r5,_INTEXP
   0A3B 74 C7         [12] 2894 	mov	a,#0xC7
   0A3D 5D            [12] 2895 	anl	a,r5
   0A3E 44 10         [12] 2896 	orl	a,#0x10
   0A40 F5 A6         [12] 2897 	mov	_INTEXP,a
   0A42 80 12         [24] 2898 	sjmp	00109$
   0A44                    2899 00105$:
                           2900 ;	../src/interrupt/src/interrupt_configure_ifp.c:71: else if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT2)
   0A44 BE 20 0B      [24] 2901 	cjne	r6,#0x20,00102$
                           2902 ;	../src/interrupt/src/interrupt_configure_ifp.c:73: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT2;
   0A47 AE A6         [24] 2903 	mov	r6,_INTEXP
   0A49 74 C7         [12] 2904 	mov	a,#0xC7
   0A4B 5E            [12] 2905 	anl	a,r6
   0A4C 44 20         [12] 2906 	orl	a,#0x20
   0A4E F5 A6         [12] 2907 	mov	_INTEXP,a
   0A50 80 04         [24] 2908 	sjmp	00109$
   0A52                    2909 00102$:
                           2910 ;	../src/interrupt/src/interrupt_configure_ifp.c:78: return false;
   0A52 75 82 00      [24] 2911 	mov	dpl,#0x00
   0A55 22            [24] 2912 	ret
   0A56                    2913 00109$:
                           2914 ;	../src/interrupt/src/interrupt_configure_ifp.c:82: TCON = (TCON & ~INTERRUPT_IFP_CONFIG_TCON_MASK) | (ifp_int_config_options & INTERRUPT_IFP_CONFIG_TCON_MASK);
   0A56 AE 88         [24] 2915 	mov	r6,_TCON
   0A58 53 06 FE      [24] 2916 	anl	ar6,#0xFE
   0A5B 53 07 01      [24] 2917 	anl	ar7,#0x01
   0A5E EF            [12] 2918 	mov	a,r7
   0A5F 4E            [12] 2919 	orl	a,r6
   0A60 F5 88         [12] 2920 	mov	_TCON,a
   0A62 80 1F         [24] 2921 	sjmp	00117$
   0A64                    2922 00116$:
                           2923 ;	../src/interrupt/src/interrupt_configure_ifp.c:87: if((interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT0) || (interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT1) || (interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT2))
   0A64 90 00 54      [24] 2924 	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_162
   0A67 E0            [24] 2925 	movx	a,@dptr
   0A68 FF            [12] 2926 	mov	r7,a
   0A69 BF 08 02      [24] 2927 	cjne	r7,#0x08,00145$
   0A6C 80 08         [24] 2928 	sjmp	00110$
   0A6E                    2929 00145$:
   0A6E BF 10 02      [24] 2930 	cjne	r7,#0x10,00146$
   0A71 80 03         [24] 2931 	sjmp	00110$
   0A73                    2932 00146$:
   0A73 BF 20 09      [24] 2933 	cjne	r7,#0x20,00111$
   0A76                    2934 00110$:
                           2935 ;	../src/interrupt/src/interrupt_configure_ifp.c:89: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK);
   0A76 AF A6         [24] 2936 	mov	r7,_INTEXP
   0A78 74 C7         [12] 2937 	mov	a,#0xC7
   0A7A 5F            [12] 2938 	anl	a,r7
   0A7B F5 A6         [12] 2939 	mov	_INTEXP,a
   0A7D 80 04         [24] 2940 	sjmp	00117$
   0A7F                    2941 00111$:
                           2942 ;	../src/interrupt/src/interrupt_configure_ifp.c:94: return false;
   0A7F 75 82 00      [24] 2943 	mov	dpl,#0x00
   0A82 22            [24] 2944 	ret
   0A83                    2945 00117$:
                           2946 ;	../src/interrupt/src/interrupt_configure_ifp.c:98: return true;
   0A83 75 82 01      [24] 2947 	mov	dpl,#0x01
   0A86 22            [24] 2948 	ret
                           2949 ;------------------------------------------------------------
                           2950 ;Allocation info for local variables in function 'adc_configure'
                           2951 ;------------------------------------------------------------
                           2952 ;adc_config_options        Allocated with name '_adc_configure_adc_config_options_1_176'
                           2953 ;------------------------------------------------------------
                           2954 ;	../src/adc/src/adc_configure.c:54: void adc_configure(unsigned int adc_config_options)
                           2955 ;	-----------------------------------------
                           2956 ;	 function adc_configure
                           2957 ;	-----------------------------------------
   0A87                    2958 _adc_configure:
   0A87 AF 83         [24] 2959 	mov	r7,dph
   0A89 E5 82         [12] 2960 	mov	a,dpl
   0A8B 90 00 55      [24] 2961 	mov	dptr,#_adc_configure_adc_config_options_1_176
   0A8E F0            [24] 2962 	movx	@dptr,a
   0A8F EF            [12] 2963 	mov	a,r7
   0A90 A3            [24] 2964 	inc	dptr
   0A91 F0            [24] 2965 	movx	@dptr,a
                           2966 ;	../src/adc/src/adc_configure.c:57: ADCCON1 = (adc_config_options >> 8) & ADC_CONFIG_OPTION_ADCCON1_WRITE_MASK;
   0A92 90 00 55      [24] 2967 	mov	dptr,#_adc_configure_adc_config_options_1_176
   0A95 E0            [24] 2968 	movx	a,@dptr
   0A96 FE            [12] 2969 	mov	r6,a
   0A97 A3            [24] 2970 	inc	dptr
   0A98 E0            [24] 2971 	movx	a,@dptr
   0A99 FD            [12] 2972 	mov	r5,a
   0A9A 74 03         [12] 2973 	mov	a,#0x03
   0A9C 5D            [12] 2974 	anl	a,r5
   0A9D F5 D3         [12] 2975 	mov	_ADCCON1,a
                           2976 ;	../src/adc/src/adc_configure.c:58: ADCCON2 = (adc_config_options)      & ADC_CONFIG_OPTION_ADCCON2_WRITE_MASK;
   0A9F 8E D2         [24] 2977 	mov	_ADCCON2,r6
                           2978 ;	../src/adc/src/adc_configure.c:59: ADCCON3 = (adc_config_options >> 8) & ADC_CONFIG_OPTION_ADCCON3_WRITE_MASK;
   0AA1 74 E0         [12] 2979 	mov	a,#0xE0
   0AA3 5D            [12] 2980 	anl	a,r5
   0AA4 F5 D1         [12] 2981 	mov	_ADCCON3,a
   0AA6 22            [24] 2982 	ret
                           2983 ;------------------------------------------------------------
                           2984 ;Allocation info for local variables in function 'adc_set_input_channel'
                           2985 ;------------------------------------------------------------
                           2986 ;adc_channel               Allocated with name '_adc_set_input_channel_adc_channel_1_178'
                           2987 ;------------------------------------------------------------
                           2988 ;	../src/adc/src/adc_set_input_channel.c:46: void adc_set_input_channel(adc_channel_t adc_channel)
                           2989 ;	-----------------------------------------
                           2990 ;	 function adc_set_input_channel
                           2991 ;	-----------------------------------------
   0AA7                    2992 _adc_set_input_channel:
   0AA7 E5 82         [12] 2993 	mov	a,dpl
                           2994 ;	../src/adc/src/adc_set_input_channel.c:49: adc_channel &= (ADCCON1_CHAN_SEL_MASK >> ADCCON1_CHAN_SEL_SHIFT);
   0AA9 90 00 57      [24] 2995 	mov	dptr,#_adc_set_input_channel_adc_channel_1_178
   0AAC F0            [24] 2996 	movx	@dptr,a
   0AAD FF            [12] 2997 	mov	r7,a
   0AAE 90 00 57      [24] 2998 	mov	dptr,#_adc_set_input_channel_adc_channel_1_178
   0AB1 74 0F         [12] 2999 	mov	a,#0x0F
   0AB3 5F            [12] 3000 	anl	a,r7
   0AB4 F0            [24] 3001 	movx	@dptr,a
                           3002 ;	../src/adc/src/adc_set_input_channel.c:52: ADCCON1 = (ADCCON1 & ~ADCCON1_CHAN_SEL_MASK) | (adc_channel << ADCCON1_CHAN_SEL_SHIFT);
   0AB5 AF D3         [24] 3003 	mov	r7,_ADCCON1
   0AB7 53 07 C3      [24] 3004 	anl	ar7,#0xC3
   0ABA 90 00 57      [24] 3005 	mov	dptr,#_adc_set_input_channel_adc_channel_1_178
   0ABD E0            [24] 3006 	movx	a,@dptr
   0ABE 25 E0         [12] 3007 	add	a,acc
   0AC0 25 E0         [12] 3008 	add	a,acc
   0AC2 4F            [12] 3009 	orl	a,r7
   0AC3 F5 D3         [12] 3010 	mov	_ADCCON1,a
   0AC5 22            [24] 3011 	ret
                           3012 ;------------------------------------------------------------
                           3013 ;Allocation info for local variables in function 'adc_start_single_conversion'
                           3014 ;------------------------------------------------------------
                           3015 ;adc_channel               Allocated with name '_adc_start_single_conversion_adc_channel_1_180'
                           3016 ;------------------------------------------------------------
                           3017 ;	../src/adc/src/adc_start_single_conversion.c:47: void adc_start_single_conversion(adc_channel_t adc_channel)
                           3018 ;	-----------------------------------------
                           3019 ;	 function adc_start_single_conversion
                           3020 ;	-----------------------------------------
   0AC6                    3021 _adc_start_single_conversion:
   0AC6 E5 82         [12] 3022 	mov	a,dpl
                           3023 ;	../src/adc/src/adc_start_single_conversion.c:49: adc_set_input_channel(adc_channel);
   0AC8 90 00 58      [24] 3024 	mov	dptr,#_adc_start_single_conversion_adc_channel_1_180
   0ACB F0            [24] 3025 	movx	@dptr,a
   0ACC F5 82         [12] 3026 	mov	dpl,a
   0ACE 12 0A A7      [24] 3027 	lcall	_adc_set_input_channel
                           3028 ;	../src/adc/src/adc_start_single_conversion.c:52: adc_power_up();
   0AD1 43 D3 80      [24] 3029 	orl	_ADCCON1,#0x80
                           3030 ;	../src/adc/src/adc_start_single_conversion.c:53: nop(); nop(); nop(); nop(); //4 clock cycles must elapse before busy flag is set (datasheet v1.3, p. 165)
   0AD4 00            [12] 3031 	nop 
   0AD5 00            [12] 3032 	nop 
   0AD6 00            [12] 3033 	nop 
   0AD7 00            [12] 3034 	nop 
   0AD8 22            [24] 3035 	ret
                           3036 ;------------------------------------------------------------
                           3037 ;Allocation info for local variables in function 'adc_start_single_conversion_get_value'
                           3038 ;------------------------------------------------------------
                           3039 ;adc_channel               Allocated with name '_adc_start_single_conversion_get_value_adc_channel_1_182'
                           3040 ;------------------------------------------------------------
                           3041 ;	../src/adc/src/adc_start_single_conversion_get_value.c:48: uint16_t adc_start_single_conversion_get_value(adc_channel_t adc_channel)
                           3042 ;	-----------------------------------------
                           3043 ;	 function adc_start_single_conversion_get_value
                           3044 ;	-----------------------------------------
   0AD9                    3045 _adc_start_single_conversion_get_value:
   0AD9 E5 82         [12] 3046 	mov	a,dpl
                           3047 ;	../src/adc/src/adc_start_single_conversion_get_value.c:50: adc_start_single_conversion(adc_channel);
   0ADB 90 00 59      [24] 3048 	mov	dptr,#_adc_start_single_conversion_get_value_adc_channel_1_182
   0ADE F0            [24] 3049 	movx	@dptr,a
   0ADF F5 82         [12] 3050 	mov	dpl,a
   0AE1 12 0A C6      [24] 3051 	lcall	_adc_start_single_conversion
                           3052 ;	../src/adc/src/adc_start_single_conversion_get_value.c:52: while(adc_is_conversion_in_progress());
   0AE4                    3053 00101$:
   0AE4 74 40         [12] 3054 	mov	a,#0x40
   0AE6 55 D3         [12] 3055 	anl	a,_ADCCON1
   0AE8 FF            [12] 3056 	mov	r7,a
   0AE9 BF 40 02      [24] 3057 	cjne	r7,#0x40,00112$
   0AEC 80 F6         [24] 3058 	sjmp	00101$
   0AEE                    3059 00112$:
                           3060 ;	../src/adc/src/adc_start_single_conversion_get_value.c:54: return adc_get_result();
   0AEE 85 D5 82      [24] 3061 	mov	dpl,((_ADCDAT >> 0) & 0xFF)
   0AF1 85 D4 83      [24] 3062 	mov	dph,((_ADCDAT >> 8) & 0xFF)
   0AF4 22            [24] 3063 	ret
                           3064 ;------------------------------------------------------------
                           3065 ;Allocation info for local variables in function 'timer0_configure'
                           3066 ;------------------------------------------------------------
                           3067 ;t0_val                    Allocated with name '_timer0_configure_PARM_2'
                           3068 ;timer0_config_options     Allocated with name '_timer0_configure_timer0_config_options_1_185'
                           3069 ;------------------------------------------------------------
                           3070 ;	../src/timer0/src/timer0_configure.c:53: void timer0_configure(uint8_t timer0_config_options, uint16_t t0_val)
                           3071 ;	-----------------------------------------
                           3072 ;	 function timer0_configure
                           3073 ;	-----------------------------------------
   0AF5                    3074 _timer0_configure:
   0AF5 E5 82         [12] 3075 	mov	a,dpl
                           3076 ;	../src/timer0/src/timer0_configure.c:56: if((timer0_config_options & TMOD_MODE0_MASK) == TIMER0_CONFIG_OPTION_MODE_2_8_BIT_AUTO_RLD_TMR)
   0AF7 90 00 5C      [24] 3077 	mov	dptr,#_timer0_configure_timer0_config_options_1_185
   0AFA F0            [24] 3078 	movx	@dptr,a
   0AFB FF            [12] 3079 	mov	r7,a
   0AFC 74 03         [12] 3080 	mov	a,#0x03
   0AFE 5F            [12] 3081 	anl	a,r7
   0AFF FE            [12] 3082 	mov	r6,a
   0B00 BE 02 0E      [24] 3083 	cjne	r6,#0x02,00102$
                           3084 ;	../src/timer0/src/timer0_configure.c:58: TH0 = (uint8_t)t0_val;
   0B03 90 00 5A      [24] 3085 	mov	dptr,#_timer0_configure_PARM_2
   0B06 E0            [24] 3086 	movx	a,@dptr
   0B07 FD            [12] 3087 	mov	r5,a
   0B08 A3            [24] 3088 	inc	dptr
   0B09 E0            [24] 3089 	movx	a,@dptr
   0B0A FE            [12] 3090 	mov	r6,a
   0B0B 8D 8C         [24] 3091 	mov	_TH0,r5
                           3092 ;	../src/timer0/src/timer0_configure.c:59: TL0 = (uint8_t)t0_val;
   0B0D 8D 8A         [24] 3093 	mov	_TL0,r5
   0B0F 80 0A         [24] 3094 	sjmp	00103$
   0B11                    3095 00102$:
                           3096 ;	../src/timer0/src/timer0_configure.c:63: timer0_set_t0_val(t0_val);
   0B11 90 00 5A      [24] 3097 	mov	dptr,#_timer0_configure_PARM_2
   0B14 E0            [24] 3098 	movx	a,@dptr
   0B15 F5 8A         [12] 3099 	mov	((_T0 >> 0) & 0xFF),a
   0B17 A3            [24] 3100 	inc	dptr
   0B18 E0            [24] 3101 	movx	a,@dptr
   0B19 F5 8C         [12] 3102 	mov	((_T0 >> 8) & 0xFF),a
   0B1B                    3103 00103$:
                           3104 ;	../src/timer0/src/timer0_configure.c:67: TMOD = (TMOD & ~TIMER0_CONFIG_OPTION_TMOD_MASK) | (timer0_config_options & TIMER0_CONFIG_OPTION_TMOD_MASK);
   0B1B AE 89         [24] 3105 	mov	r6,_TMOD
   0B1D 53 06 F0      [24] 3106 	anl	ar6,#0xF0
   0B20 53 07 0F      [24] 3107 	anl	ar7,#0x0F
   0B23 EF            [12] 3108 	mov	a,r7
   0B24 4E            [12] 3109 	orl	a,r6
   0B25 F5 89         [12] 3110 	mov	_TMOD,a
   0B27 22            [24] 3111 	ret
                           3112 ;------------------------------------------------------------
                           3113 ;Allocation info for local variables in function 'timer1_configure'
                           3114 ;------------------------------------------------------------
                           3115 ;t1_val                    Allocated with name '_timer1_configure_PARM_2'
                           3116 ;timer1_config_options     Allocated with name '_timer1_configure_timer1_config_options_1_190'
                           3117 ;------------------------------------------------------------
                           3118 ;	../src/timer1/src/timer1_configure.c:53: void timer1_configure(uint8_t timer1_config_options, uint16_t t1_val)
                           3119 ;	-----------------------------------------
                           3120 ;	 function timer1_configure
                           3121 ;	-----------------------------------------
   0B28                    3122 _timer1_configure:
   0B28 E5 82         [12] 3123 	mov	a,dpl
                           3124 ;	../src/timer1/src/timer1_configure.c:56: if((timer1_config_options & TMOD_MODE1_MASK) == TIMER1_CONFIG_OPTION_MODE_2_8_BIT_AUTO_RLD_TMR)
   0B2A 90 00 5F      [24] 3125 	mov	dptr,#_timer1_configure_timer1_config_options_1_190
   0B2D F0            [24] 3126 	movx	@dptr,a
   0B2E FF            [12] 3127 	mov	r7,a
   0B2F 74 30         [12] 3128 	mov	a,#0x30
   0B31 5F            [12] 3129 	anl	a,r7
   0B32 FE            [12] 3130 	mov	r6,a
   0B33 BE 20 0E      [24] 3131 	cjne	r6,#0x20,00102$
                           3132 ;	../src/timer1/src/timer1_configure.c:58: TH1 = (uint8_t)t1_val;
   0B36 90 00 5D      [24] 3133 	mov	dptr,#_timer1_configure_PARM_2
   0B39 E0            [24] 3134 	movx	a,@dptr
   0B3A FD            [12] 3135 	mov	r5,a
   0B3B A3            [24] 3136 	inc	dptr
   0B3C E0            [24] 3137 	movx	a,@dptr
   0B3D FE            [12] 3138 	mov	r6,a
   0B3E 8D 8D         [24] 3139 	mov	_TH1,r5
                           3140 ;	../src/timer1/src/timer1_configure.c:59: TL1 = (uint8_t)t1_val;
   0B40 8D 8B         [24] 3141 	mov	_TL1,r5
   0B42 80 0A         [24] 3142 	sjmp	00103$
   0B44                    3143 00102$:
                           3144 ;	../src/timer1/src/timer1_configure.c:63: timer1_set_t1_val(t1_val);
   0B44 90 00 5D      [24] 3145 	mov	dptr,#_timer1_configure_PARM_2
   0B47 E0            [24] 3146 	movx	a,@dptr
   0B48 F5 8B         [12] 3147 	mov	((_T1 >> 0) & 0xFF),a
   0B4A A3            [24] 3148 	inc	dptr
   0B4B E0            [24] 3149 	movx	a,@dptr
   0B4C F5 8D         [12] 3150 	mov	((_T1 >> 8) & 0xFF),a
   0B4E                    3151 00103$:
                           3152 ;	../src/timer1/src/timer1_configure.c:67: TMOD = (TMOD & ~TIMER1_CONFIG_OPTION_TMOD_MASK) | (timer1_config_options & TIMER1_CONFIG_OPTION_TMOD_MASK);
   0B4E AE 89         [24] 3153 	mov	r6,_TMOD
   0B50 53 06 0F      [24] 3154 	anl	ar6,#0x0F
   0B53 53 07 F0      [24] 3155 	anl	ar7,#0xF0
   0B56 EF            [12] 3156 	mov	a,r7
   0B57 4E            [12] 3157 	orl	a,r6
   0B58 F5 89         [12] 3158 	mov	_TMOD,a
   0B5A 22            [24] 3159 	ret
                           3160 ;------------------------------------------------------------
                           3161 ;Allocation info for local variables in function 'main'
                           3162 ;------------------------------------------------------------
                           3163 ;datavar                   Allocated with name '_main_datavar_1_195'
                           3164 ;count                     Allocated with name '_main_count_1_195'
                           3165 ;------------------------------------------------------------
                           3166 ;	main.c:18: void main()
                           3167 ;	-----------------------------------------
                           3168 ;	 function main
                           3169 ;	-----------------------------------------
   0B5B                    3170 _main:
                           3171 ;	main.c:23: initialize(); //initialize IO, UART, set up nRF24L01 as TX
   0B5B 12 0C 41      [24] 3172 	lcall	_initialize
                           3173 ;	main.c:26: while(1)
   0B5E                    3174 00112$:
                           3175 ;	main.c:28: datavar = getchar();
   0B5E 12 0C 94      [24] 3176 	lcall	_getchar
   0B61 E5 82         [12] 3177 	mov	a,dpl
   0B63 90 00 60      [24] 3178 	mov	dptr,#_main_datavar_1_195
   0B66 F0            [24] 3179 	movx	@dptr,a
                           3180 ;	main.c:30: rf_write_tx_payload(&datavar, 1, true); //transmit received char over RF
   0B67 90 00 0E      [24] 3181 	mov	dptr,#_rf_write_tx_payload_PARM_2
   0B6A 74 01         [12] 3182 	mov	a,#0x01
   0B6C F0            [24] 3183 	movx	@dptr,a
   0B6D E4            [12] 3184 	clr	a
   0B6E A3            [24] 3185 	inc	dptr
   0B6F F0            [24] 3186 	movx	@dptr,a
   0B70 90 00 10      [24] 3187 	mov	dptr,#_rf_write_tx_payload_PARM_3
   0B73 74 01         [12] 3188 	mov	a,#0x01
   0B75 F0            [24] 3189 	movx	@dptr,a
   0B76 90 00 60      [24] 3190 	mov	dptr,#_main_datavar_1_195
   0B79 75 F0 00      [24] 3191 	mov	b,#0x00
   0B7C 12 01 62      [24] 3192 	lcall	_rf_write_tx_payload
                           3193 ;	main.c:33: while(!(rf_irq_pin_active() && rf_irq_tx_ds_active()));
   0B7F                    3194 00102$:
   0B7F 30 C1 FD      [24] 3195 	jnb	_IRCON_SB_RFIRQ,00102$
   0B82 90 00 18      [24] 3196 	mov	dptr,#_rf_spi_execute_command_PARM_2
   0B85 E4            [12] 3197 	clr	a
   0B86 F0            [24] 3198 	movx	@dptr,a
   0B87 E4            [12] 3199 	clr	a
   0B88 A3            [24] 3200 	inc	dptr
   0B89 F0            [24] 3201 	movx	@dptr,a
   0B8A E4            [12] 3202 	clr	a
   0B8B A3            [24] 3203 	inc	dptr
   0B8C F0            [24] 3204 	movx	@dptr,a
   0B8D 90 00 1B      [24] 3205 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0B90 E4            [12] 3206 	clr	a
   0B91 F0            [24] 3207 	movx	@dptr,a
   0B92 E4            [12] 3208 	clr	a
   0B93 A3            [24] 3209 	inc	dptr
   0B94 F0            [24] 3210 	movx	@dptr,a
   0B95 90 00 1D      [24] 3211 	mov	dptr,#_rf_spi_execute_command_PARM_4
   0B98 74 01         [12] 3212 	mov	a,#0x01
   0B9A F0            [24] 3213 	movx	@dptr,a
   0B9B 75 82 FF      [24] 3214 	mov	dpl,#0xFF
   0B9E 12 02 97      [24] 3215 	lcall	_rf_spi_execute_command
   0BA1 E5 82         [12] 3216 	mov	a,dpl
   0BA3 30 E5 D9      [24] 3217 	jnb	acc.5,00102$
                           3218 ;	main.c:35: rf_irq_clear_all(); //clear all interrupts in the 24L01
   0BA6 12 02 28      [24] 3219 	lcall	_rf_irq_clear_all
                           3220 ;	main.c:36: rf_set_as_rx(true); //change the device to an RX to get the character back from the other 24L01
   0BA9 75 82 01      [24] 3221 	mov	dpl,#0x01
   0BAC 12 01 C8      [24] 3222 	lcall	_rf_set_as_rx
                           3223 ;	main.c:40: for(count = 0; count < 25000; count++)
   0BAF 7E 00         [12] 3224 	mov	r6,#0x00
   0BB1 7F 00         [12] 3225 	mov	r7,#0x00
   0BB3                    3226 00114$:
                           3227 ;	main.c:45: if((rf_irq_pin_active() && rf_irq_rx_dr_active()))
   0BB3 30 C1 40      [24] 3228 	jnb	_IRCON_SB_RFIRQ,00106$
   0BB6 90 00 18      [24] 3229 	mov	dptr,#_rf_spi_execute_command_PARM_2
   0BB9 E4            [12] 3230 	clr	a
   0BBA F0            [24] 3231 	movx	@dptr,a
   0BBB E4            [12] 3232 	clr	a
   0BBC A3            [24] 3233 	inc	dptr
   0BBD F0            [24] 3234 	movx	@dptr,a
   0BBE E4            [12] 3235 	clr	a
   0BBF A3            [24] 3236 	inc	dptr
   0BC0 F0            [24] 3237 	movx	@dptr,a
   0BC1 90 00 1B      [24] 3238 	mov	dptr,#_rf_spi_execute_command_PARM_3
   0BC4 E4            [12] 3239 	clr	a
   0BC5 F0            [24] 3240 	movx	@dptr,a
   0BC6 E4            [12] 3241 	clr	a
   0BC7 A3            [24] 3242 	inc	dptr
   0BC8 F0            [24] 3243 	movx	@dptr,a
   0BC9 90 00 1D      [24] 3244 	mov	dptr,#_rf_spi_execute_command_PARM_4
   0BCC 74 01         [12] 3245 	mov	a,#0x01
   0BCE F0            [24] 3246 	movx	@dptr,a
   0BCF 75 82 FF      [24] 3247 	mov	dpl,#0xFF
   0BD2 C0 07         [24] 3248 	push	ar7
   0BD4 C0 06         [24] 3249 	push	ar6
   0BD6 12 02 97      [24] 3250 	lcall	_rf_spi_execute_command
   0BD9 E5 82         [12] 3251 	mov	a,dpl
   0BDB D0 06         [24] 3252 	pop	ar6
   0BDD D0 07         [24] 3253 	pop	ar7
   0BDF 30 E6 14      [24] 3254 	jnb	acc.6,00106$
                           3255 ;	main.c:47: rf_read_rx_payload(&datavar, 1); //get the payload into data
   0BE2 90 00 00      [24] 3256 	mov	dptr,#_rf_read_rx_payload_PARM_2
   0BE5 74 01         [12] 3257 	mov	a,#0x01
   0BE7 F0            [24] 3258 	movx	@dptr,a
   0BE8 E4            [12] 3259 	clr	a
   0BE9 A3            [24] 3260 	inc	dptr
   0BEA F0            [24] 3261 	movx	@dptr,a
   0BEB 90 00 60      [24] 3262 	mov	dptr,#_main_datavar_1_195
   0BEE 75 F0 00      [24] 3263 	mov	b,#0x00
   0BF1 12 00 62      [24] 3264 	lcall	_rf_read_rx_payload
                           3265 ;	main.c:48: break;
   0BF4 80 1A         [24] 3266 	sjmp	00110$
   0BF6                    3267 00106$:
                           3268 ;	main.c:52: if(count == 24999)
   0BF6 BE A7 09      [24] 3269 	cjne	r6,#0xA7,00115$
   0BF9 BF 61 06      [24] 3270 	cjne	r7,#0x61,00115$
                           3271 ;	main.c:53: datavar = '?';
   0BFC 90 00 60      [24] 3272 	mov	dptr,#_main_datavar_1_195
   0BFF 74 3F         [12] 3273 	mov	a,#0x3F
   0C01 F0            [24] 3274 	movx	@dptr,a
   0C02                    3275 00115$:
                           3276 ;	main.c:40: for(count = 0; count < 25000; count++)
   0C02 0E            [12] 3277 	inc	r6
   0C03 BE 00 01      [24] 3278 	cjne	r6,#0x00,00148$
   0C06 0F            [12] 3279 	inc	r7
   0C07                    3280 00148$:
   0C07 C3            [12] 3281 	clr	c
   0C08 EE            [12] 3282 	mov	a,r6
   0C09 94 A8         [12] 3283 	subb	a,#0xA8
   0C0B EF            [12] 3284 	mov	a,r7
   0C0C 94 61         [12] 3285 	subb	a,#0x61
   0C0E 40 A3         [24] 3286 	jc	00114$
   0C10                    3287 00110$:
                           3288 ;	main.c:56: rf_irq_clear_all(); //clear interrupts again
   0C10 12 02 28      [24] 3289 	lcall	_rf_irq_clear_all
                           3290 ;	main.c:57: printf("%c", datavar); //print the received data (or ? if none) to the screen
   0C13 90 00 60      [24] 3291 	mov	dptr,#_main_datavar_1_195
   0C16 E0            [24] 3292 	movx	a,@dptr
   0C17 FF            [12] 3293 	mov	r7,a
   0C18 7E 00         [12] 3294 	mov	r6,#0x00
   0C1A C0 07         [24] 3295 	push	ar7
   0C1C C0 06         [24] 3296 	push	ar6
   0C1E 74 53         [12] 3297 	mov	a,#__str_0
   0C20 C0 E0         [24] 3298 	push	acc
   0C22 74 16         [12] 3299 	mov	a,#(__str_0 >> 8)
   0C24 C0 E0         [24] 3300 	push	acc
   0C26 74 80         [12] 3301 	mov	a,#0x80
   0C28 C0 E0         [24] 3302 	push	acc
   0C2A 12 0E 18      [24] 3303 	lcall	_printf
   0C2D E5 81         [12] 3304 	mov	a,sp
   0C2F 24 FB         [12] 3305 	add	a,#0xfb
   0C31 F5 81         [12] 3306 	mov	sp,a
                           3307 ;	main.c:59: rf_set_as_tx(); //resume normal operation as a TX
   0C33 12 02 4D      [24] 3308 	lcall	_rf_set_as_tx
                           3309 ;	main.c:60: delay_us(130); //wait for remote unit to come from standby to RX
   0C36 90 00 82      [24] 3310 	mov	dptr,#0x0082
   0C39 12 07 E9      [24] 3311 	lcall	_delay_us
                           3312 ;	main.c:62: led_toggle(); //toggle the on-board LED as visual indication that the loop has completed
   0C3C B2 80         [12] 3313 	cpl _P0_SB_D0 
   0C3E 02 0B 5E      [24] 3314 	ljmp	00112$
                           3315 ;------------------------------------------------------------
                           3316 ;Allocation info for local variables in function 'initialize'
                           3317 ;------------------------------------------------------------
                           3318 ;	main.c:66: void initialize()
                           3319 ;	-----------------------------------------
                           3320 ;	 function initialize
                           3321 ;	-----------------------------------------
   0C41                    3322 _initialize:
                           3323 ;	main.c:72: GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
   0C41 90 00 35      [24] 3324 	mov	dptr,#_gpio_pin_configure_PARM_2
   0C44 74 01         [12] 3325 	mov	a,#0x01
   0C46 F0            [24] 3326 	movx	@dptr,a
   0C47 75 82 00      [24] 3327 	mov	dpl,#0x00
   0C4A 12 04 69      [24] 3328 	lcall	_gpio_pin_configure
                           3329 ;	main.c:77: GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_NO_RESISTORS);
   0C4D 90 00 35      [24] 3330 	mov	dptr,#_gpio_pin_configure_PARM_2
   0C50 E4            [12] 3331 	clr	a
   0C51 F0            [24] 3332 	movx	@dptr,a
   0C52 75 82 06      [24] 3333 	mov	dpl,#0x06
   0C55 12 04 69      [24] 3334 	lcall	_gpio_pin_configure
                           3335 ;	main.c:82: GPIO_PIN_CONFIG_OPTION_PIN_MODE_OUTPUT_BUFFER_NORMAL_DRIVE_STRENGTH);
   0C58 90 00 35      [24] 3336 	mov	dptr,#_gpio_pin_configure_PARM_2
   0C5B 74 03         [12] 3337 	mov	a,#0x03
   0C5D F0            [24] 3338 	movx	@dptr,a
   0C5E 75 82 05      [24] 3339 	mov	dpl,#0x05
   0C61 12 04 69      [24] 3340 	lcall	_gpio_pin_configure
                           3341 ;	main.c:89: 1011);
   0C64 90 00 00      [24] 3342 	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
   0C67 74 F3         [12] 3343 	mov	a,#0xF3
   0C69 F0            [24] 3344 	movx	@dptr,a
   0C6A 74 03         [12] 3345 	mov	a,#0x03
   0C6C A3            [24] 3346 	inc	dptr
   0C6D F0            [24] 3347 	movx	@dptr,a
   0C6E 75 82 56      [24] 3348 	mov	dpl,#0x56
   0C71 12 00 00      [24] 3349 	lcall	_uart_configure_manual_baud_calc
                           3350 ;	main.c:92: rf_configure_debug_lite(false, 1); //initialize the rf to the debug configuration as TX, 1 data bytes, and auto-ack disabled
   0C74 90 00 05      [24] 3351 	mov	dptr,#_rf_configure_debug_lite_PARM_2
   0C77 74 01         [12] 3352 	mov	a,#0x01
   0C79 F0            [24] 3353 	movx	@dptr,a
   0C7A 75 82 00      [24] 3354 	mov	dpl,#0x00
   0C7D 12 00 B7      [24] 3355 	lcall	_rf_configure_debug_lite
                           3356 ;	main.c:93: delay_us(130); //wait for remote unit to come from standby to RX
   0C80 90 00 82      [24] 3357 	mov	dptr,#0x0082
   0C83 02 07 E9      [24] 3358 	ljmp	_delay_us
                           3359 ;------------------------------------------------------------
                           3360 ;Allocation info for local variables in function 'putchar'
                           3361 ;------------------------------------------------------------
                           3362 ;c                         Allocated with name '_putchar_c_1_200'
                           3363 ;------------------------------------------------------------
                           3364 ;	main.c:96: void putchar(char c)
                           3365 ;	-----------------------------------------
                           3366 ;	 function putchar
                           3367 ;	-----------------------------------------
   0C86                    3368 _putchar:
   0C86 E5 82         [12] 3369 	mov	a,dpl
                           3370 ;	main.c:98: uart_send_wait_for_complete(c);
   0C88 90 00 61      [24] 3371 	mov	dptr,#_putchar_c_1_200
   0C8B F0            [24] 3372 	movx	@dptr,a
   0C8C F5 99         [12] 3373 	mov	_S0BUF,a
   0C8E                    3374 00101$:
   0C8E 10 99 02      [24] 3375 	jbc	_S0CON_SB_TI0,00112$
   0C91 80 FB         [24] 3376 	sjmp	00101$
   0C93                    3377 00112$:
   0C93 22            [24] 3378 	ret
                           3379 ;------------------------------------------------------------
                           3380 ;Allocation info for local variables in function 'getchar'
                           3381 ;------------------------------------------------------------
                           3382 ;retchar                   Allocated with name '_getchar_retchar_1_202'
                           3383 ;------------------------------------------------------------
                           3384 ;	main.c:101: char getchar()
                           3385 ;	-----------------------------------------
                           3386 ;	 function getchar
                           3387 ;	-----------------------------------------
   0C94                    3388 _getchar:
                           3389 ;	main.c:105: uart_wait_for_rx_and_get(&retchar);
   0C94                    3390 00101$:
   0C94 10 98 02      [24] 3391 	jbc	_S0CON_SB_RI0,00112$
   0C97 80 FB         [24] 3392 	sjmp	00101$
   0C99                    3393 00112$:
                           3394 ;	main.c:107: return retchar;
   0C99 90 00 62      [24] 3395 	mov	dptr,#_getchar_retchar_1_202
   0C9C E5 99         [12] 3396 	mov	a,_S0BUF
   0C9E F0            [24] 3397 	movx	@dptr,a
   0C9F E0            [24] 3398 	movx	a,@dptr
   0CA0 F5 82         [12] 3399 	mov	dpl,a
   0CA2 22            [24] 3400 	ret
                           3401 	.area CSEG    (CODE)
                           3402 	.area CONST   (CODE)
   1653                    3403 __str_0:
   1653 25 63              3404 	.ascii "%c"
   1655 00                 3405 	.db 0x00
                           3406 	.area XINIT   (CODE)
                           3407 	.area CABS    (ABS,CODE)
