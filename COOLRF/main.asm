;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (May 11 2013) (Linux)
; This file was generated Sun Jun 15 20:29:03 2014
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _isr_rtc2
	.globl _dimmon
	.globl _isr_t1
	.globl _isr_ifp
	.globl _setdimmer
	.globl _openAllPipe
	.globl _setPALevel
	.globl _setCRCLength
	.globl _setAutoAck
	.globl _setDataRate
	.globl _setChannel
	.globl _radiobegin
	.globl _watchdog_start_and_set_timeout_in_ms
	.globl _watchdog_set_wdsv_count
	.globl _gpio_pin_val_write
	.globl _gpio_pin_val_set
	.globl _gpio_pin_val_clear
	.globl _gpio_pin_val_read
	.globl _FSR_SB_ENDBG
	.globl _FSR_SB_STP
	.globl _FSR_SB_WEN
	.globl _FSR_SB_RDYN
	.globl _FSR_SB_INFEN
	.globl _FSR_SB_RDISMB
	.globl _RFCON_SB_RFCKEN
	.globl _RFCON_SB_RFCSN
	.globl _RFCON_SB_RFCE
	.globl _ADCON_SB_BD
	.globl _PSW_SB_P
	.globl _PSW_SB_F1
	.globl _PSW_SB_OV
	.globl _PSW_SB_RS0
	.globl _PSW_SB_RS1
	.globl _PSW_SB_F0
	.globl _PSW_SB_AC
	.globl _PSW_SB_CY
	.globl _T2CON_SB_T2PS
	.globl _T2CON_SB_I3FR
	.globl _T2CON_SB_I2FR
	.globl _T2CON_SB_T2R1
	.globl _T2CON_SB_T2R0
	.globl _T2CON_SB_T2CM
	.globl _T2CON_SB_T2I1
	.globl _T2CON_SB_T2I0
	.globl _IRCON_SB_EXF2
	.globl _IRCON_SB_TF2
	.globl _IRCON_SB_TICK
	.globl _IRCON_SB_MISCIRQ
	.globl _IRCON_SB_WUOPIRQ
	.globl _IRCON_SB_SPI_2WIRE
	.globl _IRCON_SB_RFIRQ
	.globl _IRCON_SB_RFRDY
	.globl _IEN1_SB_T2EXTRLD
	.globl _IEN1_SB_TICK
	.globl _IEN1_SB_MISCIRQ
	.globl _IEN1_SB_WUOPIRQ
	.globl _IEN1_SB_SPI_2WIRE
	.globl _IEN1_SB_RFIRQ
	.globl _IEN1_SB_RFRDY
	.globl _P3_SB_D7
	.globl _P3_SB_D6
	.globl _P3_SB_D5
	.globl _P3_SB_D4
	.globl _P3_SB_D3
	.globl _P3_SB_D2
	.globl _P3_SB_D1
	.globl _P3_SB_D0
	.globl _IEN0_SB_GLOBAL
	.globl _IEN0_SB_T2
	.globl _IEN0_SB_UART
	.globl _IEN0_SB_T1
	.globl _IEN0_SB_POFIRQ
	.globl _IEN0_SB_T0
	.globl _IEN0_SB_IFP
	.globl _P2_SB_D7
	.globl _P2_SB_D6
	.globl _P2_SB_D5
	.globl _P2_SB_D4
	.globl _P2_SB_D3
	.globl _P2_SB_D2
	.globl _P2_SB_D1
	.globl _P2_SB_D0
	.globl _S0CON_SB_SM0
	.globl _S0CON_SB_SM1
	.globl _S0CON_SB_SM20
	.globl _S0CON_SB_REN0
	.globl _S0CON_SB_TB80
	.globl _S0CON_SB_RB80
	.globl _S0CON_SB_TI0
	.globl _S0CON_SB_RI0
	.globl _P1_SB_D7
	.globl _P1_SB_D6
	.globl _P1_SB_D5
	.globl _P1_SB_D4
	.globl _P1_SB_D3
	.globl _P1_SB_D2
	.globl _P1_SB_D1
	.globl _P1_SB_D0
	.globl _TCON_SB_TF1
	.globl _TCON_SB_TR1
	.globl _TCON_SB_TF0
	.globl _TCON_SB_TR0
	.globl _TCON_SB_IE1
	.globl _TCON_SB_IT1
	.globl _TCON_SB_IE0
	.globl _TCON_SB_IT0
	.globl _P0_SB_D7
	.globl _P0_SB_D6
	.globl _P0_SB_D5
	.globl _P0_SB_D4
	.globl _P0_SB_D3
	.globl _P0_SB_D2
	.globl _P0_SB_D1
	.globl _P0_SB_D0
	.globl _ADCDAT
	.globl _S0REL
	.globl _T2
	.globl _T1
	.globl _T0
	.globl _CRC
	.globl _CC3
	.globl _CC2
	.globl _CC1
	.globl _SPIMDAT
	.globl _SPIMSTAT
	.globl _SPIMCON1
	.globl _SPIMCON0
	.globl _FCR
	.globl _FPCR
	.globl _FSR
	.globl _B
	.globl _ARCON
	.globl _MD5
	.globl _MD4
	.globl _MD3
	.globl _MD2
	.globl _MD1
	.globl _MD0
	.globl _RFCON
	.globl _SPIRDAT
	.globl _SPIRSTAT
	.globl _SPIRCON1
	.globl _SPIRCON0
	.globl _W2CON0
	.globl _W2CON1
	.globl _ACC
	.globl _CCPDATO
	.globl _CCPDATIB
	.globl _CCPDATIA
	.globl _POFCON
	.globl _COMPCON
	.globl _W2DAT
	.globl _W2SADR
	.globl _ADCON
	.globl _RNGDAT
	.globl _RNGCTL
	.globl _ADCDATL
	.globl _ADCDATH
	.globl _ADCCON1
	.globl _ADCCON2
	.globl _ADCCON3
	.globl _PSW
	.globl _WUOPC0
	.globl _WUOPC1
	.globl _TH2
	.globl _TL2
	.globl _CRCH
	.globl _CRCL
	.globl __XPAGE
	.globl _MPAGE
	.globl _T2CON
	.globl _CCH3
	.globl _CCL3
	.globl _CCH2
	.globl _CCL2
	.globl _CCH1
	.globl _CCL1
	.globl _CCEN
	.globl _IRCON
	.globl _SPISDAT
	.globl _SPISSTAT
	.globl _SPISCON1
	.globl _SPISCON0
	.globl _S0RELH
	.globl _IP1
	.globl _IEN1
	.globl _SPISRDSZ
	.globl _RTC2CPT00
	.globl _RTC2CMP1
	.globl _RTC2CMP0
	.globl _RTC2CON
	.globl _PWMCON
	.globl _RSTREAS
	.globl _P3
	.globl _WDSV
	.globl _OPMCON
	.globl _CLKLFCTRL
	.globl _RTC2CPT10
	.globl _RTC2CPT01
	.globl _S0RELL
	.globl _IP0
	.globl _IEN0
	.globl _MEMCON
	.globl _INTEXP
	.globl _WUCON
	.globl _PWRDWN
	.globl _CLKCTRL
	.globl _PWMDC1
	.globl _PWMDC0
	.globl _P2
	.globl _P1CON
	.globl _P0CON
	.globl _S0BUF
	.globl _S0CON
	.globl _P2CON
	.globl _P3DIR
	.globl _P2DIR
	.globl _P1DIR
	.globl _P0DIR
	.globl _DPS
	.globl _P1
	.globl _P3CON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH1
	.globl _DPL1
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _countrtc
	.globl _valuepwm
	.globl _servernf
	.globl _stdimm
	.globl _clientnf
	.globl _rtc2_configure_PARM_2
	.globl _uart_configure_auto_baud_calc_PARM_2
	.globl _uart_calc_th1_value_PARM_2
	.globl _uart_calc_s0rel_value_PARM_2
	.globl _uart_calc_actual_baud_rate_from_th1_PARM_2
	.globl _uart_calc_actual_baud_rate_from_s0rel_PARM_2
	.globl _uart_configure_manual_baud_calc_PARM_2
	.globl _timer1_configure_PARM_2
	.globl _timer0_configure_PARM_2
	.globl _interrupt_configure_ifp_PARM_2
	.globl _pwr_clk_mgmt_wakeup_configure_PARM_2
	.globl _pwm_start_PARM_2
	.globl _gpio_pin_val_write_PARM_2
	.globl _gpio_pin_configure_PARM_2
	.globl _rf_set_rx_addr_PARM_3
	.globl _rf_set_rx_addr_PARM_2
	.globl _rf_read_register_PARM_3
	.globl _rf_read_register_PARM_2
	.globl _rf_power_up_param_PARM_2
	.globl _rf_spi_send_read_PARM_3
	.globl _rf_spi_send_read_PARM_2
	.globl _rf_spi_execute_command_PARM_4
	.globl _rf_spi_execute_command_PARM_3
	.globl _rf_spi_execute_command_PARM_2
	.globl _rf_write_tx_payload_PARM_3
	.globl _rf_write_tx_payload_PARM_2
	.globl _rf_write_register_PARM_3
	.globl _rf_write_register_PARM_2
	.globl _rf_configure_debug_lite_PARM_2
	.globl _rf_read_rx_payload_PARM_2
	.globl _rf_read_rx_payload
	.globl _rf_configure_debug_lite
	.globl _rf_write_register
	.globl _rf_spi_configure_enable
	.globl _rf_write_tx_payload
	.globl _rf_transmit
	.globl _rf_set_as_rx
	.globl _rf_irq_clear_all
	.globl _rf_set_as_tx
	.globl _rf_spi_execute_command
	.globl _rf_spi_send_read
	.globl _rf_power_up_param
	.globl _rf_read_register
	.globl _rf_spi_send_read_byte
	.globl _rf_set_rx_addr
	.globl _rf_power_down
	.globl _rf_power_up
	.globl _gpio_pin_configure
	.globl _delay_us
	.globl _delay_s
	.globl _delay_ms
	.globl _pwm_configure
	.globl _pwm_start
	.globl _pwr_clk_mgmt_clklf_configure
	.globl _pwr_clk_mgmt_get_cclk_freq_in_hz
	.globl _pwr_clk_mgmt_wakeup_configure
	.globl _interrupt_configure_ifp
	.globl _adc_configure
	.globl _adc_set_input_channel
	.globl _adc_start_single_conversion
	.globl _adc_start_single_conversion_get_value
	.globl _timer0_configure
	.globl _timer1_configure
	.globl _uart_configure_manual_baud_calc
	.globl _uart_calc_actual_baud_rate_from_s0rel
	.globl _uart_calc_actual_baud_rate_from_th1
	.globl _uart_calc_s0rel_value
	.globl _uart_calc_th1_value
	.globl _uart_configure_auto_baud_calc
	.globl _rtc2_configure
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P3CON	=	0x008f
_P1	=	0x0090
_DPS	=	0x0092
_P0DIR	=	0x0093
_P1DIR	=	0x0094
_P2DIR	=	0x0095
_P3DIR	=	0x0096
_P2CON	=	0x0097
_S0CON	=	0x0098
_S0BUF	=	0x0099
_P0CON	=	0x009e
_P1CON	=	0x009f
_P2	=	0x00a0
_PWMDC0	=	0x00a1
_PWMDC1	=	0x00a2
_CLKCTRL	=	0x00a3
_PWRDWN	=	0x00a4
_WUCON	=	0x00a5
_INTEXP	=	0x00a6
_MEMCON	=	0x00a7
_IEN0	=	0x00a8
_IP0	=	0x00a9
_S0RELL	=	0x00aa
_RTC2CPT01	=	0x00ab
_RTC2CPT10	=	0x00ac
_CLKLFCTRL	=	0x00ad
_OPMCON	=	0x00ae
_WDSV	=	0x00af
_P3	=	0x00b0
_RSTREAS	=	0x00b1
_PWMCON	=	0x00b2
_RTC2CON	=	0x00b3
_RTC2CMP0	=	0x00b4
_RTC2CMP1	=	0x00b5
_RTC2CPT00	=	0x00b6
_SPISRDSZ	=	0x00b7
_IEN1	=	0x00b8
_IP1	=	0x00b9
_S0RELH	=	0x00ba
_SPISCON0	=	0x00bc
_SPISCON1	=	0x00bd
_SPISSTAT	=	0x00be
_SPISDAT	=	0x00bf
_IRCON	=	0x00c0
_CCEN	=	0x00c1
_CCL1	=	0x00c2
_CCH1	=	0x00c3
_CCL2	=	0x00c4
_CCH2	=	0x00c5
_CCL3	=	0x00c6
_CCH3	=	0x00c7
_T2CON	=	0x00c8
_MPAGE	=	0x00c9
__XPAGE	=	0x00c9
_CRCL	=	0x00ca
_CRCH	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_WUOPC1	=	0x00ce
_WUOPC0	=	0x00cf
_PSW	=	0x00d0
_ADCCON3	=	0x00d1
_ADCCON2	=	0x00d2
_ADCCON1	=	0x00d3
_ADCDATH	=	0x00d4
_ADCDATL	=	0x00d5
_RNGCTL	=	0x00d6
_RNGDAT	=	0x00d7
_ADCON	=	0x00d8
_W2SADR	=	0x00d9
_W2DAT	=	0x00da
_COMPCON	=	0x00db
_POFCON	=	0x00dc
_CCPDATIA	=	0x00dd
_CCPDATIB	=	0x00de
_CCPDATO	=	0x00df
_ACC	=	0x00e0
_W2CON1	=	0x00e1
_W2CON0	=	0x00e2
_SPIRCON0	=	0x00e4
_SPIRCON1	=	0x00e5
_SPIRSTAT	=	0x00e6
_SPIRDAT	=	0x00e7
_RFCON	=	0x00e8
_MD0	=	0x00e9
_MD1	=	0x00ea
_MD2	=	0x00eb
_MD3	=	0x00ec
_MD4	=	0x00ed
_MD5	=	0x00ee
_ARCON	=	0x00ef
_B	=	0x00f0
_FSR	=	0x00f8
_FPCR	=	0x00f9
_FCR	=	0x00fa
_SPIMCON0	=	0x00fc
_SPIMCON1	=	0x00fd
_SPIMSTAT	=	0x00fe
_SPIMDAT	=	0x00ff
_CC1	=	0xc3c2
_CC2	=	0xc5c4
_CC3	=	0xc7c6
_CRC	=	0xcbca
_T0	=	0x8c8a
_T1	=	0x8d8b
_T2	=	0xcdcc
_S0REL	=	0xbaaa
_ADCDAT	=	0xd4d5
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_SB_D0	=	0x0080
_P0_SB_D1	=	0x0081
_P0_SB_D2	=	0x0082
_P0_SB_D3	=	0x0083
_P0_SB_D4	=	0x0084
_P0_SB_D5	=	0x0085
_P0_SB_D6	=	0x0086
_P0_SB_D7	=	0x0087
_TCON_SB_IT0	=	0x0088
_TCON_SB_IE0	=	0x0089
_TCON_SB_IT1	=	0x008a
_TCON_SB_IE1	=	0x008b
_TCON_SB_TR0	=	0x008c
_TCON_SB_TF0	=	0x008d
_TCON_SB_TR1	=	0x008e
_TCON_SB_TF1	=	0x008f
_P1_SB_D0	=	0x0090
_P1_SB_D1	=	0x0091
_P1_SB_D2	=	0x0092
_P1_SB_D3	=	0x0093
_P1_SB_D4	=	0x0094
_P1_SB_D5	=	0x0095
_P1_SB_D6	=	0x0096
_P1_SB_D7	=	0x0097
_S0CON_SB_RI0	=	0x0098
_S0CON_SB_TI0	=	0x0099
_S0CON_SB_RB80	=	0x009a
_S0CON_SB_TB80	=	0x009b
_S0CON_SB_REN0	=	0x009c
_S0CON_SB_SM20	=	0x009d
_S0CON_SB_SM1	=	0x009e
_S0CON_SB_SM0	=	0x009f
_P2_SB_D0	=	0x00a0
_P2_SB_D1	=	0x00a1
_P2_SB_D2	=	0x00a2
_P2_SB_D3	=	0x00a3
_P2_SB_D4	=	0x00a4
_P2_SB_D5	=	0x00a5
_P2_SB_D6	=	0x00a6
_P2_SB_D7	=	0x00a7
_IEN0_SB_IFP	=	0x00a8
_IEN0_SB_T0	=	0x00a9
_IEN0_SB_POFIRQ	=	0x00aa
_IEN0_SB_T1	=	0x00ab
_IEN0_SB_UART	=	0x00ac
_IEN0_SB_T2	=	0x00ad
_IEN0_SB_GLOBAL	=	0x00af
_P3_SB_D0	=	0x00b0
_P3_SB_D1	=	0x00b1
_P3_SB_D2	=	0x00b2
_P3_SB_D3	=	0x00b3
_P3_SB_D4	=	0x00b4
_P3_SB_D5	=	0x00b5
_P3_SB_D6	=	0x00b6
_P3_SB_D7	=	0x00b7
_IEN1_SB_RFRDY	=	0x00b8
_IEN1_SB_RFIRQ	=	0x00b9
_IEN1_SB_SPI_2WIRE	=	0x00ba
_IEN1_SB_WUOPIRQ	=	0x00bb
_IEN1_SB_MISCIRQ	=	0x00bc
_IEN1_SB_TICK	=	0x00bd
_IEN1_SB_T2EXTRLD	=	0x00bf
_IRCON_SB_RFRDY	=	0x00c0
_IRCON_SB_RFIRQ	=	0x00c1
_IRCON_SB_SPI_2WIRE	=	0x00c2
_IRCON_SB_WUOPIRQ	=	0x00c3
_IRCON_SB_MISCIRQ	=	0x00c4
_IRCON_SB_TICK	=	0x00c5
_IRCON_SB_TF2	=	0x00c6
_IRCON_SB_EXF2	=	0x00c7
_T2CON_SB_T2I0	=	0x00c8
_T2CON_SB_T2I1	=	0x00c9
_T2CON_SB_T2CM	=	0x00ca
_T2CON_SB_T2R0	=	0x00cb
_T2CON_SB_T2R1	=	0x00cc
_T2CON_SB_I2FR	=	0x00cd
_T2CON_SB_I3FR	=	0x00ce
_T2CON_SB_T2PS	=	0x00cf
_PSW_SB_CY	=	0x00d7
_PSW_SB_AC	=	0x00d6
_PSW_SB_F0	=	0x00d5
_PSW_SB_RS1	=	0x00d4
_PSW_SB_RS0	=	0x00d3
_PSW_SB_OV	=	0x00d2
_PSW_SB_F1	=	0x00d1
_PSW_SB_P	=	0x00d0
_ADCON_SB_BD	=	0x00df
_RFCON_SB_RFCE	=	0x00e8
_RFCON_SB_RFCSN	=	0x00e9
_RFCON_SB_RFCKEN	=	0x00ea
_FSR_SB_RDISMB	=	0x00fa
_FSR_SB_INFEN	=	0x00fb
_FSR_SB_RDYN	=	0x00fc
_FSR_SB_WEN	=	0x00fd
_FSR_SB_STP	=	0x00fe
_FSR_SB_ENDBG	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_rf_spi_send_read_sloc0_1_0:
	.ds 3
_rf_spi_send_read_sloc1_1_0:
	.ds 1
_uart_configure_auto_baud_calc_sloc0_1_0:
	.ds 2
_uart_configure_auto_baud_calc_sloc1_1_0:
	.ds 4
_uart_configure_auto_baud_calc_sloc2_1_0:
	.ds 4
_uart_configure_auto_baud_calc_sloc3_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_rf_read_rx_payload_PARM_2:
	.ds 2
_rf_read_rx_payload_dataptr_1_37:
	.ds 3
_rf_configure_debug_lite_PARM_2:
	.ds 1
_rf_configure_debug_lite_rx_1_39:
	.ds 1
_rf_configure_debug_lite_config_1_40:
	.ds 1
