;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0/*rc1*/ #8960 (Mar 15 2014) (MINGW32)
; This file was generated Mon Mar 31 19:15:31 2014
;--------------------------------------------------------
	.module hw4
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _IRWRITE
	.globl _functionSet
	.globl _setDdRamAddress
	.globl _sendChar
	.globl _sendString
	.globl _delay
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Main'
;------------------------------------------------------------
;	hw4.c:33: void Main(void) {
;	-----------------------------------------
;	 function Main
;	-----------------------------------------
_Main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	hw4.c:35: functionSet();
	lcall	_functionSet
;	hw4.c:37: IRWRITE(0x06);
	mov	dpl,#0x06
	lcall	_IRWRITE
;	hw4.c:39: IRWRITE(0x0F);
	mov	dpl,#0x0F
	lcall	_IRWRITE
;	hw4.c:40: sendString("EdSim51 LCD Module Simulation");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_sendString
;	hw4.c:41: setDdRamAddress(0x40); // set address to start of second line
	mov	dpl,#0x40
	lcall	_setDdRamAddress
;	hw4.c:42: sendString("Based on Hitachi HD44780");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_sendString
;	hw4.c:50: while (1) {
00112$:
;	hw4.c:51: if (ret == 0) {
	jb	_P2_5,00109$
;	hw4.c:53: IRWRITE(0x02);
	mov	dpl,#0x02
	lcall	_IRWRITE
	sjmp	00112$
00109$:
;	hw4.c:56: if (left == 0 && right == 1) {
	jb	_P2_6,00105$
	jnb	_P2_7,00105$
;	hw4.c:58: IRWRITE(0x18);
	mov	dpl,#0x18
	lcall	_IRWRITE
	sjmp	00112$
00105$:
;	hw4.c:60: else if (left == 1 && right == 0) {
	jnb	_P2_6,00112$
	jb	_P2_7,00112$
;	hw4.c:62: IRWRITE(0x1C);
	mov	dpl,#0x1C
	lcall	_IRWRITE
	sjmp	00112$
;------------------------------------------------------------
;Allocation info for local variables in function 'IRWRITE'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	hw4.c:69: void IRWRITE(char addr)
;	-----------------------------------------
;	 function IRWRITE
;	-----------------------------------------
_IRWRITE:
	mov	r7,dpl
;	hw4.c:71: P1= (addr & 0xf0) ;
	mov	a,#0xF0
	anl	a,r7
	mov	_P1,a
;	hw4.c:72: E = 1;
	setb	_P1_2
;	hw4.c:73: E = 0;
	clr	_P1_2
;	hw4.c:74: P1 = ((addr & 0x0f) << 4) | 0x00;
	anl	ar7,#0x0F
	mov	a,r7
	swap	a
	anl	a,#0xF0
	mov	_P1,a
;	hw4.c:75: E = 1;
	setb	_P1_2
;	hw4.c:76: E = 0;
	clr	_P1_2
;	hw4.c:77: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'functionSet'
;------------------------------------------------------------
;	hw4.c:79: void functionSet(void) {//ok
;	-----------------------------------------
;	 function functionSet
;	-----------------------------------------
_functionSet:
;	hw4.c:87: P1 = (P1&0x23) | 0x20;
	mov	a,#0x23
	anl	a,_P1
	orl	a,#0x20
	mov	_P1,a
;	hw4.c:89: E = 1;
	setb	_P1_2
;	hw4.c:90: E = 0;
	clr	_P1_2
;	hw4.c:91: delay();
	lcall	_delay
;	hw4.c:92: E = 1;
	setb	_P1_2
;	hw4.c:93: E = 0;
	clr	_P1_2
;	hw4.c:95: P1=0x80;
	mov	_P1,#0x80
;	hw4.c:96: E = 1;
	setb	_P1_2
;	hw4.c:97: E = 0;
	clr	_P1_2
;	hw4.c:98: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setDdRamAddress'
;------------------------------------------------------------
;address                   Allocated to registers r7 
;------------------------------------------------------------
;	hw4.c:101: void setDdRamAddress(char address) {
;	-----------------------------------------
;	 function setDdRamAddress
;	-----------------------------------------
_setDdRamAddress:
	mov	r7,dpl
;	hw4.c:103: P1= (address & 0xf0) | 0x80;
	mov	a,#0xF0
	anl	a,r7
	orl	a,#0x80
	mov	_P1,a
;	hw4.c:104: E = 1;
	setb	_P1_2
;	hw4.c:105: E = 0;
	clr	_P1_2
;	hw4.c:107: P1= (address & 0x0f) << 4;
	anl	ar7,#0x0F
	mov	a,r7
	swap	a
	anl	a,#0xF0
	mov	_P1,a
;	hw4.c:108: E = 1;
	setb	_P1_2
;	hw4.c:109: E = 0;
	clr	_P1_2
;	hw4.c:110: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendChar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	hw4.c:115: void sendChar(char c) {
;	-----------------------------------------
;	 function sendChar
;	-----------------------------------------
_sendChar:
	mov	r7,dpl
;	hw4.c:121: P1 = (c & 0xf0) | 0x08;
	mov	a,#0xF0
	anl	a,r7
	orl	a,#0x08
	mov	_P1,a
;	hw4.c:122: E = 1;
	setb	_P1_2
;	hw4.c:123: E = 0;
	clr	_P1_2
;	hw4.c:129: P1=  ((c & 0x0f) << 4) | 0x08;
	anl	ar7,#0x0F
	mov	a,r7
	swap	a
	anl	a,#0xF0
	mov	r7,a
	mov	a,#0x08
	orl	a,r7
	mov	_P1,a
;	hw4.c:130: E = 1;
	setb	_P1_2
;	hw4.c:131: E = 0;
	clr	_P1_2
;	hw4.c:132: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendString'
;------------------------------------------------------------
;str                       Allocated to registers 
;p                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	hw4.c:135: void sendString(char* str) {
;	-----------------------------------------
;	 function sendString
;	-----------------------------------------
_sendString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	hw4.c:142: for (p=str; *p; p++) {
00103$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00105$
;	hw4.c:143: sendChar(*p);
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_sendChar
	pop	ar5
	pop	ar6
	pop	ar7
;	hw4.c:142: for (p=str; *p; p++) {
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	hw4.c:146: void delay(void) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	hw4.c:148: for (c = 0; c < 50; c++);
	mov	r7,#0x32
00104$:
	djnz	r7,00104$
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "EdSim51 LCD Module Simulation"
	.db 0x00
___str_1:
	.ascii "Based on Hitachi HD44780"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
