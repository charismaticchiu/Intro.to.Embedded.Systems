;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0/*rc1*/ #8960 (Mar 15 2014) (MINGW32)
; This file was generated Mon Apr 14 19:40:14 2014
;--------------------------------------------------------
	.module hw5
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _firstChar_PARM_2
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
	.globl _secondChar_PARM_3
	.globl _secondChar_PARM_2
	.globl _curAddr
	.globl _firstChar
	.globl _secondChar
	.globl _IRWRITE
	.globl _functionSet
	.globl _setDdRamAddress
	.globl _sendChar
	.globl _sendString
	.globl _delay
	.globl _colScan
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
_curAddr::
	.ds 1
_Main_firstP1_1_11:
	.ds 1
_Main_firstP2_1_11:
	.ds 1
_secondChar_PARM_2:
	.ds 1
_secondChar_PARM_3:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_firstChar_PARM_2:
	.ds 1
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
;	hw5.c:33: char curAddr=0x00;
	mov	_curAddr,#0x00
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
;bitmap                    Allocated to registers r1 
;bitmapL                   Allocated to registers r4 
;bitmapH                   Allocated to registers r5 
;row                       Allocated to registers r2 
;rowmask                   Allocated to registers r3 
;firstP1                   Allocated with name '_Main_firstP1_1_11'
;firstP2                   Allocated with name '_Main_firstP2_1_11'
;secondP1                  Allocated to registers 
;secondP2                  Allocated to registers 
;chr1                      Allocated to registers 
;charCount                 Allocated to registers r6 r7 
;------------------------------------------------------------
;	hw5.c:34: void Main(void) {
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
;	hw5.c:38: int charCount=0;
	mov	r6,#0x00
	mov	r7,#0x00
;	hw5.c:40: functionSet();
	push	ar7
	push	ar6
	lcall	_functionSet
;	hw5.c:42: IRWRITE(0x06);//entryModeSet(1, 0); // increment and no shift
	mov	dpl,#0x06
	lcall	_IRWRITE
;	hw5.c:44: IRWRITE(0x0F);//displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
	mov	dpl,#0x0F
	lcall	_IRWRITE
;	hw5.c:46: setDdRamAddress(0x00); 
	mov	dpl,#0x00
	lcall	_setDdRamAddress
	pop	ar6
	pop	ar7
;	hw5.c:49: while (1) {
00114$:
;	hw5.c:51: for (row=bitmapL=bitmapH=0, rowmask = 0xf7; row < 4; row++, rowmask >>= 1) {
	mov	r5,#0x00
	mov	r4,#0x00
	mov	r3,#0xF7
	mov	r2,#0x00
00117$:
	clr	c
	mov	a,r2
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00103$
;	hw5.c:52: bitmap=colScan(rowmask);
	mov	dpl,r3
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_colScan
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	hw5.c:53: if (row==2) {
	cjne	r2,#0x02,00102$
;	hw5.c:54: bitmapH = (bitmapL >> 2);
	mov	a,r4
	mov	c,acc.7
	rrc	a
	mov	c,acc.7
	rrc	a
	mov	r5,a
00102$:
;	hw5.c:56: bitmapL = (bitmapL<<3) | bitmap;
	mov	a,r4
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r0,a
	orl	a,r1
	mov	r4,a
;	hw5.c:51: for (row=bitmapL=bitmapH=0, rowmask = 0xf7; row < 4; row++, rowmask >>= 1) {
	inc	r2
	mov	a,r3
	mov	c,acc.7
	rrc	a
	mov	r3,a
	sjmp	00117$
00103$:
;	hw5.c:60: if(bitmapL==0x00 && bitmapH==0x00){
	mov	a,r4
	jnz	00110$
	mov	a,r5
	jz	00114$
00110$:
;	hw5.c:62: }else if(charCount==0){//first char
	mov	a,r6
	orl	a,r7
;	hw5.c:64: charCount=1;
	jnz	00107$
	mov	r6,#0x01
	mov	r7,a
;	hw5.c:65: firstP1=P2= bitmapL;
	mov	_P2,r4
	mov	_Main_firstP1_1_11,r4
;	hw5.c:66: firstP2=P3= bitmapH;
	mov	_P3,r5
	mov	_Main_firstP2_1_11,r5
;	hw5.c:67: delay();
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
	sjmp	00114$
00107$:
;	hw5.c:68: }else if(charCount==1){//second char
	cjne	r6,#0x01,00114$
	cjne	r7,#0x00,00114$
;	hw5.c:70: charCount=0;
	mov	r6,#0x00
	mov	r7,#0x00
;	hw5.c:71: secondP1=P2= bitmapL;
	mov	_P2,r4
;	hw5.c:72: secondP2=P3= bitmapH;		
	mov	_P3,r5
;	hw5.c:73: chr1=firstChar(firstP1,firstP2);
	mov	_firstChar_PARM_2,_Main_firstP2_1_11
	mov	dpl,_Main_firstP1_1_11
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_firstChar
	pop	ar4
	pop	ar5
;	hw5.c:74: secondChar(chr1,secondP1,secondP2);//secondChar() returns the input of this time
	mov	_secondChar_PARM_2,r4
	mov	_secondChar_PARM_3,r5
	lcall	_secondChar
;	hw5.c:75: delay();
	lcall	_delay
	pop	ar6
	pop	ar7
	ljmp	00114$
;------------------------------------------------------------
;Allocation info for local variables in function 'firstChar'
;------------------------------------------------------------
;fstP2                     Allocated with name '_firstChar_PARM_2'
;fstP1                     Allocated to registers r7 
;------------------------------------------------------------
;	hw5.c:82: char firstChar(char fstP1,char fstP2){	
;	-----------------------------------------
;	 function firstChar
;	-----------------------------------------
_firstChar:
	mov	r7,dpl
;	hw5.c:83: if (fstP2!=0x00){//1,2,3,4
	mov	a,_firstChar_PARM_2
	jz	00136$
;	hw5.c:84: if((fstP2>>3)&1){
	mov	a,_firstChar_PARM_2
	mov	c,acc[3]
	clr	a
	rlc	a
	mov	r6,a
	jz	00110$
;	hw5.c:85: return '1';
	mov	dpl,#0x31
	ret
00110$:
;	hw5.c:86: }else if((fstP2>>2)&1){
	mov	a,_firstChar_PARM_2
	rr	a
	rr	a
	anl	a,#0x01
	mov	r6,a
	jz	00107$
;	hw5.c:87: return '2';
	mov	dpl,#0x32
	ret
00107$:
;	hw5.c:88: }else if((fstP2>>1)&1){
	mov	a,_firstChar_PARM_2
	rr	a
	anl	a,#0x01
	mov	r6,a
	jz	00104$
;	hw5.c:89: return '3';
	mov	dpl,#0x33
	ret
00104$:
;	hw5.c:90: }else if((fstP2)&1){
	mov	a,_firstChar_PARM_2
	jnb	acc.0,00138$
;	hw5.c:91: return '4';
	mov	dpl,#0x34
	ret
00136$:
;	hw5.c:95: if((fstP1>>7)&1){
	mov	a,r7
	rl	a
	anl	a,#0x01
	mov	r6,a
	jz	00133$
;	hw5.c:96: return '5';
	mov	dpl,#0x35
	ret
00133$:
;	hw5.c:97: }else if((fstP1>>6)&1){
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x01
	mov	r6,a
	jz	00130$
;	hw5.c:98: return '6';
	mov	dpl,#0x36
	ret
00130$:
;	hw5.c:99: }else if((fstP1>>5)&1){
	mov	a,r7
	mov	c,acc[5]
	clr	a
	rlc	a
	mov	r6,a
	jz	00127$
;	hw5.c:100: return '7';
	mov	dpl,#0x37
	ret
00127$:
;	hw5.c:101: }else if((fstP1>>4)&1){
	mov	a,r7
	swap	a
	anl	a,#0x01
	mov	r6,a
	jz	00124$
;	hw5.c:102: return '8';
	mov	dpl,#0x38
	ret
00124$:
;	hw5.c:103: }else if((fstP1>>3)&1){
	mov	a,r7
	mov	c,acc[3]
	clr	a
	rlc	a
	mov	r6,a
	jz	00121$
;	hw5.c:104: return '9';
	mov	dpl,#0x39
	ret
00121$:
;	hw5.c:105: }else if((fstP1>>2)&1){
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x01
	mov	r6,a
	jz	00118$
;	hw5.c:106: return '*';
	mov	dpl,#0x2A
	ret
00118$:
;	hw5.c:107: }else if((fstP1>>1)&1){
	mov	a,r7
	rr	a
	anl	a,#0x01
	mov	r6,a
	jz	00115$
;	hw5.c:108: return '0';
	mov	dpl,#0x30
	ret
00115$:
;	hw5.c:109: }else if((fstP1)&1){
	mov	a,r7
	jnb	acc.0,00138$
;	hw5.c:110: return '#';
	mov	dpl,#0x23
00138$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'secondChar'
;------------------------------------------------------------
;sndP1                     Allocated with name '_secondChar_PARM_2'
;sndP2                     Allocated with name '_secondChar_PARM_3'
;chr1                      Allocated to registers r7 
;chr2                      Allocated to registers r6 
;i                         Allocated to registers 
;------------------------------------------------------------
;	hw5.c:114: void secondChar(char chr1,char sndP1,char sndP2){
;	-----------------------------------------
;	 function secondChar
;	-----------------------------------------
_secondChar:
	mov	r7,dpl
;	hw5.c:117: chr2=firstChar(sndP1,sndP2);
	mov	_firstChar_PARM_2,_secondChar_PARM_3
	mov	dpl,_secondChar_PARM_2
	push	ar7
	lcall	_firstChar
	mov	r6,dpl
	pop	ar7
;	hw5.c:118: if (chr1=='2'){
	cjne	r7,#0x32,00606$
	sjmp	00607$
00606$:
	ljmp	00347$
00607$:
;	hw5.c:119: if (chr2=='1'){
	cjne	r6,#0x31,00117$
;	hw5.c:120: sendString("A");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_sendString
	sjmp	00118$
00117$:
;	hw5.c:121: }else if (chr2=='2'){
	cjne	r6,#0x32,00114$
;	hw5.c:122: sendString("B");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_sendString
	sjmp	00118$
00114$:
;	hw5.c:123: }else if (chr2=='3'){
	cjne	r6,#0x33,00111$
;	hw5.c:124: sendString("C");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_sendString
	sjmp	00118$
00111$:
;	hw5.c:125: }else if (chr2=='4'){
	cjne	r6,#0x34,00108$
;	hw5.c:126: sendString("a");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_sendString
	sjmp	00118$
00108$:
;	hw5.c:127: }else if (chr2=='5'){
	cjne	r6,#0x35,00105$
;	hw5.c:128: sendString("b");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_sendString
	sjmp	00118$
00105$:
;	hw5.c:129: }else if (chr2=='6'){		
	cjne	r6,#0x36,00102$
;	hw5.c:130: sendString("c");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_sendString
	sjmp	00118$
00102$:
;	hw5.c:131: }else return;
	ret
00118$:
;	hw5.c:132: curAddr++;
	inc	_curAddr
	ljmp	00348$
00347$:
;	hw5.c:134: }else if (chr1=='3'){
	cjne	r7,#0x33,00620$
	sjmp	00621$
00620$:
	ljmp	00344$
00621$:
;	hw5.c:135: if (chr2=='1'){
	cjne	r6,#0x31,00135$
;	hw5.c:136: sendString("D");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_sendString
	sjmp	00136$
00135$:
;	hw5.c:137: }else if (chr2=='2'){
	cjne	r6,#0x32,00132$
;	hw5.c:138: sendString("E");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_sendString
	sjmp	00136$
00132$:
;	hw5.c:139: }else if (chr2=='3'){
	cjne	r6,#0x33,00129$
;	hw5.c:140: sendString("F");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_sendString
	sjmp	00136$
00129$:
;	hw5.c:141: }else if (chr2=='4'){
	cjne	r6,#0x34,00126$
;	hw5.c:142: sendString("d");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_sendString
	sjmp	00136$
00126$:
;	hw5.c:143: }else if (chr2=='5'){
	cjne	r6,#0x35,00123$
;	hw5.c:144: sendString("e");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_sendString
	sjmp	00136$
00123$:
;	hw5.c:145: }else if (chr2=='6'){
	cjne	r6,#0x36,00120$
;	hw5.c:146: sendString("f");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_sendString
	sjmp	00136$
00120$:
;	hw5.c:147: }else return;
	ret
00136$:
;	hw5.c:148: curAddr++;
	inc	_curAddr
	ljmp	00348$
00344$:
;	hw5.c:149: }else if (chr1=='4'){
	cjne	r7,#0x34,00634$
	sjmp	00635$
00634$:
	ljmp	00341$
00635$:
;	hw5.c:150: if (chr2=='1'){
	cjne	r6,#0x31,00153$
;	hw5.c:151: sendString("G");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_sendString
	sjmp	00154$
00153$:
;	hw5.c:152: }else if (chr2=='2'){
	cjne	r6,#0x32,00150$
;	hw5.c:153: sendString("H");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_sendString
	sjmp	00154$
00150$:
;	hw5.c:154: }else if (chr2=='3'){
	cjne	r6,#0x33,00147$
;	hw5.c:155: sendString("I");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_sendString
	sjmp	00154$
00147$:
;	hw5.c:156: }else if (chr2=='4'){
	cjne	r6,#0x34,00144$
;	hw5.c:157: sendString("G");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_sendString
	sjmp	00154$
00144$:
;	hw5.c:158: }else if (chr2=='5'){
	cjne	r6,#0x35,00141$
;	hw5.c:159: sendString("H");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_sendString
	sjmp	00154$
00141$:
;	hw5.c:160: }else if (chr2=='6'){
	cjne	r6,#0x36,00138$
;	hw5.c:161: sendString("I");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_sendString
	sjmp	00154$
00138$:
;	hw5.c:162: }else return;
	ret
00154$:
;	hw5.c:163: curAddr++;
	inc	_curAddr
	ljmp	00348$
00341$:
;	hw5.c:164: }else if (chr1=='5'){
	cjne	r7,#0x35,00648$
	sjmp	00649$
00648$:
	ljmp	00338$
00649$:
;	hw5.c:165: if (chr2=='1'){
	cjne	r6,#0x31,00171$
;	hw5.c:166: sendString("J");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_sendString
	sjmp	00172$
00171$:
;	hw5.c:167: }else if (chr2=='2'){
	cjne	r6,#0x32,00168$
;	hw5.c:168: sendString("K");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_sendString
	sjmp	00172$
00168$:
;	hw5.c:169: }else if (chr2=='3'){
	cjne	r6,#0x33,00165$
;	hw5.c:170: sendString("L");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_sendString
	sjmp	00172$
00165$:
;	hw5.c:171: }else if (chr2=='4'){
	cjne	r6,#0x34,00162$
;	hw5.c:172: sendString("j");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_sendString
	sjmp	00172$
00162$:
;	hw5.c:173: }else if (chr2=='5'){
	cjne	r6,#0x35,00159$
;	hw5.c:174: sendString("k");
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_sendString
	sjmp	00172$
00159$:
;	hw5.c:175: }else if (chr2=='6'){
	cjne	r6,#0x36,00156$
;	hw5.c:176: sendString("l");
	mov	dptr,#___str_20
	mov	b,#0x80
	lcall	_sendString
	sjmp	00172$
00156$:
;	hw5.c:177: }else return;
	ret
00172$:
;	hw5.c:178: curAddr++;
	inc	_curAddr
	ljmp	00348$
00338$:
;	hw5.c:179: }else if (chr1=='6'){
	cjne	r7,#0x36,00662$
	sjmp	00663$
00662$:
	ljmp	00335$
00663$:
;	hw5.c:180: if (chr2=='1'){
	cjne	r6,#0x31,00189$
;	hw5.c:181: sendString("M");
	mov	dptr,#___str_21
	mov	b,#0x80
	lcall	_sendString
	sjmp	00190$
00189$:
;	hw5.c:182: }else if (chr2=='2'){
	cjne	r6,#0x32,00186$
;	hw5.c:183: sendString("N");
	mov	dptr,#___str_22
	mov	b,#0x80
	lcall	_sendString
	sjmp	00190$
00186$:
;	hw5.c:184: }else if (chr2=='3'){
	cjne	r6,#0x33,00183$
;	hw5.c:185: sendString("O");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_sendString
	sjmp	00190$
00183$:
;	hw5.c:186: }else if (chr2=='4'){
	cjne	r6,#0x34,00180$
;	hw5.c:187: sendString("m");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_sendString
	sjmp	00190$
00180$:
;	hw5.c:188: }else if (chr2=='5'){
	cjne	r6,#0x35,00177$
;	hw5.c:189: sendString("n");
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_sendString
	sjmp	00190$
00177$:
;	hw5.c:190: }else if (chr2=='6'){
	cjne	r6,#0x36,00174$
;	hw5.c:191: sendString("o");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_sendString
	sjmp	00190$
00174$:
;	hw5.c:192: }else return;
	ret
00190$:
;	hw5.c:193: curAddr++;
	inc	_curAddr
	ljmp	00348$
00335$:
;	hw5.c:194: }else if (chr1=='7'){
	cjne	r7,#0x37,00676$
	sjmp	00677$
00676$:
	ljmp	00332$
00677$:
;	hw5.c:195: if (chr2=='1'){
	cjne	r6,#0x31,00213$
;	hw5.c:196: sendString("P");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_sendString
	ljmp	00214$
00213$:
;	hw5.c:197: }else if (chr2=='2'){
	cjne	r6,#0x32,00210$
;	hw5.c:198: sendString("Q");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_sendString
	ljmp	00214$
00210$:
;	hw5.c:199: }else if (chr2=='3'){
	cjne	r6,#0x33,00207$
;	hw5.c:200: sendString("R");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_sendString
	sjmp	00214$
00207$:
;	hw5.c:201: }else if (chr2=='4'){
	cjne	r6,#0x34,00204$
;	hw5.c:202: sendString("S");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_sendString
	sjmp	00214$
00204$:
;	hw5.c:203: }else if (chr2=='5'){
	cjne	r6,#0x35,00201$
;	hw5.c:204: sendString("p");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_sendString
	sjmp	00214$
00201$:
;	hw5.c:205: }else if (chr2=='6'){
	cjne	r6,#0x36,00198$
;	hw5.c:206: sendString("q");
	mov	dptr,#___str_32
	mov	b,#0x80
	lcall	_sendString
	sjmp	00214$
00198$:
;	hw5.c:207: }else if (chr2=='7'){
	cjne	r6,#0x37,00195$
;	hw5.c:208: sendString("r");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_sendString
	sjmp	00214$
00195$:
;	hw5.c:209: }else if (chr2=='8'){
	cjne	r6,#0x38,00192$
;	hw5.c:210: sendString("s");
	mov	dptr,#___str_34
	mov	b,#0x80
	lcall	_sendString
	sjmp	00214$
00192$:
;	hw5.c:211: }else return;
	ret
00214$:
;	hw5.c:212: curAddr++;
	inc	_curAddr
	ljmp	00348$
00332$:
;	hw5.c:213: }else if (chr1=='8'){
	cjne	r7,#0x38,00694$
	sjmp	00695$
00694$:
	ljmp	00329$
00695$:
;	hw5.c:214: if (chr2=='1'){
	cjne	r6,#0x31,00231$
;	hw5.c:215: sendString("T");
	mov	dptr,#___str_35
	mov	b,#0x80
	lcall	_sendString
	sjmp	00232$
00231$:
;	hw5.c:216: }else if (chr2=='2'){
	cjne	r6,#0x32,00228$
;	hw5.c:217: sendString("U");
	mov	dptr,#___str_36
	mov	b,#0x80
	lcall	_sendString
	sjmp	00232$
00228$:
;	hw5.c:218: }else if (chr2=='3'){
	cjne	r6,#0x33,00225$
;	hw5.c:219: sendString("V");
	mov	dptr,#___str_37
	mov	b,#0x80
	lcall	_sendString
	sjmp	00232$
00225$:
;	hw5.c:220: }else if (chr2=='4'){
	cjne	r6,#0x34,00222$
;	hw5.c:221: sendString("t");
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_sendString
	sjmp	00232$
00222$:
;	hw5.c:222: }else if (chr2=='5'){
	cjne	r6,#0x35,00219$
;	hw5.c:223: sendString("u");
	mov	dptr,#___str_39
	mov	b,#0x80
	lcall	_sendString
	sjmp	00232$
00219$:
;	hw5.c:224: }else if (chr2=='6'){
	cjne	r6,#0x36,00216$
;	hw5.c:225: sendString("v");
	mov	dptr,#___str_40
	mov	b,#0x80
	lcall	_sendString
	sjmp	00232$
00216$:
;	hw5.c:226: }else return;
	ret
00232$:
;	hw5.c:227: curAddr++;
	inc	_curAddr
	ljmp	00348$
00329$:
;	hw5.c:228: }else if (chr1=='9'){
	cjne	r7,#0x39,00708$
	sjmp	00709$
00708$:
	ljmp	00326$
00709$:
;	hw5.c:229: if (chr2=='1'){
	cjne	r6,#0x31,00255$
;	hw5.c:230: sendString("W");
	mov	dptr,#___str_41
	mov	b,#0x80
	lcall	_sendString
	ljmp	00256$
00255$:
;	hw5.c:231: }else if (chr2=='2'){
	cjne	r6,#0x32,00252$
;	hw5.c:232: sendString("X");
	mov	dptr,#___str_42
	mov	b,#0x80
	lcall	_sendString
	ljmp	00256$
00252$:
;	hw5.c:233: }else if (chr2=='3'){
	cjne	r6,#0x33,00249$
;	hw5.c:234: sendString("Y");
	mov	dptr,#___str_43
	mov	b,#0x80
	lcall	_sendString
	sjmp	00256$
00249$:
;	hw5.c:235: }else if (chr2=='4'){
	cjne	r6,#0x34,00246$
;	hw5.c:236: sendString("Z");
	mov	dptr,#___str_44
	mov	b,#0x80
	lcall	_sendString
	sjmp	00256$
00246$:
;	hw5.c:237: }else if (chr2=='5'){
	cjne	r6,#0x35,00243$
;	hw5.c:238: sendString("w");
	mov	dptr,#___str_45
	mov	b,#0x80
	lcall	_sendString
	sjmp	00256$
00243$:
;	hw5.c:239: }else if (chr2=='6'){
	cjne	r6,#0x36,00240$
;	hw5.c:240: sendString("x");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_sendString
	sjmp	00256$
00240$:
;	hw5.c:241: }else if (chr2=='7'){
	cjne	r6,#0x37,00237$
;	hw5.c:242: sendString("y");
	mov	dptr,#___str_47
	mov	b,#0x80
	lcall	_sendString
	sjmp	00256$
00237$:
;	hw5.c:243: }else if (chr2=='8'){
	cjne	r6,#0x38,00234$
;	hw5.c:244: sendString("z");
	mov	dptr,#___str_48
	mov	b,#0x80
	lcall	_sendString
	sjmp	00256$
00234$:
;	hw5.c:245: }else return;
	ret
00256$:
;	hw5.c:246: curAddr++;
	inc	_curAddr
	ljmp	00348$
00326$:
;	hw5.c:247: }else if (chr1=='*'){
	cjne	r7,#0x2A,00726$
	sjmp	00727$
00726$:
	ljmp	00323$
00727$:
;	hw5.c:248: if (chr2=='2'){//up
	cjne	r6,#0x32,00281$
;	hw5.c:249: curAddr=curAddr&0x0F;
	anl	_curAddr,#0x0F
;	hw5.c:250: setDdRamAddress(curAddr);
	mov	dpl,_curAddr
	lcall	_setDdRamAddress
	ljmp	00348$
00281$:
;	hw5.c:251: }else if (chr2=='4'){//left
	cjne	r6,#0x34,00278$
;	hw5.c:252: if(curAddr==0x00 || curAddr==0x40) return;
	mov	a,_curAddr
	jz	00257$
	mov	a,#0x40
	cjne	a,_curAddr,00258$
00257$:
	ret
00258$:
;	hw5.c:253: curAddr--;
	dec	_curAddr
;	hw5.c:254: setDdRamAddress(curAddr);
	mov	dpl,_curAddr
	lcall	_setDdRamAddress
	ljmp	00348$
00278$:
;	hw5.c:255: }else if (chr2=='5'){//space
	cjne	r6,#0x35,00275$
;	hw5.c:256: sendString(" ");
	mov	dptr,#___str_49
	mov	b,#0x80
	lcall	_sendString
;	hw5.c:257: curAddr++;
	inc	_curAddr
	ljmp	00348$
00275$:
;	hw5.c:258: }else if (chr2=='6'){//right
	cjne	r6,#0x36,00272$
;	hw5.c:259: if((curAddr&0x0F)==0x0F) return;
	mov	r5,_curAddr
	anl	ar5,#0x0F
	cjne	r5,#0x0F,00261$
	ret
00261$:
;	hw5.c:260: curAddr++;
	inc	_curAddr
;	hw5.c:261: setDdRamAddress(curAddr);
	mov	dpl,_curAddr
	lcall	_setDdRamAddress
	ljmp	00348$
00272$:
;	hw5.c:262: }else if (chr2=='8'){//down
	cjne	r6,#0x38,00269$
;	hw5.c:263: curAddr=(curAddr&0x0F) |0x40;
	mov	a,#0x0F
	anl	a,_curAddr
	orl	a,#0x40
	mov	_curAddr,a
;	hw5.c:264: setDdRamAddress(curAddr);
	mov	dpl,_curAddr
	lcall	_setDdRamAddress
	ljmp	00348$
00269$:
;	hw5.c:265: }else if (chr2=='9'){//newline
	cjne	r6,#0x39,00266$
;	hw5.c:266: curAddr=0x40;
	mov	_curAddr,#0x40
;	hw5.c:267: setDdRamAddress(curAddr);
	mov	dpl,#0x40
	lcall	_setDdRamAddress
	ljmp	00348$
00266$:
;	hw5.c:268: }else if (chr2=='1'){//return Home
	cjne	r6,#0x31,00263$
;	hw5.c:269: curAddr=0x00;
	mov	_curAddr,#0x00
;	hw5.c:270: setDdRamAddress(curAddr);
	mov	dpl,#0x00
	lcall	_setDdRamAddress
	ljmp	00348$
00263$:
;	hw5.c:271: }else return;
	ret
00323$:
;	hw5.c:273: }else if (chr1=='#'){
	cjne	r7,#0x23,00747$
	sjmp	00748$
00747$:
	ljmp	00320$
00748$:
;	hw5.c:274: if (chr2=='1'){
	cjne	r6,#0x31,00317$
;	hw5.c:275: sendString("1");
	mov	dptr,#___str_50
	mov	b,#0x80
	lcall	_sendString
	ljmp	00318$
00317$:
;	hw5.c:276: }else if (chr2=='2'){
	cjne	r6,#0x32,00314$
;	hw5.c:277: sendString("2");
	mov	dptr,#___str_51
	mov	b,#0x80
	lcall	_sendString
	ljmp	00318$
00314$:
;	hw5.c:278: }else if (chr2=='3'){
	cjne	r6,#0x33,00311$
;	hw5.c:279: sendString("3");
	mov	dptr,#___str_52
	mov	b,#0x80
	lcall	_sendString
	ljmp	00318$
00311$:
;	hw5.c:280: }else if (chr2=='4'){
	cjne	r6,#0x34,00308$
;	hw5.c:281: sendString("4");
	mov	dptr,#___str_53
	mov	b,#0x80
	lcall	_sendString
	ljmp	00318$
00308$:
;	hw5.c:282: }else if (chr2=='5'){
	cjne	r6,#0x35,00305$
;	hw5.c:283: sendString("5");
	mov	dptr,#___str_54
	mov	b,#0x80
	lcall	_sendString
	ljmp	00318$
00305$:
;	hw5.c:284: }else if (chr2=='6'){
	cjne	r6,#0x36,00302$
;	hw5.c:285: sendString("6");
	mov	dptr,#___str_55
	mov	b,#0x80
	lcall	_sendString
	ljmp	00318$
00302$:
;	hw5.c:286: }else if (chr2=='7'){
	cjne	r6,#0x37,00299$
;	hw5.c:287: sendString("7");
	mov	dptr,#___str_56
	mov	b,#0x80
	lcall	_sendString
	sjmp	00318$
00299$:
;	hw5.c:288: }else if (chr2=='8'){
	cjne	r6,#0x38,00296$
;	hw5.c:289: sendString("8");
	mov	dptr,#___str_57
	mov	b,#0x80
	lcall	_sendString
	sjmp	00318$
00296$:
;	hw5.c:290: }else if (chr2=='9'){
	cjne	r6,#0x39,00293$
;	hw5.c:291: sendString("9");
	mov	dptr,#___str_58
	mov	b,#0x80
	lcall	_sendString
	sjmp	00318$
00293$:
;	hw5.c:292: }else if (chr2=='*'){
	cjne	r6,#0x2A,00290$
;	hw5.c:293: sendString("*");
	mov	dptr,#___str_59
	mov	b,#0x80
	lcall	_sendString
	sjmp	00318$
00290$:
;	hw5.c:294: }else if (chr2=='0'){
	cjne	r6,#0x30,00287$
;	hw5.c:295: sendString("0");
	mov	dptr,#___str_60
	mov	b,#0x80
	lcall	_sendString
	sjmp	00318$
00287$:
;	hw5.c:296: }else if (chr2=='#'){
	cjne	r6,#0x23,00284$
;	hw5.c:297: sendString("#");
	mov	dptr,#___str_61
	mov	b,#0x80
	lcall	_sendString
	sjmp	00318$
00284$:
;	hw5.c:298: }else return;
	ret
00318$:
;	hw5.c:299: curAddr++;
	inc	_curAddr
	sjmp	00348$
00320$:
;	hw5.c:300: }else return;
	ret
00348$:
;	hw5.c:302: if((curAddr==0x10)||(curAddr==0x50)){
	mov	a,#0x10
	cjne	a,_curAddr,00773$
	sjmp	00349$
00773$:
	mov	a,#0x50
	cjne	a,_curAddr,00352$
00349$:
;	hw5.c:303: curAddr--;
	dec	_curAddr
;	hw5.c:304: setDdRamAddress(curAddr);
	mov	dpl,_curAddr
	ljmp	_setDdRamAddress
00352$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IRWRITE'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	hw5.c:311: void IRWRITE(char addr)
;	-----------------------------------------
;	 function IRWRITE
;	-----------------------------------------
_IRWRITE:
	mov	r7,dpl
;	hw5.c:313: P1= (addr & 0xf0) ;
	mov	a,#0xF0
	anl	a,r7
	mov	_P1,a
;	hw5.c:314: E = 1;
	setb	_P1_2
;	hw5.c:315: E = 0;
	clr	_P1_2
;	hw5.c:316: P1 = ((addr & 0x0f) << 4) | 0x00;
	anl	ar7,#0x0F
	mov	a,r7
	swap	a
	anl	a,#0xF0
	mov	_P1,a
;	hw5.c:317: E = 1;
	setb	_P1_2
;	hw5.c:318: E = 0;
	clr	_P1_2
;	hw5.c:319: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'functionSet'
;------------------------------------------------------------
;	hw5.c:321: void functionSet(void) {//ok
;	-----------------------------------------
;	 function functionSet
;	-----------------------------------------
_functionSet:
;	hw5.c:329: P1 = (P1&0x23) | 0x20;
	mov	a,#0x23
	anl	a,_P1
	orl	a,#0x20
	mov	_P1,a
;	hw5.c:330: RS = 0;
	clr	_P1_3
;	hw5.c:331: E = 1;
	setb	_P1_2
;	hw5.c:332: E = 0;
	clr	_P1_2
;	hw5.c:333: delay();
	lcall	_delay
;	hw5.c:334: E = 1;
	setb	_P1_2
;	hw5.c:335: E = 0;
	clr	_P1_2
;	hw5.c:337: P1=0x80;
	mov	_P1,#0x80
;	hw5.c:338: E = 1;
	setb	_P1_2
;	hw5.c:339: E = 0;
	clr	_P1_2
;	hw5.c:340: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setDdRamAddress'
;------------------------------------------------------------
;address                   Allocated to registers r7 
;------------------------------------------------------------
;	hw5.c:343: void setDdRamAddress(char address) {
;	-----------------------------------------
;	 function setDdRamAddress
;	-----------------------------------------
_setDdRamAddress:
	mov	r7,dpl
;	hw5.c:345: P1= (address & 0xf0) | 0x80;
	mov	a,#0xF0
	anl	a,r7
	orl	a,#0x80
	mov	_P1,a
;	hw5.c:346: E = 1;
	setb	_P1_2
;	hw5.c:347: E = 0;
	clr	_P1_2
;	hw5.c:349: P1= (address & 0x0f) << 4;
	anl	ar7,#0x0F
	mov	a,r7
	swap	a
	anl	a,#0xF0
	mov	_P1,a
;	hw5.c:350: E = 1;
	setb	_P1_2
;	hw5.c:351: E = 0;
	clr	_P1_2
;	hw5.c:352: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendChar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	hw5.c:354: void sendChar(char c) {
;	-----------------------------------------
;	 function sendChar
;	-----------------------------------------
_sendChar:
	mov	r7,dpl
;	hw5.c:360: P1 = (c & 0xf0) | 0x08;
	mov	a,#0xF0
	anl	a,r7
	orl	a,#0x08
	mov	_P1,a
;	hw5.c:361: E = 1;
	setb	_P1_2
;	hw5.c:362: E = 0;
	clr	_P1_2
;	hw5.c:368: P1=  ((c & 0x0f) << 4) | 0x08;
	anl	ar7,#0x0F
	mov	a,r7
	swap	a
	anl	a,#0xF0
	mov	r7,a
	mov	a,#0x08
	orl	a,r7
	mov	_P1,a
;	hw5.c:369: E = 1;
	setb	_P1_2
;	hw5.c:370: E = 0;
	clr	_P1_2
;	hw5.c:371: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendString'
;------------------------------------------------------------
;str                       Allocated to registers 
;p                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	hw5.c:374: void sendString(char* str) {
;	-----------------------------------------
;	 function sendString
;	-----------------------------------------
_sendString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	hw5.c:381: for (p=str; *p; p++) {
00103$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00105$
;	hw5.c:382: sendChar(*p);
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_sendChar
	pop	ar5
	pop	ar6
	pop	ar7
;	hw5.c:381: for (p=str; *p; p++) {
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
;	hw5.c:385: void delay(void) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	hw5.c:387: for (c = 0; c < 50; c++);
	mov	r7,#0x32
00104$:
	djnz	r7,00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'colScan'
;------------------------------------------------------------
;rowmask                   Allocated to registers 
;------------------------------------------------------------
;	hw5.c:389: char colScan(char rowmask) {
;	-----------------------------------------
;	 function colScan
;	-----------------------------------------
_colScan:
	mov	_P0,dpl
;	hw5.c:391: return (~(P0>>4)) & 0x07;
	mov	a,_P0
	swap	a
	anl	a,#0x0F
	cpl	a
	mov	r7,a
	mov	a,#0x07
	anl	a,r7
	mov	dpl,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "A"
	.db 0x00
___str_1:
	.ascii "B"
	.db 0x00
___str_2:
	.ascii "C"
	.db 0x00
___str_3:
	.ascii "a"
	.db 0x00
___str_4:
	.ascii "b"
	.db 0x00
___str_5:
	.ascii "c"
	.db 0x00
___str_6:
	.ascii "D"
	.db 0x00
___str_7:
	.ascii "E"
	.db 0x00
___str_8:
	.ascii "F"
	.db 0x00
___str_9:
	.ascii "d"
	.db 0x00
___str_10:
	.ascii "e"
	.db 0x00
___str_11:
	.ascii "f"
	.db 0x00
___str_12:
	.ascii "G"
	.db 0x00
___str_13:
	.ascii "H"
	.db 0x00
___str_14:
	.ascii "I"
	.db 0x00
___str_15:
	.ascii "J"
	.db 0x00
___str_16:
	.ascii "K"
	.db 0x00
___str_17:
	.ascii "L"
	.db 0x00
___str_18:
	.ascii "j"
	.db 0x00
___str_19:
	.ascii "k"
	.db 0x00
___str_20:
	.ascii "l"
	.db 0x00
___str_21:
	.ascii "M"
	.db 0x00
___str_22:
	.ascii "N"
	.db 0x00
___str_23:
	.ascii "O"
	.db 0x00
___str_24:
	.ascii "m"
	.db 0x00
___str_25:
	.ascii "n"
	.db 0x00
___str_26:
	.ascii "o"
	.db 0x00
___str_27:
	.ascii "P"
	.db 0x00
___str_28:
	.ascii "Q"
	.db 0x00
___str_29:
	.ascii "R"
	.db 0x00
___str_30:
	.ascii "S"
	.db 0x00
___str_31:
	.ascii "p"
	.db 0x00
___str_32:
	.ascii "q"
	.db 0x00
___str_33:
	.ascii "r"
	.db 0x00
___str_34:
	.ascii "s"
	.db 0x00
___str_35:
	.ascii "T"
	.db 0x00
___str_36:
	.ascii "U"
	.db 0x00
___str_37:
	.ascii "V"
	.db 0x00
___str_38:
	.ascii "t"
	.db 0x00
___str_39:
	.ascii "u"
	.db 0x00
___str_40:
	.ascii "v"
	.db 0x00
___str_41:
	.ascii "W"
	.db 0x00
___str_42:
	.ascii "X"
	.db 0x00
___str_43:
	.ascii "Y"
	.db 0x00
___str_44:
	.ascii "Z"
	.db 0x00
___str_45:
	.ascii "w"
	.db 0x00
___str_46:
	.ascii "x"
	.db 0x00
___str_47:
	.ascii "y"
	.db 0x00
___str_48:
	.ascii "z"
	.db 0x00
___str_49:
	.ascii " "
	.db 0x00
___str_50:
	.ascii "1"
	.db 0x00
___str_51:
	.ascii "2"
	.db 0x00
___str_52:
	.ascii "3"
	.db 0x00
___str_53:
	.ascii "4"
	.db 0x00
___str_54:
	.ascii "5"
	.db 0x00
___str_55:
	.ascii "6"
	.db 0x00
___str_56:
	.ascii "7"
	.db 0x00
___str_57:
	.ascii "8"
	.db 0x00
___str_58:
	.ascii "9"
	.db 0x00
___str_59:
	.ascii "*"
	.db 0x00
___str_60:
	.ascii "0"
	.db 0x00
___str_61:
	.ascii "#"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
