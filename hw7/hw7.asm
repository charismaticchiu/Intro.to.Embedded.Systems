;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0/*rc1*/ #8960 (Mar 15 2014) (MINGW32)
; This file was generated Mon May 05 04:09:45 2014
;--------------------------------------------------------
	.module hw7
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _firstChar_PARM_2
	.globl _main
	.globl _keypadISR
	.globl _KeyInit
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
	.globl _inter
	.globl _secondChar_PARM_3
	.globl _secondChar_PARM_2
	.globl _curAddr
	.globl __sdcc_gsinit_startup
	.globl __mcs51_genRAMCLEAR
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl _colScan
	.globl _firstChar
	.globl _secondChar
	.globl _InitLCD
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
_curAddr::
	.ds 1
_main_bitmap_1_19:
	.ds 1
_main_bitmapL_1_19:
	.ds 1
_main_bitmapH_1_19:
	.ds 1
_main_row_1_19:
	.ds 1
_main_rowmask_1_19:
	.ds 1
_main_firstP1_1_19:
	.ds 1
_main_firstP2_1_19:
	.ds 1
_main_secondP1_1_19:
	.ds 1
_main_secondP2_1_19:
	.ds 1
_main_chr1_1_19:
	.ds 1
_secondChar_PARM_2:
	.ds 1
_secondChar_PARM_3:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
_firstChar_PARM_2:
	.ds 1
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
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
_inter::
	.ds 1
_main_charCount_1_19:
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_keypadISR
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
;	hw7.c:28: volatile char curAddr=0x00;
	mov	_curAddr,#0x00