_rf_write_register_PARM_2:
	.ds 3
_rf_write_register_PARM_3:
	.ds 2
_rf_write_register_regnumber_1_42:
	.ds 1
_rf_write_tx_payload_PARM_2:
	.ds 2
_rf_write_tx_payload_PARM_3:
	.ds 1
_rf_write_tx_payload_dataptr_1_45:
	.ds 3
_rf_set_as_rx_rx_active_mode_1_49:
	.ds 1
_rf_set_as_rx_config_1_50:
	.ds 1
_rf_irq_clear_all_dataptr_1_54:
	.ds 1
_rf_set_as_tx_config_1_55:
	.ds 1
_rf_spi_execute_command_PARM_2:
	.ds 3
_rf_spi_execute_command_PARM_3:
	.ds 2
_rf_spi_execute_command_PARM_4:
	.ds 1
_rf_spi_execute_command_instruction_1_57:
	.ds 1
_rf_spi_execute_command_status_1_58:
	.ds 1
_rf_spi_send_read_PARM_2:
	.ds 2
_rf_spi_send_read_PARM_3:
	.ds 1
_rf_spi_send_read_dataptr_1_59:
	.ds 3
_rf_power_up_param_PARM_2:
	.ds 1
_rf_power_up_param_rx_active_mode_1_63:
	.ds 1
_rf_read_register_PARM_2:
	.ds 3
_rf_read_register_PARM_3:
	.ds 2
_rf_read_register_regnumber_1_69:
	.ds 1
_rf_spi_send_read_byte_byte_1_71:
	.ds 1
_rf_set_rx_addr_PARM_2:
	.ds 2
_rf_set_rx_addr_PARM_3:
	.ds 1
_rf_set_rx_addr_address_1_73:
	.ds 3
_rf_power_down_config_1_76:
	.ds 1
_rf_power_up_rx_active_mode_1_78:
	.ds 1
_rf_power_up_config_1_79:
	.ds 1
_gpio_pin_configure_PARM_2:
	.ds 1
_gpio_pin_configure_gpio_pin_id_1_86:
	.ds 1
_gpio_pin_val_read_gpio_pin_id_1_108:
	.ds 1
_gpio_pin_val_read_value_1_109:
	.ds 1
_gpio_pin_val_clear_gpio_pin_id_1_116:
	.ds 1
_gpio_pin_val_set_gpio_pin_id_1_122:
	.ds 1
_gpio_pin_val_write_PARM_2:
	.ds 1
_gpio_pin_val_write_gpio_pin_id_1_128:
	.ds 1
_delay_us_microseconds_1_132:
	.ds 2
_delay_s_seconds_1_135:
	.ds 2
_delay_ms_milliseconds_1_138:
	.ds 2
_pwm_configure_pwm_config_options_1_143:
	.ds 1
_pwm_start_PARM_2:
	.ds 1
_pwm_start_pwm_channel_1_145:
	.ds 1
_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154:
	.ds 1
_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156:
	.ds 4
_pwr_clk_mgmt_wakeup_configure_PARM_2:
	.ds 2
_pwr_clk_mgmt_wakeup_configure_wakeup_sources_config_options_1_158:
	.ds 1
_watchdog_set_wdsv_count_wdsv_value_1_161:
	.ds 2
_watchdog_start_and_set_timeout_in_ms_milliseconds_1_163:
	.ds 4
_watchdog_start_and_set_timeout_in_ms_wd_value_1_164:
	.ds 2
_interrupt_configure_ifp_PARM_2:
	.ds 1
_interrupt_configure_ifp_interrupt_ifp_input_1_167:
	.ds 1
_adc_configure_adc_config_options_1_181:
	.ds 2
_adc_set_input_channel_adc_channel_1_183:
	.ds 1
_adc_start_single_conversion_adc_channel_1_185:
	.ds 1
_adc_start_single_conversion_get_value_adc_channel_1_187:
	.ds 1
_timer0_configure_PARM_2:
	.ds 2
_timer0_configure_timer0_config_options_1_190:
	.ds 1
_timer1_configure_PARM_2:
	.ds 2
_timer1_configure_timer1_config_options_1_195:
	.ds 1
_uart_configure_manual_baud_calc_PARM_2:
	.ds 2
_uart_configure_manual_baud_calc_uart_config_options_1_205:
	.ds 1
_uart_calc_actual_baud_rate_from_s0rel_PARM_2:
	.ds 1
_uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_212:
	.ds 2
_uart_calc_actual_baud_rate_from_th1_PARM_2:
	.ds 1
_uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_214:
	.ds 1
_uart_calc_s0rel_value_PARM_2:
	.ds 1
_uart_calc_s0rel_value_desired_baud_rate_1_216:
	.ds 4
_uart_calc_th1_value_PARM_2:
	.ds 1
_uart_calc_th1_value_desired_baud_rate_1_218:
	.ds 4
_uart_configure_auto_baud_calc_PARM_2:
	.ds 4
_uart_configure_auto_baud_calc_uart_config_options_1_220:
	.ds 1
_rtc2_configure_PARM_2:
	.ds 2
_rtc2_configure_rtc2_config_options_1_230:
	.ds 1
_radiobegin_setup_1_233:
	.ds 1
_setChannel_channel_1_234:
	.ds 1
_setDataRate_speed_1_236:
	.ds 1
_setDataRate_buffer_1_237:
	.ds 1
_setAutoAck_enable_1_238:
	.ds 1
_setAutoAck_buffer_1_239:
	.ds 1
_setCRCLength_length_1_240:
	.ds 1
_setCRCLength_buffer_1_241:
	.ds 1
_setPALevel_setup_1_243:
	.ds 1
_openAllPipe_buffer_1_244:
	.ds 5
_openAllPipe_setup_1_244:
	.ds 1
_clientnf::
	.ds 18
_setdimmer_value_1_245:
	.ds 1
_stdimm::
	.ds 1
_dimmon_mode_1_252:
	.ds 1
_servernf::
	.ds 32
_main_st_1_256:
	.ds 1
_main_countpause_1_256:
	.ds 1
_main_rewers_1_256:
	.ds 1
_main_statesend_1_256:
	.ds 4
_main_radiosend_1_256:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_valuepwm::
	.ds 2
_countrtc::
	.ds 4
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_isr_ifp
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_isr_t1
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_isr_rtc2
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_read_rx_payload'
;------------------------------------------------------------
;len                       Allocated with name '_rf_read_rx_payload_PARM_2'
;dataptr                   Allocated with name '_rf_read_rx_payload_dataptr_1_37'
;status                    Allocated with name '_rf_read_rx_payload_status_1_38'
;------------------------------------------------------------
;	../src/rf/src/rf_read_rx_payload.c:48: unsigned char rf_read_rx_payload(unsigned char * dataptr, unsigned int len)
;	-----------------------------------------
;	 function rf_read_rx_payload
;	-----------------------------------------
_rf_read_rx_payload:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_rf_read_rx_payload_dataptr_1_37
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../src/rf/src/rf_read_rx_payload.c:53: rf_clear_ce();
	clr _RFCON_SB_RFCE 
;	../src/rf/src/rf_read_rx_payload.c:54: status = rf_spi_execute_command(RF_R_RX_PAYLOAD, dataptr, len, true);
	mov	dptr,#_rf_read_rx_payload_dataptr_1_37
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rf_read_rx_payload_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_rf_spi_execute_command_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x61
	lcall	_rf_spi_execute_command
	mov	r7,dpl
;	../src/rf/src/rf_read_rx_payload.c:55: rf_set_ce();
	setb _RFCON_SB_RFCE 
	mov	dptr,#0x0004
	push	ar7
	lcall	_delay_us
	pop	ar7
;	../src/rf/src/rf_read_rx_payload.c:57: return status; //Return the STATUS register value
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_configure_debug_lite'
;------------------------------------------------------------
;p0_payload_width          Allocated with name '_rf_configure_debug_lite_PARM_2'
;rx                        Allocated with name '_rf_configure_debug_lite_rx_1_39'
;config                    Allocated with name '_rf_configure_debug_lite_config_1_40'
;------------------------------------------------------------
;	../src/rf/src/rf_configure_debug_lite.c:48: void rf_configure_debug_lite(bool rx, unsigned char p0_payload_width)
;	-----------------------------------------
;	 function rf_configure_debug_lite
;	-----------------------------------------
_rf_configure_debug_lite:
	mov	a,dpl
	mov	dptr,#_rf_configure_debug_lite_rx_1_39
	movx	@dptr,a
;	../src/rf/src/rf_configure_debug_lite.c:52: rf_spi_configure_enable(); //Enable RF SPI
	lcall	_rf_spi_configure_enable
;	../src/rf/src/rf_configure_debug_lite.c:55: config = 0;
	mov	dptr,#_rf_configure_debug_lite_config_1_40
	clr	a
	movx	@dptr,a
;	../src/rf/src/rf_configure_debug_lite.c:56: rf_write_register(RF_EN_AA, &config, 1); //Turn auto-acknowledge off
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_configure_debug_lite_config_1_40
	movx	@dptr,a
	mov	a,#(_rf_configure_debug_lite_config_1_40 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_rf_write_register
;	../src/rf/src/rf_configure_debug_lite.c:59: config = RF_CONFIG_DEFAULT_VAL; //Set config to the default value of the CONFIG register
	mov	dptr,#_rf_configure_debug_lite_config_1_40
	mov	a,#0x08
	movx	@dptr,a
