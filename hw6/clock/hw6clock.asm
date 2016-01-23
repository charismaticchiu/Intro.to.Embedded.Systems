;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0/*rc1*/ #8960 (Mar 15 2014) (MINGW32)
; This file was generated Mon Apr 28 13:22:28 2014
;--------------------------------------------------------
	.module hw6clock
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
	.globl _tick
	.globl _displayBuf
	.globl _timeBuf
	.globl _InitTimer
	.globl _InitLCD
	.globl _IncrTime
	.globl _Refresh
	.globl _PollTimer
	.globl _HandleRollover
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
_timeBuf::
	.ds 3
_displayBuf::
	.ds 6
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
_tick::
	.ds 1
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
;	hw6clock.c:18: char timeBuf[3] = {55,0,0};
	mov	_timeBuf,#0x37
	mov	(_timeBuf + 0x0001),#0x00
	mov	(_timeBuf + 0x0002),#0x00
;	hw6clock.c:19: char displayBuf[6] = {0,0,0,0,0,0};
	mov	_displayBuf,#0x00
	mov	(_displayBuf + 0x0001),#0x00
	mov	(_displayBuf + 0x0002),#0x00
	mov	(_displayBuf + 0x0003),#0x00
	mov	(_displayBuf + 0x0004),#0x00
	mov	(_displayBuf + 0x0005),#0x00
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
;	hw6clock.c:35: void Main(){
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
;	hw6clock.c:36: tick=0;	
	clr	_tick
;	hw6clock.c:37: InitLCD();
	lcall	_InitLCD
;	hw6clock.c:38: InitTimer();	
	lcall	_InitTimer
;	hw6clock.c:39: while (1) {
00102$:
;	hw6clock.c:40: PollTimer();
	lcall	_PollTimer
;	hw6clock.c:41: IncrTime();			
	lcall	_IncrTime
;	hw6clock.c:42: tick=0;		
	clr	_tick
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'InitTimer'
;------------------------------------------------------------
;	hw6clock.c:45: void InitTimer(){
;	-----------------------------------------
;	 function InitTimer
;	-----------------------------------------
_InitTimer:
;	hw6clock.c:46: TMOD = 0x02;//mode 2
	mov	_TMOD,#0x02
;	hw6clock.c:47: TH0 = 156;//256-100=156
	mov	_TH0,#0x9C
;	hw6clock.c:48: TR0 = 1;
	setb	_TR0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitLCD'
;------------------------------------------------------------
;	hw6clock.c:50: void InitLCD(){
;	-----------------------------------------
;	 function InitLCD
;	-----------------------------------------
_InitLCD:
;	hw6clock.c:51: functionSet();
	lcall	_functionSet
;	hw6clock.c:53: IRWRITE(0x06);
	mov	dpl,#0x06
	lcall	_IRWRITE
;	hw6clock.c:55: IRWRITE(0x0F);
	mov	dpl,#0x0F
	lcall	_IRWRITE
;	hw6clock.c:56: sendString("00:00:00");
	mov	dptr,#___str_0
	mov	b,#0x80
	ljmp	_sendString
;------------------------------------------------------------
;Allocation info for local variables in function 'IncrTime'
;------------------------------------------------------------
;	hw6clock.c:58: void IncrTime(){
;	-----------------------------------------
;	 function IncrTime
;	-----------------------------------------
_IncrTime:
;	hw6clock.c:59: timeBuf[0]++;
	mov	a,_timeBuf
	inc	a
	mov	_timeBuf,a
;	hw6clock.c:60: Refresh(2);
	mov	dpl,#0x02
	lcall	_Refresh
;	hw6clock.c:61: if(timeBuf[0] == 60){//sec->min
	mov	a,#0x3C
	cjne	a,_timeBuf,00102$
;	hw6clock.c:62: timeBuf[0] = 0;
	mov	_timeBuf,#0x00
;	hw6clock.c:63: timeBuf[1]++;
	mov	a,(_timeBuf + 0x0001)
	inc	a
	mov	(_timeBuf + 0x0001),a
;	hw6clock.c:64: Refresh(4);
	mov	dpl,#0x04
	lcall	_Refresh
00102$:
;	hw6clock.c:66: if(timeBuf[1] == 60){//min->hr
	mov	a,#0x3C
	cjne	a,(_timeBuf + 0x0001),00104$
;	hw6clock.c:67: timeBuf[1] = 0;
	mov	(_timeBuf + 0x0001),#0x00
;	hw6clock.c:68: timeBuf[2]++;
	mov	a,(_timeBuf + 0x0002)
	inc	a
	mov	(_timeBuf + 0x0002),a
;	hw6clock.c:69: Refresh(5);
	mov	dpl,#0x05
	lcall	_Refresh
00104$:
;	hw6clock.c:71: if(timeBuf[2] == 24){//hr->day
	mov	a,#0x18
	cjne	a,(_timeBuf + 0x0002),00107$
;	hw6clock.c:72: Refresh(6);
	mov	dpl,#0x06
	ljmp	_Refresh
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Refresh'
;------------------------------------------------------------
;carrybit                  Allocated to registers r7 
;------------------------------------------------------------
;	hw6clock.c:76: void Refresh(char carrybit){
;	-----------------------------------------
;	 function Refresh
;	-----------------------------------------
_Refresh:
	mov	r7,dpl
;	hw6clock.c:77: displayBuf[0] = timeBuf[0]%10 +'0';//個位
	mov	b,#0x0a
	mov	a,_timeBuf
	clr	F0
	jnb	acc.7,00126$
	setb	F0
	cpl	a
	inc	a
00126$:
	div	ab
	mov	a,b
	jnb	F0,00127$
	cpl	a
	inc	a
00127$:
	add	a,#0x30
	mov	_displayBuf,a
;	hw6clock.c:78: displayBuf[1] = timeBuf[0]/10 +'0';//十位
	clr	F0
	mov	b,#0x0a
	mov	a,_timeBuf
	jnb	acc.7,00128$
	cpl	F0
	cpl	a
	inc	a
00128$:
	div	ab
	jnb	F0,00129$
	cpl	a
	inc	a
00129$:
	add	a,#0x30
	mov	(_displayBuf + 0x0001),a
;	hw6clock.c:79: displayBuf[2] = timeBuf[1]%10 +'0';
	mov	b,#0x0a
	mov	a,(_timeBuf + 0x0001)
	clr	F0
	jnb	acc.7,00130$
	setb	F0
	cpl	a
	inc	a
00130$:
	div	ab
	mov	a,b
	jnb	F0,00131$
	cpl	a
	inc	a
00131$:
	add	a,#0x30
	mov	(_displayBuf + 0x0002),a
;	hw6clock.c:80: displayBuf[3] = timeBuf[1]/10 +'0';
	clr	F0
	mov	b,#0x0a
	mov	a,(_timeBuf + 0x0001)
	jnb	acc.7,00132$
	cpl	F0
	cpl	a
	inc	a
00132$:
	div	ab
	jnb	F0,00133$
	cpl	a
	inc	a
00133$:
	add	a,#0x30
	mov	(_displayBuf + 0x0003),a
;	hw6clock.c:81: displayBuf[4] = timeBuf[2]%10 +'0';
	mov	b,#0x0a
	mov	a,(_timeBuf + 0x0002)
	clr	F0
	jnb	acc.7,00134$
	setb	F0
	cpl	a
	inc	a
00134$:
	div	ab
	mov	a,b
	jnb	F0,00135$
	cpl	a
	inc	a
00135$:
	add	a,#0x30
	mov	(_displayBuf + 0x0004),a
;	hw6clock.c:82: displayBuf[5] = timeBuf[2]/10 +'0';
	clr	F0
	mov	b,#0x0a
	mov	a,(_timeBuf + 0x0002)
	jnb	acc.7,00136$
	cpl	F0
	cpl	a
	inc	a
00136$:
	div	ab
	jnb	F0,00137$
	cpl	a
	inc	a
00137$:
	add	a,#0x30
	mov	(_displayBuf + 0x0005),a
;	hw6clock.c:83: if(carrybit ==2){
	cjne	r7,#0x02,00110$
;	hw6clock.c:84: setDdRamAddress(0x06);
	mov	dpl,#0x06
	lcall	_setDdRamAddress
;	hw6clock.c:85: sendChar(displayBuf[1]);
	mov	dpl,(_displayBuf + 0x0001)
	lcall	_sendChar
;	hw6clock.c:86: sendChar(displayBuf[0]);
	mov	dpl,_displayBuf
	ljmp	_sendChar
00110$:
;	hw6clock.c:88: else if(carrybit == 4){
	cjne	r7,#0x04,00107$
;	hw6clock.c:89: setDdRamAddress(0x03);
	mov	dpl,#0x03
	lcall	_setDdRamAddress
;	hw6clock.c:90: sendChar(displayBuf[3]);
	mov	dpl,(_displayBuf + 0x0003)
	lcall	_sendChar
;	hw6clock.c:91: sendChar(displayBuf[2]);
	mov	dpl,(_displayBuf + 0x0002)
	lcall	_sendChar
;	hw6clock.c:92: sendChar(':');
	mov	dpl,#0x3A
	lcall	_sendChar
;	hw6clock.c:93: sendChar(displayBuf[1]);
	mov	dpl,(_displayBuf + 0x0001)
	lcall	_sendChar
;	hw6clock.c:94: sendChar(displayBuf[0]);
	mov	dpl,_displayBuf
	ljmp	_sendChar
00107$:
;	hw6clock.c:96: else if (carrybit == 5){
	cjne	r7,#0x05,00104$
;	hw6clock.c:97: setDdRamAddress(0x00);
	mov	dpl,#0x00
	lcall	_setDdRamAddress
;	hw6clock.c:98: sendChar(displayBuf[5]);
	mov	dpl,(_displayBuf + 0x0005)
	lcall	_sendChar
;	hw6clock.c:99: sendChar(displayBuf[4]);
	mov	dpl,(_displayBuf + 0x0004)
	lcall	_sendChar
;	hw6clock.c:100: sendChar(':');
	mov	dpl,#0x3A
	lcall	_sendChar
;	hw6clock.c:101: sendChar(displayBuf[3]);
	mov	dpl,(_displayBuf + 0x0003)
	lcall	_sendChar
;	hw6clock.c:102: sendChar(displayBuf[2]);
	mov	dpl,(_displayBuf + 0x0002)
	lcall	_sendChar
;	hw6clock.c:103: sendChar(':');
	mov	dpl,#0x3A
	lcall	_sendChar
;	hw6clock.c:104: sendChar(displayBuf[1]);
	mov	dpl,(_displayBuf + 0x0001)
	lcall	_sendChar
;	hw6clock.c:105: sendChar(displayBuf[0]);
	mov	dpl,_displayBuf
	ljmp	_sendChar
00104$:
;	hw6clock.c:108: else if (carrybit == 6){
	cjne	r7,#0x06,00112$
;	hw6clock.c:109: setDdRamAddress(0x00);
	mov	dpl,#0x00
	lcall	_setDdRamAddress
;	hw6clock.c:110: sendString("00:00:00");
	mov	dptr,#___str_0
	mov	b,#0x80
	ljmp	_sendString
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PollTimer'
;------------------------------------------------------------
;	hw6clock.c:115: void PollTimer() {
;	-----------------------------------------
;	 function PollTimer
;	-----------------------------------------
_PollTimer:
;	hw6clock.c:116: while(tick==0){
00101$:
	jb	_tick,00104$
;	hw6clock.c:117: HandleRollover();
	lcall	_HandleRollover
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'HandleRollover'
;------------------------------------------------------------
;x                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	hw6clock.c:120: void HandleRollover(){
;	-----------------------------------------
;	 function HandleRollover
;	-----------------------------------------
_HandleRollover:
;	hw6clock.c:123: while (TF0 == 0);
	mov	r6,#0x00
	mov	r7,#0x00
00101$:
;	hw6clock.c:124: TF0 = 0; // clear the timer flag		
	jbc	_TF0,00119$
	sjmp	00101$
00119$:
;	hw6clock.c:122: for(x = 0; x < 10000; x++){		
	inc	r6
	cjne	r6,#0x00,00120$
	inc	r7
00120$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0xa7
	jc	00101$
;	hw6clock.c:126: tick = 1;
	setb	_tick
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IRWRITE'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	hw6clock.c:129: void IRWRITE(char addr)
;	-----------------------------------------
;	 function IRWRITE
;	-----------------------------------------
_IRWRITE:
	mov	r7,dpl
;	hw6clock.c:131: P1= (addr & 0xf0) ;
	mov	a,#0xF0
	anl	a,r7
	mov	_P1,a
;	hw6clock.c:132: E = 1;
	setb	_P1_2
;	hw6clock.c:133: E = 0;
	clr	_P1_2
;	hw6clock.c:134: P1 = ((addr & 0x0f) << 4) | 0x00;
	anl	ar7,#0x0F
	mov	a,r7
	swap	a
	anl	a,#0xF0
	mov	_P1,a
;	hw6clock.c:135: E = 1;
	setb	_P1_2
;	hw6clock.c:136: E = 0;
	clr	_P1_2
;	hw6clock.c:137: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'functionSet'
;------------------------------------------------------------
;	hw6clock.c:139: void functionSet(void) {//ok
;	-----------------------------------------
;	 function functionSet
;	-----------------------------------------
_functionSet:
;	hw6clock.c:147: P1 = (P1&0x23) | 0x20;
	mov	a,#0x23
	anl	a,_P1
	orl	a,#0x20
	mov	_P1,a
;	hw6clock.c:149: E = 1;
	setb	_P1_2
;	hw6clock.c:150: E = 0;
	clr	_P1_2
;	hw6clock.c:151: delay();
	lcall	_delay
;	hw6clock.c:152: E = 1;
	setb	_P1_2
;	hw6clock.c:153: E = 0;
	clr	_P1_2
;	hw6clock.c:155: P1=0x80;
	mov	_P1,#0x80
;	hw6clock.c:156: E = 1;
	setb	_P1_2
;	hw6clock.c:157: E = 0;
	clr	_P1_2
;	hw6clock.c:158: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setDdRamAddress'
;------------------------------------------------------------
;address                   Allocated to registers r7 
;------------------------------------------------------------
;	hw6clock.c:161: void setDdRamAddress(char address) {
;	-----------------------------------------
;	 function setDdRamAddress
;	-----------------------------------------
_setDdRamAddress:
	mov	r7,dpl
;	hw6clock.c:163: P1= (address & 0xf0) | 0x80;
	mov	a,#0xF0
	anl	a,r7
	orl	a,#0x80
	mov	_P1,a
;	hw6clock.c:164: E = 1;
	setb	_P1_2
;	hw6clock.c:165: E = 0;
	clr	_P1_2
;	hw6clock.c:167: P1= (address & 0x0f) << 4;
	anl	ar7,#0x0F
	mov	a,r7
	swap	a
	anl	a,#0xF0
	mov	_P1,a
;	hw6clock.c:168: E = 1;
	setb	_P1_2
;	hw6clock.c:169: E = 0;
	clr	_P1_2
;	hw6clock.c:170: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendChar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	hw6clock.c:175: void sendChar(char c) {
;	-----------------------------------------
;	 function sendChar
;	-----------------------------------------
_sendChar:
	mov	r7,dpl
;	hw6clock.c:181: P1 = (c & 0xf0) | 0x08;
	mov	a,#0xF0
	anl	a,r7
	orl	a,#0x08
	mov	_P1,a
;	hw6clock.c:182: E = 1;
	setb	_P1_2
;	hw6clock.c:183: E = 0;
	clr	_P1_2
;	hw6clock.c:189: P1=  ((c & 0x0f) << 4) | 0x08;
	anl	ar7,#0x0F
	mov	a,r7
	swap	a
	anl	a,#0xF0
	mov	r7,a
	mov	a,#0x08
	orl	a,r7
	mov	_P1,a
;	hw6clock.c:190: E = 1;
	setb	_P1_2
;	hw6clock.c:191: E = 0;
	clr	_P1_2
;	hw6clock.c:192: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendString'
;------------------------------------------------------------
;str                       Allocated to registers 
;p                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	hw6clock.c:195: void sendString(char* str) {
;	-----------------------------------------
;	 function sendString
;	-----------------------------------------
_sendString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	hw6clock.c:202: for (p=str; *p; p++) {
00103$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00105$
;	hw6clock.c:203: sendChar(*p);
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_sendChar
	pop	ar5
	pop	ar6
	pop	ar7
;	hw6clock.c:202: for (p=str; *p; p++) {
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
;	hw6clock.c:206: void delay(void) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	hw6clock.c:208: for (c = 0; c < 50; c++);
	mov	r7,#0x32
00104$:
	djnz	r7,00104$
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "00:00:00"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