;	hw7.c:29: volatile __bit inter=0;
	clr	_inter
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
;Allocation info for local variables in function 'KeyInit'
;------------------------------------------------------------
;	hw7.c:31: void KeyInit(){
;	-----------------------------------------
;	 function KeyInit
;	-----------------------------------------
_KeyInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	hw7.c:33: P3_3=1;
	setb	_P3_3
;	hw7.c:34: P0_4=0;
	clr	_P0_4
;	hw7.c:35: P0_5=0;
	clr	_P0_5
;	hw7.c:36: P0_6=0;
	clr	_P0_6
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'keypadISR'
;------------------------------------------------------------
;	hw7.c:39: void keypadISR(void) __interrupt(2) {
;	-----------------------------------------
;	 function keypadISR
;	-----------------------------------------
_keypadISR:
;	hw7.c:41: if(!P3_3){
	jb	_P3_3,00103$
;	hw7.c:42: inter=1;
	setb	_inter
00103$:
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;bitmap                    Allocated with name '_main_bitmap_1_19'
;bitmapL                   Allocated with name '_main_bitmapL_1_19'
;bitmapH                   Allocated with name '_main_bitmapH_1_19'
;row                       Allocated with name '_main_row_1_19'
;rowmask                   Allocated with name '_main_rowmask_1_19'
;firstP1                   Allocated with name '_main_firstP1_1_19'
;firstP2                   Allocated with name '_main_firstP2_1_19'
;secondP1                  Allocated with name '_main_secondP1_1_19'
;secondP2                  Allocated with name '_main_secondP2_1_19'
;chr1                      Allocated with name '_main_chr1_1_19'
;------------------------------------------------------------
;	hw7.c:45: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	hw7.c:49: volatile __bit charCount=0;
	clr	_main_charCount_1_19
;	hw7.c:50: KeyInit();
	lcall	_KeyInit
;	hw7.c:51: IE=0x84;
	mov	_IE,#0x84
;	hw7.c:52: InitLCD();		
	lcall	_InitLCD
;	hw7.c:53: while(1) {
00116$:
;	hw7.c:58: if (inter){
;	hw7.c:61: inter=0;
	jbc	_inter,00147$
	sjmp	00116$
00147$:
;	hw7.c:63: for (row=bitmapL=bitmapH=0, rowmask = 0xf7; row < 4; row++, rowmask >>= 1) {
	mov	_main_bitmapH_1_19,#0x00
	mov	_main_bitmapL_1_19,#0x00
	mov	_main_row_1_19,#0x00
	mov	_main_rowmask_1_19,#0xF7
00119$:
	clr	c
	mov	a,_main_row_1_19
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00103$
;	hw7.c:64: bitmap=colScan(rowmask);
	mov	dpl,_main_rowmask_1_19
	lcall	_colScan
	mov	_main_bitmap_1_19,dpl
;	hw7.c:65: if (row==2) {
	mov	a,#0x02
	cjne	a,_main_row_1_19,00102$
;	hw7.c:66: bitmapH = (bitmapL >> 2);
	mov	a,_main_bitmapL_1_19
	mov	c,acc.7
	rrc	a
	mov	c,acc.7
	rrc	a
	mov	_main_bitmapH_1_19,a
00102$:
;	hw7.c:68: bitmapL = (bitmapL<<3) | bitmap;
	mov	a,_main_bitmapL_1_19
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r7,a
	mov	a,_main_bitmap_1_19
	orl	a,r7
	mov	_main_bitmapL_1_19,a
;	hw7.c:63: for (row=bitmapL=bitmapH=0, rowmask = 0xf7; row < 4; row++, rowmask >>= 1) {
	inc	_main_row_1_19
	mov	a,_main_rowmask_1_19
	mov	c,acc.7
	rrc	a
	mov	_main_rowmask_1_19,a
	sjmp	00119$
00103$:
;	hw7.c:71: if(bitmapL==0x00 && bitmapH==0x00){
	mov	a,_main_bitmapL_1_19
	jnz	00110$
	mov	a,_main_bitmapH_1_19
	jz	00111$
00110$:
;	hw7.c:73: }else if(charCount==0){//first char				
	jb	_main_charCount_1_19,00107$
;	hw7.c:74: charCount=1;
	setb	_main_charCount_1_19
;	hw7.c:75: firstP1=bitmapL;
	mov	_main_firstP1_1_19,_main_bitmapL_1_19
;	hw7.c:76: firstP2=bitmapH;
	mov	_main_firstP2_1_19,_main_bitmapH_1_19
;	hw7.c:77: P2 =0x0F;
	mov	_P2,#0x0F
	sjmp	00111$
00107$:
;	hw7.c:79: }else if(charCount==1){//second char				
;	hw7.c:80: charCount=0;
	jbc	_main_charCount_1_19,00154$
	sjmp	00111$
00154$:
;	hw7.c:82: P2 =0xF0;
	mov	_P2,#0xF0
;	hw7.c:83: secondP1=bitmapL;
	mov	_main_secondP1_1_19,_main_bitmapL_1_19
;	hw7.c:84: secondP2=bitmapH;		
	mov	_main_secondP2_1_19,_main_bitmapH_1_19
;	hw7.c:85: chr1=firstChar(firstP1,firstP2);
	mov	_firstChar_PARM_2,_main_firstP2_1_19
	mov	dpl,_main_firstP1_1_19
	lcall	_firstChar
	mov	_main_chr1_1_19,dpl
;	hw7.c:86: secondChar(chr1,secondP1,secondP2);//secondChar() returns the input of this time
	mov	_secondChar_PARM_2,_main_secondP1_1_19
	mov	_secondChar_PARM_3,_main_secondP2_1_19
	mov	dpl,_main_chr1_1_19
	lcall	_secondChar
00111$:
;	hw7.c:90: IP=curAddr;
	mov	_IP,_curAddr
;	hw7.c:91: P0=0x00;
	mov	_P0,#0x00
	ljmp	00116$
;------------------------------------------------------------
;Allocation info for local variables in function '_sdcc_gsinit_startup'
;------------------------------------------------------------
;	hw7.c:98: void _sdcc_gsinit_startup(void) {main();}
;	-----------------------------------------
;	 function _sdcc_gsinit_startup
;	-----------------------------------------
__sdcc_gsinit_startup:
	ljmp	_main
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
;------------------------------------------------------------
;	hw7.c:99: void _mcs51_genRAMCLEAR(void){}
;	-----------------------------------------
;	 function _mcs51_genRAMCLEAR
;	-----------------------------------------
__mcs51_genRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXINIT'
;------------------------------------------------------------
;	hw7.c:100: void _mcs51_genXINIT(void){}
;	-----------------------------------------
;	 function _mcs51_genXINIT
;	-----------------------------------------
__mcs51_genXINIT:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
;------------------------------------------------------------
;	hw7.c:101: void _mcs51_genXRAMCLEAR(void){}
;	-----------------------------------------
;	 function _mcs51_genXRAMCLEAR
;	-----------------------------------------
__mcs51_genXRAMCLEAR:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'colScan'
;------------------------------------------------------------
;rowmask                   Allocated to registers 
;------------------------------------------------------------
;	hw7.c:102: char colScan(char rowmask) {
;	-----------------------------------------
;	 function colScan
;	-----------------------------------------
_colScan:
	mov	_P0,dpl
;	hw7.c:104: return (~(P0>>4)) & 0x07;
	mov	a,_P0
	swap	a
	anl	a,#0x0F
	cpl	a
	mov	r7,a
	mov	a,#0x07
	anl	a,r7
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'firstChar'
;------------------------------------------------------------
;fstP2                     Allocated with name '_firstChar_PARM_2'
;fstP1                     Allocated to registers r7 
;------------------------------------------------------------
;	hw7.c:107: char firstChar(char fstP1,char fstP2){	
;	-----------------------------------------
;	 function firstChar
;	-----------------------------------------
_firstChar:
	mov	r7,dpl
;	hw7.c:108: if (fstP2!=0x00){//1,2,3,4
	mov	a,_firstChar_PARM_2
	jz	00136$
;	hw7.c:109: if((fstP2>>3)&1){
	mov	a,_firstChar_PARM_2
	mov	c,acc[3]
	clr	a
	rlc	a
	mov	r6,a
	jz	00110$
;	hw7.c:110: return '1';
	mov	dpl,#0x31
	ret
00110$:
;	hw7.c:111: }else if((fstP2>>2)&1){
	mov	a,_firstChar_PARM_2
	rr	a
	rr	a
	anl	a,#0x01
	mov	r6,a
	jz	00107$
;	hw7.c:112: return '2';
	mov	dpl,#0x32
	ret
00107$:
;	hw7.c:113: }else if((fstP2>>1)&1){
	mov	a,_firstChar_PARM_2
	rr	a
	anl	a,#0x01
	mov	r6,a
	jz	00104$
;	hw7.c:114: return '3';
	mov	dpl,#0x33
	ret
00104$:
;	hw7.c:115: }else if((fstP2)&1){
	mov	a,_firstChar_PARM_2
	jnb	acc.0,00138$
;	hw7.c:116: return '4';
	mov	dpl,#0x34
	ret
00136$:
;	hw7.c:120: if((fstP1>>7)&1){
	mov	a,r7
	rl	a
	anl	a,#0x01
	mov	r6,a
	jz	00133$
;	hw7.c:121: return '5';
	mov	dpl,#0x35
	ret
00133$:
;	hw7.c:122: }else if((fstP1>>6)&1){
	mov	a,r7
	rl	a
	rl	a
	anl	a,#0x01
	mov	r6,a
	jz	00130$
;	hw7.c:123: return '6';
	mov	dpl,#0x36
	ret
00130$:
;	hw7.c:124: }else if((fstP1>>5)&1){
	mov	a,r7
	mov	c,acc[5]
	clr	a
	rlc	a
	mov	r6,a
	jz	00127$
;	hw7.c:125: return '7';
	mov	dpl,#0x37
	ret
00127$:
;	hw7.c:126: }else if((fstP1>>4)&1){
	mov	a,r7
	swap	a
	anl	a,#0x01
	mov	r6,a
	jz	00124$
;	hw7.c:127: return '8';
	mov	dpl,#0x38
	ret
00124$:
;	hw7.c:128: }else if((fstP1>>3)&1){
	mov	a,r7
	mov	c,acc[3]
	clr	a
	rlc	a
	mov	r6,a
	jz	00121$
;	hw7.c:129: return '9';
	mov	dpl,#0x39
	ret
00121$:
;	hw7.c:130: }else if((fstP1>>2)&1){
	mov	a,r7
	rr	a
	rr	a
	anl	a,#0x01
	mov	r6,a
	jz	00118$
;	hw7.c:131: return '*';
	mov	dpl,#0x2A
	ret
00118$:
;	hw7.c:132: }else if((fstP1>>1)&1){
	mov	a,r7
	rr	a
	anl	a,#0x01
	mov	r6,a
	jz	00115$
;	hw7.c:133: return '0';
	mov	dpl,#0x30
	ret
00115$:
;	hw7.c:134: }else if((fstP1)&1){
	mov	a,r7
	jnb	acc.0,00138$
;	hw7.c:135: return '#';
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
;	hw7.c:139: void secondChar(char chr1,char sndP1,char sndP2){
;	-----------------------------------------
;	 function secondChar
;	-----------------------------------------
_secondChar:
	mov	r7,dpl
;	hw7.c:142: chr2=firstChar(sndP1,sndP2);
	mov	_firstChar_PARM_2,_secondChar_PARM_3
	mov	dpl,_secondChar_PARM_2
	push	ar7
	lcall	_firstChar
	mov	r6,dpl
	pop	ar7
;	hw7.c:143: if (chr1=='2'){
	cjne	r7,#0x32,00606$
	sjmp	00607$
00606$:
	ljmp	00347$
00607$:
;	hw7.c:144: if (chr2=='1'){
	cjne	r6,#0x31,00117$
;	hw7.c:145: sendString("A");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_sendString
	sjmp	00118$
00117$:
;	hw7.c:146: }else if (chr2=='2'){
	cjne	r6,#0x32,00114$
;	hw7.c:147: sendString("B");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_sendString
	sjmp	00118$
00114$:
;	hw7.c:148: }else if (chr2=='3'){
	cjne	r6,#0x33,00111$
;	hw7.c:149: sendString("C");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_sendString
	sjmp	00118$
00111$:
;	hw7.c:150: }else if (chr2=='4'){
	cjne	r6,#0x34,00108$
;	hw7.c:151: sendString("a");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_sendString
	sjmp	00118$
00108$:
;	hw7.c:152: }else if (chr2=='5'){
	cjne	r6,#0x35,00105$
;	hw7.c:153: sendString("b");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_sendString
	sjmp	00118$
00105$:
;	hw7.c:154: }else if (chr2=='6'){		
	cjne	r6,#0x36,00102$
;	hw7.c:155: sendString("c");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_sendString
	sjmp	00118$
00102$:
;	hw7.c:156: }else return;
	ret
00118$:
;	hw7.c:157: curAddr++;
	inc	_curAddr
	ljmp	00348$
00347$:
;	hw7.c:159: }else if (chr1=='3'){
	cjne	r7,#0x33,00620$
	sjmp	00621$
00620$:
	ljmp	00344$
00621$:
;	hw7.c:160: if (chr2=='1'){
	cjne	r6,#0x31,00135$
;	hw7.c:161: sendString("D");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_sendString
	sjmp	00136$
00135$:
;	hw7.c:162: }else if (chr2=='2'){
	cjne	r6,#0x32,00132$
;	hw7.c:163: sendString("E");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_sendString
	sjmp	00136$
00132$:
;	hw7.c:164: }else if (chr2=='3'){
	cjne	r6,#0x33,00129$
;	hw7.c:165: sendString("F");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_sendString
	sjmp	00136$
00129$:
;	hw7.c:166: }else if (chr2=='4'){
	cjne	r6,#0x34,00126$
;	hw7.c:167: sendString("d");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_sendString
	sjmp	00136$
00126$:
;	hw7.c:168: }else if (chr2=='5'){
	cjne	r6,#0x35,00123$
;	hw7.c:169: sendString("e");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_sendString
	sjmp	00136$
00123$:
;	hw7.c:170: }else if (chr2=='6'){
	cjne	r6,#0x36,00120$
;	hw7.c:171: sendString("f");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_sendString
	sjmp	00136$
00120$:
;	hw7.c:172: }else return;
	ret
00136$:
;	hw7.c:173: curAddr++;
	inc	_curAddr
	ljmp	00348$
00344$:
;	hw7.c:174: }else if (chr1=='4'){
	cjne	r7,#0x34,00634$
	sjmp	00635$
00634$:
	ljmp	00341$
00635$:
;	hw7.c:175: if (chr2=='1'){
	cjne	r6,#0x31,00153$
;	hw7.c:176: sendString("G");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_sendString
	sjmp	00154$
00153$:
;	hw7.c:177: }else if (chr2=='2'){
	cjne	r6,#0x32,00150$
;	hw7.c:178: sendString("H");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_sendString
	sjmp	00154$
00150$:
;	hw7.c:179: }else if (chr2=='3'){
	cjne	r6,#0x33,00147$
;	hw7.c:180: sendString("I");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_sendString
	sjmp	00154$
00147$:
;	hw7.c:181: }else if (chr2=='4'){
	cjne	r6,#0x34,00144$
;	hw7.c:182: sendString("G");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_sendString
	sjmp	00154$
00144$:
;	hw7.c:183: }else if (chr2=='5'){
	cjne	r6,#0x35,00141$
;	hw7.c:184: sendString("H");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_sendString
	sjmp	00154$
00141$:
;	hw7.c:185: }else if (chr2=='6'){
	cjne	r6,#0x36,00138$
;	hw7.c:186: sendString("I");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_sendString
	sjmp	00154$
00138$:
;	hw7.c:187: }else return;
	ret
00154$:
;	hw7.c:188: curAddr++;
	inc	_curAddr
	ljmp	00348$
00341$:
;	hw7.c:189: }else if (chr1=='5'){
	cjne	r7,#0x35,00648$
	sjmp	00649$
00648$:
	ljmp	00338$
00649$:
;	hw7.c:190: if (chr2=='1'){
	cjne	r6,#0x31,00171$
;	hw7.c:191: sendString("J");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_sendString
	sjmp	00172$
00171$:
;	hw7.c:192: }else if (chr2=='2'){
	cjne	r6,#0x32,00168$
;	hw7.c:193: sendString("K");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_sendString
	sjmp	00172$
00168$:
;	hw7.c:194: }else if (chr2=='3'){
	cjne	r6,#0x33,00165$
;	hw7.c:195: sendString("L");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_sendString
	sjmp	00172$
00165$:
;	hw7.c:196: }else if (chr2=='4'){
	cjne	r6,#0x34,00162$
;	hw7.c:197: sendString("j");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_sendString
	sjmp	00172$
00162$:
;	hw7.c:198: }else if (chr2=='5'){
	cjne	r6,#0x35,00159$
;	hw7.c:199: sendString("k");
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_sendString
	sjmp	00172$
00159$:
;	hw7.c:200: }else if (chr2=='6'){
	cjne	r6,#0x36,00156$
;	hw7.c:201: sendString("l");
	mov	dptr,#___str_20
	mov	b,#0x80
	lcall	_sendString
	sjmp	00172$
00156$:
;	hw7.c:202: }else return;
	ret
00172$:
;	hw7.c:203: curAddr++;
	inc	_curAddr
	ljmp	00348$
00338$:
;	hw7.c:204: }else if (chr1=='6'){
	cjne	r7,#0x36,00662$
	sjmp	00663$
00662$:
	ljmp	00335$
00663$:
;	hw7.c:205: if (chr2=='1'){
	cjne	r6,#0x31,00189$
;	hw7.c:206: sendString("M");
	mov	dptr,#___str_21
	mov	b,#0x80
	lcall	_sendString
	sjmp	00190$
00189$:
;	hw7.c:207: }else if (chr2=='2'){
	cjne	r6,#0x32,00186$
;	hw7.c:208: sendString("N");
	mov	dptr,#___str_22
	mov	b,#0x80
	lcall	_sendString
	sjmp	00190$
00186$:
;	hw7.c:209: }else if (chr2=='3'){
	cjne	r6,#0x33,00183$
;	hw7.c:210: sendString("O");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_sendString
	sjmp	00190$
00183$:
;	hw7.c:211: }else if (chr2=='4'){
	cjne	r6,#0x34,00180$
;	hw7.c:212: sendString("m");
	mov	dptr,#___str_24
	mov	b,#0x80
	lcall	_sendString
	sjmp	00190$
00180$:
;	hw7.c:213: }else if (chr2=='5'){
	cjne	r6,#0x35,00177$
;	hw7.c:214: sendString("n");
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_sendString
	sjmp	00190$
00177$:
;	hw7.c:215: }else if (chr2=='6'){
	cjne	r6,#0x36,00174$
;	hw7.c:216: sendString("o");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_sendString
	sjmp	00190$
00174$:
;	hw7.c:217: }else return;
	ret
00190$:
;	hw7.c:218: curAddr++;
	inc	_curAddr
	ljmp	00348$
00335$:
;	hw7.c:219: }else if (chr1=='7'){
	cjne	r7,#0x37,00676$
	sjmp	00677$
00676$:
	ljmp	00332$
00677$:
;	hw7.c:220: if (chr2=='1'){
	cjne	r6,#0x31,00213$
;	hw7.c:221: sendString("P");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_sendString
	ljmp	00214$
00213$:
;	hw7.c:222: }else if (chr2=='2'){
	cjne	r6,#0x32,00210$
;	hw7.c:223: sendString("Q");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_sendString
	ljmp	00214$
00210$:
;	hw7.c:224: }else if (chr2=='3'){
	cjne	r6,#0x33,00207$
;	hw7.c:225: sendString("R");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_sendString
	sjmp	00214$
00207$:
;	hw7.c:226: }else if (chr2=='4'){
	cjne	r6,#0x34,00204$
;	hw7.c:227: sendString("S");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_sendString
	sjmp	00214$
00204$:
;	hw7.c:228: }else if (chr2=='5'){
	cjne	r6,#0x35,00201$
;	hw7.c:229: sendString("p");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_sendString
	sjmp	00214$
00201$:
;	hw7.c:230: }else if (chr2=='6'){
	cjne	r6,#0x36,00198$
;	hw7.c:231: sendString("q");
	mov	dptr,#___str_32
	mov	b,#0x80
	lcall	_sendString
	sjmp	00214$
00198$:
;	hw7.c:232: }else if (chr2=='7'){
	cjne	r6,#0x37,00195$
;	hw7.c:233: sendString("r");
	mov	dptr,#___str_33
	mov	b,#0x80
	lcall	_sendString
	sjmp	00214$
00195$:
;	hw7.c:234: }else if (chr2=='8'){
	cjne	r6,#0x38,00192$
;	hw7.c:235: sendString("s");
	mov	dptr,#___str_34
	mov	b,#0x80
	lcall	_sendString
	sjmp	00214$
00192$:
;	hw7.c:236: }else return;
	ret
00214$:
;	hw7.c:237: curAddr++;
	inc	_curAddr
	ljmp	00348$
00332$:
;	hw7.c:238: }else if (chr1=='8'){
	cjne	r7,#0x38,00694$
	sjmp	00695$
00694$:
	ljmp	00329$
00695$:
;	hw7.c:239: if (chr2=='1'){
	cjne	r6,#0x31,00231$
;	hw7.c:240: sendString("T");
	mov	dptr,#___str_35
	mov	b,#0x80
	lcall	_sendString
	sjmp	00232$
00231$:
;	hw7.c:241: }else if (chr2=='2'){
	cjne	r6,#0x32,00228$
;	hw7.c:242: sendString("U");
	mov	dptr,#___str_36
	mov	b,#0x80
	lcall	_sendString
	sjmp	00232$
00228$:
;	hw7.c:243: }else if (chr2=='3'){
	cjne	r6,#0x33,00225$
;	hw7.c:244: sendString("V");
	mov	dptr,#___str_37
	mov	b,#0x80
	lcall	_sendString
	sjmp	00232$
00225$:
;	hw7.c:245: }else if (chr2=='4'){
	cjne	r6,#0x34,00222$
;	hw7.c:246: sendString("t");
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_sendString
	sjmp	00232$
00222$:
;	hw7.c:247: }else if (chr2=='5'){
	cjne	r6,#0x35,00219$
;	hw7.c:248: sendString("u");
	mov	dptr,#___str_39
	mov	b,#0x80
	lcall	_sendString
	sjmp	00232$
00219$:
;	hw7.c:249: }else if (chr2=='6'){
	cjne	r6,#0x36,00216$
;	hw7.c:250: sendString("v");
	mov	dptr,#___str_40
	mov	b,#0x80
	lcall	_sendString
	sjmp	00232$
00216$:
;	hw7.c:251: }else return;
	ret
00232$:
;	hw7.c:252: curAddr++;
	inc	_curAddr
	ljmp	00348$
00329$:
;	hw7.c:253: }else if (chr1=='9'){
	cjne	r7,#0x39,00708$
	sjmp	00709$
00708$:
	ljmp	00326$
00709$:
;	hw7.c:254: if (chr2=='1'){
	cjne	r6,#0x31,00255$
;	hw7.c:255: sendString("W");
	mov	dptr,#___str_41
	mov	b,#0x80
	lcall	_sendString
	ljmp	00256$
00255$:
;	hw7.c:256: }else if (chr2=='2'){
	cjne	r6,#0x32,00252$
;	hw7.c:257: sendString("X");
	mov	dptr,#___str_42
	mov	b,#0x80
	lcall	_sendString
	ljmp	00256$
00252$:
;	hw7.c:258: }else if (chr2=='3'){
	cjne	r6,#0x33,00249$
;	hw7.c:259: sendString("Y");
	mov	dptr,#___str_43
	mov	b,#0x80
	lcall	_sendString
	sjmp	00256$
00249$:
;	hw7.c:260: }else if (chr2=='4'){
	cjne	r6,#0x34,00246$
;	hw7.c:261: sendString("Z");
	mov	dptr,#___str_44
	mov	b,#0x80
	lcall	_sendString
	sjmp	00256$
00246$:
;	hw7.c:262: }else if (chr2=='5'){
	cjne	r6,#0x35,00243$
;	hw7.c:263: sendString("w");
	mov	dptr,#___str_45
	mov	b,#0x80
	lcall	_sendString
	sjmp	00256$
00243$:
;	hw7.c:264: }else if (chr2=='6'){
	cjne	r6,#0x36,00240$
;	hw7.c:265: sendString("x");
	mov	dptr,#___str_46
	mov	b,#0x80
	lcall	_sendString
	sjmp	00256$
00240$:
;	hw7.c:266: }else if (chr2=='7'){
	cjne	r6,#0x37,00237$
;	hw7.c:267: sendString("y");
	mov	dptr,#___str_47
	mov	b,#0x80
	lcall	_sendString
	sjmp	00256$
00237$:
;	hw7.c:268: }else if (chr2=='8'){
	cjne	r6,#0x38,00234$
;	hw7.c:269: sendString("z");
	mov	dptr,#___str_48
	mov	b,#0x80
	lcall	_sendString
	sjmp	00256$
00234$:
;	hw7.c:270: }else return;
	ret
00256$:
;	hw7.c:271: curAddr++;
	inc	_curAddr
	ljmp	00348$
00326$:
;	hw7.c:272: }else if (chr1=='*'){
	cjne	r7,#0x2A,00726$
	sjmp	00727$
00726$:
	ljmp	00323$
00727$:
;	hw7.c:273: if (chr2=='2'){//up
	cjne	r6,#0x32,00281$
;	hw7.c:274: curAddr=curAddr&0x0F;
	anl	_curAddr,#0x0F
;	hw7.c:275: setDdRamAddress(curAddr);
	mov	dpl,_curAddr
	lcall	_setDdRamAddress
	ljmp	00348$
00281$:
;	hw7.c:276: }else if (chr2=='4'){//left
	cjne	r6,#0x34,00278$
;	hw7.c:277: if(curAddr==0x00 || curAddr==0x40) return;
	mov	a,_curAddr
	jz	00257$
	mov	a,#0x40
	cjne	a,_curAddr,00258$
00257$:
	ret
00258$:
;	hw7.c:278: curAddr--;
	dec	_curAddr
;	hw7.c:279: setDdRamAddress(curAddr);
	mov	dpl,_curAddr
	lcall	_setDdRamAddress
	ljmp	00348$
00278$:
;	hw7.c:280: }else if (chr2=='5'){//space
	cjne	r6,#0x35,00275$
;	hw7.c:281: sendString(" ");
	mov	dptr,#___str_49
	mov	b,#0x80
	lcall	_sendString
;	hw7.c:282: curAddr++;
	inc	_curAddr
	ljmp	00348$
00275$:
;	hw7.c:283: }else if (chr2=='6'){//right
	cjne	r6,#0x36,00272$
;	hw7.c:284: if((curAddr&0x0F)==0x0F) return;
	mov	r5,_curAddr
	anl	ar5,#0x0F
	cjne	r5,#0x0F,00261$
	ret
00261$:
;	hw7.c:285: curAddr++;
	inc	_curAddr
;	hw7.c:286: setDdRamAddress(curAddr);
	mov	dpl,_curAddr
	lcall	_setDdRamAddress
	ljmp	00348$
00272$:
;	hw7.c:287: }else if (chr2=='8'){//down
	cjne	r6,#0x38,00269$
;	hw7.c:288: curAddr=(curAddr&0x0F) |0x40;
	mov	a,#0x0F
	anl	a,_curAddr
	orl	a,#0x40
	mov	_curAddr,a
;	hw7.c:289: setDdRamAddress(curAddr);
	mov	dpl,_curAddr
	lcall	_setDdRamAddress
	ljmp	00348$
00269$:
;	hw7.c:290: }else if (chr2=='9'){//newline
	cjne	r6,#0x39,00266$
;	hw7.c:291: curAddr=0x40;
	mov	_curAddr,#0x40
;	hw7.c:292: setDdRamAddress(curAddr);
	mov	dpl,_curAddr
	lcall	_setDdRamAddress
	ljmp	00348$
00266$:
;	hw7.c:293: }else if (chr2=='1'){//return Home
	cjne	r6,#0x31,00263$
;	hw7.c:294: curAddr=0x00;
	mov	_curAddr,#0x00
;	hw7.c:295: setDdRamAddress(curAddr);
	mov	dpl,_curAddr
	lcall	_setDdRamAddress
	ljmp	00348$
00263$:
;	hw7.c:296: }else return;
	ret
00323$:
;	hw7.c:298: }else if (chr1=='#'){
	cjne	r7,#0x23,00747$
	sjmp	00748$
00747$:
	ljmp	00320$
00748$:
;	hw7.c:299: if (chr2=='1'){
	cjne	r6,#0x31,00317$
;	hw7.c:300: sendString("1");
	mov	dptr,#___str_50
	mov	b,#0x80
	lcall	_sendString
	ljmp	00318$
00317$:
;	hw7.c:301: }else if (chr2=='2'){
	cjne	r6,#0x32,00314$
;	hw7.c:302: sendString("2");
	mov	dptr,#___str_51
	mov	b,#0x80
	lcall	_sendString
	ljmp	00318$
00314$:
;	hw7.c:303: }else if (chr2=='3'){
	cjne	r6,#0x33,00311$
;	hw7.c:304: sendString("3");
	mov	dptr,#___str_52
	mov	b,#0x80
	lcall	_sendString
	ljmp	00318$
00311$:
;	hw7.c:305: }else if (chr2=='4'){
	cjne	r6,#0x34,00308$
;	hw7.c:306: sendString("4");
	mov	dptr,#___str_53
	mov	b,#0x80
	lcall	_sendString
	ljmp	00318$
00308$:
;	hw7.c:307: }else if (chr2=='5'){
	cjne	r6,#0x35,00305$
;	hw7.c:308: sendString("5");
	mov	dptr,#___str_54
	mov	b,#0x80
	lcall	_sendString
	ljmp	00318$
00305$:
;	hw7.c:309: }else if (chr2=='6'){
	cjne	r6,#0x36,00302$
;	hw7.c:310: sendString("6");
	mov	dptr,#___str_55
	mov	b,#0x80
	lcall	_sendString
	ljmp	00318$
00302$:
;	hw7.c:311: }else if (chr2=='7'){
	cjne	r6,#0x37,00299$
;	hw7.c:312: sendString("7");
	mov	dptr,#___str_56
	mov	b,#0x80
	lcall	_sendString
	sjmp	00318$
00299$:
;	hw7.c:313: }else if (chr2=='8'){
	cjne	r6,#0x38,00296$
;	hw7.c:314: sendString("8");
	mov	dptr,#___str_57
	mov	b,#0x80
	lcall	_sendString
	sjmp	00318$
00296$:
;	hw7.c:315: }else if (chr2=='9'){
	cjne	r6,#0x39,00293$
;	hw7.c:316: sendString("9");
	mov	dptr,#___str_58
	mov	b,#0x80
	lcall	_sendString
	sjmp	00318$
00293$:
;	hw7.c:317: }else if (chr2=='*'){
	cjne	r6,#0x2A,00290$
;	hw7.c:318: sendString("*");
	mov	dptr,#___str_59
	mov	b,#0x80
	lcall	_sendString
	sjmp	00318$
00290$:
;	hw7.c:319: }else if (chr2=='0'){
	cjne	r6,#0x30,00287$
;	hw7.c:320: sendString("0");
	mov	dptr,#___str_60
	mov	b,#0x80
	lcall	_sendString
	sjmp	00318$
00287$:
;	hw7.c:321: }else if (chr2=='#'){
	cjne	r6,#0x23,00284$
;	hw7.c:322: sendString("#");
	mov	dptr,#___str_61
	mov	b,#0x80
	lcall	_sendString
	sjmp	00318$
00284$:
;	hw7.c:323: }else return;
	ret
00318$:
;	hw7.c:324: curAddr++;
	inc	_curAddr
	sjmp	00348$
00320$:
;	hw7.c:325: }else return;
	ret
00348$:
;	hw7.c:327: if((curAddr==0x10)||(curAddr==0x50)){
	mov	a,#0x10
	cjne	a,_curAddr,00773$
	sjmp	00349$
00773$:
	mov	a,#0x50
	cjne	a,_curAddr,00352$
00349$:
;	hw7.c:328: curAddr--;
	dec	_curAddr
;	hw7.c:329: setDdRamAddress(curAddr);
	mov	dpl,_curAddr
	ljmp	_setDdRamAddress
00352$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitLCD'
;------------------------------------------------------------
;	hw7.c:335: void InitLCD(){
;	-----------------------------------------
;	 function InitLCD
;	-----------------------------------------
_InitLCD:
;	hw7.c:336: functionSet();
	lcall	_functionSet
;	hw7.c:338: IRWRITE(0x06);
	mov	dpl,#0x06
	lcall	_IRWRITE
;	hw7.c:340: IRWRITE(0x0F);
	mov	dpl,#0x0F
	lcall	_IRWRITE
;	hw7.c:342: curAddr=0x00;
	mov	_curAddr,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'IRWRITE'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	hw7.c:346: void IRWRITE(char addr)
;	-----------------------------------------
;	 function IRWRITE
;	-----------------------------------------
_IRWRITE:
	mov	r7,dpl
;	hw7.c:348: P1= (addr & 0xf0) ;
	mov	a,#0xF0
	anl	a,r7
	mov	_P1,a
;	hw7.c:349: E = 1;
	setb	_P1_2
;	hw7.c:350: E = 0;
	clr	_P1_2
;	hw7.c:351: P1 = ((addr & 0x0f) << 4) | 0x00;
	anl	ar7,#0x0F
	mov	a,r7
	swap	a
	anl	a,#0xF0
	mov	_P1,a
;	hw7.c:352: E = 1;
	setb	_P1_2
;	hw7.c:353: E = 0;
	clr	_P1_2
;	hw7.c:354: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'functionSet'
;------------------------------------------------------------
;	hw7.c:356: void functionSet(void) {//ok
;	-----------------------------------------
;	 function functionSet
;	-----------------------------------------
_functionSet:
;	hw7.c:364: P1 = (P1&0x23) | 0x20;
	mov	a,#0x23
	anl	a,_P1
	orl	a,#0x20
	mov	_P1,a
;	hw7.c:366: E = 1;
	setb	_P1_2
;	hw7.c:367: E = 0;
	clr	_P1_2
;	hw7.c:368: delay();
	lcall	_delay
;	hw7.c:369: E = 1;
	setb	_P1_2
;	hw7.c:370: E = 0;
	clr	_P1_2
;	hw7.c:372: P1=0x80;
	mov	_P1,#0x80
;	hw7.c:373: E = 1;
	setb	_P1_2
;	hw7.c:374: E = 0;
	clr	_P1_2
;	hw7.c:375: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setDdRamAddress'
;------------------------------------------------------------
;address                   Allocated to registers r7 
;------------------------------------------------------------
;	hw7.c:378: void setDdRamAddress(char address) {
;	-----------------------------------------
;	 function setDdRamAddress
;	-----------------------------------------
_setDdRamAddress:
	mov	r7,dpl
;	hw7.c:380: P1= (address & 0xf0) | 0x80;
	mov	a,#0xF0
	anl	a,r7
	orl	a,#0x80
	mov	_P1,a
;	hw7.c:381: E = 1;
	setb	_P1_2
;	hw7.c:382: E = 0;
	clr	_P1_2
;	hw7.c:384: P1= (address & 0x0f) << 4;
	anl	ar7,#0x0F
	mov	a,r7
	swap	a
	anl	a,#0xF0
	mov	_P1,a
;	hw7.c:385: E = 1;
	setb	_P1_2
;	hw7.c:386: E = 0;
	clr	_P1_2
;	hw7.c:387: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendChar'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	hw7.c:392: void sendChar(char c) {
;	-----------------------------------------
;	 function sendChar
;	-----------------------------------------
_sendChar:
	mov	r7,dpl
;	hw7.c:398: P1 = (c & 0xf0) | 0x08;
	mov	a,#0xF0
	anl	a,r7
	orl	a,#0x08
	mov	_P1,a
;	hw7.c:399: E = 1;
	setb	_P1_2
;	hw7.c:400: E = 0;
	clr	_P1_2
;	hw7.c:406: P1=  ((c & 0x0f) << 4) | 0x08;
	anl	ar7,#0x0F
	mov	a,r7
	swap	a
	anl	a,#0xF0
	mov	r7,a
	mov	a,#0x08
	orl	a,r7
	mov	_P1,a
;	hw7.c:407: E = 1;
	setb	_P1_2
;	hw7.c:408: E = 0;
	clr	_P1_2
;	hw7.c:409: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'sendString'
;------------------------------------------------------------
;str                       Allocated to registers 
;p                         Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	hw7.c:412: void sendString(char* str) {
;	-----------------------------------------
;	 function sendString
;	-----------------------------------------
_sendString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	hw7.c:419: for (p=str; *p; p++) {
00103$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00105$
;	hw7.c:420: sendChar(*p);
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_sendChar
	pop	ar5
	pop	ar6
	pop	ar7
;	hw7.c:419: for (p=str; *p; p++) {
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
;	hw7.c:423: void delay(void) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	hw7.c:425: for (c = 0; c < 50; c++);
	mov	r7,#0x32
00104$:
	djnz	r7,00104$
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