;	../src/rf/src/rf_configure_debug_lite.c:62: rf_write_register(RF_RX_PW_P0, &p0_payload_width, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_configure_debug_lite_PARM_2
	movx	@dptr,a
	mov	a,#(_rf_configure_debug_lite_PARM_2 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x11
	lcall	_rf_write_register
;	../src/rf/src/rf_configure_debug_lite.c:65: if(rx != false)
	mov	dptr,#_rf_configure_debug_lite_rx_1_39
	movx	a,@dptr
	mov	r7,a
	jz	00102$
;	../src/rf/src/rf_configure_debug_lite.c:67: config |= RF_CONFIG_PRIM_RX;
	mov	dptr,#_rf_configure_debug_lite_config_1_40
	mov	a,#0x09
	movx	@dptr,a
00102$:
;	../src/rf/src/rf_configure_debug_lite.c:70: rf_power_up_param(true, config);
	mov	dptr,#_rf_configure_debug_lite_config_1_40
	movx	a,@dptr
	mov	dptr,#_rf_power_up_param_PARM_2
	movx	@dptr,a
	mov	dpl,#0x01
	ljmp	_rf_power_up_param
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_write_register'
;------------------------------------------------------------
;dataptr                   Allocated with name '_rf_write_register_PARM_2'
;len                       Allocated with name '_rf_write_register_PARM_3'
;regnumber                 Allocated with name '_rf_write_register_regnumber_1_42'
;------------------------------------------------------------
;	../src/rf/src/rf_write_register.c:49: unsigned char rf_write_register(unsigned char regnumber, unsigned char * dataptr, unsigned int len)
;	-----------------------------------------
;	 function rf_write_register
;	-----------------------------------------
_rf_write_register:
	mov	a,dpl
;	../src/rf/src/rf_write_register.c:52: return rf_spi_execute_command(RF_W_REGISTER | (regnumber & RF_W_REGISTER_DATA), dataptr, len, false);
	mov	dptr,#_rf_write_register_regnumber_1_42
	movx	@dptr,a
	mov	r7,a
	mov	a,#0x1F
	anl	a,r7
	orl	a,#0x20
	mov	r7,a
	mov	dptr,#_rf_write_register_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_rf_write_register_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_rf_spi_execute_command_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,r7
	ljmp	_rf_spi_execute_command
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_spi_configure_enable'
;------------------------------------------------------------
;	../src/rf/src/rf_spi_configure_enable.c:47: void rf_spi_configure_enable()
;	-----------------------------------------
;	 function rf_spi_configure_enable
;	-----------------------------------------
_rf_spi_configure_enable:
;	../src/rf/src/rf_spi_configure_enable.c:50: RFCON = 0x02;
	mov	_RFCON,#0x02
;	../src/rf/src/rf_spi_configure_enable.c:51: RFCON = RFCON_RFCKEN;
	mov	_RFCON,#0x04
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_write_tx_payload'
;------------------------------------------------------------
;len                       Allocated with name '_rf_write_tx_payload_PARM_2'
;transmit                  Allocated with name '_rf_write_tx_payload_PARM_3'
;dataptr                   Allocated with name '_rf_write_tx_payload_dataptr_1_45'
;status                    Allocated with name '_rf_write_tx_payload_status_1_46'
;------------------------------------------------------------
;	../src/rf/src/rf_write_tx_payload.c:49: unsigned char rf_write_tx_payload(unsigned char * dataptr, unsigned int len, bool transmit)
;	-----------------------------------------
;	 function rf_write_tx_payload
;	-----------------------------------------
_rf_write_tx_payload:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_rf_write_tx_payload_dataptr_1_45
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../src/rf/src/rf_write_tx_payload.c:53: status = rf_spi_execute_command(RF_W_TX_PAYLOAD, dataptr, len, false); //Write the payload
	mov	dptr,#_rf_write_tx_payload_dataptr_1_45
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rf_write_tx_payload_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_rf_spi_execute_command_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	clr	a
	movx	@dptr,a
	mov	dpl,#0xA0
	lcall	_rf_spi_execute_command
	mov	r7,dpl
;	../src/rf/src/rf_write_tx_payload.c:56: if(transmit == true)
	mov	dptr,#_rf_write_tx_payload_PARM_3
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x01,00102$
;	../src/rf/src/rf_write_tx_payload.c:58: rf_transmit();
	push	ar7
	lcall	_rf_transmit
	pop	ar7
00102$:
;	../src/rf/src/rf_write_tx_payload.c:61: return status; //Return the value of STATUS
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_transmit'
;------------------------------------------------------------
;	../src/rf/src/rf_transmit.c:47: void rf_transmit()
;	-----------------------------------------
;	 function rf_transmit
;	-----------------------------------------
_rf_transmit:
;	../src/rf/src/rf_transmit.c:50: rf_set_ce();
	setb _RFCON_SB_RFCE 
	mov	dptr,#0x0004
	lcall	_delay_us
;	../src/rf/src/rf_transmit.c:51: delay_us(10);
	mov	dptr,#0x000A
	lcall	_delay_us
;	../src/rf/src/rf_transmit.c:52: rf_clear_ce();
	clr _RFCON_SB_RFCE 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_set_as_rx'
;------------------------------------------------------------
;rx_active_mode            Allocated with name '_rf_set_as_rx_rx_active_mode_1_49'
;config                    Allocated with name '_rf_set_as_rx_config_1_50'
;------------------------------------------------------------
;	../src/rf/src/rf_set_as_rx.c:47: void rf_set_as_rx(bool rx_active_mode)
;	-----------------------------------------
;	 function rf_set_as_rx
;	-----------------------------------------
_rf_set_as_rx:
	mov	a,dpl
	mov	dptr,#_rf_set_as_rx_rx_active_mode_1_49
	movx	@dptr,a
;	../src/rf/src/rf_set_as_rx.c:51: rf_read_register(RF_CONFIG, &config, 1); //Read the current CONFIG value
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_rf_set_as_rx_config_1_50
	movx	@dptr,a
	mov	a,#(_rf_set_as_rx_config_1_50 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_rf_read_register
;	../src/rf/src/rf_set_as_rx.c:54: if((config & RF_CONFIG_PRIM_RX) != 0)
	mov	dptr,#_rf_set_as_rx_config_1_50
	movx	a,@dptr
	mov	r7,a
	jnb	acc.0,00102$
;	../src/rf/src/rf_set_as_rx.c:56: return;
	ret
00102$:
;	../src/rf/src/rf_set_as_rx.c:60: config |= RF_CONFIG_PRIM_RX;
	mov	dptr,#_rf_set_as_rx_config_1_50
	mov	a,#0x01
	orl	a,r7
	movx	@dptr,a
;	../src/rf/src/rf_set_as_rx.c:61: rf_write_register(RF_CONFIG, &config, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_set_as_rx_config_1_50
	movx	@dptr,a
	mov	a,#(_rf_set_as_rx_config_1_50 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_rf_write_register
;	../src/rf/src/rf_set_as_rx.c:64: if(rx_active_mode != false)
	mov	dptr,#_rf_set_as_rx_rx_active_mode_1_49
	movx	a,@dptr
	mov	r7,a
	jz	00104$
;	../src/rf/src/rf_set_as_rx.c:66: rf_set_ce();
	setb _RFCON_SB_RFCE 
	mov	dptr,#0x0004
	ljmp	_delay_us
00104$:
;	../src/rf/src/rf_set_as_rx.c:70: rf_clear_ce();
	clr _RFCON_SB_RFCE 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_irq_clear_all'
;------------------------------------------------------------
;dataptr                   Allocated with name '_rf_irq_clear_all_dataptr_1_54'
;------------------------------------------------------------
;	../src/rf/src/rf_irq_clear_all.c:47: void rf_irq_clear_all()
;	-----------------------------------------
;	 function rf_irq_clear_all
;	-----------------------------------------
_rf_irq_clear_all:
;	../src/rf/src/rf_irq_clear_all.c:50: unsigned char dataptr = RF_STATUS_RX_DR | RF_STATUS_TX_DS | RF_STATUS_MAX_RT;
	mov	dptr,#_rf_irq_clear_all_dataptr_1_54
	mov	a,#0x70
	movx	@dptr,a
;	../src/rf/src/rf_irq_clear_all.c:52: rf_write_register(RF_STATUS, &dataptr, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_irq_clear_all_dataptr_1_54
	movx	@dptr,a
	mov	a,#(_rf_irq_clear_all_dataptr_1_54 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_rf_write_register
;	../src/rf/src/rf_irq_clear_all.c:54: sbit_clear(IRCON_SB_RFIRQ); //Clear the master interrupt
	clr _IRCON_SB_RFIRQ 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_set_as_tx'
;------------------------------------------------------------
;config                    Allocated with name '_rf_set_as_tx_config_1_55'
;------------------------------------------------------------
;	../src/rf/src/rf_set_as_tx.c:47: void rf_set_as_tx()
;	-----------------------------------------
;	 function rf_set_as_tx
;	-----------------------------------------
_rf_set_as_tx:
;	../src/rf/src/rf_set_as_tx.c:51: rf_read_register(RF_CONFIG, &config, 1); //Read the current CONFIG value
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_rf_set_as_tx_config_1_55
	movx	@dptr,a
	mov	a,#(_rf_set_as_tx_config_1_55 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_rf_read_register
;	../src/rf/src/rf_set_as_tx.c:54: if((config & RF_CONFIG_PRIM_RX) == 0)
	mov	dptr,#_rf_set_as_tx_config_1_55
	movx	a,@dptr
	mov	r7,a
	jb	acc.0,00102$
;	../src/rf/src/rf_set_as_tx.c:56: return;
	ret
00102$:
;	../src/rf/src/rf_set_as_tx.c:59: rf_clear_ce(); //Clear the CE pin
	clr _RFCON_SB_RFCE 
;	../src/rf/src/rf_set_as_tx.c:62: config &= (~RF_CONFIG_PRIM_RX);
	mov	dptr,#_rf_set_as_tx_config_1_55
	mov	a,#0xFE
	anl	a,r7
	movx	@dptr,a
;	../src/rf/src/rf_set_as_tx.c:63: rf_write_register(RF_CONFIG, &config, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_set_as_tx_config_1_55
	movx	@dptr,a
	mov	a,#(_rf_set_as_tx_config_1_55 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_spi_execute_command'
;------------------------------------------------------------
;dataptr                   Allocated with name '_rf_spi_execute_command_PARM_2'
;len                       Allocated with name '_rf_spi_execute_command_PARM_3'
;copydata                  Allocated with name '_rf_spi_execute_command_PARM_4'
;instruction               Allocated with name '_rf_spi_execute_command_instruction_1_57'
;status                    Allocated with name '_rf_spi_execute_command_status_1_58'
;------------------------------------------------------------
;	../src/rf/src/rf_spi_execute_command.c:50: unsigned char rf_spi_execute_command(unsigned char instruction, unsigned char * dataptr, unsigned int len, bool copydata)
;	-----------------------------------------
;	 function rf_spi_execute_command
;	-----------------------------------------
_rf_spi_execute_command:
	mov	a,dpl
;	../src/rf/src/rf_spi_execute_command.c:52: unsigned char status = instruction; //status writes the instruction, then reads the current STATUS value
	mov	dptr,#_rf_spi_execute_command_instruction_1_57
	movx	@dptr,a
	mov	r7,a
	mov	dptr,#_rf_spi_execute_command_status_1_58
	movx	@dptr,a
;	../src/rf/src/rf_spi_execute_command.c:54: rf_clear_csn(); //Clear CSN to start the transaction
	clr _RFCON_SB_RFCSN 
;	../src/rf/src/rf_spi_execute_command.c:57: rf_spi_send_read(&status, 1, true);
	mov	dptr,#_rf_spi_send_read_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_send_read_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_status_1_58
	mov	b,#0x00
	lcall	_rf_spi_send_read
;	../src/rf/src/rf_spi_execute_command.c:58: rf_spi_send_read(dataptr, len, copydata);
	mov	dptr,#_rf_spi_execute_command_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_rf_spi_send_read_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_send_read_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_rf_spi_send_read
;	../src/rf/src/rf_spi_execute_command.c:60: rf_set_csn(); //Set CSN to end the transaction
	setb _RFCON_SB_RFCSN 
;	../src/rf/src/rf_spi_execute_command.c:62: return status; //Return the value of STATUS
	mov	dptr,#_rf_spi_execute_command_status_1_58
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_spi_send_read'
;------------------------------------------------------------
;sloc0                     Allocated with name '_rf_spi_send_read_sloc0_1_0'
;sloc1                     Allocated with name '_rf_spi_send_read_sloc1_1_0'
;len                       Allocated with name '_rf_spi_send_read_PARM_2'
;copydata                  Allocated with name '_rf_spi_send_read_PARM_3'
;dataptr                   Allocated with name '_rf_spi_send_read_dataptr_1_59'
;i                         Allocated with name '_rf_spi_send_read_i_1_60'
;tempbyte                  Allocated with name '_rf_spi_send_read_tempbyte_1_60'
;------------------------------------------------------------
;	../src/rf/src/rf_spi_send_read.c:49: void rf_spi_send_read(unsigned char * dataptr, unsigned int len, bool copydata)
;	-----------------------------------------
;	 function rf_spi_send_read
;	-----------------------------------------
_rf_spi_send_read:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_rf_spi_send_read_dataptr_1_59
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../src/rf/src/rf_spi_send_read.c:55: for(i = 0; i < len; i++)
	mov	dptr,#_rf_spi_send_read_dataptr_1_59
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_rf_spi_send_read_PARM_3
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_rf_spi_send_read_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r0,#0x00
	mov	r1,#0x00
00105$:
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	subb	a,r3
	jnc	00107$
;	../src/rf/src/rf_spi_send_read.c:57: tempbyte = rf_spi_send_read_byte(dataptr[i]); //Send the value, and then save the received value
	push	ar2
	push	ar3
	mov	a,r0
	add	a,r5
	mov	_rf_spi_send_read_sloc0_1_0,a
	mov	a,r1
	addc	a,r6
	mov	(_rf_spi_send_read_sloc0_1_0 + 1),a
	mov	(_rf_spi_send_read_sloc0_1_0 + 2),r7
	mov	dpl,_rf_spi_send_read_sloc0_1_0
	mov	dph,(_rf_spi_send_read_sloc0_1_0 + 1)
	mov	b,(_rf_spi_send_read_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r3,a
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_rf_spi_send_read_byte
	mov	_rf_spi_send_read_sloc1_1_0,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../src/rf/src/rf_spi_send_read.c:60: if(copydata != false)
	pop	ar3
	pop	ar2
	mov	a,r4
	jz	00106$
;	../src/rf/src/rf_spi_send_read.c:62: dataptr[i] = tempbyte;
	mov	dpl,_rf_spi_send_read_sloc0_1_0
	mov	dph,(_rf_spi_send_read_sloc0_1_0 + 1)
	mov	b,(_rf_spi_send_read_sloc0_1_0 + 2)
	mov	a,_rf_spi_send_read_sloc1_1_0
	lcall	__gptrput
00106$:
;	../src/rf/src/rf_spi_send_read.c:55: for(i = 0; i < len; i++)
	inc	r0
	cjne	r0,#0x00,00105$
	inc	r1
	sjmp	00105$
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_power_up_param'
;------------------------------------------------------------
;config                    Allocated with name '_rf_power_up_param_PARM_2'
;rx_active_mode            Allocated with name '_rf_power_up_param_rx_active_mode_1_63'
;------------------------------------------------------------
;	../src/rf/src/rf_power_up_param.c:49: void rf_power_up_param(bool rx_active_mode, unsigned char config)
;	-----------------------------------------
;	 function rf_power_up_param
;	-----------------------------------------
_rf_power_up_param:
	mov	a,dpl
	mov	dptr,#_rf_power_up_param_rx_active_mode_1_63
	movx	@dptr,a
;	../src/rf/src/rf_power_up_param.c:52: config |= RF_CONFIG_PWR_UP;
	mov	dptr,#_rf_power_up_param_PARM_2
	movx	a,@dptr
	orl	a,#0x02
	movx	@dptr,a
;	../src/rf/src/rf_power_up_param.c:53: rf_write_register(RF_CONFIG, &config, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_power_up_param_PARM_2
	movx	@dptr,a
	mov	a,#(_rf_power_up_param_PARM_2 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_rf_write_register
;	../src/rf/src/rf_power_up_param.c:55: delay_us(1); //Delay for power up
	mov	dptr,#0x0001
	lcall	_delay_us
;	../src/rf/src/rf_power_up_param.c:58: if((config & RF_CONFIG_PRIM_RX) == 0)
	mov	dptr,#_rf_power_up_param_PARM_2
	movx	a,@dptr
	mov	r7,a
	jb	acc.0,00105$
;	../src/rf/src/rf_power_up_param.c:60: rf_clear_ce(); //Clear CE for TX mode
	clr _RFCON_SB_RFCE 
	ret
00105$:
;	../src/rf/src/rf_power_up_param.c:65: if(rx_active_mode != false)
	mov	dptr,#_rf_power_up_param_rx_active_mode_1_63
	movx	a,@dptr
	mov	r7,a
	jz	00102$
;	../src/rf/src/rf_power_up_param.c:67: rf_set_ce();
	setb _RFCON_SB_RFCE 
	mov	dptr,#0x0004
	ljmp	_delay_us
00102$:
;	../src/rf/src/rf_power_up_param.c:71: rf_clear_ce();
	clr _RFCON_SB_RFCE 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_read_register'
;------------------------------------------------------------
;dataptr                   Allocated with name '_rf_read_register_PARM_2'
;len                       Allocated with name '_rf_read_register_PARM_3'
;regnumber                 Allocated with name '_rf_read_register_regnumber_1_69'
;------------------------------------------------------------
;	../src/rf/src/rf_read_register.c:49: unsigned char rf_read_register(unsigned char regnumber, unsigned char * dataptr, unsigned int len)
;	-----------------------------------------
;	 function rf_read_register
;	-----------------------------------------
_rf_read_register:
	mov	a,dpl
;	../src/rf/src/rf_read_register.c:52: return rf_spi_execute_command(regnumber & RF_R_REGISTER_DATA, dataptr, len, true);
	mov	dptr,#_rf_read_register_regnumber_1_69
	movx	@dptr,a
	mov	r7,a
	anl	ar7,#0x1F
	mov	dptr,#_rf_read_register_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_rf_read_register_PARM_3
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_rf_spi_execute_command_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r7
	ljmp	_rf_spi_execute_command
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_spi_send_read_byte'
;------------------------------------------------------------
;byte                      Allocated with name '_rf_spi_send_read_byte_byte_1_71'
;------------------------------------------------------------
;	../src/rf/src/rf_spi_send_read_byte.c:47: unsigned char rf_spi_send_read_byte(unsigned char byte)
;	-----------------------------------------
;	 function rf_spi_send_read_byte
;	-----------------------------------------
_rf_spi_send_read_byte:
	mov	a,dpl
;	../src/rf/src/rf_spi_send_read_byte.c:49: SPIRDAT = byte; //Send byte over SPI
	mov	dptr,#_rf_spi_send_read_byte_byte_1_71
	movx	@dptr,a
	mov	_SPIRDAT,a
;	../src/rf/src/rf_spi_send_read_byte.c:51: while(!(SPIRSTAT & SPIRSTAT_IRQ_RX_FIFO_READY)); //Wait for the transaction to finish
00101$:
	mov	a,_SPIRSTAT
	jnb	acc.2,00101$
;	../src/rf/src/rf_spi_send_read_byte.c:53: IRCON_SB_RFRDY = BIT_FALSE; //Clear the IRQ bit
	clr	_IRCON_SB_RFRDY
;	../src/rf/src/rf_spi_send_read_byte.c:55: return SPIRDAT; //Return the received value
	mov	dpl,_SPIRDAT
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_set_rx_addr'
;------------------------------------------------------------
;len                       Allocated with name '_rf_set_rx_addr_PARM_2'
;rxpipenum                 Allocated with name '_rf_set_rx_addr_PARM_3'
;address                   Allocated with name '_rf_set_rx_addr_address_1_73'
;------------------------------------------------------------
;	../src/rf/src/rf_set_rx_addr.c:49: void rf_set_rx_addr(unsigned char * address, unsigned int len, unsigned char rxpipenum)
;	-----------------------------------------
;	 function rf_set_rx_addr
;	-----------------------------------------
_rf_set_rx_addr:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_rf_set_rx_addr_address_1_73
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../src/rf/src/rf_set_rx_addr.c:52: if(rxpipenum > 5)
	mov	dptr,#_rf_set_rx_addr_PARM_3
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x05
	jnc	00102$
;	../src/rf/src/rf_set_rx_addr.c:54: return;
	ret
00102$:
;	../src/rf/src/rf_set_rx_addr.c:57: rf_write_register(RF_RX_ADDR_P0 + rxpipenum, address, len); //Write the requested address to the requested RX pipe
	mov	a,#0x0A
	add	a,r7
	mov	r7,a
	mov	dptr,#_rf_set_rx_addr_address_1_73
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_rf_set_rx_addr_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_power_down'
;------------------------------------------------------------
;config                    Allocated with name '_rf_power_down_config_1_76'
;------------------------------------------------------------
;	../src/rf/src/rf_power_down.c:47: void rf_power_down()
;	-----------------------------------------
;	 function rf_power_down
;	-----------------------------------------
_rf_power_down:
;	../src/rf/src/rf_power_down.c:51: rf_clear_ce(); //Clear the CE pin
	clr _RFCON_SB_RFCE 
;	../src/rf/src/rf_power_down.c:53: rf_read_register(RF_CONFIG, &config, 1); //Read the current value of the CONFIG register
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_rf_power_down_config_1_76
	movx	@dptr,a
	mov	a,#(_rf_power_down_config_1_76 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_rf_read_register
;	../src/rf/src/rf_power_down.c:56: if((config & RF_CONFIG_PWR_UP) == 0)
	mov	dptr,#_rf_power_down_config_1_76
	movx	a,@dptr
	mov	r7,a
	jb	acc.1,00102$
;	../src/rf/src/rf_power_down.c:58: return;
	ret
00102$:
;	../src/rf/src/rf_power_down.c:62: config &= (~RF_CONFIG_PWR_UP);
	mov	dptr,#_rf_power_down_config_1_76
	mov	a,#0xFD
	anl	a,r7
	movx	@dptr,a
;	../src/rf/src/rf_power_down.c:63: rf_write_register(RF_CONFIG, &config, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_power_down_config_1_76
	movx	@dptr,a
	mov	a,#(_rf_power_down_config_1_76 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'rf_power_up'
;------------------------------------------------------------
;rx_active_mode            Allocated with name '_rf_power_up_rx_active_mode_1_78'
;config                    Allocated with name '_rf_power_up_config_1_79'
;------------------------------------------------------------
;	../src/rf/src/rf_power_up.c:47: void rf_power_up(bool rx_active_mode)
;	-----------------------------------------
;	 function rf_power_up
;	-----------------------------------------
_rf_power_up:
	mov	a,dpl
	mov	dptr,#_rf_power_up_rx_active_mode_1_78
	movx	@dptr,a
;	../src/rf/src/rf_power_up.c:51: rf_read_register(RF_CONFIG, &config, 1); //Get the current value of the CONFIG register
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_rf_power_up_config_1_79
	movx	@dptr,a
	mov	a,#(_rf_power_up_config_1_79 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_rf_read_register
;	../src/rf/src/rf_power_up.c:54: if((config & RF_CONFIG_PWR_UP) != 0)
	mov	dptr,#_rf_power_up_config_1_79
	movx	a,@dptr
	mov	r7,a
	jnb	acc.1,00102$
;	../src/rf/src/rf_power_up.c:56: return;
	ret
00102$:
;	../src/rf/src/rf_power_up.c:60: config |= RF_CONFIG_PWR_UP;
	mov	dptr,#_rf_power_up_config_1_79
	mov	a,#0x02
	orl	a,r7
	movx	@dptr,a
;	../src/rf/src/rf_power_up.c:61: rf_write_register(RF_CONFIG, &config, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_rf_power_up_config_1_79
	movx	@dptr,a
	mov	a,#(_rf_power_up_config_1_79 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_rf_write_register
;	../src/rf/src/rf_power_up.c:63: delay_us(1); //Delay for power up
	mov	dptr,#0x0001
	lcall	_delay_us
;	../src/rf/src/rf_power_up.c:66: if((config & RF_CONFIG_PRIM_RX) == 0)
	mov	dptr,#_rf_power_up_config_1_79
	movx	a,@dptr
	mov	r7,a
	jb	acc.0,00107$
;	../src/rf/src/rf_power_up.c:68: rf_clear_ce(); //Clear CE for TX mode
	clr _RFCON_SB_RFCE 
	ret
00107$:
;	../src/rf/src/rf_power_up.c:73: if(rx_active_mode != false)
	mov	dptr,#_rf_power_up_rx_active_mode_1_78
	movx	a,@dptr
	mov	r7,a
	jz	00104$
;	../src/rf/src/rf_power_up.c:75: rf_set_ce();
	setb _RFCON_SB_RFCE 
	mov	dptr,#0x0004
	ljmp	_delay_us
00104$:
;	../src/rf/src/rf_power_up.c:79: rf_clear_ce();
	clr _RFCON_SB_RFCE 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gpio_pin_configure'
;------------------------------------------------------------
;gpio_pin_config_options   Allocated with name '_gpio_pin_configure_PARM_2'
;gpio_pin_id               Allocated with name '_gpio_pin_configure_gpio_pin_id_1_86'
;------------------------------------------------------------
;	../src/gpio/src/gpio_pin_configure.c:47: void gpio_pin_configure(gpio_pin_id_t gpio_pin_id, uint8_t gpio_pin_config_options)
;	-----------------------------------------
;	 function gpio_pin_configure
;	-----------------------------------------
_gpio_pin_configure:
	mov	a,dpl
;	../src/gpio/src/gpio_pin_configure.c:50: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
	mov	dptr,#_gpio_pin_configure_gpio_pin_id_1_86
	movx	@dptr,a
	mov  r7,a
	add	a,#0xff - 0x07
	jnc	00174$
	ljmp	00134$
00174$:
;	../src/gpio/src/gpio_pin_configure.c:53: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
	mov	dptr,#_gpio_pin_configure_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	r5,a
	mov	a,r5
	jnb	acc.0,00105$
;	../src/gpio/src/gpio_pin_configure.c:56: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
	mov	a,r6
	jnb	acc.1,00102$
;	../src/gpio/src/gpio_pin_configure.c:58: gpio_pins_val_set(P0, (1 << (gpio_pin_id % 8)));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00179$
00177$:
	add	a,acc
00179$:
	djnz	b,00177$
	mov	r5,a
	orl	_P0,a
	sjmp	00103$
00102$:
;	../src/gpio/src/gpio_pin_configure.c:62: gpio_pins_val_clear(P0, (1 << (gpio_pin_id % 8)));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00182$
00180$:
	add	a,acc
00182$:
	djnz	b,00180$
	cpl	a
	mov	r5,a
	anl	_P0,a
00103$:
;	../src/gpio/src/gpio_pin_configure.c:66: P0CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
	mov	a,#0x07
	anl	a,r7
	mov	r5,a
	mov	a,#0x07
	anl	a,r5
	mov	r4,a
;	../src/gpio/src/gpio_pin_configure.c:67: (gpio_pin_config_options & PXCON_PINMODE_MASK);
	mov	a,#0xE0
	anl	a,r6
	orl	a,r4
	mov	_P0CON,a
;	../src/gpio/src/gpio_pin_configure.c:70: gpio_pins_dir_output(P0DIR, (1 << (gpio_pin_id % 8)));
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00185$
00183$:
	add	a,acc
00185$:
	djnz	b,00183$
	cpl	a
	anl	_P0DIR,a
	ret
00105$:
;	../src/gpio/src/gpio_pin_configure.c:75: P0CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
	mov	a,#0x07
	anl	a,r7
	mov	r5,a
	mov	a,#0x07
	anl	a,r5
	orl	a,#0x10
	mov	r4,a
;	../src/gpio/src/gpio_pin_configure.c:77: (gpio_pin_config_options & PXCON_PINMODE_MASK);
	mov	a,#0xE0
	anl	a,r6
	orl	a,r4
	mov	_P0CON,a
;	../src/gpio/src/gpio_pin_configure.c:80: gpio_pins_dir_input(P0DIR, (1 << (gpio_pin_id % 8)));
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00188$
00186$:
	add	a,acc
00188$:
	djnz	b,00186$
	orl	_P0DIR,a
	ret
00134$:
;	../src/gpio/src/gpio_pin_configure.c:83: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
	mov	a,r7
	add	a,#0xff - 0x0F
	jnc	00189$
	ljmp	00131$
00189$:
;	../src/gpio/src/gpio_pin_configure.c:86: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
	mov	dptr,#_gpio_pin_configure_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	r5,a
	mov	a,r5
	jnb	acc.0,00111$
;	../src/gpio/src/gpio_pin_configure.c:89: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
	mov	a,r6
	jnb	acc.1,00108$
;	../src/gpio/src/gpio_pin_configure.c:91: gpio_pins_val_set(P1, (1 << (gpio_pin_id % 8)));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00194$
00192$:
	add	a,acc
00194$:
	djnz	b,00192$
	mov	r5,a
	orl	_P1,a
	sjmp	00109$
00108$:
;	../src/gpio/src/gpio_pin_configure.c:95: gpio_pins_val_clear(P1, (1 << (gpio_pin_id % 8)));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00197$
00195$:
	add	a,acc
00197$:
	djnz	b,00195$
	cpl	a
	mov	r5,a
	anl	_P1,a
00109$:
;	../src/gpio/src/gpio_pin_configure.c:99: P1CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
	mov	a,#0x07
	anl	a,r7
	mov	r5,a
	mov	a,#0x07
	anl	a,r5
	mov	r4,a
;	../src/gpio/src/gpio_pin_configure.c:100: (gpio_pin_config_options & PXCON_PINMODE_MASK);
	mov	a,#0xE0
	anl	a,r6
	orl	a,r4
	mov	_P1CON,a
;	../src/gpio/src/gpio_pin_configure.c:103: gpio_pins_dir_output(P1DIR, (1 << (gpio_pin_id % 8)));
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00200$
00198$:
	add	a,acc
00200$:
	djnz	b,00198$
	cpl	a
	anl	_P1DIR,a
	ret
00111$:
;	../src/gpio/src/gpio_pin_configure.c:108: P1CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
	mov	a,#0x07
	anl	a,r7
	mov	r5,a
	mov	a,#0x07
	anl	a,r5
	orl	a,#0x10
	mov	r4,a
;	../src/gpio/src/gpio_pin_configure.c:110: (gpio_pin_config_options & PXCON_PINMODE_MASK);
	mov	a,#0xE0
	anl	a,r6
	orl	a,r4
	mov	_P1CON,a
;	../src/gpio/src/gpio_pin_configure.c:113: gpio_pins_dir_input(P1DIR, (1 << (gpio_pin_id % 8)));
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00203$
00201$:
	add	a,acc
00203$:
	djnz	b,00201$
	orl	_P1DIR,a
	ret
00131$:
;	../src/gpio/src/gpio_pin_configure.c:116: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
	mov	a,r7
	add	a,#0xff - 0x17
	jnc	00204$
	ljmp	00128$
00204$:
;	../src/gpio/src/gpio_pin_configure.c:119: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
	mov	dptr,#_gpio_pin_configure_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	r5,a
	mov	a,r5
	jnb	acc.0,00117$
;	../src/gpio/src/gpio_pin_configure.c:122: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
	mov	a,r6
	jnb	acc.1,00114$
;	../src/gpio/src/gpio_pin_configure.c:124: gpio_pins_val_set(P2, (1 << (gpio_pin_id % 8)));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00209$
00207$:
	add	a,acc
00209$:
	djnz	b,00207$
	mov	r5,a
	orl	_P2,a
	sjmp	00115$
00114$:
;	../src/gpio/src/gpio_pin_configure.c:128: gpio_pins_val_clear(P2, (1 << (gpio_pin_id % 8)));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00212$
00210$:
	add	a,acc
00212$:
	djnz	b,00210$
	cpl	a
	mov	r5,a
	anl	_P2,a
00115$:
;	../src/gpio/src/gpio_pin_configure.c:132: P2CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
	mov	a,#0x07
	anl	a,r7
	mov	r5,a
	mov	a,#0x07
	anl	a,r5
	mov	r4,a
;	../src/gpio/src/gpio_pin_configure.c:133: (gpio_pin_config_options & PXCON_PINMODE_MASK);
	mov	a,#0xE0
	anl	a,r6
	orl	a,r4
	mov	_P2CON,a
;	../src/gpio/src/gpio_pin_configure.c:136: gpio_pins_dir_output(P2DIR, (1 << (gpio_pin_id % 8)));
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00215$
00213$:
	add	a,acc
00215$:
	djnz	b,00213$
	cpl	a
	anl	_P2DIR,a
	ret
00117$:
;	../src/gpio/src/gpio_pin_configure.c:141: P2CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
	mov	a,#0x07
	anl	a,r7
	mov	r5,a
	mov	a,#0x07
	anl	a,r5
	orl	a,#0x10
	mov	r4,a
;	../src/gpio/src/gpio_pin_configure.c:143: (gpio_pin_config_options & PXCON_PINMODE_MASK);
	mov	a,#0xE0
	anl	a,r6
	orl	a,r4
	mov	_P2CON,a
;	../src/gpio/src/gpio_pin_configure.c:146: gpio_pins_dir_input(P2DIR, (1 << (gpio_pin_id % 8)));
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00218$
00216$:
	add	a,acc
00218$:
	djnz	b,00216$
	orl	_P2DIR,a
	ret
00128$:
;	../src/gpio/src/gpio_pin_configure.c:149: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
	mov	a,r7
	add	a,#0xff - 0x1E
	jc	00136$
;	../src/gpio/src/gpio_pin_configure.c:152: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT)
	mov	dptr,#_gpio_pin_configure_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	r5,a
	mov	a,r5
	jnb	acc.0,00123$
;	../src/gpio/src/gpio_pin_configure.c:155: if(gpio_pin_config_options & GPIO_PIN_CONFIG_OPTION_OUTPUT_VAL_SET)
	mov	a,r6
	jnb	acc.1,00120$
;	../src/gpio/src/gpio_pin_configure.c:157: gpio_pins_val_set(P3, (1 << (gpio_pin_id % 8)));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00224$
00222$:
	add	a,acc
00224$:
	djnz	b,00222$
	mov	r5,a
	orl	_P3,a
	sjmp	00121$
00120$:
;	../src/gpio/src/gpio_pin_configure.c:161: gpio_pins_val_clear(P3, (1 << (gpio_pin_id % 8)));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00227$
00225$:
	add	a,acc
00227$:
	djnz	b,00225$
	cpl	a
	mov	r5,a
	anl	_P3,a
00121$:
;	../src/gpio/src/gpio_pin_configure.c:165: P3CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
	mov	a,#0x07
	anl	a,r7
	mov	r5,a
	mov	a,#0x07
	anl	a,r5
	mov	r4,a
;	../src/gpio/src/gpio_pin_configure.c:166: (gpio_pin_config_options & PXCON_PINMODE_MASK);
	mov	a,#0xE0
	anl	a,r6
	orl	a,r4
	mov	_P3CON,a
;	../src/gpio/src/gpio_pin_configure.c:169: gpio_pins_dir_output(P3DIR, (1 << (gpio_pin_id % 8)));
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00230$
00228$:
	add	a,acc
00230$:
	djnz	b,00228$
	cpl	a
	anl	_P3DIR,a
	ret
00123$:
;	../src/gpio/src/gpio_pin_configure.c:174: P3CON = ((gpio_pin_id % 8) & PXCON_BIT_ADDR_MASK) |
	anl	ar7,#0x07
	mov	a,#0x07
	anl	a,r7
	orl	a,#0x10
	mov	r5,a
;	../src/gpio/src/gpio_pin_configure.c:176: (gpio_pin_config_options & PXCON_PINMODE_MASK);
	mov	a,#0xE0
	anl	a,r6
	orl	a,r5
	mov	_P3CON,a
;	../src/gpio/src/gpio_pin_configure.c:179: gpio_pins_dir_input(P3DIR, (1 << (gpio_pin_id % 8)));
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00233$
00231$:
	add	a,acc
00233$:
	djnz	b,00231$
	mov	r7,a
	orl	_P3DIR,a
00136$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gpio_pin_val_read'
;------------------------------------------------------------
;gpio_pin_id               Allocated with name '_gpio_pin_val_read_gpio_pin_id_1_108'
;value                     Allocated with name '_gpio_pin_val_read_value_1_109'
;------------------------------------------------------------
;	../src/gpio/src/gpio_pin_val_read.c:46: bool gpio_pin_val_read(gpio_pin_id_t gpio_pin_id)
;	-----------------------------------------
;	 function gpio_pin_val_read
;	-----------------------------------------
_gpio_pin_val_read:
	mov	a,dpl
	mov	dptr,#_gpio_pin_val_read_gpio_pin_id_1_108
	movx	@dptr,a
;	../src/gpio/src/gpio_pin_val_read.c:48: bool value = false;
	mov	dptr,#_gpio_pin_val_read_value_1_109
	clr	a
	movx	@dptr,a
;	../src/gpio/src/gpio_pin_val_read.c:51: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
	mov	dptr,#_gpio_pin_val_read_gpio_pin_id_1_108
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x07
	jc	00110$
;	../src/gpio/src/gpio_pin_val_read.c:53: value = P0 & (1 << (gpio_pin_id % 8));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00135$
00133$:
	add	a,acc
00135$:
	djnz	b,00133$
	mov	r6,a
	mov	dptr,#_gpio_pin_val_read_value_1_109
	anl	a,_P0
	movx	@dptr,a
	sjmp	00111$
00110$:
;	../src/gpio/src/gpio_pin_val_read.c:55: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
	mov	a,r7
	add	a,#0xff - 0x0F
	jc	00107$
;	../src/gpio/src/gpio_pin_val_read.c:57: value = P1 & (1 << (gpio_pin_id % 8));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00139$
00137$:
	add	a,acc
00139$:
	djnz	b,00137$
	mov	r6,a
	mov	dptr,#_gpio_pin_val_read_value_1_109
	anl	a,_P1
	movx	@dptr,a
	sjmp	00111$
00107$:
;	../src/gpio/src/gpio_pin_val_read.c:59: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
	mov	a,r7
	add	a,#0xff - 0x17
	jc	00104$
;	../src/gpio/src/gpio_pin_val_read.c:61: value = P2 & (1 << (gpio_pin_id % 8));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00143$
00141$:
	add	a,acc
00143$:
	djnz	b,00141$
	mov	r6,a
	mov	dptr,#_gpio_pin_val_read_value_1_109
	anl	a,_P2
	movx	@dptr,a
	sjmp	00111$
00104$:
;	../src/gpio/src/gpio_pin_val_read.c:63: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
	mov	a,r7
	add	a,#0xff - 0x1E
	jc	00111$
;	../src/gpio/src/gpio_pin_val_read.c:65: value = P3 & (1 << (gpio_pin_id % 8));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00147$
00145$:
	add	a,acc
00147$:
	djnz	b,00145$
	mov	r7,a
	mov	dptr,#_gpio_pin_val_read_value_1_109
	anl	a,_P3
	movx	@dptr,a
00111$:
;	../src/gpio/src/gpio_pin_val_read.c:68: if(value)
	mov	dptr,#_gpio_pin_val_read_value_1_109
	movx	a,@dptr
	mov	r7,a
	jz	00113$
;	../src/gpio/src/gpio_pin_val_read.c:70: return true;
	mov	dpl,#0x01
	ret
00113$:
;	../src/gpio/src/gpio_pin_val_read.c:74: return false;
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gpio_pin_val_clear'
;------------------------------------------------------------
;gpio_pin_id               Allocated with name '_gpio_pin_val_clear_gpio_pin_id_1_116'
;------------------------------------------------------------
;	../src/gpio/src/gpio_pin_val_clear.c:46: void gpio_pin_val_clear(gpio_pin_id_t gpio_pin_id)
;	-----------------------------------------
;	 function gpio_pin_val_clear
;	-----------------------------------------
_gpio_pin_val_clear:
	mov	a,dpl
;	../src/gpio/src/gpio_pin_val_clear.c:49: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
	mov	dptr,#_gpio_pin_val_clear_gpio_pin_id_1_116
	movx	@dptr,a
	mov  r7,a
	add	a,#0xff - 0x07
	jc	00110$
;	../src/gpio/src/gpio_pin_val_clear.c:51: gpio_pins_val_clear(P0, (1 << (gpio_pin_id % 8)));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00129$
00127$:
	add	a,acc
00129$:
	djnz	b,00127$
	cpl	a
	anl	_P0,a
	ret
00110$:
;	../src/gpio/src/gpio_pin_val_clear.c:53: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
	mov	a,r7
	add	a,#0xff - 0x0F
	jc	00107$
;	../src/gpio/src/gpio_pin_val_clear.c:55: gpio_pins_val_clear(P1, (1 << (gpio_pin_id % 8)));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00133$
00131$:
	add	a,acc
00133$:
	djnz	b,00131$
	cpl	a
	anl	_P1,a
	ret
00107$:
;	../src/gpio/src/gpio_pin_val_clear.c:57: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
	mov	a,r7
	add	a,#0xff - 0x17
	jc	00104$
;	../src/gpio/src/gpio_pin_val_clear.c:59: gpio_pins_val_clear(P2, (1 << (gpio_pin_id % 8)));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00137$
00135$:
	add	a,acc
00137$:
	djnz	b,00135$
	cpl	a
	anl	_P2,a
	ret
00104$:
;	../src/gpio/src/gpio_pin_val_clear.c:61: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
	mov	a,r7
	add	a,#0xff - 0x1E
	jc	00112$
;	../src/gpio/src/gpio_pin_val_clear.c:63: gpio_pins_val_clear(P3, (1 << (gpio_pin_id % 8)));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00141$
00139$:
	add	a,acc
00141$:
	djnz	b,00139$
	cpl	a
	mov	r7,a
	anl	_P3,a
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gpio_pin_val_set'
;------------------------------------------------------------
;gpio_pin_id               Allocated with name '_gpio_pin_val_set_gpio_pin_id_1_122'
;------------------------------------------------------------
;	../src/gpio/src/gpio_pin_val_set.c:46: void gpio_pin_val_set(gpio_pin_id_t gpio_pin_id)
;	-----------------------------------------
;	 function gpio_pin_val_set
;	-----------------------------------------
_gpio_pin_val_set:
	mov	a,dpl
;	../src/gpio/src/gpio_pin_val_set.c:49: if(gpio_pin_id <= GPIO_PIN_ID_P0_7)
	mov	dptr,#_gpio_pin_val_set_gpio_pin_id_1_122
	movx	@dptr,a
	mov  r7,a
	add	a,#0xff - 0x07
	jc	00110$
;	../src/gpio/src/gpio_pin_val_set.c:51: gpio_pins_val_set(P0, (1 << (gpio_pin_id % 8)));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00129$
00127$:
	add	a,acc
00129$:
	djnz	b,00127$
	orl	_P0,a
	ret
00110$:
;	../src/gpio/src/gpio_pin_val_set.c:53: else if(gpio_pin_id <= GPIO_PIN_ID_P1_7)
	mov	a,r7
	add	a,#0xff - 0x0F
	jc	00107$
;	../src/gpio/src/gpio_pin_val_set.c:55: gpio_pins_val_set(P1, (1 << (gpio_pin_id % 8)));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00133$
00131$:
	add	a,acc
00133$:
	djnz	b,00131$
	orl	_P1,a
	ret
00107$:
;	../src/gpio/src/gpio_pin_val_set.c:57: else if(gpio_pin_id <= GPIO_PIN_ID_P2_7)
	mov	a,r7
	add	a,#0xff - 0x17
	jc	00104$
;	../src/gpio/src/gpio_pin_val_set.c:59: gpio_pins_val_set(P2, (1 << (gpio_pin_id % 8)));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00137$
00135$:
	add	a,acc
00137$:
	djnz	b,00135$
	orl	_P2,a
	ret
00104$:
;	../src/gpio/src/gpio_pin_val_set.c:61: else if(gpio_pin_id <= GPIO_PIN_ID_P3_6)
	mov	a,r7
	add	a,#0xff - 0x1E
	jc	00112$
;	../src/gpio/src/gpio_pin_val_set.c:63: gpio_pins_val_set(P3, (1 << (gpio_pin_id % 8)));
	mov	a,#0x07
	anl	a,r7
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00141$
00139$:
	add	a,acc
00141$:
	djnz	b,00139$
	mov	r7,a
	orl	_P3,a
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'gpio_pin_val_write'
;------------------------------------------------------------
;value                     Allocated with name '_gpio_pin_val_write_PARM_2'
;gpio_pin_id               Allocated with name '_gpio_pin_val_write_gpio_pin_id_1_128'
;------------------------------------------------------------
;	../src/gpio/src/gpio_pin_val_write.c:47: void gpio_pin_val_write(gpio_pin_id_t gpio_pin_id, bool value)
;	-----------------------------------------
;	 function gpio_pin_val_write
;	-----------------------------------------
_gpio_pin_val_write:
	mov	a,dpl
	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_128
	movx	@dptr,a
;	../src/gpio/src/gpio_pin_val_write.c:50: if(value)
	mov	dptr,#_gpio_pin_val_write_PARM_2
	movx	a,@dptr
	mov	r7,a
	jz	00102$
;	../src/gpio/src/gpio_pin_val_write.c:52: gpio_pin_val_set(gpio_pin_id);
	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_128
	movx	a,@dptr
	mov	dpl,a
	ljmp	_gpio_pin_val_set
00102$:
;	../src/gpio/src/gpio_pin_val_write.c:56: gpio_pin_val_clear(gpio_pin_id);
	mov	dptr,#_gpio_pin_val_write_gpio_pin_id_1_128
	movx	a,@dptr
	mov	dpl,a
	ljmp	_gpio_pin_val_clear
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_us'
;------------------------------------------------------------
;microseconds              Allocated with name '_delay_us_microseconds_1_132'
;count                     Allocated with name '_delay_us_count_1_133'
;------------------------------------------------------------
;	../src/delay/src/delay_us.c:46: void delay_us(uint16_t microseconds)
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_us_microseconds_1_132
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../src/delay/src/delay_us.c:51: if(microseconds == 0)
	mov	dptr,#_delay_us_microseconds_1_132
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00102$
;	../src/delay/src/delay_us.c:52: return;
	ret
00102$:
;	../src/delay/src/delay_us.c:54: microseconds -= 1;
	dec	r6
	cjne	r6,#0xFF,00121$
	dec	r7
00121$:
	mov	dptr,#_delay_us_microseconds_1_132
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../src/delay/src/delay_us.c:56: for(count = 0; count < microseconds; count++)
	mov	dptr,#_delay_us_microseconds_1_132
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00106$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00108$
;	../src/delay/src/delay_us.c:58: nop();
	nop 
;	../src/delay/src/delay_us.c:59: nop();
	nop 
;	../src/delay/src/delay_us.c:56: for(count = 0; count < microseconds; count++)
	inc	r4
	cjne	r4,#0x00,00106$
	inc	r5
	sjmp	00106$
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_s'
;------------------------------------------------------------
;seconds                   Allocated with name '_delay_s_seconds_1_135'
;count                     Allocated with name '_delay_s_count_1_136'
;------------------------------------------------------------
;	../src/delay/src/delay_s.c:46: void delay_s(uint16_t seconds)
;	-----------------------------------------
;	 function delay_s
;	-----------------------------------------
_delay_s:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_s_seconds_1_135
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../src/delay/src/delay_s.c:51: for(count = 0; count < seconds; count++)
	mov	dptr,#_delay_s_seconds_1_135
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
;	../src/delay/src/delay_s.c:53: delay_ms(1000);
	mov	dptr,#0x03E8
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay_ms
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../src/delay/src/delay_s.c:51: for(count = 0; count < seconds; count++)
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_ms'
;------------------------------------------------------------
;milliseconds              Allocated with name '_delay_ms_milliseconds_1_138'
;count                     Allocated with name '_delay_ms_count_1_139'
;------------------------------------------------------------
;	../src/delay/src/delay_ms.c:46: void delay_ms(uint16_t milliseconds)
;	-----------------------------------------
;	 function delay_ms
;	-----------------------------------------
_delay_ms:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_delay_ms_milliseconds_1_138
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../src/delay/src/delay_ms.c:51: for(count = 0; count < milliseconds; count++)
	mov	dptr,#_delay_ms_milliseconds_1_138
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x00
	mov	r5,#0x00
00103$:
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00105$
;	../src/delay/src/delay_ms.c:53: delay_us(1000);
	mov	dptr,#0x03E8
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_delay_us
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../src/delay/src/delay_ms.c:51: for(count = 0; count < milliseconds; count++)
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	sjmp	00103$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_configure'
;------------------------------------------------------------
;pwm_config_options        Allocated with name '_pwm_configure_pwm_config_options_1_143'
;------------------------------------------------------------
;	../src/pwm/src/pwm_configure.c:52: void pwm_configure(uint8_t pwm_config_options)
;	-----------------------------------------
;	 function pwm_configure
;	-----------------------------------------
_pwm_configure:
	mov	a,dpl
	mov	dptr,#_pwm_configure_pwm_config_options_1_143
	movx	@dptr,a
;	../src/pwm/src/pwm_configure.c:55: PWMCON = (PWMCON & ~PWM_CONFIG_OPTION_PWMCON_MASK) | (pwm_config_options & PWM_CONFIG_OPTION_PWMCON_MASK);
	mov	r7,_PWMCON
	anl	ar7,#0x03
	mov	dptr,#_pwm_configure_pwm_config_options_1_143
	movx	a,@dptr
	anl	a,#0xFC
	orl	a,r7
	mov	_PWMCON,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwm_start'
;------------------------------------------------------------
;pwm_duty_cycle            Allocated with name '_pwm_start_PARM_2'
;pwm_channel               Allocated with name '_pwm_start_pwm_channel_1_145'
;------------------------------------------------------------
;	../src/pwm/src/pwm_start.c:47: void pwm_start(pwm_channel_t pwm_channel, uint8_t pwm_duty_cycle)
;	-----------------------------------------
;	 function pwm_start
;	-----------------------------------------
_pwm_start:
	mov	a,dpl
;	../src/pwm/src/pwm_start.c:50: if(pwm_channel == PWM_CHANNEL_0)
	mov	dptr,#_pwm_start_pwm_channel_1_145
	movx	@dptr,a
	mov	r7,a
	jnz	00102$
;	../src/pwm/src/pwm_start.c:52: PWMDC0 = pwm_duty_cycle;
	mov	dptr,#_pwm_start_PARM_2
	movx	a,@dptr
	mov	_PWMDC0,a
;	../src/pwm/src/pwm_start.c:53: reg_bits_set(PWMCON, PWMCON_PWM0_ENABLE);
	orl	_PWMCON,#0x01
	ret
00102$:
;	../src/pwm/src/pwm_start.c:57: PWMDC1 = pwm_duty_cycle;
	mov	dptr,#_pwm_start_PARM_2
	movx	a,@dptr
	mov	_PWMDC1,a
;	../src/pwm/src/pwm_start.c:58: reg_bits_set(PWMCON, PWMCON_PWM1_ENABLE);
	orl	_PWMCON,#0x02
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwr_clk_mgmt_clklf_configure'
;------------------------------------------------------------
;clklf_config_options      Allocated with name '_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154'
;------------------------------------------------------------
;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_clklf_configure.c:52: void pwr_clk_mgmt_clklf_configure(uint8_t clklf_config_options)
;	-----------------------------------------
;	 function pwr_clk_mgmt_clklf_configure
;	-----------------------------------------
_pwr_clk_mgmt_clklf_configure:
	mov	a,dpl
	mov	dptr,#_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154
	movx	@dptr,a
;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_clklf_configure.c:55: CLKLFCTRL = (CLKLFCTRL & ~PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLKLFCTRL_MASK) | (clklf_config_options & PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLKLFCTRL_MASK);
	mov	r7,_CLKLFCTRL
	anl	ar7,#0xF8
	mov	dptr,#_pwr_clk_mgmt_clklf_configure_clklf_config_options_1_154
	movx	a,@dptr
	anl	a,#0x07
	orl	a,r7
	mov	_CLKLFCTRL,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwr_clk_mgmt_get_cclk_freq_in_hz'
;------------------------------------------------------------
;divider                   Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_divider_1_156'
;i                         Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_i_1_156'
;cclk_freq_hz              Allocated with name '_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156'
;------------------------------------------------------------
;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:46: uint32_t pwr_clk_mgmt_get_cclk_freq_in_hz()
;	-----------------------------------------
;	 function pwr_clk_mgmt_get_cclk_freq_in_hz
;	-----------------------------------------
_pwr_clk_mgmt_get_cclk_freq_in_hz:
;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:48: uint8_t divider = (CLKCTRL & CLKCTRL_CLK_FREQ_MASK) >> CLKCTRL_CLK_FREQ_SHIFT;
	mov	a,#0x07
	anl	a,_CLKCTRL
	mov	r7,a
;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:50: uint32_t cclk_freq_hz = CCLK_MAX_FREQ_HZ;
	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
	clr	a
	movx	@dptr,a
	mov	a,#0x24
	inc	dptr
	movx	@dptr,a
	mov	a,#0xF4
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:52: for(i = 0; i < divider; i++)
	mov	r6,#0x00
00103$:
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00101$
;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:54: cclk_freq_hz /= 2;
	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:52: for(i = 0; i < divider; i++)
	inc	r6
	sjmp	00103$
00101$:
;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_get_cclk_freq_in_hz.c:57: return cclk_freq_hz;
	mov	dptr,#_pwr_clk_mgmt_get_cclk_freq_in_hz_cclk_freq_hz_1_156
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwr_clk_mgmt_wakeup_configure'
;------------------------------------------------------------
;wakeup_on_pin_config_options Allocated with name '_pwr_clk_mgmt_wakeup_configure_PARM_2'
;wakeup_sources_config_options Allocated with name '_pwr_clk_mgmt_wakeup_configure_wakeup_sources_config_options_1_158'
;------------------------------------------------------------
;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_wakeup_configure.c:47: void pwr_clk_mgmt_wakeup_configure(unsigned char wakeup_sources_config_options, unsigned int wakeup_on_pin_config_options)
;	-----------------------------------------
;	 function pwr_clk_mgmt_wakeup_configure
;	-----------------------------------------
_pwr_clk_mgmt_wakeup_configure:
	mov	a,dpl
;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_wakeup_configure.c:50: WUCON = wakeup_sources_config_options;
	mov	dptr,#_pwr_clk_mgmt_wakeup_configure_wakeup_sources_config_options_1_158
	movx	@dptr,a
	mov	_WUCON,a
;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_wakeup_configure.c:53: WUOPC0 = wakeup_on_pin_config_options & 0xFF;
	mov	dptr,#_pwr_clk_mgmt_wakeup_configure_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	_WUOPC0,r4
;	../src/pwr_clk_mgmt/src/pwr_clk_mgmt_wakeup_configure.c:54: WUOPC1 = (wakeup_on_pin_config_options >> 8) & 0xFF;
	mov	ar6,r7
	mov	_WUOPC1,r6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'watchdog_set_wdsv_count'
;------------------------------------------------------------
;wdsv_value                Allocated with name '_watchdog_set_wdsv_count_wdsv_value_1_161'
;------------------------------------------------------------
;	../src/watchdog/src/watchdog_set_wdsv_count.c:46: void watchdog_set_wdsv_count(uint16_t wdsv_value)
;	-----------------------------------------
;	 function watchdog_set_wdsv_count
;	-----------------------------------------
_watchdog_set_wdsv_count:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_watchdog_set_wdsv_count_wdsv_value_1_161
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../src/watchdog/src/watchdog_set_wdsv_count.c:49: WDSV = (uint8_t)wdsv_value;
	mov	dptr,#_watchdog_set_wdsv_count_wdsv_value_1_161
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	_WDSV,r6
;	../src/watchdog/src/watchdog_set_wdsv_count.c:50: WDSV = (uint8_t)(wdsv_value >> 8);
	mov	_WDSV,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'watchdog_start_and_set_timeout_in_ms'
;------------------------------------------------------------
;milliseconds              Allocated with name '_watchdog_start_and_set_timeout_in_ms_milliseconds_1_163'
;wd_value                  Allocated with name '_watchdog_start_and_set_timeout_in_ms_wd_value_1_164'
;------------------------------------------------------------
;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:50: uint16_t watchdog_start_and_set_timeout_in_ms(uint32_t milliseconds)
;	-----------------------------------------
;	 function watchdog_start_and_set_timeout_in_ms
;	-----------------------------------------
_watchdog_start_and_set_timeout_in_ms:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_milliseconds_1_163
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:52: uint16_t wd_value = 0;
	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_164
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:55: if(!pwr_clk_mgmt_is_clklf_enabled())
	mov	a,#0x07
	anl	a,_CLKLFCTRL
	mov	r7,a
	cjne	r7,#0x07,00105$
;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:58: pwr_clk_mgmt_clklf_configure(PWR_CLK_MGMT_CLKLF_CONFIG_OPTION_CLK_SRC_XOSC16M);
	mov	dpl,#0x02
	lcall	_pwr_clk_mgmt_clklf_configure
;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:59: pwr_clk_mgmt_wait_until_clklf_is_ready();
00101$:
	mov	a,_CLKLFCTRL
	jnb	acc.6,00101$
00105$:
;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:63: if(milliseconds < 511992)
	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_milliseconds_1_163
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,#0xF8
	mov	a,r5
	subb	a,#0xCF
	mov	a,r6
	subb	a,#0x07
	mov	a,r7
	subb	a,#0x00
	jnc	00107$
;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:90: wd_value = (uint16_t)(((uint32_t)(milliseconds * ((uint32_t)128)) + (uint32_t)500) / ((uint32_t)1000));
	mov	a,r7
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r6
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
	mov	a,r5
	clr	c
	rrc	a
	orl	a,r6
	mov	r6,a
	mov	a,r5
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r4
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	mov	a,#0xF4
	add	a,r4
	mov	r4,a
	mov	a,#0x01
	addc	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
	mov	a,#0xE8
	movx	@dptr,a
	mov	a,#0x03
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_164
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
00107$:
;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:93: watchdog_set_wdsv_count(wd_value);
	mov	dptr,#_watchdog_start_and_set_timeout_in_ms_wd_value_1_164
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	_watchdog_set_wdsv_count
	pop	ar6
	pop	ar7
;	../src/watchdog/src/watchdog_start_and_set_timeout_in_ms.c:95: return wd_value;
	mov	dpl,r6
	mov	dph,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'interrupt_configure_ifp'
;------------------------------------------------------------
;ifp_int_config_options    Allocated with name '_interrupt_configure_ifp_PARM_2'
;interrupt_ifp_input       Allocated with name '_interrupt_configure_ifp_interrupt_ifp_input_1_167'
;------------------------------------------------------------
;	../src/interrupt/src/interrupt_configure_ifp.c:57: bool interrupt_configure_ifp(interrupt_ifp_input_t interrupt_ifp_input, uint8_t ifp_int_config_options)
;	-----------------------------------------
;	 function interrupt_configure_ifp
;	-----------------------------------------
_interrupt_configure_ifp:
	mov	a,dpl
	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_167
	movx	@dptr,a
;	../src/interrupt/src/interrupt_configure_ifp.c:60: if(ifp_int_config_options & INTERRUPT_IFP_CONFIG_OPTION_ENABLE)
	mov	dptr,#_interrupt_configure_ifp_PARM_2
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00116$
;	../src/interrupt/src/interrupt_configure_ifp.c:63: if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT0)
	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_167
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x08,00108$
;	../src/interrupt/src/interrupt_configure_ifp.c:65: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT0;
	mov	r5,_INTEXP
	mov	a,#0xC7
	anl	a,r5
	orl	a,#0x08
	mov	_INTEXP,a
	sjmp	00109$
00108$:
;	../src/interrupt/src/interrupt_configure_ifp.c:67: else if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT1)
	cjne	r6,#0x10,00105$
;	../src/interrupt/src/interrupt_configure_ifp.c:69: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT1;
	mov	r5,_INTEXP
	mov	a,#0xC7
	anl	a,r5
	orl	a,#0x10
	mov	_INTEXP,a
	sjmp	00109$
00105$:
;	../src/interrupt/src/interrupt_configure_ifp.c:71: else if(interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT2)
	cjne	r6,#0x20,00102$
;	../src/interrupt/src/interrupt_configure_ifp.c:73: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK) | INTERRUPT_IFP_INPUT_GPINT2;
	mov	r6,_INTEXP
	mov	a,#0xC7
	anl	a,r6
	orl	a,#0x20
	mov	_INTEXP,a
	sjmp	00109$
00102$:
;	../src/interrupt/src/interrupt_configure_ifp.c:78: return false;
	mov	dpl,#0x00
	ret
00109$:
;	../src/interrupt/src/interrupt_configure_ifp.c:82: TCON = (TCON & ~INTERRUPT_IFP_CONFIG_TCON_MASK) | (ifp_int_config_options & INTERRUPT_IFP_CONFIG_TCON_MASK);
	mov	r6,_TCON
	anl	ar6,#0xFE
	anl	ar7,#0x01
	mov	a,r7
	orl	a,r6
	mov	_TCON,a
	sjmp	00117$
00116$:
;	../src/interrupt/src/interrupt_configure_ifp.c:87: if((interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT0) || (interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT1) || (interrupt_ifp_input == INTERRUPT_IFP_INPUT_GPINT2))
	mov	dptr,#_interrupt_configure_ifp_interrupt_ifp_input_1_167
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00145$
	sjmp	00110$
00145$:
	cjne	r7,#0x10,00146$
	sjmp	00110$
00146$:
	cjne	r7,#0x20,00111$
00110$:
;	../src/interrupt/src/interrupt_configure_ifp.c:89: INTEXP = (INTEXP & ~INTERRUPT_IFP_CONFIG_INTEXP_GPINTX_MASK);
	mov	r7,_INTEXP
	mov	a,#0xC7
	anl	a,r7
	mov	_INTEXP,a
	sjmp	00117$
00111$:
;	../src/interrupt/src/interrupt_configure_ifp.c:94: return false;
	mov	dpl,#0x00
	ret
00117$:
;	../src/interrupt/src/interrupt_configure_ifp.c:98: return true;
	mov	dpl,#0x01
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'adc_configure'
;------------------------------------------------------------
;adc_config_options        Allocated with name '_adc_configure_adc_config_options_1_181'
;------------------------------------------------------------
;	../src/adc/src/adc_configure.c:54: void adc_configure(unsigned int adc_config_options)
;	-----------------------------------------
;	 function adc_configure
;	-----------------------------------------
_adc_configure:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_adc_configure_adc_config_options_1_181
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../src/adc/src/adc_configure.c:57: ADCCON1 = (adc_config_options >> 8) & ADC_CONFIG_OPTION_ADCCON1_WRITE_MASK;
	mov	dptr,#_adc_configure_adc_config_options_1_181
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x03
	anl	a,r5
	mov	_ADCCON1,a
;	../src/adc/src/adc_configure.c:58: ADCCON2 = (adc_config_options)      & ADC_CONFIG_OPTION_ADCCON2_WRITE_MASK;
	mov	_ADCCON2,r6
;	../src/adc/src/adc_configure.c:59: ADCCON3 = (adc_config_options >> 8) & ADC_CONFIG_OPTION_ADCCON3_WRITE_MASK;
	mov	a,#0xE0
	anl	a,r5
	mov	_ADCCON3,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'adc_set_input_channel'
;------------------------------------------------------------
;adc_channel               Allocated with name '_adc_set_input_channel_adc_channel_1_183'
;------------------------------------------------------------
;	../src/adc/src/adc_set_input_channel.c:46: void adc_set_input_channel(adc_channel_t adc_channel)
;	-----------------------------------------
;	 function adc_set_input_channel
;	-----------------------------------------
_adc_set_input_channel:
	mov	a,dpl
;	../src/adc/src/adc_set_input_channel.c:49: adc_channel &= (ADCCON1_CHAN_SEL_MASK >> ADCCON1_CHAN_SEL_SHIFT);
	mov	dptr,#_adc_set_input_channel_adc_channel_1_183
	movx	@dptr,a
	mov	r7,a
	mov	dptr,#_adc_set_input_channel_adc_channel_1_183
	mov	a,#0x0F
	anl	a,r7
	movx	@dptr,a
;	../src/adc/src/adc_set_input_channel.c:52: ADCCON1 = (ADCCON1 & ~ADCCON1_CHAN_SEL_MASK) | (adc_channel << ADCCON1_CHAN_SEL_SHIFT);
	mov	r7,_ADCCON1
	anl	ar7,#0xC3
	mov	dptr,#_adc_set_input_channel_adc_channel_1_183
	movx	a,@dptr
	add	a,acc
	add	a,acc
	orl	a,r7
	mov	_ADCCON1,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'adc_start_single_conversion'
;------------------------------------------------------------
;adc_channel               Allocated with name '_adc_start_single_conversion_adc_channel_1_185'
;------------------------------------------------------------
;	../src/adc/src/adc_start_single_conversion.c:47: void adc_start_single_conversion(adc_channel_t adc_channel)
;	-----------------------------------------
;	 function adc_start_single_conversion
;	-----------------------------------------
_adc_start_single_conversion:
	mov	a,dpl
;	../src/adc/src/adc_start_single_conversion.c:49: adc_set_input_channel(adc_channel);
	mov	dptr,#_adc_start_single_conversion_adc_channel_1_185
	movx	@dptr,a
	mov	dpl,a
	lcall	_adc_set_input_channel
;	../src/adc/src/adc_start_single_conversion.c:52: adc_power_up();
	orl	_ADCCON1,#0x80
;	../src/adc/src/adc_start_single_conversion.c:53: nop(); nop(); nop(); nop(); //4 clock cycles must elapse before busy flag is set (datasheet v1.3, p. 165)
	nop 
	nop 
	nop 
	nop 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'adc_start_single_conversion_get_value'
;------------------------------------------------------------
;adc_channel               Allocated with name '_adc_start_single_conversion_get_value_adc_channel_1_187'
;------------------------------------------------------------
;	../src/adc/src/adc_start_single_conversion_get_value.c:48: uint16_t adc_start_single_conversion_get_value(adc_channel_t adc_channel)
;	-----------------------------------------
;	 function adc_start_single_conversion_get_value
;	-----------------------------------------
_adc_start_single_conversion_get_value:
	mov	a,dpl
;	../src/adc/src/adc_start_single_conversion_get_value.c:50: adc_start_single_conversion(adc_channel);
	mov	dptr,#_adc_start_single_conversion_get_value_adc_channel_1_187
	movx	@dptr,a
	mov	dpl,a
	lcall	_adc_start_single_conversion
;	../src/adc/src/adc_start_single_conversion_get_value.c:52: while(adc_is_conversion_in_progress());
00101$:
	mov	a,#0x40
	anl	a,_ADCCON1
	mov	r7,a
	cjne	r7,#0x40,00112$
	sjmp	00101$
00112$:
;	../src/adc/src/adc_start_single_conversion_get_value.c:54: return adc_get_result();
	mov	dpl,((_ADCDAT >> 0) & 0xFF)
	mov	dph,((_ADCDAT >> 8) & 0xFF)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer0_configure'
;------------------------------------------------------------
;t0_val                    Allocated with name '_timer0_configure_PARM_2'
;timer0_config_options     Allocated with name '_timer0_configure_timer0_config_options_1_190'
;------------------------------------------------------------
;	../src/timer0/src/timer0_configure.c:53: void timer0_configure(uint8_t timer0_config_options, uint16_t t0_val)
;	-----------------------------------------
;	 function timer0_configure
;	-----------------------------------------
_timer0_configure:
	mov	a,dpl
;	../src/timer0/src/timer0_configure.c:56: if((timer0_config_options & TMOD_MODE0_MASK) == TIMER0_CONFIG_OPTION_MODE_2_8_BIT_AUTO_RLD_TMR)
	mov	dptr,#_timer0_configure_timer0_config_options_1_190
	movx	@dptr,a
	mov	r7,a
	mov	a,#0x03
	anl	a,r7
	mov	r6,a
	cjne	r6,#0x02,00102$
;	../src/timer0/src/timer0_configure.c:58: TH0 = (uint8_t)t0_val;
	mov	dptr,#_timer0_configure_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	_TH0,r5
;	../src/timer0/src/timer0_configure.c:59: TL0 = (uint8_t)t0_val;
	mov	_TL0,r5
	sjmp	00103$
00102$:
;	../src/timer0/src/timer0_configure.c:63: timer0_set_t0_val(t0_val);
	mov	dptr,#_timer0_configure_PARM_2
	movx	a,@dptr
	mov	((_T0 >> 0) & 0xFF),a
	inc	dptr
	movx	a,@dptr
	mov	((_T0 >> 8) & 0xFF),a
00103$:
;	../src/timer0/src/timer0_configure.c:67: TMOD = (TMOD & ~TIMER0_CONFIG_OPTION_TMOD_MASK) | (timer0_config_options & TIMER0_CONFIG_OPTION_TMOD_MASK);
	mov	r6,_TMOD
	anl	ar6,#0xF0
	anl	ar7,#0x0F
	mov	a,r7
	orl	a,r6
	mov	_TMOD,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'timer1_configure'
;------------------------------------------------------------
;t1_val                    Allocated with name '_timer1_configure_PARM_2'
;timer1_config_options     Allocated with name '_timer1_configure_timer1_config_options_1_195'
;------------------------------------------------------------
;	../src/timer1/src/timer1_configure.c:53: void timer1_configure(uint8_t timer1_config_options, uint16_t t1_val)
;	-----------------------------------------
;	 function timer1_configure
;	-----------------------------------------
_timer1_configure:
	mov	a,dpl
;	../src/timer1/src/timer1_configure.c:56: if((timer1_config_options & TMOD_MODE1_MASK) == TIMER1_CONFIG_OPTION_MODE_2_8_BIT_AUTO_RLD_TMR)
	mov	dptr,#_timer1_configure_timer1_config_options_1_195
	movx	@dptr,a
	mov	r7,a
	mov	a,#0x30
	anl	a,r7
	mov	r6,a
	cjne	r6,#0x20,00102$
;	../src/timer1/src/timer1_configure.c:58: TH1 = (uint8_t)t1_val;
	mov	dptr,#_timer1_configure_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	_TH1,r5
;	../src/timer1/src/timer1_configure.c:59: TL1 = (uint8_t)t1_val;
	mov	_TL1,r5
	sjmp	00103$
00102$:
;	../src/timer1/src/timer1_configure.c:63: timer1_set_t1_val(t1_val);
	mov	dptr,#_timer1_configure_PARM_2
	movx	a,@dptr
	mov	((_T1 >> 0) & 0xFF),a
	inc	dptr
	movx	a,@dptr
	mov	((_T1 >> 8) & 0xFF),a
00103$:
;	../src/timer1/src/timer1_configure.c:67: TMOD = (TMOD & ~TIMER1_CONFIG_OPTION_TMOD_MASK) | (timer1_config_options & TIMER1_CONFIG_OPTION_TMOD_MASK);
	mov	r6,_TMOD
	anl	ar6,#0x0F
	anl	ar7,#0xF0
	mov	a,r7
	orl	a,r6
	mov	_TMOD,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_configure_manual_baud_calc'
;------------------------------------------------------------
;s0rel_val_if_br_gen_or_th1_val_if_tmr1 Allocated with name '_uart_configure_manual_baud_calc_PARM_2'
;uart_config_options       Allocated with name '_uart_configure_manual_baud_calc_uart_config_options_1_205'
;------------------------------------------------------------
;	../src/uart/src/uart_configure_manual_baud_calc.c:55: void uart_configure_manual_baud_calc(uint8_t uart_config_options, uint16_t s0rel_val_if_br_gen_or_th1_val_if_tmr1)
;	-----------------------------------------
;	 function uart_configure_manual_baud_calc
;	-----------------------------------------
_uart_configure_manual_baud_calc:
	mov	a,dpl
;	../src/uart/src/uart_configure_manual_baud_calc.c:58: if(uart_config_options & UART_CONFIG_OPTION_BIT_SMOD_SET)
	mov	dptr,#_uart_configure_manual_baud_calc_uart_config_options_1_205
	movx	@dptr,a
	mov	r7,a
	jnb	acc.2,00102$
;	../src/uart/src/uart_configure_manual_baud_calc.c:60: reg_bits_set(PCON, PCON_SMOD);
	orl	_PCON,#0x80
	sjmp	00103$
00102$:
;	../src/uart/src/uart_configure_manual_baud_calc.c:64: reg_bits_clear(PCON, PCON_SMOD);
	mov	r6,_PCON
	mov	a,#0x7F
	anl	a,r6
	mov	_PCON,a
00103$:
;	../src/uart/src/uart_configure_manual_baud_calc.c:68: if(((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_1_UART_8_BIT) ||
	mov	a,#0xC0
	anl	a,r7
	mov	r6,a
	cjne	r6,#0x40,00122$
	sjmp	00107$
00122$:
;	../src/uart/src/uart_configure_manual_baud_calc.c:69: ((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_3_UART_9_BIT))
	mov	a,#0xC0
	anl	a,r7
	mov	r6,a
	cjne	r6,#0xC0,00108$
00107$:
;	../src/uart/src/uart_configure_manual_baud_calc.c:72: if((uart_config_options & UART_CONFIG_OPTION_CLOCK_MASK) == UART_CONFIG_OPTION_CLOCK_FOR_MODES_1_3_USE_BR_GEN)
	mov	a,#0x02
	anl	a,r7
	mov	r6,a
	cjne	r6,#0x02,00105$
;	../src/uart/src/uart_configure_manual_baud_calc.c:74: S0REL = s0rel_val_if_br_gen_or_th1_val_if_tmr1; //set S0REL to the value requested
	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
	movx	a,@dptr
	mov	((_S0REL >> 0) & 0xFF),a
	inc	dptr
	movx	a,@dptr
	mov	((_S0REL >> 8) & 0xFF),a
;	../src/uart/src/uart_configure_manual_baud_calc.c:75: sbit_set(ADCON_SB_BD); //enable BR generator
	setb _ADCON_SB_BD 
	sjmp	00108$
00105$:
;	../src/uart/src/uart_configure_manual_baud_calc.c:79: sbit_clear(ADCON_SB_BD); //disable BR generator and use TMR1 overflow
	clr _ADCON_SB_BD 
;	../src/uart/src/uart_configure_manual_baud_calc.c:85: (uint8_t)s0rel_val_if_br_gen_or_th1_val_if_tmr1);
	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_timer1_configure_PARM_2
	mov	a,r5
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x20
	push	ar7
	lcall	_timer1_configure
	pop	ar7
;	../src/uart/src/uart_configure_manual_baud_calc.c:87: timer1_run(); //enable the timer
	setb _TCON_SB_TR1 
00108$:
;	../src/uart/src/uart_configure_manual_baud_calc.c:92: S0CON = uart_config_options & UART_CONFIG_OPTION_S0CON_MASK;
	mov	a,#0xF0
	anl	a,r7
	mov	_S0CON,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_calc_actual_baud_rate_from_s0rel'
;------------------------------------------------------------
;smod_bit_value            Allocated with name '_uart_calc_actual_baud_rate_from_s0rel_PARM_2'
;s0rel_reg_value           Allocated with name '_uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_212'
;------------------------------------------------------------
;	../src/uart/src/uart_calc_actual_baud_rate_from_s0rel.c:48: uint32_t uart_calc_actual_baud_rate_from_s0rel(uint16_t s0rel_reg_value, bool smod_bit_value)
;	-----------------------------------------
;	 function uart_calc_actual_baud_rate_from_s0rel
;	-----------------------------------------
_uart_calc_actual_baud_rate_from_s0rel:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_212
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	../src/uart/src/uart_calc_actual_baud_rate_from_s0rel.c:57: return (uint32_t)(((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(64 * (1024 - s0rel_reg_value)))) + 1) / 2);
	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
	movx	a,@dptr
	mov	r7,a
	jz	00103$
	mov	r7,#0x02
	sjmp	00104$
00103$:
	mov	r7,#0x01
00104$:
	mov	a,r7
	mov	b,#0x02
	mul	ab
	mov	r7,a
	mov	r6,b
	push	ar7
	push	ar6
	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar6
	pop	ar7
	mov	ar0,r7
	mov	a,r6
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	dptr,#__mullong_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	mov	a,r7
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_s0rel_reg_value_1_212
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	a
	clr	c
	subb	a,r2
	mov	r2,a
	mov	a,#0x04
	subb	a,r3
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r2
	rrc	a
	xch	a,r2
	rrc	a
	mov	c,acc.0
	xch	a,r2
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	mov	dptr,#__divulong_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00109$
	inc	r5
	cjne	r5,#0x00,00109$
	inc	r6
	cjne	r6,#0x00,00109$
	inc	r7
00109$:
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	dpl,a
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_calc_actual_baud_rate_from_th1'
;------------------------------------------------------------
;smod_bit_value            Allocated with name '_uart_calc_actual_baud_rate_from_th1_PARM_2'
;th1_reg_value             Allocated with name '_uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_214'
;------------------------------------------------------------
;	../src/uart/src/uart_calc_actual_baud_rate_from_th1.c:48: uint32_t uart_calc_actual_baud_rate_from_th1(uint8_t th1_reg_value, bool smod_bit_value)
;	-----------------------------------------
;	 function uart_calc_actual_baud_rate_from_th1
;	-----------------------------------------
_uart_calc_actual_baud_rate_from_th1:
	mov	a,dpl
	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_214
	movx	@dptr,a
;	../src/uart/src/uart_calc_actual_baud_rate_from_th1.c:57: return (uint32_t)(((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(384 * (256 - th1_reg_value)))) + 1) / 2);
	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
	movx	a,@dptr
	mov	r7,a
	jz	00103$
	mov	r7,#0x02
	sjmp	00104$
00103$:
	mov	r7,#0x01
00104$:
	mov	a,r7
	mov	b,#0x02
	mul	ab
	mov	r7,a
	mov	r6,b
	push	ar7
	push	ar6
	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar6
	pop	ar7
	mov	ar0,r7
	mov	a,r6
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	dptr,#__mullong_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	mov	a,r7
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_th1_reg_value_1_214
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	mov	dptr,#__mulint_PARM_2
	clr	a
	clr	c
	subb	a,r3
	movx	@dptr,a
	mov	a,#0x01
	subb	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0180
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#__divulong_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	rlc	a
	subb	a,acc
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00109$
	inc	r5
	cjne	r5,#0x00,00109$
	inc	r6
	cjne	r6,#0x00,00109$
	inc	r7
00109$:
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	dpl,a
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_calc_s0rel_value'
;------------------------------------------------------------
;smod_bit_value            Allocated with name '_uart_calc_s0rel_value_PARM_2'
;desired_baud_rate         Allocated with name '_uart_calc_s0rel_value_desired_baud_rate_1_216'
;------------------------------------------------------------
;	../src/uart/src/uart_calc_s0rel_value.c:48: uint16_t uart_calc_s0rel_value(uint32_t desired_baud_rate, bool smod_bit_value)
;	-----------------------------------------
;	 function uart_calc_s0rel_value
;	-----------------------------------------
_uart_calc_s0rel_value:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_uart_calc_s0rel_value_desired_baud_rate_1_216
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../src/uart/src/uart_calc_s0rel_value.c:57: return (uint16_t)(1024 - (((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(64 * desired_baud_rate))) + 1) / 2));
	mov	dptr,#_uart_calc_s0rel_value_PARM_2
	movx	a,@dptr
	mov	r7,a
	jz	00103$
	mov	r7,#0x02
	sjmp	00104$
00103$:
	mov	r7,#0x01
00104$:
	mov	a,r7
	mov	b,#0x02
	mul	ab
	mov	r7,a
	mov	r6,b
	push	ar7
	push	ar6
	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar6
	pop	ar7
	mov	ar0,r7
	mov	a,r6
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	dptr,#__mullong_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	mov	a,r7
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_uart_calc_s0rel_value_desired_baud_rate_1_216
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r2
	rrc	a
	xch	a,r2
	rrc	a
	mov	c,acc.0
	xch	a,r2
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	mov	a,r1
	rr	a
	rr	a
	anl	a,#0x3F
	orl	a,r2
	mov	r2,a
	mov	a,r1
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r0
	rrc	a
	xch	a,r0
	rrc	a
	mov	c,acc.0
	xch	a,r0
	rrc	a
	xch	a,r0
	rrc	a
	xch	a,r0
	mov	r1,a
	mov	dptr,#__divulong_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00109$
	inc	r5
	cjne	r5,#0x00,00109$
	inc	r6
	cjne	r6,#0x00,00109$
	inc	r7
00109$:
	mov	a,r7
	clr	c
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	clr	a
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,#0x04
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	clr	a
	subb	a,r7
	mov	dpl,r4
	mov	dph,r5
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_calc_th1_value'
;------------------------------------------------------------
;smod_bit_value            Allocated with name '_uart_calc_th1_value_PARM_2'
;desired_baud_rate         Allocated with name '_uart_calc_th1_value_desired_baud_rate_1_218'
;------------------------------------------------------------
;	../src/uart/src/uart_calc_th1_value.c:48: uint8_t uart_calc_th1_value(uint32_t desired_baud_rate, bool smod_bit_value)
;	-----------------------------------------
;	 function uart_calc_th1_value
;	-----------------------------------------
_uart_calc_th1_value:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_uart_calc_th1_value_desired_baud_rate_1_218
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	../src/uart/src/uart_calc_th1_value.c:57: return (uint8_t)(256 - (((((uint32_t)(2 * ((smod_bit_value != 0) ? 2 : 1) * pwr_clk_mgmt_get_cclk_freq_in_hz())) / ((uint32_t)(384 * desired_baud_rate))) + 1) / 2));
	mov	dptr,#_uart_calc_th1_value_PARM_2
	movx	a,@dptr
	mov	r7,a
	jz	00103$
	mov	r7,#0x02
	sjmp	00104$
00103$:
	mov	r7,#0x01
00104$:
	mov	a,r7
	mov	b,#0x02
	mul	ab
	mov	r7,a
	mov	r6,b
	push	ar7
	push	ar6
	lcall	_pwr_clk_mgmt_get_cclk_freq_in_hz
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar6
	pop	ar7
	mov	ar0,r7
	mov	a,r6
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	dptr,#__mullong_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	mov	a,r7
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_uart_calc_th1_value_desired_baud_rate_1_218
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#__mullong_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0180
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__mullong
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dptr,#__divulong_PARM_2
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00109$
	inc	r5
	cjne	r5,#0x00,00109$
	inc	r6
	cjne	r6,#0x00,00109$
	inc	r7
00109$:
	mov	a,r7
	clr	c
	rrc	a
	mov	a,r6
	rrc	a
	mov	a,r5
	rrc	a
	mov	a,r4
	rrc	a
	mov	r4,a
	clr	c
	clr	a
	subb	a,r4
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'uart_configure_auto_baud_calc'
;------------------------------------------------------------
;sloc0                     Allocated with name '_uart_configure_auto_baud_calc_sloc0_1_0'
;sloc1                     Allocated with name '_uart_configure_auto_baud_calc_sloc1_1_0'
;sloc2                     Allocated with name '_uart_configure_auto_baud_calc_sloc2_1_0'
;sloc3                     Allocated with name '_uart_configure_auto_baud_calc_sloc3_1_0'
;baud_rate                 Allocated with name '_uart_configure_auto_baud_calc_PARM_2'
;uart_config_options       Allocated with name '_uart_configure_auto_baud_calc_uart_config_options_1_220'
;calc_br_with_smod_cleared Allocated with name '_uart_configure_auto_baud_calc_calc_br_with_smod_cleared_2_222'
;calc_br_with_smod_set     Allocated with name '_uart_configure_auto_baud_calc_calc_br_with_smod_set_2_222'
;error_calc_br_with_smod_cleared Allocated with name '_uart_configure_auto_baud_calc_error_calc_br_with_smod_cleared_2_222'
;error_calc_br_with_smod_set Allocated with name '_uart_configure_auto_baud_calc_error_calc_br_with_smod_set_2_222'
;s0rel_with_smod_cleared   Allocated with name '_uart_configure_auto_baud_calc_s0rel_with_smod_cleared_3_223'
;s0rel_with_smod_set       Allocated with name '_uart_configure_auto_baud_calc_s0rel_with_smod_set_3_223'
;th1_with_smod_cleared     Allocated with name '_uart_configure_auto_baud_calc_th1_with_smod_cleared_3_226'
;th1_with_smod_set         Allocated with name '_uart_configure_auto_baud_calc_th1_with_smod_set_3_226'
;------------------------------------------------------------
;	../src/uart/src/uart_configure_auto_baud_calc.c:48: void uart_configure_auto_baud_calc(uint8_t uart_config_options, uint32_t baud_rate)
;	-----------------------------------------
;	 function uart_configure_auto_baud_calc
;	-----------------------------------------
_uart_configure_auto_baud_calc:
	mov	a,dpl
;	../src/uart/src/uart_configure_auto_baud_calc.c:51: if(((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_1_UART_8_BIT) ||
	mov	dptr,#_uart_configure_auto_baud_calc_uart_config_options_1_220
	movx	@dptr,a
	mov	r7,a
	mov	a,#0xC0
	anl	a,r7
	mov	r6,a
	cjne	r6,#0x40,00147$
	sjmp	00110$
00147$:
;	../src/uart/src/uart_configure_auto_baud_calc.c:52: ((uart_config_options & UART_CONFIG_OPTION_MODE_MASK) == UART_CONFIG_OPTION_MODE_3_UART_9_BIT))
	mov	a,#0xC0
	anl	a,r7
	mov	r6,a
	cjne	r6,#0xC0,00148$
	sjmp	00149$
00148$:
	ret
00149$:
00110$:
;	../src/uart/src/uart_configure_auto_baud_calc.c:58: if((uart_config_options & UART_CONFIG_OPTION_CLOCK_MASK) == UART_CONFIG_OPTION_CLOCK_FOR_MODES_1_3_USE_BR_GEN)
	mov	a,#0x02
	anl	a,r7
	mov	r6,a
	cjne	r6,#0x02,00150$
	sjmp	00151$
00150$:
	ljmp	00108$
00151$:
;	../src/uart/src/uart_configure_auto_baud_calc.c:63: s0rel_with_smod_cleared = uart_calc_s0rel_value(baud_rate, 0);
	mov	dptr,#_uart_configure_auto_baud_calc_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_uart_calc_s0rel_value_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_uart_calc_s0rel_value
	mov	r1,dpl
	mov	r2,dph
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	../src/uart/src/uart_configure_auto_baud_calc.c:64: s0rel_with_smod_set = uart_calc_s0rel_value(baud_rate, 1);
	mov	dptr,#_uart_calc_s0rel_value_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_uart_calc_s0rel_value
	mov	_uart_configure_auto_baud_calc_sloc0_1_0,dpl
	mov	(_uart_configure_auto_baud_calc_sloc0_1_0 + 1),dph
	pop	ar1
	pop	ar2
;	../src/uart/src/uart_configure_auto_baud_calc.c:67: calc_br_with_smod_cleared = uart_calc_actual_baud_rate_from_s0rel(s0rel_with_smod_cleared, false);
	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	push	ar2
	push	ar1
	lcall	_uart_calc_actual_baud_rate_from_s0rel
	mov	_uart_configure_auto_baud_calc_sloc1_1_0,dpl
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),dph
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),b
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
;	../src/uart/src/uart_configure_auto_baud_calc.c:68: calc_br_with_smod_set = uart_calc_actual_baud_rate_from_s0rel(s0rel_with_smod_set, true);
	mov	dptr,#_uart_calc_actual_baud_rate_from_s0rel_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,_uart_configure_auto_baud_calc_sloc0_1_0
	mov	dph,(_uart_configure_auto_baud_calc_sloc0_1_0 + 1)
	lcall	_uart_calc_actual_baud_rate_from_s0rel
	mov	_uart_configure_auto_baud_calc_sloc2_1_0,dpl
	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 1),dph
	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 2),b
	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 3),a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../src/uart/src/uart_configure_auto_baud_calc.c:71: error_calc_br_with_smod_cleared = (calc_br_with_smod_cleared > baud_rate) ? (calc_br_with_smod_cleared - baud_rate) : (baud_rate - calc_br_with_smod_cleared);
	clr	c
	mov	a,r3
	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
	mov	a,r4
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
	mov	a,r5
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
	mov	a,r6
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
	jnc	00115$
	mov	a,_uart_configure_auto_baud_calc_sloc1_1_0
	clr	c
	subb	a,r3
	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
	subb	a,r4
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
	subb	a,r5
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
	subb	a,r6
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
	sjmp	00116$
