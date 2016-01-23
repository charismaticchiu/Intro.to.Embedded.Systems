;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.0/*rc1*/ #8960 (Mar 15 2014) (MINGW32)
; This file was generated Mon Apr 14 19:03:10 2014
;--------------------------------------------------------
	.module hw5
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _press2num
	.globl _charVal
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
	.globl _setC_PARM_6
	.globl _setC_PARM_5
	.globl _setC_PARM_4
	.globl _setC_PARM_3
	.globl _setC_PARM_2
	.globl _IRWrite_PARM_2
	.globl _cursor
	.globl _moveCursor
	.globl _functionSet
	.globl _IRWrite
	.globl _setC
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
_cursor::
	.ds 1
_Main_rowmask_1_7:
	.ds 1
_Main_num_1_7:
	.ds 4
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
_Main_b_1_7:
	.ds 1
_IRWrite_PARM_2:
	.ds 1
_setC_PARM_2:
	.ds 1
_setC_PARM_3:
	.ds 1
_setC_PARM_4:
	.ds 1
_setC_PARM_5:
	.ds 1
_setC_PARM_6:
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
;bitmap                    Allocated to registers r5 
;row                       Allocated to registers r6 
;rowmask                   Allocated with name '_Main_rowmask_1_7'
;ch                        Allocated to registers r7 
;num                       Allocated with name '_Main_num_1_7'
;------------------------------------------------------------
;	hw5.c:87: void Main(void) {
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
;	hw5.c:91: __bit b=0; //紀錄目前讀到的是第一個還是第二個數字
	clr	_Main_b_1_7
;	hw5.c:93: functionSet();
	lcall	_functionSet
;	hw5.c:94: setC(0,0,0,1,1,0); //entryModeSet(1, 0);
	clr	_setC_PARM_2
	clr	_setC_PARM_3
	setb	_setC_PARM_4
	setb	_setC_PARM_5
	clr	_setC_PARM_6
	mov	dpl,#0x00
	lcall	_setC
;	hw5.c:95: setC(0,0,1,1,1,1); //displayOnOffControl(1, 1, 1);
	clr	_setC_PARM_2
	setb	_setC_PARM_3
	setb	_setC_PARM_4
	setb	_setC_PARM_5
	setb	_setC_PARM_6
	mov	dpl,#0x00
	lcall	_setC
;	hw5.c:96: cursor=0x00; //紀錄目前cursor的位置
	mov	_cursor,#0x00
;	hw5.c:98: while (1) {
00120$:
;	hw5.c:99: for (row=0, rowmask = 0xf7; row < 4; row++, rowmask >>= 1) {
	mov	_Main_rowmask_1_7,#0xF7
	mov	r6,#0x00
00123$:
	clr	c
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x84
	jnc	00120$
;	hw5.c:100: P0=rowmask;
	mov	_P0,_Main_rowmask_1_7
;	hw5.c:101: bitmap=(~(P0>>4)) & 0x07;
	mov	a,_P0
	swap	a
	anl	a,#0x0F
	cpl	a
;	hw5.c:103: if(bitmap!=0){ //代表有讀到東西
	anl	a,#0x07
	mov	r5,a
	jnz	00157$
	ljmp	00117$
00157$:
;	hw5.c:104: num[b]=press2num[row][bitmap]; //找出按下的是哪個鍵
	mov	c,_Main_b_1_7
	clr	a
	rlc	a
	add	a,acc
	mov	r4,a
	add	a,#_Main_num_1_7
	mov	r1,a
	clr	F0
	mov	b,#0x0A
	mov	a,r6
	jnb	acc.7,00158$
	cpl	F0
	cpl	a
	inc	a
00158$:
	mul	ab
	jnb	F0,00159$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00159$:
	add	a,#_press2num
	mov	r3,a
	mov	a,#(_press2num >> 8)
	addc	a,b
	mov	r4,a
	mov	a,r5
	add	a,r5
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	@r1,ar4
	inc	r1
	mov	@r1,ar5
	dec	r1
;	hw5.c:105: b^=1;
	cpl	_Main_b_1_7
;	hw5.c:106: if(b==0){
	jnb	_Main_b_1_7,00160$
	ljmp	00117$
00160$:
;	hw5.c:107: if(num[0]==12){ //按的第一個是'*' ->移動指標或是輸出空白
	mov	r4,(_Main_num_1_7 + 0)
	mov	r5,(_Main_num_1_7 + 1)
	cjne	r4,#0x0C,00111$
	cjne	r5,#0x00,00111$
;	hw5.c:108: if(num[1]==5){ //輸出空白
	mov	r2,((_Main_num_1_7 + 0x0002) + 0)
	mov	r3,((_Main_num_1_7 + 0x0002) + 1)
	cjne	r2,#0x05,00104$
	cjne	r3,#0x00,00104$
;	hw5.c:109: IRWrite(' ', 1); //sendChar(' ');
	setb	_IRWrite_PARM_2
	mov	dpl,#0x20
	push	ar6
	lcall	_IRWrite
	pop	ar6
;	hw5.c:110: cursor++;
	inc	_cursor
;	hw5.c:111: if((cursor&0x0F)==0x00) moveCursor(4); //如果指標已經超過畫面(一行16個字元), 把指標移回畫面中
	mov	a,_cursor
	mov	r7,a
	anl	a,#0x0F
	jnz	00117$
	mov	dptr,#0x0004
	push	ar6
	lcall	_moveCursor
	pop	ar6
	sjmp	00117$
00104$:
;	hw5.c:113: else moveCursor(num[1]); //移動指標
	mov	dpl,r2
	mov	dph,r3
	push	ar6
	lcall	_moveCursor
	pop	ar6
	sjmp	00117$
00111$:
;	hw5.c:116: ch=charVal[num[0]-1][num[1]-1]; //找出要輸出的數字
	mov	a,r4
	dec	a
	clr	F0
	mov	b,#0x0C
	jnb	acc.7,00167$
	cpl	F0
	cpl	a
	inc	a
00167$:
	mul	ab
	jnb	F0,00168$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00168$:
	add	a,#_charVal
	mov	r5,a
	mov	a,#(_charVal >> 8)
	addc	a,b
	mov	r7,a
	mov	a,(_Main_num_1_7 + 0x0002)
	mov	r4,a
	dec	a
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
;	hw5.c:117: if(ch=='-') continue; //not defined
	cjne	r7,#0x2D,00169$
	sjmp	00117$
00169$:
;	hw5.c:118: IRWrite(ch, 1); //sendChar(ch);
	setb	_IRWrite_PARM_2
	mov	dpl,r7
	push	ar6
	lcall	_IRWrite
	pop	ar6
;	hw5.c:119: cursor++;
	inc	_cursor
;	hw5.c:120: if((cursor&0x0F)==0x00) moveCursor(4); //如果指標已經超過畫面(一行16個字元), 把指標移回畫面中
	mov	a,_cursor
	mov	r7,a
	anl	a,#0x0F
	jnz	00117$
	mov	dptr,#0x0004
	push	ar6
	lcall	_moveCursor
	pop	ar6
00117$:
;	hw5.c:99: for (row=0, rowmask = 0xf7; row < 4; row++, rowmask >>= 1) {
	inc	r6
	mov	a,_Main_rowmask_1_7
	mov	c,acc.7
	rrc	a
	mov	_Main_rowmask_1_7,a
	ljmp	00123$
;------------------------------------------------------------
;Allocation info for local variables in function 'moveCursor'
;------------------------------------------------------------
;x                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	hw5.c:130: void moveCursor(int x)
;	-----------------------------------------
;	 function moveCursor
;	-----------------------------------------
_moveCursor:
	mov	r6,dpl
	mov	r7,dph
;	hw5.c:132: if(x==2){//up
	cjne	r6,#0x02,00120$
	cjne	r7,#0x00,00120$
;	hw5.c:133: cursor=cursor&0x0F;
	anl	_cursor,#0x0F
	sjmp	00121$
00120$:
;	hw5.c:135: else if(x==4){//left
	cjne	r6,#0x04,00117$
	cjne	r7,#0x00,00117$
;	hw5.c:136: if(cursor==0x00 || cursor==0x40) return; //若是已到達最左邊, 不移動
	mov	a,_cursor
	jz	00101$
	mov	a,#0x40
	cjne	a,_cursor,00102$
00101$:
	ret
00102$:
;	hw5.c:137: cursor--;
	dec	_cursor
	sjmp	00121$
00117$:
;	hw5.c:139: else if(x==6){//right
	cjne	r6,#0x06,00114$
	cjne	r7,#0x00,00114$
;	hw5.c:140: if((cursor&0x0F)==0x0F) return; //若是已到達最右邊, 不移動
	mov	r5,_cursor
	anl	ar5,#0x0F
	cjne	r5,#0x0F,00105$
	ret
00105$:
;	hw5.c:141: else cursor++;
	inc	_cursor
	sjmp	00121$
00114$:
;	hw5.c:143: else if(x==8){//down
	cjne	r6,#0x08,00111$
	cjne	r7,#0x00,00111$
;	hw5.c:144: cursor=(cursor&0x0F)|0x40;
	mov	a,#0x0F
	anl	a,_cursor
	orl	a,#0x40
	mov	_cursor,a
	sjmp	00121$
00111$:
;	hw5.c:146: else if(x==9){//newline
	cjne	r6,#0x09,00108$
	cjne	r7,#0x00,00108$
;	hw5.c:147: cursor=0x40;
	mov	_cursor,#0x40
	sjmp	00121$
00108$:
;	hw5.c:149: else return;
	ret
00121$:
;	hw5.c:151: IRWrite(cursor|(1<<7), 0); //setDdRamAddress(cursor);
	mov	a,#0x80
	orl	a,_cursor
	mov	dpl,a
	clr	_IRWrite_PARM_2
	ljmp	_IRWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'functionSet'
;------------------------------------------------------------
;c                         Allocated to registers 
;------------------------------------------------------------
;	hw5.c:155: void functionSet(void) {
;	-----------------------------------------
;	 function functionSet
;	-----------------------------------------
_functionSet:
;	hw5.c:160: P1=(c&0xF0); //P1=(DB7~4)(Dont care)
	mov	_P1,#0x20
;	hw5.c:161: RS = 0;
	clr	_P1_3
;	hw5.c:162: E = 1;
	setb	_P1_2
;	hw5.c:163: E = 0;
	clr	_P1_2
;	hw5.c:164: delay();
	lcall	_delay
;	hw5.c:165: E = 1;
	setb	_P1_2
;	hw5.c:166: E = 0;
	clr	_P1_2
;	hw5.c:167: DB7 = 1;
	setb	_P1_7
;	hw5.c:168: E = 1;
	setb	_P1_2
;	hw5.c:169: E = 0;
	clr	_P1_2
;	hw5.c:170: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'IRWrite'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	hw5.c:173: void IRWrite(char c, __bit rs){
;	-----------------------------------------
;	 function IRWrite
;	-----------------------------------------
_IRWrite:
	mov	r7,dpl
;	hw5.c:174: P1=(c&0xF0); //set high nibble
	mov	a,#0xF0
	anl	a,r7
	mov	_P1,a
;	hw5.c:175: RS=rs;
	mov	c,_IRWrite_PARM_2
	mov	_P1_3,c
;	hw5.c:176: E=1;
	setb	_P1_2
;	hw5.c:177: E=0;
	clr	_P1_2
;	hw5.c:178: P1=(c<<4)|(P1&0x0F); // set low nibble
	mov	a,r7
	swap	a
	anl	a,#0xF0
	mov	r7,a
	mov	a,#0x0F
	anl	a,_P1
	orl	a,r7
	mov	_P1,a
;	hw5.c:179: E=1;
	setb	_P1_2
;	hw5.c:180: E=0;
	clr	_P1_2
;	hw5.c:181: delay();
	ljmp	_delay
;------------------------------------------------------------
;Allocation info for local variables in function 'setC'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	hw5.c:184: void setC(char c, __bit rs, __bit b7, __bit b6, __bit b5, __bit b4){
;	-----------------------------------------
;	 function setC
;	-----------------------------------------
_setC:
	mov	r7,dpl
;	hw5.c:185: c=(c|(b7<<3)|(b6<<2)|(b5<<1)|b4);
	mov	c,_setC_PARM_3
	clr	a
	rlc	a
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r6,a
	mov	a,r7
	orl	ar6,a
	mov	c,_setC_PARM_4
	clr	a
	rlc	a
	add	a,acc
	add	a,acc
	orl	ar6,a
	mov	c,_setC_PARM_5
	clr	a
	rlc	a
	add	a,acc
	orl	ar6,a
	mov	c,_setC_PARM_6
	clr	a
	rlc	a
	orl	a,r6
	mov	r7,a
;	hw5.c:186: IRWrite(c, rs);
	mov	c,_setC_PARM_2
	mov	_IRWrite_PARM_2,c
	mov	dpl,r7
	ljmp	_IRWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	hw5.c:189: void delay(void) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
;	hw5.c:191: for (c = 0; c < 50; c++);
	mov	r7,#0x32
00104$:
	djnz	r7,00104$
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_charVal:
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x41	;  65	'A'
	.db #0x42	;  66	'B'
	.db #0x43	;  67	'C'
	.db #0x61	;  97	'a'
	.db #0x62	;  98	'b'
	.db #0x63	;  99	'c'
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x44	;  68	'D'
	.db #0x45	;  69	'E'
	.db #0x46	;  70	'F'
	.db #0x64	;  100	'd'
	.db #0x65	;  101	'e'
	.db #0x66	;  102	'f'
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x47	;  71	'G'
	.db #0x48	;  72	'H'
	.db #0x49	;  73	'I'
	.db #0x67	;  103	'g'
	.db #0x68	;  104	'h'
	.db #0x69	;  105	'i'
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x4A	;  74	'J'
	.db #0x4B	;  75	'K'
	.db #0x4C	;  76	'L'
	.db #0x6A	;  106	'j'
	.db #0x6B	;  107	'k'
	.db #0x6C	;  108	'l'
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x4D	;  77	'M'
	.db #0x4E	;  78	'N'
	.db #0x4F	;  79	'O'
	.db #0x6D	;  109	'm'
	.db #0x6E	;  110	'n'
	.db #0x6F	;  111	'o'
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x50	;  80	'P'
	.db #0x51	;  81	'Q'
	.db #0x52	;  82	'R'
	.db #0x53	;  83	'S'
	.db #0x70	;  112	'p'
	.db #0x71	;  113	'q'
	.db #0x72	;  114	'r'
	.db #0x73	;  115	's'
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x54	;  84	'T'
	.db #0x55	;  85	'U'
	.db #0x56	;  86	'V'
	.db #0x74	;  116	't'
	.db #0x75	;  117	'u'
	.db #0x76	;  118	'v'
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x57	;  87	'W'
	.db #0x58	;  88	'X'
	.db #0x59	;  89	'Y'
	.db #0x5A	;  90	'Z'
	.db #0x77	;  119	'w'
	.db #0x78	;  120	'x'
	.db #0x79	;  121	'y'
	.db #0x7A	;  122	'z'
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x31	;  49	'1'
	.db #0x32	;  50	'2'
	.db #0x33	;  51	'3'
	.db #0x34	;  52	'4'
	.db #0x35	;  53	'5'
	.db #0x36	;  54	'6'
	.db #0x37	;  55	'7'
	.db #0x38	;  56	'8'
	.db #0x39	;  57	'9'
	.db #0x23	;  35
	.db #0x30	;  48	'0'
	.db #0x2A	;  42
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
	.db #0x2D	;  45
_press2num:
	.byte #0x00,#0x00	;  0
	.byte #0x03,#0x00	;  3
	.byte #0x02,#0x00	;  2
	.byte #0x00,#0x00	;  0
	.byte #0x01,#0x00	;  1
	.byte #0x00,#0x00	;  0
	.byte #0x06,#0x00	;  6
	.byte #0x05,#0x00	;  5
	.byte #0x00,#0x00	;  0
	.byte #0x04,#0x00	;  4
	.byte #0x00,#0x00	;  0
	.byte #0x09,#0x00	;  9
	.byte #0x08,#0x00	;  8
	.byte #0x00,#0x00	;  0
	.byte #0x07,#0x00	;  7
	.byte #0x00,#0x00	;  0
	.byte #0x0A,#0x00	;  10
	.byte #0x0B,#0x00	;  11
	.byte #0x00,#0x00	;  0
	.byte #0x0C,#0x00	;  12
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