00115$:
	mov	a,r3
	clr	c
	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
	mov	a,r4
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
	mov	a,r5
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
	mov	a,r6
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
00116$:
;	../src/uart/src/uart_configure_auto_baud_calc.c:72: error_calc_br_with_smod_set = (calc_br_with_smod_set > baud_rate) ? (calc_br_with_smod_set - baud_rate) : (baud_rate - calc_br_with_smod_set);
	clr	c
	mov	a,r3
	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
	mov	a,r4
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
	mov	a,r5
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
	mov	a,r6
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
	jnc	00117$
	mov	a,_uart_configure_auto_baud_calc_sloc2_1_0
	clr	c
	subb	a,r3
	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
	subb	a,r4
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
	subb	a,r5
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
	subb	a,r6
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
	sjmp	00118$
00117$:
	mov	a,r3
	clr	c
	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
	mov	a,r4
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
	mov	a,r5
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
	mov	a,r6
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
00118$:
;	../src/uart/src/uart_configure_auto_baud_calc.c:75: if(error_calc_br_with_smod_cleared < error_calc_br_with_smod_set)
	clr	c
	mov	a,_uart_configure_auto_baud_calc_sloc3_1_0
	subb	a,_uart_configure_auto_baud_calc_sloc1_1_0
	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
	subb	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
	jnc	00102$
;	../src/uart/src/uart_configure_auto_baud_calc.c:77: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_CLEAR),
	mov	ar6,r7
	anl	ar6,#0xFB
;	../src/uart/src/uart_configure_auto_baud_calc.c:78: s0rel_with_smod_cleared);
	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
	mov	a,r1
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	ljmp	_uart_configure_manual_baud_calc
00102$:
;	../src/uart/src/uart_configure_auto_baud_calc.c:82: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_SET),
	mov	ar6,r7
	mov	a,#0xFB
	anl	a,r6
	orl	a,#0x04
	mov	r6,a
;	../src/uart/src/uart_configure_auto_baud_calc.c:83: s0rel_with_smod_set);
	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
	mov	a,_uart_configure_auto_baud_calc_sloc0_1_0
	movx	@dptr,a
	mov	a,(_uart_configure_auto_baud_calc_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	ljmp	_uart_configure_manual_baud_calc
00108$:
;	../src/uart/src/uart_configure_auto_baud_calc.c:91: th1_with_smod_cleared = uart_calc_th1_value(baud_rate, 0);
	mov	dptr,#_uart_configure_auto_baud_calc_PARM_2
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_uart_calc_th1_value_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_uart_calc_th1_value
	mov	r2,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	../src/uart/src/uart_configure_auto_baud_calc.c:92: th1_with_smod_set = uart_calc_th1_value(baud_rate, 1);
	mov	dptr,#_uart_calc_th1_value_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_uart_calc_th1_value
	mov	r1,dpl
	pop	ar2
;	../src/uart/src/uart_configure_auto_baud_calc.c:95: calc_br_with_smod_cleared = uart_calc_actual_baud_rate_from_th1(th1_with_smod_cleared, false);
	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r2
	push	ar2
	push	ar1
	lcall	_uart_calc_actual_baud_rate_from_th1
	mov	_uart_configure_auto_baud_calc_sloc3_1_0,dpl
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),dph
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),b
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
	pop	ar1
;	../src/uart/src/uart_configure_auto_baud_calc.c:96: calc_br_with_smod_set = uart_calc_actual_baud_rate_from_th1(th1_with_smod_set, true);
	mov	dptr,#_uart_calc_actual_baud_rate_from_th1_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r1
	push	ar1
	lcall	_uart_calc_actual_baud_rate_from_th1
	mov	_uart_configure_auto_baud_calc_sloc2_1_0,dpl
	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 1),dph
	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 2),b
	mov	(_uart_configure_auto_baud_calc_sloc2_1_0 + 3),a
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	../src/uart/src/uart_configure_auto_baud_calc.c:99: error_calc_br_with_smod_cleared = (calc_br_with_smod_cleared > baud_rate) ? (calc_br_with_smod_cleared - baud_rate) : (baud_rate - calc_br_with_smod_cleared);
	clr	c
	mov	a,r3
	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
	mov	a,r4
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
	mov	a,r5
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
	mov	a,r6
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
	jnc	00119$
	mov	a,_uart_configure_auto_baud_calc_sloc3_1_0
	clr	c
	subb	a,r3
	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
	subb	a,r4
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
	subb	a,r5
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
	mov	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
	subb	a,r6
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
	sjmp	00120$
00119$:
	mov	a,r3
	clr	c
	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
	mov	_uart_configure_auto_baud_calc_sloc1_1_0,a
	mov	a,r4
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 1),a
	mov	a,r5
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 2),a
	mov	a,r6
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
	mov	(_uart_configure_auto_baud_calc_sloc1_1_0 + 3),a
00120$:
;	../src/uart/src/uart_configure_auto_baud_calc.c:100: error_calc_br_with_smod_set = (calc_br_with_smod_set > baud_rate) ? (calc_br_with_smod_set - baud_rate) : (baud_rate - calc_br_with_smod_set);
	clr	c
	mov	a,r3
	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
	mov	a,r4
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
	mov	a,r5
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
	mov	a,r6
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
	jnc	00121$
	mov	a,_uart_configure_auto_baud_calc_sloc2_1_0
	clr	c
	subb	a,r3
	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
	subb	a,r4
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
	subb	a,r5
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
	mov	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
	subb	a,r6
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
	sjmp	00122$
00121$:
	mov	a,r3
	clr	c
	subb	a,_uart_configure_auto_baud_calc_sloc2_1_0
	mov	_uart_configure_auto_baud_calc_sloc3_1_0,a
	mov	a,r4
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 1)
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 1),a
	mov	a,r5
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 2)
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 2),a
	mov	a,r6
	subb	a,(_uart_configure_auto_baud_calc_sloc2_1_0 + 3)
	mov	(_uart_configure_auto_baud_calc_sloc3_1_0 + 3),a
00122$:
;	../src/uart/src/uart_configure_auto_baud_calc.c:103: if(error_calc_br_with_smod_cleared < error_calc_br_with_smod_set)
	clr	c
	mov	a,_uart_configure_auto_baud_calc_sloc1_1_0
	subb	a,_uart_configure_auto_baud_calc_sloc3_1_0
	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 1)
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 1)
	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 2)
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 2)
	mov	a,(_uart_configure_auto_baud_calc_sloc1_1_0 + 3)
	subb	a,(_uart_configure_auto_baud_calc_sloc3_1_0 + 3)
	jnc	00105$
;	../src/uart/src/uart_configure_auto_baud_calc.c:105: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_CLEAR),
	mov	ar6,r7
	anl	ar6,#0xFB
;	../src/uart/src/uart_configure_auto_baud_calc.c:106: (uint16_t)th1_with_smod_cleared);
	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
	mov	a,r2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	ljmp	_uart_configure_manual_baud_calc
00105$:
;	../src/uart/src/uart_configure_auto_baud_calc.c:110: uart_configure_manual_baud_calc(((uart_config_options & ~UART_CONFIG_OPTION_BIT_SMOD_MASK) | UART_CONFIG_OPTION_BIT_SMOD_SET),
	mov	a,#0xFB
	anl	a,r7
	orl	a,#0x04
	mov	r7,a
;	../src/uart/src/uart_configure_auto_baud_calc.c:111: (uint16_t)th1_with_smod_set);
	mov	dptr,#_uart_configure_manual_baud_calc_PARM_2
	mov	a,r1
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	ljmp	_uart_configure_manual_baud_calc
;------------------------------------------------------------
;Allocation info for local variables in function 'rtc2_configure'
;------------------------------------------------------------
;compare_value             Allocated with name '_rtc2_configure_PARM_2'
;rtc2_config_options       Allocated with name '_rtc2_configure_rtc2_config_options_1_230'
;------------------------------------------------------------
;	../src/rtc2/src/rtc2_configure.c:53: void rtc2_configure(unsigned char rtc2_config_options, unsigned int compare_value)
;	-----------------------------------------
;	 function rtc2_configure
;	-----------------------------------------
_rtc2_configure:
	mov	a,dpl
;	../src/rtc2/src/rtc2_configure.c:56: if(((rtc2_config_options & RTC2CON_COMPARE_MODE_MASK) == RTC2_CONFIG_OPTION_COMPARE_MODE_0_RESET_AT_IRQ) ||
	mov	dptr,#_rtc2_configure_rtc2_config_options_1_230
	movx	@dptr,a
	mov	r7,a
	mov	a,#0x06
	anl	a,r7
	mov	r6,a
	cjne	r6,#0x06,00109$
	sjmp	00101$
00109$:
;	../src/rtc2/src/rtc2_configure.c:57: ((rtc2_config_options & RTC2CON_COMPARE_MODE_MASK) == RTC2_CONFIG_OPTION_COMPARE_MODE_1_WRAP_AT_IRQ))
	mov	a,#0x06
	anl	a,r7
	mov	r6,a
	cjne	r6,#0x04,00102$
00101$:
;	../src/rtc2/src/rtc2_configure.c:59: RTC2CMP0 = (unsigned char)compare_value;
	mov	dptr,#_rtc2_configure_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	_RTC2CMP0,r5
;	../src/rtc2/src/rtc2_configure.c:60: RTC2CMP1 = (unsigned char)(compare_value >> 8);
	mov	_RTC2CMP1,r6
00102$:
;	../src/rtc2/src/rtc2_configure.c:64: RTC2CON = (RTC2CON & ~RTC2_CONFIG_OPTION_RTC2CON_MASK) | (rtc2_config_options & RTC2_CONFIG_OPTION_RTC2CON_MASK);
	mov	r6,_RTC2CON
	anl	ar6,#0xF0
	anl	ar7,#0x0F
	mov	a,r7
	orl	a,r6
	mov	_RTC2CON,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radiobegin'
;------------------------------------------------------------
;setup                     Allocated with name '_radiobegin_setup_1_233'
;------------------------------------------------------------
;	../nRFLE.c:22: void radiobegin() {
;	-----------------------------------------
;	 function radiobegin
;	-----------------------------------------
_radiobegin:
;	../nRFLE.c:26: rf_spi_configure_enable();
	lcall	_rf_spi_configure_enable
;	../nRFLE.c:28: setup = 255; // setup_retr setRetries 15*16+15
	mov	dptr,#_radiobegin_setup_1_233
	mov	a,#0xFF
	movx	@dptr,a
;	../nRFLE.c:29: rf_write_register(RF_SETUP_RETR, &setup, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_radiobegin_setup_1_233
	movx	@dptr,a
	mov	a,#(_radiobegin_setup_1_233 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x04
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'setChannel'
;------------------------------------------------------------
;channel                   Allocated with name '_setChannel_channel_1_234'
;------------------------------------------------------------
;	../nRFLE.c:35: void setChannel(unsigned char channel){
;	-----------------------------------------
;	 function setChannel
;	-----------------------------------------
_setChannel:
	mov	a,dpl
	mov	dptr,#_setChannel_channel_1_234
	movx	@dptr,a
;	../nRFLE.c:36: rf_write_register(RF_RF_CH, &channel, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_setChannel_channel_1_234
	movx	@dptr,a
	mov	a,#(_setChannel_channel_1_234 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x05
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'setDataRate'
;------------------------------------------------------------
;speed                     Allocated with name '_setDataRate_speed_1_236'
;buffer                    Allocated with name '_setDataRate_buffer_1_237'
;------------------------------------------------------------
;	../nRFLE.c:41: void setDataRate(unsigned char speed){
;	-----------------------------------------
;	 function setDataRate
;	-----------------------------------------
_setDataRate:
	mov	a,dpl
	mov	dptr,#_setDataRate_speed_1_236
	movx	@dptr,a
;	../nRFLE.c:43: rf_read_register(RF_RF_SETUP,&buffer,1);
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_setDataRate_buffer_1_237
	movx	@dptr,a
	mov	a,#(_setDataRate_buffer_1_237 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_rf_read_register
;	../nRFLE.c:45: buffer &= ~(_BV(RF_DR_LOW) | _BV(RF_DR_HIGH)) ;
	mov	dptr,#_setDataRate_buffer_1_237
	movx	a,@dptr
	anl	a,#0xD7
	movx	@dptr,a
;	../nRFLE.c:47: if( speed == 1 )	 buffer |= _BV(RF_DR_LOW);
	mov	dptr,#_setDataRate_speed_1_236
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00104$
	mov	dptr,#_setDataRate_buffer_1_237
	movx	a,@dptr
	mov	r6,a
	orl	a,#0x20
	movx	@dptr,a
	sjmp	00105$
00104$:
;	../nRFLE.c:49: else if ( speed == 3 ) buffer |= _BV(RF_DR_HIGH);
	cjne	r7,#0x03,00105$
	mov	dptr,#_setDataRate_buffer_1_237
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x08
	movx	@dptr,a
00105$:
;	../nRFLE.c:51: rf_write_register(RF_RF_SETUP,&buffer,1 ) ;
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_setDataRate_buffer_1_237
	movx	@dptr,a
	mov	a,#(_setDataRate_buffer_1_237 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x06
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'setAutoAck'
;------------------------------------------------------------
;enable                    Allocated with name '_setAutoAck_enable_1_238'
;buffer                    Allocated with name '_setAutoAck_buffer_1_239'
;------------------------------------------------------------
;	../nRFLE.c:56: void setAutoAck(unsigned char enable)
;	-----------------------------------------
;	 function setAutoAck
;	-----------------------------------------
_setAutoAck:
	mov	a,dpl
;	../nRFLE.c:60: if (enable==1) buffer=63;
	mov	dptr,#_setAutoAck_enable_1_238
	movx	@dptr,a
	mov	r7,a
	cjne	r7,#0x01,00102$
	mov	dptr,#_setAutoAck_buffer_1_239
	mov	a,#0x3F
	movx	@dptr,a
	sjmp	00103$
00102$:
;	../nRFLE.c:61: else        buffer=0;
	mov	dptr,#_setAutoAck_buffer_1_239
	clr	a
	movx	@dptr,a
00103$:
;	../nRFLE.c:62: rf_write_register(RF_EN_AA, &buffer,1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_setAutoAck_buffer_1_239
	movx	@dptr,a
	mov	a,#(_setAutoAck_buffer_1_239 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x01
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'setCRCLength'
;------------------------------------------------------------
;length                    Allocated with name '_setCRCLength_length_1_240'
;buffer                    Allocated with name '_setCRCLength_buffer_1_241'
;------------------------------------------------------------
;	../nRFLE.c:67: void setCRCLength(unsigned char length)
;	-----------------------------------------
;	 function setCRCLength
;	-----------------------------------------
_setCRCLength:
	mov	a,dpl
	mov	dptr,#_setCRCLength_length_1_240
	movx	@dptr,a
;	../nRFLE.c:71: rf_read_register(RF_CONFIG,&buffer,1);
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_setCRCLength_buffer_1_241
	movx	@dptr,a
	mov	a,#(_setCRCLength_buffer_1_241 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_rf_read_register
;	../nRFLE.c:73: buffer = buffer & ~( _BV(RF_CRCO) | _BV(RF_EN_CRC)) ;
	mov	dptr,#_setCRCLength_buffer_1_241
	movx	a,@dptr
	anl	a,#0xF3
	movx	@dptr,a
;	../nRFLE.c:75: if (length==1) buffer |= _BV(RF_EN_CRC);
	mov	dptr,#_setCRCLength_length_1_240
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00104$
	mov	dptr,#_setCRCLength_buffer_1_241
	movx	a,@dptr
	mov	r6,a
	orl	a,#0x08
	movx	@dptr,a
	sjmp	00105$
00104$:
;	../nRFLE.c:76: else if (length==2) buffer |= _BV(RF_EN_CRC) | _BV( RF_CRCO );
	cjne	r7,#0x02,00105$
	mov	dptr,#_setCRCLength_buffer_1_241
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x0C
	movx	@dptr,a
00105$:
;	../nRFLE.c:78: buffer |=1<<PWR_UP;
	mov	dptr,#_setCRCLength_buffer_1_241
	movx	a,@dptr
	orl	a,#0x02
	movx	@dptr,a
;	../nRFLE.c:80: rf_write_register(RF_CONFIG,&buffer,1 ) ;
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_setCRCLength_buffer_1_241
	movx	@dptr,a
	mov	a,#(_setCRCLength_buffer_1_241 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'setPALevel'
;------------------------------------------------------------
;level                     Allocated with name '_setPALevel_level_1_242'
;setup                     Allocated with name '_setPALevel_setup_1_243'
;------------------------------------------------------------
;	../nRFLE.c:84: void setPALevel(unsigned char level)
;	-----------------------------------------
;	 function setPALevel
;	-----------------------------------------
_setPALevel:
;	../nRFLE.c:88: rf_read_register(RF_RF_SETUP,&setup,1) ;
	mov	dptr,#_rf_read_register_PARM_2
	mov	a,#_setPALevel_setup_1_243
	movx	@dptr,a
	mov	a,#(_setPALevel_setup_1_243 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_read_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_rf_read_register
;	../nRFLE.c:90: setup &= ~(_BV(RF_PWR_LOW) | _BV(RF_PWR_HIGH)) ;
	mov	dptr,#_setPALevel_setup_1_243
	movx	a,@dptr
	anl	a,#0xF9
	movx	@dptr,a
;	../nRFLE.c:93: rf_write_register(RF_RF_SETUP,&setup,1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_setPALevel_setup_1_243
	movx	@dptr,a
	mov	a,#(_setPALevel_setup_1_243 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x06
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'openAllPipe'
;------------------------------------------------------------
;buffer                    Allocated with name '_openAllPipe_buffer_1_244'
;setup                     Allocated with name '_openAllPipe_setup_1_244'
;------------------------------------------------------------
;	../nRFLE.c:101: void openAllPipe()
;	-----------------------------------------
;	 function openAllPipe
;	-----------------------------------------
_openAllPipe:
;	../nRFLE.c:106: buffer[1]=adr1;
	mov	dptr,#(_openAllPipe_buffer_1_244 + 0x0001)
	mov	a,#0xF0
	movx	@dptr,a
;	../nRFLE.c:107: buffer[2]=adr2;
	mov	dptr,#(_openAllPipe_buffer_1_244 + 0x0002)
	mov	a,#0xF0
	movx	@dptr,a
;	../nRFLE.c:108: buffer[3]=adr3;
	mov	dptr,#(_openAllPipe_buffer_1_244 + 0x0003)
	mov	a,#0xF0
	movx	@dptr,a
;	../nRFLE.c:109: buffer[4]=adr4;
	mov	dptr,#(_openAllPipe_buffer_1_244 + 0x0004)
	mov	a,#0xF0
	movx	@dptr,a
;	../nRFLE.c:111: setup = 2; // en_rxaddr ,биты включения каналов B00000010 на прием
	mov	dptr,#_openAllPipe_setup_1_244
	mov	a,#0x02
	movx	@dptr,a
;	../nRFLE.c:112: rf_write_register(RF_EN_RXADDR, &setup, 1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_openAllPipe_setup_1_244
	movx	@dptr,a
	mov	a,#(_openAllPipe_setup_1_244 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_rf_write_register
;	../nRFLE.c:115: buffer[0]=0xD2;
	mov	dptr,#_openAllPipe_buffer_1_244
	mov	a,#0xD2
	movx	@dptr,a
;	../nRFLE.c:117: rf_write_register(RF_RX_ADDR_P0,buffer,5);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_openAllPipe_buffer_1_244
	movx	@dptr,a
	mov	a,#(_openAllPipe_buffer_1_244 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x0A
	lcall	_rf_write_register
;	../nRFLE.c:118: rf_write_register(RF_TX_ADDR,buffer,5);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_openAllPipe_buffer_1_244
	movx	@dptr,a
	mov	a,#(_openAllPipe_buffer_1_244 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x10
	lcall	_rf_write_register
;	../nRFLE.c:122: buffer[0]=0xE1;
	mov	dptr,#_openAllPipe_buffer_1_244
	mov	a,#0xE1
	movx	@dptr,a
;	../nRFLE.c:124: rf_write_register(RF_RX_ADDR_P0+1,buffer,5);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_openAllPipe_buffer_1_244
	movx	@dptr,a
	mov	a,#(_openAllPipe_buffer_1_244 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x0B
	lcall	_rf_write_register
;	../nRFLE.c:126: setup=32; //
	mov	dptr,#_openAllPipe_setup_1_244
	mov	a,#0x20
	movx	@dptr,a
;	../nRFLE.c:127: rf_write_register(RF_RX_PW_P0+1,&setup,1);
	mov	dptr,#_rf_write_register_PARM_2
	mov	a,#_openAllPipe_setup_1_244
	movx	@dptr,a
	mov	a,#(_openAllPipe_setup_1_244 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_register_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x12
	ljmp	_rf_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'setdimmer'
;------------------------------------------------------------
;value                     Allocated with name '_setdimmer_value_1_245'
;------------------------------------------------------------
;	main.c:44: void setdimmer(uint8_t value){
;	-----------------------------------------
;	 function setdimmer
;	-----------------------------------------
_setdimmer:
	mov	a,dpl
;	main.c:45: valuepwm=65535-DIMSTART*(MAXSTEP-value);
	mov	dptr,#_setdimmer_value_1_245
	movx	@dptr,a
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	mov	a,#0x64
	clr	c
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	mov	dptr,#__mullong_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	rlc	a
	subb	a,acc
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(0x85&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	lcall	__mullong
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	pop	ar7
	mov	a,#0xFF
	clr	c
	subb	a,r3
	mov	r3,a
	mov	a,#0xFF
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	mov	dptr,#_valuepwm
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	main.c:46: if(value ==0 | clientnf.test_data==0) {
	mov	a,r7
	cjne	a,#0x01,00109$
00109$:
	clr	a
	rlc	a
	mov	r7,a
	mov	dptr,#(_clientnf + 0x0003)
	movx	a,@dptr
	mov	r6,a
	cjne	a,#0x01,00110$
00110$:
	clr	a
	rlc	a
	mov	r6,a
	orl	a,r7
	jz	00102$
;	main.c:47: interrupt_control_ifp_disable();
	clr _IEN0_SB_IFP 
;	main.c:48: gpio_pin_val_clear(DIMMPIN);
	mov	dpl,#0x02
	ljmp	_gpio_pin_val_clear
00102$:
;	main.c:49: } else interrupt_control_ifp_enable();
	setb _IEN0_SB_IFP 
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isr_ifp'
;------------------------------------------------------------
;	main.c:55: interrupt_isr_ifp()
;	-----------------------------------------
;	 function isr_ifp
;	-----------------------------------------
_isr_ifp:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:57: timer1_stop();
	clr _TCON_SB_TR1 
;	main.c:58: if(clientnf.countPWM !=0) {
	mov	dptr,#(_clientnf + 0x0001)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jz	00102$
;	main.c:61: timer1_set_t1_val(valuepwm);
	mov	dptr,#_valuepwm
	movx	a,@dptr
	mov	((_T1 >> 0) & 0xFF),a
	inc	dptr
	movx	a,@dptr
	mov	((_T1 >> 8) & 0xFF),a
;	main.c:62: timer1_run();
	setb _TCON_SB_TR1 
	sjmp	00103$
00102$:
;	main.c:64: else gpio_pin_val_clear(DIMMPIN);
	mov	dpl,#0x02
	lcall	_gpio_pin_val_clear
00103$:
;	main.c:65: stdimm=1;
	mov	dptr,#_stdimm
	mov	a,#0x01
	movx	@dptr,a
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'isr_t1'
;------------------------------------------------------------
;	main.c:69: interrupt_isr_t1() {
;	-----------------------------------------
;	 function isr_t1
;	-----------------------------------------
_isr_t1:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	main.c:71: if (stdimm) {
	mov	dptr,#_stdimm
	movx	a,@dptr
	mov	r7,a
	jz	00102$
;	main.c:72: gpio_pin_val_set(DIMMPIN); 
	mov	dpl,#0x02
	lcall	_gpio_pin_val_set
;	main.c:73: timer1_set_t1_val(65535-100);
	mov	((_T1 >> 0) & 0xFF),#0x9B
	mov	((_T1 >> 8) & 0xFF),#0xFF
;	main.c:74: stdimm=0;
	mov	dptr,#_stdimm
	clr	a
	movx	@dptr,a
	sjmp	00104$
00102$:
;	main.c:76: gpio_pin_val_clear(DIMMPIN);
	mov	dpl,#0x02
	lcall	_gpio_pin_val_clear
00104$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'dimmon'
;------------------------------------------------------------
;mode                      Allocated with name '_dimmon_mode_1_252'
;------------------------------------------------------------
;	main.c:79: void dimmon(uint8_t mode) // функция управлением вкл/выкл
;	-----------------------------------------
;	 function dimmon
;	-----------------------------------------
_dimmon:
	mov	a,dpl
;	main.c:81: if (mode) interrupt_control_ifp_enable();
	mov	dptr,#_dimmon_mode_1_252
	movx	@dptr,a
	mov	r7,a
	jz	00102$
	setb _IEN0_SB_IFP 
	sjmp	00103$
00102$:
;	main.c:83: interrupt_control_ifp_disable();
	clr _IEN0_SB_IFP 
;	main.c:84: timer1_stop();
	clr _TCON_SB_TR1 
;	main.c:85: gpio_pin_val_clear(DIMMPIN);
	mov	dpl,#0x02
	push	ar7
	lcall	_gpio_pin_val_clear
	pop	ar7
00103$:
;	main.c:87: clientnf.test_data=mode;
	mov	dptr,#(_clientnf + 0x0003)
	mov	a,r7
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isr_rtc2'
;------------------------------------------------------------
;	main.c:94: interrupt_isr_rtc2() // счетчик ртс импульсов используя прерывание.
;	-----------------------------------------
;	 function isr_rtc2
;	-----------------------------------------
_isr_rtc2:
	push	acc
	push	dpl
	push	dph
	push	psw
;	main.c:96: countrtc++;
	mov	dptr,#_countrtc
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	pop	psw
	pop	dph
	pop	dpl
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;state                     Allocated with name '_main_state_1_256'
;count                     Allocated with name '_main_count_1_256'
;st                        Allocated with name '_main_st_1_256'
;countpause                Allocated with name '_main_countpause_1_256'
;rewers                    Allocated with name '_main_rewers_1_256'
;statesend                 Allocated with name '_main_statesend_1_256'
;radiosend                 Allocated with name '_main_radiosend_1_256'
;------------------------------------------------------------
;	main.c:101: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:106: uint8_t st=0,countpause=0,rewers=0; // for key
	mov	dptr,#_main_st_1_256
;	main.c:107: unsigned long statesend=0,radiosend=0;
	clr	a
	movx	@dptr,a
	mov	dptr,#_main_countpause_1_256
	movx	@dptr,a
	mov	dptr,#_main_rewers_1_256
	movx	@dptr,a
	mov	dptr,#_main_statesend_1_256
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_main_radiosend_1_256
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:110: CLKLFCTRL=1; // 0 -внешний кварц на P0.1 и P0.0. 1 - внутренний генератор.
	mov	_CLKLFCTRL,#0x01
;	main.c:111: rtc2_configure(RTC2_CONFIG_OPTION_COMPARE_MODE_0_RESET_AT_IRQ ,RTCDEC);
	mov	dptr,#_rtc2_configure_PARM_2
	mov	a,#0xFF
	movx	@dptr,a
	mov	a,#0x1F
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_rtc2_configure
;	main.c:112: rtc2_run();
	orl	_RTC2CON,#0x01
;	main.c:113: pwr_clk_mgmt_wakeup_configure(PWR_CLK_MGMT_WAKEUP_CONFIG_OPTION_WAKEUP_ON_RTC2_TICK_IF_INT_ENABLED,0);
	mov	dptr,#_pwr_clk_mgmt_wakeup_configure_PARM_2
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_pwr_clk_mgmt_wakeup_configure
;	main.c:114: interrupt_control_rtc2_enable();
	setb _IEN1_SB_TICK 
;	main.c:117: interrupt_configure_ifp(INTERRUPT_IFP_INPUT_GPINT0,INTERRUPT_IFP_CONFIG_OPTION_ENABLE | INTERRUPT_IFP_CONFIG_OPTION_TYPE_FALLING_EDGE);
	mov	dptr,#_interrupt_configure_ifp_PARM_2
	mov	a,#0x81
	movx	@dptr,a
	mov	dpl,#0x08
	lcall	_interrupt_configure_ifp
;	main.c:118: interrupt_control_ifp_enable();
	setb _IEN0_SB_IFP 
;	main.c:120: interrupt_control_t1_enable()	;
	setb _IEN0_SB_T1 
;	main.c:121: timer1_configure(TIMER1_CONFIG_OPTION_MODE_1_16_BIT_CTR_TMR,0);
	mov	dptr,#_timer1_configure_PARM_2
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x10
	lcall	_timer1_configure
;	main.c:122: timer1_run();
	setb _TCON_SB_TR1 
;	main.c:124: sti();
	setb _IEN0_SB_GLOBAL 
;	main.c:126: gpio_pin_configure(BUTTONPIN,GPIO_PIN_CONFIG_OPTION_DIR_INPUT|GPIO_PIN_CONFIG_OPTION_PIN_MODE_INPUT_BUFFER_ON_PULL_UP_RESISTOR); // для кнопки на вход и подтянуть резистором. 
	mov	dptr,#_gpio_pin_configure_PARM_2
	mov	a,#0x40
	movx	@dptr,a
	mov	dpl,#0x04
	lcall	_gpio_pin_configure
;	main.c:128: gpio_pin_configure(DIMMPIN,GPIO_PIN_CONFIG_OPTION_DIR_OUTPUT);
	mov	dptr,#_gpio_pin_configure_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_gpio_pin_configure
;	main.c:131: gpio_pin_val_set(DIMMPIN);
	mov	dpl,#0x02
	lcall	_gpio_pin_val_set
;	main.c:132: delay_ms(500); 
	mov	dptr,#0x01F4
	lcall	_delay_ms
;	main.c:133: gpio_pin_val_clear(DIMMPIN);
	mov	dpl,#0x02
	lcall	_gpio_pin_val_clear
;	main.c:134: delay_ms(500); 
	mov	dptr,#0x01F4
	lcall	_delay_ms
;	main.c:137: radiobegin(); //
	lcall	_radiobegin
;	main.c:138: openAllPipe(); // открываем прием/передачу, назначаем адреса.
	lcall	_openAllPipe
;	main.c:140: setChannel(100);
	mov	dpl,#0x64
	lcall	_setChannel
;	main.c:141: setDataRate(2); // 1 - 250кб , 2 - 1 мб , 3 -2 мб.
	mov	dpl,#0x02
	lcall	_setDataRate
;	main.c:142: setAutoAck(false);
	mov	dpl,#0x00
	lcall	_setAutoAck
;	main.c:143: setCRCLength(2); // 0 - crc off ,1 - 8bit ,2 - 16bit
	mov	dpl,#0x02
	lcall	_setCRCLength
;	main.c:144: setPALevel(3) ; // мощность 0..3
	mov	dpl,#0x03
	lcall	_setPALevel
;	main.c:147: clientnf.identifier=chclient;
	mov	dptr,#_clientnf
	mov	a,#0x01
	movx	@dptr,a
;	main.c:148: clientnf.countPWM=10;
	mov	dptr,#(_clientnf + 0x0001)
	mov	a,#0x0A
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	main.c:156: while(1)
00147$:
;	main.c:163: if (countrtc-radiosend >=TIMESEND) {
	mov	dptr,#_main_radiosend_1_256
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_countrtc
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r0
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,r1
	subb	a,r5
	mov	r5,a
	mov	a,r2
	subb	a,r6
	mov	r6,a
	mov	a,r3
	subb	a,r7
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,#0x02
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jnc	00216$
	ljmp	00122$
00216$:
;	main.c:165: rf_write_tx_payload((const uint8_t*)&clientnf, 32, true); //transmit received char over RF
	mov	r6,#_clientnf
	mov	r7,#(_clientnf >> 8)
	mov	r5,#0x00
	mov	dptr,#_rf_write_tx_payload_PARM_2
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_write_tx_payload_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_rf_write_tx_payload
;	main.c:168: while(!(rf_irq_pin_active() && rf_irq_tx_ds_active()));
00102$:
	jnb	_IRCON_SB_RFIRQ,00102$
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0xFF
	lcall	_rf_spi_execute_command
	mov	a,dpl
	jnb	acc.5,00102$
;	main.c:170: rf_irq_clear_all(); //clear all interrupts in the 24L01
	lcall	_rf_irq_clear_all
;	main.c:171: rf_set_as_rx(true); //change the device to an RX to get the character back from the other 24L01
	mov	dpl,#0x01
	lcall	_rf_set_as_rx
;	main.c:175: for(count = 0; count < 25000; count++)
	mov	r6,#0x00
	mov	r7,#0x00
00149$:
;	main.c:178: if((rf_irq_pin_active() && rf_irq_rx_dr_active()))
	jb	_IRCON_SB_RFIRQ,00219$
	ljmp	00109$
00219$:
	mov	dptr,#_rf_spi_execute_command_PARM_2
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_3
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_rf_spi_execute_command_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0xFF
	push	ar7
	push	ar6
	lcall	_rf_spi_execute_command
	mov	a,dpl
	pop	ar6
	pop	ar7
	jnb	acc.6,00109$
;	main.c:181: if (clientnf.count <= 2147483646) clientnf.count++;      /// счетчик передач для контроля качества канала
	mov	dptr,#(_clientnf + 0x0006)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	clr	c
	mov	a,#0xFE
	subb	a,r2
	mov	a,#0xFF
	subb	a,r3
	mov	a,#0xFF
	subb	a,r4
	mov	a,#(0x7F ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jc	00106$
	inc	r2
	cjne	r2,#0x00,00222$
	inc	r3
	cjne	r3,#0x00,00222$
	inc	r4
	cjne	r4,#0x00,00222$
	inc	r5
00222$:
	mov	dptr,#(_clientnf + 0x0006)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00107$
00106$:
;	main.c:182: else clientnf.count = 0;
	mov	dptr,#(_clientnf + 0x0006)
	clr	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00107$:
;	main.c:184: rf_read_rx_payload((const uint8_t*)&servernf, 32); //get the payload into data
	mov	dptr,#_rf_read_rx_payload_PARM_2
	mov	a,#0x20
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_servernf
	mov	b,#0x00
	lcall	_rf_read_rx_payload
;	main.c:185: break;
	sjmp	00113$
00109$:
;	main.c:192: if(count == 24999) clientnf.Error_Message++;
	cjne	r6,#0xA7,00150$
	cjne	r7,#0x61,00150$
	mov	dptr,#(_clientnf + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	r4
	cjne	r4,#0x00,00225$
	inc	r5
00225$:
	mov	dptr,#(_clientnf + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
00150$:
;	main.c:175: for(count = 0; count < 25000; count++)
	inc	r6
	cjne	r6,#0x00,00226$
	inc	r7
00226$:
	clr	c
	mov	a,r6
	subb	a,#0xA8
	mov	a,r7
	subb	a,#0x61
	jnc	00227$
	ljmp	00149$
00227$:
00113$:
;	main.c:197: rf_irq_clear_all(); //clear interrupts again
	lcall	_rf_irq_clear_all
;	main.c:199: rf_set_as_tx(); //resume normal operation as a TX
	lcall	_rf_set_as_tx
;	main.c:202: if (servernf[0]==chclient){	
	mov	dptr,#_servernf
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00120$
;	main.c:205: if (servernf[1]==10) { // включение/выключение по радио
	mov	dptr,#(_servernf + 0x0001)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0A,00117$
;	main.c:206: dimmon(servernf[3]);
	mov	dptr,#(_servernf + 0x0003)
	movx	a,@dptr
	mov	dpl,a
	lcall	_dimmon
	sjmp	00120$
00117$:
;	main.c:209: if (servernf[1]==11) { // управление яркостью по радио
	cjne	r7,#0x0B,00120$
;	main.c:210: clientnf.countPWM=servernf[3];
	mov	dptr,#(_servernf + 0x0003)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#(_clientnf + 0x0001)
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	main.c:211: setdimmer(clientnf.countPWM);
	mov	dpl,r7
	lcall	_setdimmer
00120$:
;	main.c:215: radiosend=countrtc;
	mov	dptr,#_countrtc
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_radiosend_1_256
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00122$:
;	main.c:224: if (digitalRead(BUTTONPIN)==0){
	mov	dpl,#0x04
	lcall	_gpio_pin_val_read
	mov	a,dpl
	jz	00234$
	ljmp	00144$
00234$:
;	main.c:225: if (countrtc-statesend>=TIMEKEY) {
	mov	dptr,#_main_statesend_1_256
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_countrtc
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r0
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,r1
	subb	a,r5
	mov	r5,a
	mov	a,r2
	subb	a,r6
	mov	r6,a
	mov	a,r3
	subb	a,r7
	mov	r7,a
	clr	c
	mov	a,r4
	subb	a,#0x04
	mov	a,r5
	subb	a,#0x00
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jnc	00235$
	ljmp	00147$
00235$:
;	main.c:227: if (st){
	mov	dptr,#_main_st_1_256
	movx	a,@dptr
	mov	r7,a
	jz	00139$
;	main.c:228: st=0;
	mov	dptr,#_main_st_1_256
	clr	a
	movx	@dptr,a
;	main.c:229: dat=!dat;
	mov	dptr,#(_clientnf + 0x0003)
	movx	a,@dptr
	mov	r7,a
	cjne	a,#0x01,00237$
00237$:
	clr	a
	rlc	a
	mov	dptr,#(_clientnf + 0x0003)
	movx	@dptr,a
;	main.c:231: dimmon (dat);
	mov	dptr,#(_clientnf + 0x0003)
	movx	a,@dptr
	mov	dpl,a
	lcall	_dimmon
	ljmp	00140$
00139$:
;	main.c:234: if (countpause>=TIMELONGKEY){
	mov	dptr,#_main_countpause_1_256
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00238$
00238$:
	jnc	00239$
	ljmp	00136$
00239$:
;	main.c:236: if (!dat) dimmon(1);
	mov	dptr,#(_clientnf + 0x0003)
	movx	a,@dptr
	jnz	00133$
	mov	dpl,#0x01
	lcall	_dimmon
	ljmp	00140$
00133$:
;	main.c:239: if(rewers) {
	mov	dptr,#_main_rewers_1_256
	movx	a,@dptr
	mov	r6,a
	jz	00130$
;	main.c:240: if(dimm-stepdimm>=0)  dimm=dimm-stepdimm;
	mov	dptr,#(_clientnf + 0x0001)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	add	a,#0xF6
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	jb	acc.7,00124$
	mov	dptr,#(_clientnf + 0x0001)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	add	a,#0xF6
	mov	r5,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	dptr,#(_clientnf + 0x0001)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	sjmp	00131$
00124$:
;	main.c:241: else rewers=0;
	mov	dptr,#_main_rewers_1_256
	clr	a
	movx	@dptr,a
	sjmp	00131$
00130$:
;	main.c:243: if(dimm+stepdimm<=MAXSTEP) dimm=dimm+stepdimm;
	mov	dptr,#(_clientnf + 0x0001)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x0A
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	clr	c
	mov	a,#0x64
	subb	a,r5
	clr	a
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jc	00127$
	mov	dptr,#(_clientnf + 0x0001)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x0A
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_clientnf + 0x0001)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	sjmp	00131$
00127$:
;	main.c:244: else rewers=1;
	mov	dptr,#_main_rewers_1_256
	mov	a,#0x01
	movx	@dptr,a
00131$:
;	main.c:246: setdimmer(dimm);
	mov	dptr,#(_clientnf + 0x0001)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r5
	lcall	_setdimmer
	sjmp	00140$
00136$:
;	main.c:248: } else countpause++;
	mov	dptr,#_main_countpause_1_256
	mov	a,r7
	inc	a
	movx	@dptr,a
00140$:
;	main.c:249: statesend=countrtc;
	mov	dptr,#_countrtc
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_statesend_1_256
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	ljmp	00147$
00144$:
;	main.c:253: st=1;
	mov	dptr,#_main_st_1_256
	mov	a,#0x01
	movx	@dptr,a
;	main.c:254: countpause=0;
	mov	dptr,#_main_countpause_1_256
	clr	a
	movx	@dptr,a
;	main.c:255: rewers=!rewers;
	mov	dptr,#_main_rewers_1_256
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_main_rewers_1_256
	cjne	a,#0x01,00244$
00244$:
	clr	a
	rlc	a
	movx	@dptr,a
	ljmp	00147$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__valuepwm:
	.byte #0x00,#0x00	; 0
__xinit__countrtc:
	.byte #0x00,#0x00,#0x00,#0x00	; 0
	.area CABS    (ABS,CODE)
