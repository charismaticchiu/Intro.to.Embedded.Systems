                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0/*rc1*/ #8960 (Mar 15 2014) (MINGW32)
                                      4 ; This file was generated Mon Apr 14 19:40:14 2014
                                      5 ;--------------------------------------------------------
                                      6 	.module hw5
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _firstChar_PARM_2
                                     13 	.globl _Main
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _B
                                     90 	.globl _ACC
                                     91 	.globl _PSW
                                     92 	.globl _IP
                                     93 	.globl _P3
                                     94 	.globl _IE
                                     95 	.globl _P2
                                     96 	.globl _SBUF
                                     97 	.globl _SCON
                                     98 	.globl _P1
                                     99 	.globl _TH1
                                    100 	.globl _TH0
                                    101 	.globl _TL1
                                    102 	.globl _TL0
                                    103 	.globl _TMOD
                                    104 	.globl _TCON
                                    105 	.globl _PCON
                                    106 	.globl _DPH
                                    107 	.globl _DPL
                                    108 	.globl _SP
                                    109 	.globl _P0
                                    110 	.globl _secondChar_PARM_3
                                    111 	.globl _secondChar_PARM_2
                                    112 	.globl _curAddr
                                    113 	.globl _firstChar
                                    114 	.globl _secondChar
                                    115 	.globl _IRWRITE
                                    116 	.globl _functionSet
                                    117 	.globl _setDdRamAddress
                                    118 	.globl _sendChar
                                    119 	.globl _sendString
                                    120 	.globl _delay
                                    121 	.globl _colScan
                                    122 ;--------------------------------------------------------
                                    123 ; special function registers
                                    124 ;--------------------------------------------------------
                                    125 	.area RSEG    (ABS,DATA)
      000000                        126 	.org 0x0000
                           000080   127 _P0	=	0x0080
                           000081   128 _SP	=	0x0081
                           000082   129 _DPL	=	0x0082
                           000083   130 _DPH	=	0x0083
                           000087   131 _PCON	=	0x0087
                           000088   132 _TCON	=	0x0088
                           000089   133 _TMOD	=	0x0089
                           00008A   134 _TL0	=	0x008a
                           00008B   135 _TL1	=	0x008b
                           00008C   136 _TH0	=	0x008c
                           00008D   137 _TH1	=	0x008d
                           000090   138 _P1	=	0x0090
                           000098   139 _SCON	=	0x0098
                           000099   140 _SBUF	=	0x0099
                           0000A0   141 _P2	=	0x00a0
                           0000A8   142 _IE	=	0x00a8
                           0000B0   143 _P3	=	0x00b0
                           0000B8   144 _IP	=	0x00b8
                           0000D0   145 _PSW	=	0x00d0
                           0000E0   146 _ACC	=	0x00e0
                           0000F0   147 _B	=	0x00f0
                                    148 ;--------------------------------------------------------
                                    149 ; special function bits
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0_0	=	0x0080
                           000081   154 _P0_1	=	0x0081
                           000082   155 _P0_2	=	0x0082
                           000083   156 _P0_3	=	0x0083
                           000084   157 _P0_4	=	0x0084
                           000085   158 _P0_5	=	0x0085
                           000086   159 _P0_6	=	0x0086
                           000087   160 _P0_7	=	0x0087
                           000088   161 _IT0	=	0x0088
                           000089   162 _IE0	=	0x0089
                           00008A   163 _IT1	=	0x008a
                           00008B   164 _IE1	=	0x008b
                           00008C   165 _TR0	=	0x008c
                           00008D   166 _TF0	=	0x008d
                           00008E   167 _TR1	=	0x008e
                           00008F   168 _TF1	=	0x008f
                           000090   169 _P1_0	=	0x0090
                           000091   170 _P1_1	=	0x0091
                           000092   171 _P1_2	=	0x0092
                           000093   172 _P1_3	=	0x0093
                           000094   173 _P1_4	=	0x0094
                           000095   174 _P1_5	=	0x0095
                           000096   175 _P1_6	=	0x0096
                           000097   176 _P1_7	=	0x0097
                           000098   177 _RI	=	0x0098
                           000099   178 _TI	=	0x0099
                           00009A   179 _RB8	=	0x009a
                           00009B   180 _TB8	=	0x009b
                           00009C   181 _REN	=	0x009c
                           00009D   182 _SM2	=	0x009d
                           00009E   183 _SM1	=	0x009e
                           00009F   184 _SM0	=	0x009f
                           0000A0   185 _P2_0	=	0x00a0
                           0000A1   186 _P2_1	=	0x00a1
                           0000A2   187 _P2_2	=	0x00a2
                           0000A3   188 _P2_3	=	0x00a3
                           0000A4   189 _P2_4	=	0x00a4
                           0000A5   190 _P2_5	=	0x00a5
                           0000A6   191 _P2_6	=	0x00a6
                           0000A7   192 _P2_7	=	0x00a7
                           0000A8   193 _EX0	=	0x00a8
                           0000A9   194 _ET0	=	0x00a9
                           0000AA   195 _EX1	=	0x00aa
                           0000AB   196 _ET1	=	0x00ab
                           0000AC   197 _ES	=	0x00ac
                           0000AF   198 _EA	=	0x00af
                           0000B0   199 _P3_0	=	0x00b0
                           0000B1   200 _P3_1	=	0x00b1
                           0000B2   201 _P3_2	=	0x00b2
                           0000B3   202 _P3_3	=	0x00b3
                           0000B4   203 _P3_4	=	0x00b4
                           0000B5   204 _P3_5	=	0x00b5
                           0000B6   205 _P3_6	=	0x00b6
                           0000B7   206 _P3_7	=	0x00b7
                           0000B0   207 _RXD	=	0x00b0
                           0000B1   208 _TXD	=	0x00b1
                           0000B2   209 _INT0	=	0x00b2
                           0000B3   210 _INT1	=	0x00b3
                           0000B4   211 _T0	=	0x00b4
                           0000B5   212 _T1	=	0x00b5
                           0000B6   213 _WR	=	0x00b6
                           0000B7   214 _RD	=	0x00b7
                           0000B8   215 _PX0	=	0x00b8
                           0000B9   216 _PT0	=	0x00b9
                           0000BA   217 _PX1	=	0x00ba
                           0000BB   218 _PT1	=	0x00bb
                           0000BC   219 _PS	=	0x00bc
                           0000D0   220 _P	=	0x00d0
                           0000D1   221 _F1	=	0x00d1
                           0000D2   222 _OV	=	0x00d2
                           0000D3   223 _RS0	=	0x00d3
                           0000D4   224 _RS1	=	0x00d4
                           0000D5   225 _F0	=	0x00d5
                           0000D6   226 _AC	=	0x00d6
                           0000D7   227 _CY	=	0x00d7
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable register banks
                                    230 ;--------------------------------------------------------
                                    231 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        232 	.ds 8
                                    233 ;--------------------------------------------------------
                                    234 ; internal ram data
                                    235 ;--------------------------------------------------------
                                    236 	.area DSEG    (DATA)
      000030                        237 _curAddr::
      000030                        238 	.ds 1
      000031                        239 _Main_firstP1_1_11:
      000031                        240 	.ds 1
      000032                        241 _Main_firstP2_1_11:
      000032                        242 	.ds 1
      000033                        243 _secondChar_PARM_2:
      000033                        244 	.ds 1
      000034                        245 _secondChar_PARM_3:
      000034                        246 	.ds 1
                                    247 ;--------------------------------------------------------
                                    248 ; overlayable items in internal ram 
                                    249 ;--------------------------------------------------------
                                    250 	.area	OSEG    (OVR,DATA)
      000035                        251 _firstChar_PARM_2:
      000035                        252 	.ds 1
                                    253 	.area	OSEG    (OVR,DATA)
                                    254 	.area	OSEG    (OVR,DATA)
                                    255 ;--------------------------------------------------------
                                    256 ; indirectly addressable internal ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area ISEG    (DATA)
                                    259 ;--------------------------------------------------------
                                    260 ; absolute internal ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area IABS    (ABS,DATA)
                                    263 	.area IABS    (ABS,DATA)
                                    264 ;--------------------------------------------------------
                                    265 ; bit data
                                    266 ;--------------------------------------------------------
                                    267 	.area BSEG    (BIT)
                                    268 ;--------------------------------------------------------
                                    269 ; paged external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area PSEG    (PAG,XDATA)
                                    272 ;--------------------------------------------------------
                                    273 ; external ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area XSEG    (XDATA)
                                    276 ;--------------------------------------------------------
                                    277 ; absolute external ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area XABS    (ABS,XDATA)
                                    280 ;--------------------------------------------------------
                                    281 ; external initialized ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area XISEG   (XDATA)
                                    284 	.area HOME    (CODE)
                                    285 	.area GSINIT0 (CODE)
                                    286 	.area GSINIT1 (CODE)
                                    287 	.area GSINIT2 (CODE)
                                    288 	.area GSINIT3 (CODE)
                                    289 	.area GSINIT4 (CODE)
                                    290 	.area GSINIT5 (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.area GSFINAL (CODE)
                                    293 	.area CSEG    (CODE)
                                    294 ;--------------------------------------------------------
                                    295 ; global & static initialisations
                                    296 ;--------------------------------------------------------
                                    297 	.area HOME    (CODE)
                                    298 	.area GSINIT  (CODE)
                                    299 	.area GSFINAL (CODE)
                                    300 	.area GSINIT  (CODE)
                                    301 ;	hw5.c:33: char curAddr=0x00;
      000000 75 30 00         [24]  302 	mov	_curAddr,#0x00
                                    303 ;--------------------------------------------------------
                                    304 ; Home
                                    305 ;--------------------------------------------------------
                                    306 	.area HOME    (CODE)
                                    307 	.area HOME    (CODE)
                                    308 ;--------------------------------------------------------
                                    309 ; code
                                    310 ;--------------------------------------------------------
                                    311 	.area CSEG    (CODE)
                                    312 ;------------------------------------------------------------
                                    313 ;Allocation info for local variables in function 'Main'
                                    314 ;------------------------------------------------------------
                                    315 ;bitmap                    Allocated to registers r1 
                                    316 ;bitmapL                   Allocated to registers r4 
                                    317 ;bitmapH                   Allocated to registers r5 
                                    318 ;row                       Allocated to registers r2 
                                    319 ;rowmask                   Allocated to registers r3 
                                    320 ;firstP1                   Allocated with name '_Main_firstP1_1_11'
                                    321 ;firstP2                   Allocated with name '_Main_firstP2_1_11'
                                    322 ;secondP1                  Allocated to registers 
                                    323 ;secondP2                  Allocated to registers 
                                    324 ;chr1                      Allocated to registers 
                                    325 ;charCount                 Allocated to registers r6 r7 
                                    326 ;------------------------------------------------------------
                                    327 ;	hw5.c:34: void Main(void) {
                                    328 ;	-----------------------------------------
                                    329 ;	 function Main
                                    330 ;	-----------------------------------------
      000003                        331 _Main:
                           000007   332 	ar7 = 0x07
                           000006   333 	ar6 = 0x06
                           000005   334 	ar5 = 0x05
                           000004   335 	ar4 = 0x04
                           000003   336 	ar3 = 0x03
                           000002   337 	ar2 = 0x02
                           000001   338 	ar1 = 0x01
                           000000   339 	ar0 = 0x00
                                    340 ;	hw5.c:38: int charCount=0;
      000003 7E 00            [12]  341 	mov	r6,#0x00
      000005 7F 00            [12]  342 	mov	r7,#0x00
                                    343 ;	hw5.c:40: functionSet();
      000007 C0 07            [24]  344 	push	ar7
      000009 C0 06            [24]  345 	push	ar6
      00000B 12 06 25         [24]  346 	lcall	_functionSet
                                    347 ;	hw5.c:42: IRWRITE(0x06);//entryModeSet(1, 0); // increment and no shift
      00000E 75 82 06         [24]  348 	mov	dpl,#0x06
      000011 12 06 0A         [24]  349 	lcall	_IRWRITE
                                    350 ;	hw5.c:44: IRWRITE(0x0F);//displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
      000014 75 82 0F         [24]  351 	mov	dpl,#0x0F
      000017 12 06 0A         [24]  352 	lcall	_IRWRITE
                                    353 ;	hw5.c:46: setDdRamAddress(0x00); 
      00001A 75 82 00         [24]  354 	mov	dpl,#0x00
      00001D 12 06 44         [24]  355 	lcall	_setDdRamAddress
      000020 D0 06            [24]  356 	pop	ar6
      000022 D0 07            [24]  357 	pop	ar7
                                    358 ;	hw5.c:49: while (1) {
      000024                        359 00114$:
                                    360 ;	hw5.c:51: for (row=bitmapL=bitmapH=0, rowmask = 0xf7; row < 4; row++, rowmask >>= 1) {
      000024 7D 00            [12]  361 	mov	r5,#0x00
      000026 7C 00            [12]  362 	mov	r4,#0x00
      000028 7B F7            [12]  363 	mov	r3,#0xF7
      00002A 7A 00            [12]  364 	mov	r2,#0x00
      00002C                        365 00117$:
      00002C C3               [12]  366 	clr	c
      00002D EA               [12]  367 	mov	a,r2
      00002E 64 80            [12]  368 	xrl	a,#0x80
      000030 94 84            [12]  369 	subb	a,#0x84
      000032 50 3A            [24]  370 	jnc	00103$
                                    371 ;	hw5.c:52: bitmap=colScan(rowmask);
      000034 8B 82            [24]  372 	mov	dpl,r3
      000036 C0 07            [24]  373 	push	ar7
      000038 C0 06            [24]  374 	push	ar6
      00003A C0 05            [24]  375 	push	ar5
      00003C C0 04            [24]  376 	push	ar4
      00003E C0 03            [24]  377 	push	ar3
      000040 C0 02            [24]  378 	push	ar2
      000042 12 06 B2         [24]  379 	lcall	_colScan
      000045 A9 82            [24]  380 	mov	r1,dpl
      000047 D0 02            [24]  381 	pop	ar2
      000049 D0 03            [24]  382 	pop	ar3
      00004B D0 04            [24]  383 	pop	ar4
      00004D D0 05            [24]  384 	pop	ar5
      00004F D0 06            [24]  385 	pop	ar6
      000051 D0 07            [24]  386 	pop	ar7
                                    387 ;	hw5.c:53: if (row==2) {
      000053 BA 02 08         [24]  388 	cjne	r2,#0x02,00102$
                                    389 ;	hw5.c:54: bitmapH = (bitmapL >> 2);
      000056 EC               [12]  390 	mov	a,r4
      000057 A2 E7            [12]  391 	mov	c,acc.7
      000059 13               [12]  392 	rrc	a
      00005A A2 E7            [12]  393 	mov	c,acc.7
      00005C 13               [12]  394 	rrc	a
      00005D FD               [12]  395 	mov	r5,a
      00005E                        396 00102$:
                                    397 ;	hw5.c:56: bitmapL = (bitmapL<<3) | bitmap;
      00005E EC               [12]  398 	mov	a,r4
      00005F C4               [12]  399 	swap	a
      000060 03               [12]  400 	rr	a
      000061 54 F8            [12]  401 	anl	a,#0xF8
      000063 F8               [12]  402 	mov	r0,a
      000064 49               [12]  403 	orl	a,r1
      000065 FC               [12]  404 	mov	r4,a
                                    405 ;	hw5.c:51: for (row=bitmapL=bitmapH=0, rowmask = 0xf7; row < 4; row++, rowmask >>= 1) {
      000066 0A               [12]  406 	inc	r2
      000067 EB               [12]  407 	mov	a,r3
      000068 A2 E7            [12]  408 	mov	c,acc.7
      00006A 13               [12]  409 	rrc	a
      00006B FB               [12]  410 	mov	r3,a
      00006C 80 BE            [24]  411 	sjmp	00117$
      00006E                        412 00103$:
                                    413 ;	hw5.c:60: if(bitmapL==0x00 && bitmapH==0x00){
      00006E EC               [12]  414 	mov	a,r4
      00006F 70 03            [24]  415 	jnz	00110$
      000071 ED               [12]  416 	mov	a,r5
      000072 60 B0            [24]  417 	jz	00114$
      000074                        418 00110$:
                                    419 ;	hw5.c:62: }else if(charCount==0){//first char
      000074 EE               [12]  420 	mov	a,r6
      000075 4F               [12]  421 	orl	a,r7
                                    422 ;	hw5.c:64: charCount=1;
      000076 70 18            [24]  423 	jnz	00107$
      000078 7E 01            [12]  424 	mov	r6,#0x01
      00007A FF               [12]  425 	mov	r7,a
                                    426 ;	hw5.c:65: firstP1=P2= bitmapL;
      00007B 8C A0            [24]  427 	mov	_P2,r4
      00007D 8C 31            [24]  428 	mov	_Main_firstP1_1_11,r4
                                    429 ;	hw5.c:66: firstP2=P3= bitmapH;
      00007F 8D B0            [24]  430 	mov	_P3,r5
      000081 8D 32            [24]  431 	mov	_Main_firstP2_1_11,r5
                                    432 ;	hw5.c:67: delay();
      000083 C0 07            [24]  433 	push	ar7
      000085 C0 06            [24]  434 	push	ar6
      000087 12 06 AD         [24]  435 	lcall	_delay
      00008A D0 06            [24]  436 	pop	ar6
      00008C D0 07            [24]  437 	pop	ar7
      00008E 80 94            [24]  438 	sjmp	00114$
      000090                        439 00107$:
                                    440 ;	hw5.c:68: }else if(charCount==1){//second char
      000090 BE 01 91         [24]  441 	cjne	r6,#0x01,00114$
      000093 BF 00 8E         [24]  442 	cjne	r7,#0x00,00114$
                                    443 ;	hw5.c:70: charCount=0;
      000096 7E 00            [12]  444 	mov	r6,#0x00
      000098 7F 00            [12]  445 	mov	r7,#0x00
                                    446 ;	hw5.c:71: secondP1=P2= bitmapL;
      00009A 8C A0            [24]  447 	mov	_P2,r4
                                    448 ;	hw5.c:72: secondP2=P3= bitmapH;		
      00009C 8D B0            [24]  449 	mov	_P3,r5
                                    450 ;	hw5.c:73: chr1=firstChar(firstP1,firstP2);
      00009E 85 32 35         [24]  451 	mov	_firstChar_PARM_2,_Main_firstP2_1_11
      0000A1 85 31 82         [24]  452 	mov	dpl,_Main_firstP1_1_11
      0000A4 C0 07            [24]  453 	push	ar7
      0000A6 C0 06            [24]  454 	push	ar6
      0000A8 C0 05            [24]  455 	push	ar5
      0000AA C0 04            [24]  456 	push	ar4
      0000AC 12 00 C4         [24]  457 	lcall	_firstChar
      0000AF D0 04            [24]  458 	pop	ar4
      0000B1 D0 05            [24]  459 	pop	ar5
                                    460 ;	hw5.c:74: secondChar(chr1,secondP1,secondP2);//secondChar() returns the input of this time
      0000B3 8C 33            [24]  461 	mov	_secondChar_PARM_2,r4
      0000B5 8D 34            [24]  462 	mov	_secondChar_PARM_3,r5
      0000B7 12 01 52         [24]  463 	lcall	_secondChar
                                    464 ;	hw5.c:75: delay();
      0000BA 12 06 AD         [24]  465 	lcall	_delay
      0000BD D0 06            [24]  466 	pop	ar6
      0000BF D0 07            [24]  467 	pop	ar7
      0000C1 02 00 24         [24]  468 	ljmp	00114$
                                    469 ;------------------------------------------------------------
                                    470 ;Allocation info for local variables in function 'firstChar'
                                    471 ;------------------------------------------------------------
                                    472 ;fstP2                     Allocated with name '_firstChar_PARM_2'
                                    473 ;fstP1                     Allocated to registers r7 
                                    474 ;------------------------------------------------------------
                                    475 ;	hw5.c:82: char firstChar(char fstP1,char fstP2){	
                                    476 ;	-----------------------------------------
                                    477 ;	 function firstChar
                                    478 ;	-----------------------------------------
      0000C4                        479 _firstChar:
      0000C4 AF 82            [24]  480 	mov	r7,dpl
                                    481 ;	hw5.c:83: if (fstP2!=0x00){//1,2,3,4
      0000C6 E5 35            [12]  482 	mov	a,_firstChar_PARM_2
      0000C8 60 2F            [24]  483 	jz	00136$
                                    484 ;	hw5.c:84: if((fstP2>>3)&1){
      0000CA E5 35            [12]  485 	mov	a,_firstChar_PARM_2
      0000CC A2 E3            [12]  486 	mov	c,acc[3]
      0000CE E4               [12]  487 	clr	a
      0000CF 33               [12]  488 	rlc	a
      0000D0 FE               [12]  489 	mov	r6,a
      0000D1 60 04            [24]  490 	jz	00110$
                                    491 ;	hw5.c:85: return '1';
      0000D3 75 82 31         [24]  492 	mov	dpl,#0x31
      0000D6 22               [24]  493 	ret
      0000D7                        494 00110$:
                                    495 ;	hw5.c:86: }else if((fstP2>>2)&1){
      0000D7 E5 35            [12]  496 	mov	a,_firstChar_PARM_2
      0000D9 03               [12]  497 	rr	a
      0000DA 03               [12]  498 	rr	a
      0000DB 54 01            [12]  499 	anl	a,#0x01
      0000DD FE               [12]  500 	mov	r6,a
      0000DE 60 04            [24]  501 	jz	00107$
                                    502 ;	hw5.c:87: return '2';
      0000E0 75 82 32         [24]  503 	mov	dpl,#0x32
      0000E3 22               [24]  504 	ret
      0000E4                        505 00107$:
                                    506 ;	hw5.c:88: }else if((fstP2>>1)&1){
      0000E4 E5 35            [12]  507 	mov	a,_firstChar_PARM_2
      0000E6 03               [12]  508 	rr	a
      0000E7 54 01            [12]  509 	anl	a,#0x01
      0000E9 FE               [12]  510 	mov	r6,a
      0000EA 60 04            [24]  511 	jz	00104$
                                    512 ;	hw5.c:89: return '3';
      0000EC 75 82 33         [24]  513 	mov	dpl,#0x33
      0000EF 22               [24]  514 	ret
      0000F0                        515 00104$:
                                    516 ;	hw5.c:90: }else if((fstP2)&1){
      0000F0 E5 35            [12]  517 	mov	a,_firstChar_PARM_2
      0000F2 30 E0 5C         [24]  518 	jnb	acc.0,00138$
                                    519 ;	hw5.c:91: return '4';
      0000F5 75 82 34         [24]  520 	mov	dpl,#0x34
      0000F8 22               [24]  521 	ret
      0000F9                        522 00136$:
                                    523 ;	hw5.c:95: if((fstP1>>7)&1){
      0000F9 EF               [12]  524 	mov	a,r7
      0000FA 23               [12]  525 	rl	a
      0000FB 54 01            [12]  526 	anl	a,#0x01
      0000FD FE               [12]  527 	mov	r6,a
      0000FE 60 04            [24]  528 	jz	00133$
                                    529 ;	hw5.c:96: return '5';
      000100 75 82 35         [24]  530 	mov	dpl,#0x35
      000103 22               [24]  531 	ret
      000104                        532 00133$:
                                    533 ;	hw5.c:97: }else if((fstP1>>6)&1){
      000104 EF               [12]  534 	mov	a,r7
      000105 23               [12]  535 	rl	a
      000106 23               [12]  536 	rl	a
      000107 54 01            [12]  537 	anl	a,#0x01
      000109 FE               [12]  538 	mov	r6,a
      00010A 60 04            [24]  539 	jz	00130$
                                    540 ;	hw5.c:98: return '6';
      00010C 75 82 36         [24]  541 	mov	dpl,#0x36
      00010F 22               [24]  542 	ret
      000110                        543 00130$:
                                    544 ;	hw5.c:99: }else if((fstP1>>5)&1){
      000110 EF               [12]  545 	mov	a,r7
      000111 A2 E5            [12]  546 	mov	c,acc[5]
      000113 E4               [12]  547 	clr	a
      000114 33               [12]  548 	rlc	a
      000115 FE               [12]  549 	mov	r6,a
      000116 60 04            [24]  550 	jz	00127$
                                    551 ;	hw5.c:100: return '7';
      000118 75 82 37         [24]  552 	mov	dpl,#0x37
      00011B 22               [24]  553 	ret
      00011C                        554 00127$:
                                    555 ;	hw5.c:101: }else if((fstP1>>4)&1){
      00011C EF               [12]  556 	mov	a,r7
      00011D C4               [12]  557 	swap	a
      00011E 54 01            [12]  558 	anl	a,#0x01
      000120 FE               [12]  559 	mov	r6,a
      000121 60 04            [24]  560 	jz	00124$
                                    561 ;	hw5.c:102: return '8';
      000123 75 82 38         [24]  562 	mov	dpl,#0x38
      000126 22               [24]  563 	ret
      000127                        564 00124$:
                                    565 ;	hw5.c:103: }else if((fstP1>>3)&1){
      000127 EF               [12]  566 	mov	a,r7
      000128 A2 E3            [12]  567 	mov	c,acc[3]
      00012A E4               [12]  568 	clr	a
      00012B 33               [12]  569 	rlc	a
      00012C FE               [12]  570 	mov	r6,a
      00012D 60 04            [24]  571 	jz	00121$
                                    572 ;	hw5.c:104: return '9';
      00012F 75 82 39         [24]  573 	mov	dpl,#0x39
      000132 22               [24]  574 	ret
      000133                        575 00121$:
                                    576 ;	hw5.c:105: }else if((fstP1>>2)&1){
      000133 EF               [12]  577 	mov	a,r7
      000134 03               [12]  578 	rr	a
      000135 03               [12]  579 	rr	a
      000136 54 01            [12]  580 	anl	a,#0x01
      000138 FE               [12]  581 	mov	r6,a
      000139 60 04            [24]  582 	jz	00118$
                                    583 ;	hw5.c:106: return '*';
      00013B 75 82 2A         [24]  584 	mov	dpl,#0x2A
      00013E 22               [24]  585 	ret
      00013F                        586 00118$:
                                    587 ;	hw5.c:107: }else if((fstP1>>1)&1){
      00013F EF               [12]  588 	mov	a,r7
      000140 03               [12]  589 	rr	a
      000141 54 01            [12]  590 	anl	a,#0x01
      000143 FE               [12]  591 	mov	r6,a
      000144 60 04            [24]  592 	jz	00115$
                                    593 ;	hw5.c:108: return '0';
      000146 75 82 30         [24]  594 	mov	dpl,#0x30
      000149 22               [24]  595 	ret
      00014A                        596 00115$:
                                    597 ;	hw5.c:109: }else if((fstP1)&1){
      00014A EF               [12]  598 	mov	a,r7
      00014B 30 E0 03         [24]  599 	jnb	acc.0,00138$
                                    600 ;	hw5.c:110: return '#';
      00014E 75 82 23         [24]  601 	mov	dpl,#0x23
      000151                        602 00138$:
      000151 22               [24]  603 	ret
                                    604 ;------------------------------------------------------------
                                    605 ;Allocation info for local variables in function 'secondChar'
                                    606 ;------------------------------------------------------------
                                    607 ;sndP1                     Allocated with name '_secondChar_PARM_2'
                                    608 ;sndP2                     Allocated with name '_secondChar_PARM_3'
                                    609 ;chr1                      Allocated to registers r7 
                                    610 ;chr2                      Allocated to registers r6 
                                    611 ;i                         Allocated to registers 
                                    612 ;------------------------------------------------------------
                                    613 ;	hw5.c:114: void secondChar(char chr1,char sndP1,char sndP2){
                                    614 ;	-----------------------------------------
                                    615 ;	 function secondChar
                                    616 ;	-----------------------------------------
      000152                        617 _secondChar:
      000152 AF 82            [24]  618 	mov	r7,dpl
                                    619 ;	hw5.c:117: chr2=firstChar(sndP1,sndP2);
      000154 85 34 35         [24]  620 	mov	_firstChar_PARM_2,_secondChar_PARM_3
      000157 85 33 82         [24]  621 	mov	dpl,_secondChar_PARM_2
      00015A C0 07            [24]  622 	push	ar7
      00015C 12 00 C4         [24]  623 	lcall	_firstChar
      00015F AE 82            [24]  624 	mov	r6,dpl
      000161 D0 07            [24]  625 	pop	ar7
                                    626 ;	hw5.c:118: if (chr1=='2'){
      000163 BF 32 02         [24]  627 	cjne	r7,#0x32,00606$
      000166 80 03            [24]  628 	sjmp	00607$
      000168                        629 00606$:
      000168 02 01 C5         [24]  630 	ljmp	00347$
      00016B                        631 00607$:
                                    632 ;	hw5.c:119: if (chr2=='1'){
      00016B BE 31 0B         [24]  633 	cjne	r6,#0x31,00117$
                                    634 ;	hw5.c:120: sendString("A");
      00016E 90 06 DE         [24]  635 	mov	dptr,#___str_0
      000171 75 F0 80         [24]  636 	mov	b,#0x80
      000174 12 06 82         [24]  637 	lcall	_sendString
      000177 80 47            [24]  638 	sjmp	00118$
      000179                        639 00117$:
                                    640 ;	hw5.c:121: }else if (chr2=='2'){
      000179 BE 32 0B         [24]  641 	cjne	r6,#0x32,00114$
                                    642 ;	hw5.c:122: sendString("B");
      00017C 90 06 E0         [24]  643 	mov	dptr,#___str_1
      00017F 75 F0 80         [24]  644 	mov	b,#0x80
      000182 12 06 82         [24]  645 	lcall	_sendString
      000185 80 39            [24]  646 	sjmp	00118$
      000187                        647 00114$:
                                    648 ;	hw5.c:123: }else if (chr2=='3'){
      000187 BE 33 0B         [24]  649 	cjne	r6,#0x33,00111$
                                    650 ;	hw5.c:124: sendString("C");
      00018A 90 06 E2         [24]  651 	mov	dptr,#___str_2
      00018D 75 F0 80         [24]  652 	mov	b,#0x80
      000190 12 06 82         [24]  653 	lcall	_sendString
      000193 80 2B            [24]  654 	sjmp	00118$
      000195                        655 00111$:
                                    656 ;	hw5.c:125: }else if (chr2=='4'){
      000195 BE 34 0B         [24]  657 	cjne	r6,#0x34,00108$
                                    658 ;	hw5.c:126: sendString("a");
      000198 90 06 E4         [24]  659 	mov	dptr,#___str_3
      00019B 75 F0 80         [24]  660 	mov	b,#0x80
      00019E 12 06 82         [24]  661 	lcall	_sendString
      0001A1 80 1D            [24]  662 	sjmp	00118$
      0001A3                        663 00108$:
                                    664 ;	hw5.c:127: }else if (chr2=='5'){
      0001A3 BE 35 0B         [24]  665 	cjne	r6,#0x35,00105$
                                    666 ;	hw5.c:128: sendString("b");
      0001A6 90 06 E6         [24]  667 	mov	dptr,#___str_4
      0001A9 75 F0 80         [24]  668 	mov	b,#0x80
      0001AC 12 06 82         [24]  669 	lcall	_sendString
      0001AF 80 0F            [24]  670 	sjmp	00118$
      0001B1                        671 00105$:
                                    672 ;	hw5.c:129: }else if (chr2=='6'){		
      0001B1 BE 36 0B         [24]  673 	cjne	r6,#0x36,00102$
                                    674 ;	hw5.c:130: sendString("c");
      0001B4 90 06 E8         [24]  675 	mov	dptr,#___str_5
      0001B7 75 F0 80         [24]  676 	mov	b,#0x80
      0001BA 12 06 82         [24]  677 	lcall	_sendString
      0001BD 80 01            [24]  678 	sjmp	00118$
      0001BF                        679 00102$:
                                    680 ;	hw5.c:131: }else return;
      0001BF 22               [24]  681 	ret
      0001C0                        682 00118$:
                                    683 ;	hw5.c:132: curAddr++;
      0001C0 05 30            [12]  684 	inc	_curAddr
      0001C2 02 05 F5         [24]  685 	ljmp	00348$
      0001C5                        686 00347$:
                                    687 ;	hw5.c:134: }else if (chr1=='3'){
      0001C5 BF 33 02         [24]  688 	cjne	r7,#0x33,00620$
      0001C8 80 03            [24]  689 	sjmp	00621$
      0001CA                        690 00620$:
      0001CA 02 02 27         [24]  691 	ljmp	00344$
      0001CD                        692 00621$:
                                    693 ;	hw5.c:135: if (chr2=='1'){
      0001CD BE 31 0B         [24]  694 	cjne	r6,#0x31,00135$
                                    695 ;	hw5.c:136: sendString("D");
      0001D0 90 06 EA         [24]  696 	mov	dptr,#___str_6
      0001D3 75 F0 80         [24]  697 	mov	b,#0x80
      0001D6 12 06 82         [24]  698 	lcall	_sendString
      0001D9 80 47            [24]  699 	sjmp	00136$
      0001DB                        700 00135$:
                                    701 ;	hw5.c:137: }else if (chr2=='2'){
      0001DB BE 32 0B         [24]  702 	cjne	r6,#0x32,00132$
                                    703 ;	hw5.c:138: sendString("E");
      0001DE 90 06 EC         [24]  704 	mov	dptr,#___str_7
      0001E1 75 F0 80         [24]  705 	mov	b,#0x80
      0001E4 12 06 82         [24]  706 	lcall	_sendString
      0001E7 80 39            [24]  707 	sjmp	00136$
      0001E9                        708 00132$:
                                    709 ;	hw5.c:139: }else if (chr2=='3'){
      0001E9 BE 33 0B         [24]  710 	cjne	r6,#0x33,00129$
                                    711 ;	hw5.c:140: sendString("F");
      0001EC 90 06 EE         [24]  712 	mov	dptr,#___str_8
      0001EF 75 F0 80         [24]  713 	mov	b,#0x80
      0001F2 12 06 82         [24]  714 	lcall	_sendString
      0001F5 80 2B            [24]  715 	sjmp	00136$
      0001F7                        716 00129$:
                                    717 ;	hw5.c:141: }else if (chr2=='4'){
      0001F7 BE 34 0B         [24]  718 	cjne	r6,#0x34,00126$
                                    719 ;	hw5.c:142: sendString("d");
      0001FA 90 06 F0         [24]  720 	mov	dptr,#___str_9
      0001FD 75 F0 80         [24]  721 	mov	b,#0x80
      000200 12 06 82         [24]  722 	lcall	_sendString
      000203 80 1D            [24]  723 	sjmp	00136$
      000205                        724 00126$:
                                    725 ;	hw5.c:143: }else if (chr2=='5'){
      000205 BE 35 0B         [24]  726 	cjne	r6,#0x35,00123$
                                    727 ;	hw5.c:144: sendString("e");
      000208 90 06 F2         [24]  728 	mov	dptr,#___str_10
      00020B 75 F0 80         [24]  729 	mov	b,#0x80
      00020E 12 06 82         [24]  730 	lcall	_sendString
      000211 80 0F            [24]  731 	sjmp	00136$
      000213                        732 00123$:
                                    733 ;	hw5.c:145: }else if (chr2=='6'){
      000213 BE 36 0B         [24]  734 	cjne	r6,#0x36,00120$
                                    735 ;	hw5.c:146: sendString("f");
      000216 90 06 F4         [24]  736 	mov	dptr,#___str_11
      000219 75 F0 80         [24]  737 	mov	b,#0x80
      00021C 12 06 82         [24]  738 	lcall	_sendString
      00021F 80 01            [24]  739 	sjmp	00136$
      000221                        740 00120$:
                                    741 ;	hw5.c:147: }else return;
      000221 22               [24]  742 	ret
      000222                        743 00136$:
                                    744 ;	hw5.c:148: curAddr++;
      000222 05 30            [12]  745 	inc	_curAddr
      000224 02 05 F5         [24]  746 	ljmp	00348$
      000227                        747 00344$:
                                    748 ;	hw5.c:149: }else if (chr1=='4'){
      000227 BF 34 02         [24]  749 	cjne	r7,#0x34,00634$
      00022A 80 03            [24]  750 	sjmp	00635$
      00022C                        751 00634$:
      00022C 02 02 89         [24]  752 	ljmp	00341$
      00022F                        753 00635$:
                                    754 ;	hw5.c:150: if (chr2=='1'){
      00022F BE 31 0B         [24]  755 	cjne	r6,#0x31,00153$
                                    756 ;	hw5.c:151: sendString("G");
      000232 90 06 F6         [24]  757 	mov	dptr,#___str_12
      000235 75 F0 80         [24]  758 	mov	b,#0x80
      000238 12 06 82         [24]  759 	lcall	_sendString
      00023B 80 47            [24]  760 	sjmp	00154$
      00023D                        761 00153$:
                                    762 ;	hw5.c:152: }else if (chr2=='2'){
      00023D BE 32 0B         [24]  763 	cjne	r6,#0x32,00150$
                                    764 ;	hw5.c:153: sendString("H");
      000240 90 06 F8         [24]  765 	mov	dptr,#___str_13
      000243 75 F0 80         [24]  766 	mov	b,#0x80
      000246 12 06 82         [24]  767 	lcall	_sendString
      000249 80 39            [24]  768 	sjmp	00154$
      00024B                        769 00150$:
                                    770 ;	hw5.c:154: }else if (chr2=='3'){
      00024B BE 33 0B         [24]  771 	cjne	r6,#0x33,00147$
                                    772 ;	hw5.c:155: sendString("I");
      00024E 90 06 FA         [24]  773 	mov	dptr,#___str_14
      000251 75 F0 80         [24]  774 	mov	b,#0x80
      000254 12 06 82         [24]  775 	lcall	_sendString
      000257 80 2B            [24]  776 	sjmp	00154$
      000259                        777 00147$:
                                    778 ;	hw5.c:156: }else if (chr2=='4'){
      000259 BE 34 0B         [24]  779 	cjne	r6,#0x34,00144$
                                    780 ;	hw5.c:157: sendString("G");
      00025C 90 06 F6         [24]  781 	mov	dptr,#___str_12
      00025F 75 F0 80         [24]  782 	mov	b,#0x80
      000262 12 06 82         [24]  783 	lcall	_sendString
      000265 80 1D            [24]  784 	sjmp	00154$
      000267                        785 00144$:
                                    786 ;	hw5.c:158: }else if (chr2=='5'){
      000267 BE 35 0B         [24]  787 	cjne	r6,#0x35,00141$
                                    788 ;	hw5.c:159: sendString("H");
      00026A 90 06 F8         [24]  789 	mov	dptr,#___str_13
      00026D 75 F0 80         [24]  790 	mov	b,#0x80
      000270 12 06 82         [24]  791 	lcall	_sendString
      000273 80 0F            [24]  792 	sjmp	00154$
      000275                        793 00141$:
                                    794 ;	hw5.c:160: }else if (chr2=='6'){
      000275 BE 36 0B         [24]  795 	cjne	r6,#0x36,00138$
                                    796 ;	hw5.c:161: sendString("I");
      000278 90 06 FA         [24]  797 	mov	dptr,#___str_14
      00027B 75 F0 80         [24]  798 	mov	b,#0x80
      00027E 12 06 82         [24]  799 	lcall	_sendString
      000281 80 01            [24]  800 	sjmp	00154$
      000283                        801 00138$:
                                    802 ;	hw5.c:162: }else return;
      000283 22               [24]  803 	ret
      000284                        804 00154$:
                                    805 ;	hw5.c:163: curAddr++;
      000284 05 30            [12]  806 	inc	_curAddr
      000286 02 05 F5         [24]  807 	ljmp	00348$
      000289                        808 00341$:
                                    809 ;	hw5.c:164: }else if (chr1=='5'){
      000289 BF 35 02         [24]  810 	cjne	r7,#0x35,00648$
      00028C 80 03            [24]  811 	sjmp	00649$
      00028E                        812 00648$:
      00028E 02 02 EB         [24]  813 	ljmp	00338$
      000291                        814 00649$:
                                    815 ;	hw5.c:165: if (chr2=='1'){
      000291 BE 31 0B         [24]  816 	cjne	r6,#0x31,00171$
                                    817 ;	hw5.c:166: sendString("J");
      000294 90 06 FC         [24]  818 	mov	dptr,#___str_15
      000297 75 F0 80         [24]  819 	mov	b,#0x80
      00029A 12 06 82         [24]  820 	lcall	_sendString
      00029D 80 47            [24]  821 	sjmp	00172$
      00029F                        822 00171$:
                                    823 ;	hw5.c:167: }else if (chr2=='2'){
      00029F BE 32 0B         [24]  824 	cjne	r6,#0x32,00168$
                                    825 ;	hw5.c:168: sendString("K");
      0002A2 90 06 FE         [24]  826 	mov	dptr,#___str_16
      0002A5 75 F0 80         [24]  827 	mov	b,#0x80
      0002A8 12 06 82         [24]  828 	lcall	_sendString
      0002AB 80 39            [24]  829 	sjmp	00172$
      0002AD                        830 00168$:
                                    831 ;	hw5.c:169: }else if (chr2=='3'){
      0002AD BE 33 0B         [24]  832 	cjne	r6,#0x33,00165$
                                    833 ;	hw5.c:170: sendString("L");
      0002B0 90 07 00         [24]  834 	mov	dptr,#___str_17
      0002B3 75 F0 80         [24]  835 	mov	b,#0x80
      0002B6 12 06 82         [24]  836 	lcall	_sendString
      0002B9 80 2B            [24]  837 	sjmp	00172$
      0002BB                        838 00165$:
                                    839 ;	hw5.c:171: }else if (chr2=='4'){
      0002BB BE 34 0B         [24]  840 	cjne	r6,#0x34,00162$
                                    841 ;	hw5.c:172: sendString("j");
      0002BE 90 07 02         [24]  842 	mov	dptr,#___str_18
      0002C1 75 F0 80         [24]  843 	mov	b,#0x80
      0002C4 12 06 82         [24]  844 	lcall	_sendString
      0002C7 80 1D            [24]  845 	sjmp	00172$
      0002C9                        846 00162$:
                                    847 ;	hw5.c:173: }else if (chr2=='5'){
      0002C9 BE 35 0B         [24]  848 	cjne	r6,#0x35,00159$
                                    849 ;	hw5.c:174: sendString("k");
      0002CC 90 07 04         [24]  850 	mov	dptr,#___str_19
      0002CF 75 F0 80         [24]  851 	mov	b,#0x80
      0002D2 12 06 82         [24]  852 	lcall	_sendString
      0002D5 80 0F            [24]  853 	sjmp	00172$
      0002D7                        854 00159$:
                                    855 ;	hw5.c:175: }else if (chr2=='6'){
      0002D7 BE 36 0B         [24]  856 	cjne	r6,#0x36,00156$
                                    857 ;	hw5.c:176: sendString("l");
      0002DA 90 07 06         [24]  858 	mov	dptr,#___str_20
      0002DD 75 F0 80         [24]  859 	mov	b,#0x80
      0002E0 12 06 82         [24]  860 	lcall	_sendString
      0002E3 80 01            [24]  861 	sjmp	00172$
      0002E5                        862 00156$:
                                    863 ;	hw5.c:177: }else return;
      0002E5 22               [24]  864 	ret
      0002E6                        865 00172$:
                                    866 ;	hw5.c:178: curAddr++;
      0002E6 05 30            [12]  867 	inc	_curAddr
      0002E8 02 05 F5         [24]  868 	ljmp	00348$
      0002EB                        869 00338$:
                                    870 ;	hw5.c:179: }else if (chr1=='6'){
      0002EB BF 36 02         [24]  871 	cjne	r7,#0x36,00662$
      0002EE 80 03            [24]  872 	sjmp	00663$
      0002F0                        873 00662$:
      0002F0 02 03 4D         [24]  874 	ljmp	00335$
      0002F3                        875 00663$:
                                    876 ;	hw5.c:180: if (chr2=='1'){
      0002F3 BE 31 0B         [24]  877 	cjne	r6,#0x31,00189$
                                    878 ;	hw5.c:181: sendString("M");
      0002F6 90 07 08         [24]  879 	mov	dptr,#___str_21
      0002F9 75 F0 80         [24]  880 	mov	b,#0x80
      0002FC 12 06 82         [24]  881 	lcall	_sendString
      0002FF 80 47            [24]  882 	sjmp	00190$
      000301                        883 00189$:
                                    884 ;	hw5.c:182: }else if (chr2=='2'){
      000301 BE 32 0B         [24]  885 	cjne	r6,#0x32,00186$
                                    886 ;	hw5.c:183: sendString("N");
      000304 90 07 0A         [24]  887 	mov	dptr,#___str_22
      000307 75 F0 80         [24]  888 	mov	b,#0x80
      00030A 12 06 82         [24]  889 	lcall	_sendString
      00030D 80 39            [24]  890 	sjmp	00190$
      00030F                        891 00186$:
                                    892 ;	hw5.c:184: }else if (chr2=='3'){
      00030F BE 33 0B         [24]  893 	cjne	r6,#0x33,00183$
                                    894 ;	hw5.c:185: sendString("O");
      000312 90 07 0C         [24]  895 	mov	dptr,#___str_23
      000315 75 F0 80         [24]  896 	mov	b,#0x80
      000318 12 06 82         [24]  897 	lcall	_sendString
      00031B 80 2B            [24]  898 	sjmp	00190$
      00031D                        899 00183$:
                                    900 ;	hw5.c:186: }else if (chr2=='4'){
      00031D BE 34 0B         [24]  901 	cjne	r6,#0x34,00180$
                                    902 ;	hw5.c:187: sendString("m");
      000320 90 07 0E         [24]  903 	mov	dptr,#___str_24
      000323 75 F0 80         [24]  904 	mov	b,#0x80
      000326 12 06 82         [24]  905 	lcall	_sendString
      000329 80 1D            [24]  906 	sjmp	00190$
      00032B                        907 00180$:
                                    908 ;	hw5.c:188: }else if (chr2=='5'){
      00032B BE 35 0B         [24]  909 	cjne	r6,#0x35,00177$
                                    910 ;	hw5.c:189: sendString("n");
      00032E 90 07 10         [24]  911 	mov	dptr,#___str_25
      000331 75 F0 80         [24]  912 	mov	b,#0x80
      000334 12 06 82         [24]  913 	lcall	_sendString
      000337 80 0F            [24]  914 	sjmp	00190$
      000339                        915 00177$:
                                    916 ;	hw5.c:190: }else if (chr2=='6'){
      000339 BE 36 0B         [24]  917 	cjne	r6,#0x36,00174$
                                    918 ;	hw5.c:191: sendString("o");
      00033C 90 07 12         [24]  919 	mov	dptr,#___str_26
      00033F 75 F0 80         [24]  920 	mov	b,#0x80
      000342 12 06 82         [24]  921 	lcall	_sendString
      000345 80 01            [24]  922 	sjmp	00190$
      000347                        923 00174$:
                                    924 ;	hw5.c:192: }else return;
      000347 22               [24]  925 	ret
      000348                        926 00190$:
                                    927 ;	hw5.c:193: curAddr++;
      000348 05 30            [12]  928 	inc	_curAddr
      00034A 02 05 F5         [24]  929 	ljmp	00348$
      00034D                        930 00335$:
                                    931 ;	hw5.c:194: }else if (chr1=='7'){
      00034D BF 37 02         [24]  932 	cjne	r7,#0x37,00676$
      000350 80 03            [24]  933 	sjmp	00677$
      000352                        934 00676$:
      000352 02 03 CD         [24]  935 	ljmp	00332$
      000355                        936 00677$:
                                    937 ;	hw5.c:195: if (chr2=='1'){
      000355 BE 31 0C         [24]  938 	cjne	r6,#0x31,00213$
                                    939 ;	hw5.c:196: sendString("P");
      000358 90 07 14         [24]  940 	mov	dptr,#___str_27
      00035B 75 F0 80         [24]  941 	mov	b,#0x80
      00035E 12 06 82         [24]  942 	lcall	_sendString
      000361 02 03 C8         [24]  943 	ljmp	00214$
      000364                        944 00213$:
                                    945 ;	hw5.c:197: }else if (chr2=='2'){
      000364 BE 32 0C         [24]  946 	cjne	r6,#0x32,00210$
                                    947 ;	hw5.c:198: sendString("Q");
      000367 90 07 16         [24]  948 	mov	dptr,#___str_28
      00036A 75 F0 80         [24]  949 	mov	b,#0x80
      00036D 12 06 82         [24]  950 	lcall	_sendString
      000370 02 03 C8         [24]  951 	ljmp	00214$
      000373                        952 00210$:
                                    953 ;	hw5.c:199: }else if (chr2=='3'){
      000373 BE 33 0B         [24]  954 	cjne	r6,#0x33,00207$
                                    955 ;	hw5.c:200: sendString("R");
      000376 90 07 18         [24]  956 	mov	dptr,#___str_29
      000379 75 F0 80         [24]  957 	mov	b,#0x80
      00037C 12 06 82         [24]  958 	lcall	_sendString
      00037F 80 47            [24]  959 	sjmp	00214$
      000381                        960 00207$:
                                    961 ;	hw5.c:201: }else if (chr2=='4'){
      000381 BE 34 0B         [24]  962 	cjne	r6,#0x34,00204$
                                    963 ;	hw5.c:202: sendString("S");
      000384 90 07 1A         [24]  964 	mov	dptr,#___str_30
      000387 75 F0 80         [24]  965 	mov	b,#0x80
      00038A 12 06 82         [24]  966 	lcall	_sendString
      00038D 80 39            [24]  967 	sjmp	00214$
      00038F                        968 00204$:
                                    969 ;	hw5.c:203: }else if (chr2=='5'){
      00038F BE 35 0B         [24]  970 	cjne	r6,#0x35,00201$
                                    971 ;	hw5.c:204: sendString("p");
      000392 90 07 1C         [24]  972 	mov	dptr,#___str_31
      000395 75 F0 80         [24]  973 	mov	b,#0x80
      000398 12 06 82         [24]  974 	lcall	_sendString
      00039B 80 2B            [24]  975 	sjmp	00214$
      00039D                        976 00201$:
                                    977 ;	hw5.c:205: }else if (chr2=='6'){
      00039D BE 36 0B         [24]  978 	cjne	r6,#0x36,00198$
                                    979 ;	hw5.c:206: sendString("q");
      0003A0 90 07 1E         [24]  980 	mov	dptr,#___str_32
      0003A3 75 F0 80         [24]  981 	mov	b,#0x80
      0003A6 12 06 82         [24]  982 	lcall	_sendString
      0003A9 80 1D            [24]  983 	sjmp	00214$
      0003AB                        984 00198$:
                                    985 ;	hw5.c:207: }else if (chr2=='7'){
      0003AB BE 37 0B         [24]  986 	cjne	r6,#0x37,00195$
                                    987 ;	hw5.c:208: sendString("r");
      0003AE 90 07 20         [24]  988 	mov	dptr,#___str_33
      0003B1 75 F0 80         [24]  989 	mov	b,#0x80
      0003B4 12 06 82         [24]  990 	lcall	_sendString
      0003B7 80 0F            [24]  991 	sjmp	00214$
      0003B9                        992 00195$:
                                    993 ;	hw5.c:209: }else if (chr2=='8'){
      0003B9 BE 38 0B         [24]  994 	cjne	r6,#0x38,00192$
                                    995 ;	hw5.c:210: sendString("s");
      0003BC 90 07 22         [24]  996 	mov	dptr,#___str_34
      0003BF 75 F0 80         [24]  997 	mov	b,#0x80
      0003C2 12 06 82         [24]  998 	lcall	_sendString
      0003C5 80 01            [24]  999 	sjmp	00214$
      0003C7                       1000 00192$:
                                   1001 ;	hw5.c:211: }else return;
      0003C7 22               [24] 1002 	ret
      0003C8                       1003 00214$:
                                   1004 ;	hw5.c:212: curAddr++;
      0003C8 05 30            [12] 1005 	inc	_curAddr
      0003CA 02 05 F5         [24] 1006 	ljmp	00348$
      0003CD                       1007 00332$:
                                   1008 ;	hw5.c:213: }else if (chr1=='8'){
      0003CD BF 38 02         [24] 1009 	cjne	r7,#0x38,00694$
      0003D0 80 03            [24] 1010 	sjmp	00695$
      0003D2                       1011 00694$:
      0003D2 02 04 2F         [24] 1012 	ljmp	00329$
      0003D5                       1013 00695$:
                                   1014 ;	hw5.c:214: if (chr2=='1'){
      0003D5 BE 31 0B         [24] 1015 	cjne	r6,#0x31,00231$
                                   1016 ;	hw5.c:215: sendString("T");
      0003D8 90 07 24         [24] 1017 	mov	dptr,#___str_35
      0003DB 75 F0 80         [24] 1018 	mov	b,#0x80
      0003DE 12 06 82         [24] 1019 	lcall	_sendString
      0003E1 80 47            [24] 1020 	sjmp	00232$
      0003E3                       1021 00231$:
                                   1022 ;	hw5.c:216: }else if (chr2=='2'){
      0003E3 BE 32 0B         [24] 1023 	cjne	r6,#0x32,00228$
                                   1024 ;	hw5.c:217: sendString("U");
      0003E6 90 07 26         [24] 1025 	mov	dptr,#___str_36
      0003E9 75 F0 80         [24] 1026 	mov	b,#0x80
      0003EC 12 06 82         [24] 1027 	lcall	_sendString
      0003EF 80 39            [24] 1028 	sjmp	00232$
      0003F1                       1029 00228$:
                                   1030 ;	hw5.c:218: }else if (chr2=='3'){
      0003F1 BE 33 0B         [24] 1031 	cjne	r6,#0x33,00225$
                                   1032 ;	hw5.c:219: sendString("V");
      0003F4 90 07 28         [24] 1033 	mov	dptr,#___str_37
      0003F7 75 F0 80         [24] 1034 	mov	b,#0x80
      0003FA 12 06 82         [24] 1035 	lcall	_sendString
      0003FD 80 2B            [24] 1036 	sjmp	00232$
      0003FF                       1037 00225$:
                                   1038 ;	hw5.c:220: }else if (chr2=='4'){
      0003FF BE 34 0B         [24] 1039 	cjne	r6,#0x34,00222$
                                   1040 ;	hw5.c:221: sendString("t");
      000402 90 07 2A         [24] 1041 	mov	dptr,#___str_38
      000405 75 F0 80         [24] 1042 	mov	b,#0x80
      000408 12 06 82         [24] 1043 	lcall	_sendString
      00040B 80 1D            [24] 1044 	sjmp	00232$
      00040D                       1045 00222$:
                                   1046 ;	hw5.c:222: }else if (chr2=='5'){
      00040D BE 35 0B         [24] 1047 	cjne	r6,#0x35,00219$
                                   1048 ;	hw5.c:223: sendString("u");
      000410 90 07 2C         [24] 1049 	mov	dptr,#___str_39
      000413 75 F0 80         [24] 1050 	mov	b,#0x80
      000416 12 06 82         [24] 1051 	lcall	_sendString
      000419 80 0F            [24] 1052 	sjmp	00232$
      00041B                       1053 00219$:
                                   1054 ;	hw5.c:224: }else if (chr2=='6'){
      00041B BE 36 0B         [24] 1055 	cjne	r6,#0x36,00216$
                                   1056 ;	hw5.c:225: sendString("v");
      00041E 90 07 2E         [24] 1057 	mov	dptr,#___str_40
      000421 75 F0 80         [24] 1058 	mov	b,#0x80
      000424 12 06 82         [24] 1059 	lcall	_sendString
      000427 80 01            [24] 1060 	sjmp	00232$
      000429                       1061 00216$:
                                   1062 ;	hw5.c:226: }else return;
      000429 22               [24] 1063 	ret
      00042A                       1064 00232$:
                                   1065 ;	hw5.c:227: curAddr++;
      00042A 05 30            [12] 1066 	inc	_curAddr
      00042C 02 05 F5         [24] 1067 	ljmp	00348$
      00042F                       1068 00329$:
                                   1069 ;	hw5.c:228: }else if (chr1=='9'){
      00042F BF 39 02         [24] 1070 	cjne	r7,#0x39,00708$
      000432 80 03            [24] 1071 	sjmp	00709$
      000434                       1072 00708$:
      000434 02 04 AF         [24] 1073 	ljmp	00326$
      000437                       1074 00709$:
                                   1075 ;	hw5.c:229: if (chr2=='1'){
      000437 BE 31 0C         [24] 1076 	cjne	r6,#0x31,00255$
                                   1077 ;	hw5.c:230: sendString("W");
      00043A 90 07 30         [24] 1078 	mov	dptr,#___str_41
      00043D 75 F0 80         [24] 1079 	mov	b,#0x80
      000440 12 06 82         [24] 1080 	lcall	_sendString
      000443 02 04 AA         [24] 1081 	ljmp	00256$
      000446                       1082 00255$:
                                   1083 ;	hw5.c:231: }else if (chr2=='2'){
      000446 BE 32 0C         [24] 1084 	cjne	r6,#0x32,00252$
                                   1085 ;	hw5.c:232: sendString("X");
      000449 90 07 32         [24] 1086 	mov	dptr,#___str_42
      00044C 75 F0 80         [24] 1087 	mov	b,#0x80
      00044F 12 06 82         [24] 1088 	lcall	_sendString
      000452 02 04 AA         [24] 1089 	ljmp	00256$
      000455                       1090 00252$:
                                   1091 ;	hw5.c:233: }else if (chr2=='3'){
      000455 BE 33 0B         [24] 1092 	cjne	r6,#0x33,00249$
                                   1093 ;	hw5.c:234: sendString("Y");
      000458 90 07 34         [24] 1094 	mov	dptr,#___str_43
      00045B 75 F0 80         [24] 1095 	mov	b,#0x80
      00045E 12 06 82         [24] 1096 	lcall	_sendString
      000461 80 47            [24] 1097 	sjmp	00256$
      000463                       1098 00249$:
                                   1099 ;	hw5.c:235: }else if (chr2=='4'){
      000463 BE 34 0B         [24] 1100 	cjne	r6,#0x34,00246$
                                   1101 ;	hw5.c:236: sendString("Z");
      000466 90 07 36         [24] 1102 	mov	dptr,#___str_44
      000469 75 F0 80         [24] 1103 	mov	b,#0x80
      00046C 12 06 82         [24] 1104 	lcall	_sendString
      00046F 80 39            [24] 1105 	sjmp	00256$
      000471                       1106 00246$:
                                   1107 ;	hw5.c:237: }else if (chr2=='5'){
      000471 BE 35 0B         [24] 1108 	cjne	r6,#0x35,00243$
                                   1109 ;	hw5.c:238: sendString("w");
      000474 90 07 38         [24] 1110 	mov	dptr,#___str_45
      000477 75 F0 80         [24] 1111 	mov	b,#0x80
      00047A 12 06 82         [24] 1112 	lcall	_sendString
      00047D 80 2B            [24] 1113 	sjmp	00256$
      00047F                       1114 00243$:
                                   1115 ;	hw5.c:239: }else if (chr2=='6'){
      00047F BE 36 0B         [24] 1116 	cjne	r6,#0x36,00240$
                                   1117 ;	hw5.c:240: sendString("x");
      000482 90 07 3A         [24] 1118 	mov	dptr,#___str_46
      000485 75 F0 80         [24] 1119 	mov	b,#0x80
      000488 12 06 82         [24] 1120 	lcall	_sendString
      00048B 80 1D            [24] 1121 	sjmp	00256$
      00048D                       1122 00240$:
                                   1123 ;	hw5.c:241: }else if (chr2=='7'){
      00048D BE 37 0B         [24] 1124 	cjne	r6,#0x37,00237$
                                   1125 ;	hw5.c:242: sendString("y");
      000490 90 07 3C         [24] 1126 	mov	dptr,#___str_47
      000493 75 F0 80         [24] 1127 	mov	b,#0x80
      000496 12 06 82         [24] 1128 	lcall	_sendString
      000499 80 0F            [24] 1129 	sjmp	00256$
      00049B                       1130 00237$:
                                   1131 ;	hw5.c:243: }else if (chr2=='8'){
      00049B BE 38 0B         [24] 1132 	cjne	r6,#0x38,00234$
                                   1133 ;	hw5.c:244: sendString("z");
      00049E 90 07 3E         [24] 1134 	mov	dptr,#___str_48
      0004A1 75 F0 80         [24] 1135 	mov	b,#0x80
      0004A4 12 06 82         [24] 1136 	lcall	_sendString
      0004A7 80 01            [24] 1137 	sjmp	00256$
      0004A9                       1138 00234$:
                                   1139 ;	hw5.c:245: }else return;
      0004A9 22               [24] 1140 	ret
      0004AA                       1141 00256$:
                                   1142 ;	hw5.c:246: curAddr++;
      0004AA 05 30            [12] 1143 	inc	_curAddr
      0004AC 02 05 F5         [24] 1144 	ljmp	00348$
      0004AF                       1145 00326$:
                                   1146 ;	hw5.c:247: }else if (chr1=='*'){
      0004AF BF 2A 02         [24] 1147 	cjne	r7,#0x2A,00726$
      0004B2 80 03            [24] 1148 	sjmp	00727$
      0004B4                       1149 00726$:
      0004B4 02 05 39         [24] 1150 	ljmp	00323$
      0004B7                       1151 00727$:
                                   1152 ;	hw5.c:248: if (chr2=='2'){//up
      0004B7 BE 32 0C         [24] 1153 	cjne	r6,#0x32,00281$
                                   1154 ;	hw5.c:249: curAddr=curAddr&0x0F;
      0004BA 53 30 0F         [24] 1155 	anl	_curAddr,#0x0F
                                   1156 ;	hw5.c:250: setDdRamAddress(curAddr);
      0004BD 85 30 82         [24] 1157 	mov	dpl,_curAddr
      0004C0 12 06 44         [24] 1158 	lcall	_setDdRamAddress
      0004C3 02 05 F5         [24] 1159 	ljmp	00348$
      0004C6                       1160 00281$:
                                   1161 ;	hw5.c:251: }else if (chr2=='4'){//left
      0004C6 BE 34 15         [24] 1162 	cjne	r6,#0x34,00278$
                                   1163 ;	hw5.c:252: if(curAddr==0x00 || curAddr==0x40) return;
      0004C9 E5 30            [12] 1164 	mov	a,_curAddr
      0004CB 60 05            [24] 1165 	jz	00257$
      0004CD 74 40            [12] 1166 	mov	a,#0x40
      0004CF B5 30 01         [24] 1167 	cjne	a,_curAddr,00258$
      0004D2                       1168 00257$:
      0004D2 22               [24] 1169 	ret
      0004D3                       1170 00258$:
                                   1171 ;	hw5.c:253: curAddr--;
      0004D3 15 30            [12] 1172 	dec	_curAddr
                                   1173 ;	hw5.c:254: setDdRamAddress(curAddr);
      0004D5 85 30 82         [24] 1174 	mov	dpl,_curAddr
      0004D8 12 06 44         [24] 1175 	lcall	_setDdRamAddress
      0004DB 02 05 F5         [24] 1176 	ljmp	00348$
      0004DE                       1177 00278$:
                                   1178 ;	hw5.c:255: }else if (chr2=='5'){//space
      0004DE BE 35 0E         [24] 1179 	cjne	r6,#0x35,00275$
                                   1180 ;	hw5.c:256: sendString(" ");
      0004E1 90 07 40         [24] 1181 	mov	dptr,#___str_49
      0004E4 75 F0 80         [24] 1182 	mov	b,#0x80
      0004E7 12 06 82         [24] 1183 	lcall	_sendString
                                   1184 ;	hw5.c:257: curAddr++;
      0004EA 05 30            [12] 1185 	inc	_curAddr
      0004EC 02 05 F5         [24] 1186 	ljmp	00348$
      0004EF                       1187 00275$:
                                   1188 ;	hw5.c:258: }else if (chr2=='6'){//right
      0004EF BE 36 14         [24] 1189 	cjne	r6,#0x36,00272$
                                   1190 ;	hw5.c:259: if((curAddr&0x0F)==0x0F) return;
      0004F2 AD 30            [24] 1191 	mov	r5,_curAddr
      0004F4 53 05 0F         [24] 1192 	anl	ar5,#0x0F
      0004F7 BD 0F 01         [24] 1193 	cjne	r5,#0x0F,00261$
      0004FA 22               [24] 1194 	ret
      0004FB                       1195 00261$:
                                   1196 ;	hw5.c:260: curAddr++;
      0004FB 05 30            [12] 1197 	inc	_curAddr
                                   1198 ;	hw5.c:261: setDdRamAddress(curAddr);
      0004FD 85 30 82         [24] 1199 	mov	dpl,_curAddr
      000500 12 06 44         [24] 1200 	lcall	_setDdRamAddress
      000503 02 05 F5         [24] 1201 	ljmp	00348$
      000506                       1202 00272$:
                                   1203 ;	hw5.c:262: }else if (chr2=='8'){//down
      000506 BE 38 11         [24] 1204 	cjne	r6,#0x38,00269$
                                   1205 ;	hw5.c:263: curAddr=(curAddr&0x0F) |0x40;
      000509 74 0F            [12] 1206 	mov	a,#0x0F
      00050B 55 30            [12] 1207 	anl	a,_curAddr
      00050D 44 40            [12] 1208 	orl	a,#0x40
      00050F F5 30            [12] 1209 	mov	_curAddr,a
                                   1210 ;	hw5.c:264: setDdRamAddress(curAddr);
      000511 85 30 82         [24] 1211 	mov	dpl,_curAddr
      000514 12 06 44         [24] 1212 	lcall	_setDdRamAddress
      000517 02 05 F5         [24] 1213 	ljmp	00348$
      00051A                       1214 00269$:
                                   1215 ;	hw5.c:265: }else if (chr2=='9'){//newline
      00051A BE 39 0C         [24] 1216 	cjne	r6,#0x39,00266$
                                   1217 ;	hw5.c:266: curAddr=0x40;
      00051D 75 30 40         [24] 1218 	mov	_curAddr,#0x40
                                   1219 ;	hw5.c:267: setDdRamAddress(curAddr);
      000520 75 82 40         [24] 1220 	mov	dpl,#0x40
      000523 12 06 44         [24] 1221 	lcall	_setDdRamAddress
      000526 02 05 F5         [24] 1222 	ljmp	00348$
      000529                       1223 00266$:
                                   1224 ;	hw5.c:268: }else if (chr2=='1'){//return Home
      000529 BE 31 0C         [24] 1225 	cjne	r6,#0x31,00263$
                                   1226 ;	hw5.c:269: curAddr=0x00;
      00052C 75 30 00         [24] 1227 	mov	_curAddr,#0x00
                                   1228 ;	hw5.c:270: setDdRamAddress(curAddr);
      00052F 75 82 00         [24] 1229 	mov	dpl,#0x00
      000532 12 06 44         [24] 1230 	lcall	_setDdRamAddress
      000535 02 05 F5         [24] 1231 	ljmp	00348$
      000538                       1232 00263$:
                                   1233 ;	hw5.c:271: }else return;
      000538 22               [24] 1234 	ret
      000539                       1235 00323$:
                                   1236 ;	hw5.c:273: }else if (chr1=='#'){
      000539 BF 23 02         [24] 1237 	cjne	r7,#0x23,00747$
      00053C 80 03            [24] 1238 	sjmp	00748$
      00053E                       1239 00747$:
      00053E 02 05 F4         [24] 1240 	ljmp	00320$
      000541                       1241 00748$:
                                   1242 ;	hw5.c:274: if (chr2=='1'){
      000541 BE 31 0C         [24] 1243 	cjne	r6,#0x31,00317$
                                   1244 ;	hw5.c:275: sendString("1");
      000544 90 07 42         [24] 1245 	mov	dptr,#___str_50
      000547 75 F0 80         [24] 1246 	mov	b,#0x80
      00054A 12 06 82         [24] 1247 	lcall	_sendString
      00054D 02 05 F0         [24] 1248 	ljmp	00318$
      000550                       1249 00317$:
                                   1250 ;	hw5.c:276: }else if (chr2=='2'){
      000550 BE 32 0C         [24] 1251 	cjne	r6,#0x32,00314$
                                   1252 ;	hw5.c:277: sendString("2");
      000553 90 07 44         [24] 1253 	mov	dptr,#___str_51
      000556 75 F0 80         [24] 1254 	mov	b,#0x80
      000559 12 06 82         [24] 1255 	lcall	_sendString
      00055C 02 05 F0         [24] 1256 	ljmp	00318$
      00055F                       1257 00314$:
                                   1258 ;	hw5.c:278: }else if (chr2=='3'){
      00055F BE 33 0C         [24] 1259 	cjne	r6,#0x33,00311$
                                   1260 ;	hw5.c:279: sendString("3");
      000562 90 07 46         [24] 1261 	mov	dptr,#___str_52
      000565 75 F0 80         [24] 1262 	mov	b,#0x80
      000568 12 06 82         [24] 1263 	lcall	_sendString
      00056B 02 05 F0         [24] 1264 	ljmp	00318$
      00056E                       1265 00311$:
                                   1266 ;	hw5.c:280: }else if (chr2=='4'){
      00056E BE 34 0C         [24] 1267 	cjne	r6,#0x34,00308$
                                   1268 ;	hw5.c:281: sendString("4");
      000571 90 07 48         [24] 1269 	mov	dptr,#___str_53
      000574 75 F0 80         [24] 1270 	mov	b,#0x80
      000577 12 06 82         [24] 1271 	lcall	_sendString
      00057A 02 05 F0         [24] 1272 	ljmp	00318$
      00057D                       1273 00308$:
                                   1274 ;	hw5.c:282: }else if (chr2=='5'){
      00057D BE 35 0C         [24] 1275 	cjne	r6,#0x35,00305$
                                   1276 ;	hw5.c:283: sendString("5");
      000580 90 07 4A         [24] 1277 	mov	dptr,#___str_54
      000583 75 F0 80         [24] 1278 	mov	b,#0x80
      000586 12 06 82         [24] 1279 	lcall	_sendString
      000589 02 05 F0         [24] 1280 	ljmp	00318$
      00058C                       1281 00305$:
                                   1282 ;	hw5.c:284: }else if (chr2=='6'){
      00058C BE 36 0C         [24] 1283 	cjne	r6,#0x36,00302$
                                   1284 ;	hw5.c:285: sendString("6");
      00058F 90 07 4C         [24] 1285 	mov	dptr,#___str_55
      000592 75 F0 80         [24] 1286 	mov	b,#0x80
      000595 12 06 82         [24] 1287 	lcall	_sendString
      000598 02 05 F0         [24] 1288 	ljmp	00318$
      00059B                       1289 00302$:
                                   1290 ;	hw5.c:286: }else if (chr2=='7'){
      00059B BE 37 0B         [24] 1291 	cjne	r6,#0x37,00299$
                                   1292 ;	hw5.c:287: sendString("7");
      00059E 90 07 4E         [24] 1293 	mov	dptr,#___str_56
      0005A1 75 F0 80         [24] 1294 	mov	b,#0x80
      0005A4 12 06 82         [24] 1295 	lcall	_sendString
      0005A7 80 47            [24] 1296 	sjmp	00318$
      0005A9                       1297 00299$:
                                   1298 ;	hw5.c:288: }else if (chr2=='8'){
      0005A9 BE 38 0B         [24] 1299 	cjne	r6,#0x38,00296$
                                   1300 ;	hw5.c:289: sendString("8");
      0005AC 90 07 50         [24] 1301 	mov	dptr,#___str_57
      0005AF 75 F0 80         [24] 1302 	mov	b,#0x80
      0005B2 12 06 82         [24] 1303 	lcall	_sendString
      0005B5 80 39            [24] 1304 	sjmp	00318$
      0005B7                       1305 00296$:
                                   1306 ;	hw5.c:290: }else if (chr2=='9'){
      0005B7 BE 39 0B         [24] 1307 	cjne	r6,#0x39,00293$
                                   1308 ;	hw5.c:291: sendString("9");
      0005BA 90 07 52         [24] 1309 	mov	dptr,#___str_58
      0005BD 75 F0 80         [24] 1310 	mov	b,#0x80
      0005C0 12 06 82         [24] 1311 	lcall	_sendString
      0005C3 80 2B            [24] 1312 	sjmp	00318$
      0005C5                       1313 00293$:
                                   1314 ;	hw5.c:292: }else if (chr2=='*'){
      0005C5 BE 2A 0B         [24] 1315 	cjne	r6,#0x2A,00290$
                                   1316 ;	hw5.c:293: sendString("*");
      0005C8 90 07 54         [24] 1317 	mov	dptr,#___str_59
      0005CB 75 F0 80         [24] 1318 	mov	b,#0x80
      0005CE 12 06 82         [24] 1319 	lcall	_sendString
      0005D1 80 1D            [24] 1320 	sjmp	00318$
      0005D3                       1321 00290$:
                                   1322 ;	hw5.c:294: }else if (chr2=='0'){
      0005D3 BE 30 0B         [24] 1323 	cjne	r6,#0x30,00287$
                                   1324 ;	hw5.c:295: sendString("0");
      0005D6 90 07 56         [24] 1325 	mov	dptr,#___str_60
      0005D9 75 F0 80         [24] 1326 	mov	b,#0x80
      0005DC 12 06 82         [24] 1327 	lcall	_sendString
      0005DF 80 0F            [24] 1328 	sjmp	00318$
      0005E1                       1329 00287$:
                                   1330 ;	hw5.c:296: }else if (chr2=='#'){
      0005E1 BE 23 0B         [24] 1331 	cjne	r6,#0x23,00284$
                                   1332 ;	hw5.c:297: sendString("#");
      0005E4 90 07 58         [24] 1333 	mov	dptr,#___str_61
      0005E7 75 F0 80         [24] 1334 	mov	b,#0x80
      0005EA 12 06 82         [24] 1335 	lcall	_sendString
      0005ED 80 01            [24] 1336 	sjmp	00318$
      0005EF                       1337 00284$:
                                   1338 ;	hw5.c:298: }else return;
      0005EF 22               [24] 1339 	ret
      0005F0                       1340 00318$:
                                   1341 ;	hw5.c:299: curAddr++;
      0005F0 05 30            [12] 1342 	inc	_curAddr
      0005F2 80 01            [24] 1343 	sjmp	00348$
      0005F4                       1344 00320$:
                                   1345 ;	hw5.c:300: }else return;
      0005F4 22               [24] 1346 	ret
      0005F5                       1347 00348$:
                                   1348 ;	hw5.c:302: if((curAddr==0x10)||(curAddr==0x50)){
      0005F5 74 10            [12] 1349 	mov	a,#0x10
      0005F7 B5 30 02         [24] 1350 	cjne	a,_curAddr,00773$
      0005FA 80 05            [24] 1351 	sjmp	00349$
      0005FC                       1352 00773$:
      0005FC 74 50            [12] 1353 	mov	a,#0x50
      0005FE B5 30 08         [24] 1354 	cjne	a,_curAddr,00352$
      000601                       1355 00349$:
                                   1356 ;	hw5.c:303: curAddr--;
      000601 15 30            [12] 1357 	dec	_curAddr
                                   1358 ;	hw5.c:304: setDdRamAddress(curAddr);
      000603 85 30 82         [24] 1359 	mov	dpl,_curAddr
      000606 02 06 44         [24] 1360 	ljmp	_setDdRamAddress
      000609                       1361 00352$:
      000609 22               [24] 1362 	ret
                                   1363 ;------------------------------------------------------------
                                   1364 ;Allocation info for local variables in function 'IRWRITE'
                                   1365 ;------------------------------------------------------------
                                   1366 ;addr                      Allocated to registers r7 
                                   1367 ;------------------------------------------------------------
                                   1368 ;	hw5.c:311: void IRWRITE(char addr)
                                   1369 ;	-----------------------------------------
                                   1370 ;	 function IRWRITE
                                   1371 ;	-----------------------------------------
      00060A                       1372 _IRWRITE:
      00060A AF 82            [24] 1373 	mov	r7,dpl
                                   1374 ;	hw5.c:313: P1= (addr & 0xf0) ;
      00060C 74 F0            [12] 1375 	mov	a,#0xF0
      00060E 5F               [12] 1376 	anl	a,r7
      00060F F5 90            [12] 1377 	mov	_P1,a
                                   1378 ;	hw5.c:314: E = 1;
      000611 D2 92            [12] 1379 	setb	_P1_2
                                   1380 ;	hw5.c:315: E = 0;
      000613 C2 92            [12] 1381 	clr	_P1_2
                                   1382 ;	hw5.c:316: P1 = ((addr & 0x0f) << 4) | 0x00;
      000615 53 07 0F         [24] 1383 	anl	ar7,#0x0F
      000618 EF               [12] 1384 	mov	a,r7
      000619 C4               [12] 1385 	swap	a
      00061A 54 F0            [12] 1386 	anl	a,#0xF0
      00061C F5 90            [12] 1387 	mov	_P1,a
                                   1388 ;	hw5.c:317: E = 1;
      00061E D2 92            [12] 1389 	setb	_P1_2
                                   1390 ;	hw5.c:318: E = 0;
      000620 C2 92            [12] 1391 	clr	_P1_2
                                   1392 ;	hw5.c:319: delay();
      000622 02 06 AD         [24] 1393 	ljmp	_delay
                                   1394 ;------------------------------------------------------------
                                   1395 ;Allocation info for local variables in function 'functionSet'
                                   1396 ;------------------------------------------------------------
                                   1397 ;	hw5.c:321: void functionSet(void) {//ok
                                   1398 ;	-----------------------------------------
                                   1399 ;	 function functionSet
                                   1400 ;	-----------------------------------------
      000625                       1401 _functionSet:
                                   1402 ;	hw5.c:329: P1 = (P1&0x23) | 0x20;
      000625 74 23            [12] 1403 	mov	a,#0x23
      000627 55 90            [12] 1404 	anl	a,_P1
      000629 44 20            [12] 1405 	orl	a,#0x20
      00062B F5 90            [12] 1406 	mov	_P1,a
                                   1407 ;	hw5.c:330: RS = 0;
      00062D C2 93            [12] 1408 	clr	_P1_3
                                   1409 ;	hw5.c:331: E = 1;
      00062F D2 92            [12] 1410 	setb	_P1_2
                                   1411 ;	hw5.c:332: E = 0;
      000631 C2 92            [12] 1412 	clr	_P1_2
                                   1413 ;	hw5.c:333: delay();
      000633 12 06 AD         [24] 1414 	lcall	_delay
                                   1415 ;	hw5.c:334: E = 1;
      000636 D2 92            [12] 1416 	setb	_P1_2
                                   1417 ;	hw5.c:335: E = 0;
      000638 C2 92            [12] 1418 	clr	_P1_2
                                   1419 ;	hw5.c:337: P1=0x80;
      00063A 75 90 80         [24] 1420 	mov	_P1,#0x80
                                   1421 ;	hw5.c:338: E = 1;
      00063D D2 92            [12] 1422 	setb	_P1_2
                                   1423 ;	hw5.c:339: E = 0;
      00063F C2 92            [12] 1424 	clr	_P1_2
                                   1425 ;	hw5.c:340: delay();
      000641 02 06 AD         [24] 1426 	ljmp	_delay
                                   1427 ;------------------------------------------------------------
                                   1428 ;Allocation info for local variables in function 'setDdRamAddress'
                                   1429 ;------------------------------------------------------------
                                   1430 ;address                   Allocated to registers r7 
                                   1431 ;------------------------------------------------------------
                                   1432 ;	hw5.c:343: void setDdRamAddress(char address) {
                                   1433 ;	-----------------------------------------
                                   1434 ;	 function setDdRamAddress
                                   1435 ;	-----------------------------------------
      000644                       1436 _setDdRamAddress:
      000644 AF 82            [24] 1437 	mov	r7,dpl
                                   1438 ;	hw5.c:345: P1= (address & 0xf0) | 0x80;
      000646 74 F0            [12] 1439 	mov	a,#0xF0
      000648 5F               [12] 1440 	anl	a,r7
      000649 44 80            [12] 1441 	orl	a,#0x80
      00064B F5 90            [12] 1442 	mov	_P1,a
                                   1443 ;	hw5.c:346: E = 1;
      00064D D2 92            [12] 1444 	setb	_P1_2
                                   1445 ;	hw5.c:347: E = 0;
      00064F C2 92            [12] 1446 	clr	_P1_2
                                   1447 ;	hw5.c:349: P1= (address & 0x0f) << 4;
      000651 53 07 0F         [24] 1448 	anl	ar7,#0x0F
      000654 EF               [12] 1449 	mov	a,r7
      000655 C4               [12] 1450 	swap	a
      000656 54 F0            [12] 1451 	anl	a,#0xF0
      000658 F5 90            [12] 1452 	mov	_P1,a
                                   1453 ;	hw5.c:350: E = 1;
      00065A D2 92            [12] 1454 	setb	_P1_2
                                   1455 ;	hw5.c:351: E = 0;
      00065C C2 92            [12] 1456 	clr	_P1_2
                                   1457 ;	hw5.c:352: delay();
      00065E 02 06 AD         [24] 1458 	ljmp	_delay
                                   1459 ;------------------------------------------------------------
                                   1460 ;Allocation info for local variables in function 'sendChar'
                                   1461 ;------------------------------------------------------------
                                   1462 ;c                         Allocated to registers r7 
                                   1463 ;------------------------------------------------------------
                                   1464 ;	hw5.c:354: void sendChar(char c) {
                                   1465 ;	-----------------------------------------
                                   1466 ;	 function sendChar
                                   1467 ;	-----------------------------------------
      000661                       1468 _sendChar:
      000661 AF 82            [24] 1469 	mov	r7,dpl
                                   1470 ;	hw5.c:360: P1 = (c & 0xf0) | 0x08;
      000663 74 F0            [12] 1471 	mov	a,#0xF0
      000665 5F               [12] 1472 	anl	a,r7
      000666 44 08            [12] 1473 	orl	a,#0x08
      000668 F5 90            [12] 1474 	mov	_P1,a
                                   1475 ;	hw5.c:361: E = 1;
      00066A D2 92            [12] 1476 	setb	_P1_2
                                   1477 ;	hw5.c:362: E = 0;
      00066C C2 92            [12] 1478 	clr	_P1_2
                                   1479 ;	hw5.c:368: P1=  ((c & 0x0f) << 4) | 0x08;
      00066E 53 07 0F         [24] 1480 	anl	ar7,#0x0F
      000671 EF               [12] 1481 	mov	a,r7
      000672 C4               [12] 1482 	swap	a
      000673 54 F0            [12] 1483 	anl	a,#0xF0
      000675 FF               [12] 1484 	mov	r7,a
      000676 74 08            [12] 1485 	mov	a,#0x08
      000678 4F               [12] 1486 	orl	a,r7
      000679 F5 90            [12] 1487 	mov	_P1,a
                                   1488 ;	hw5.c:369: E = 1;
      00067B D2 92            [12] 1489 	setb	_P1_2
                                   1490 ;	hw5.c:370: E = 0;
      00067D C2 92            [12] 1491 	clr	_P1_2
                                   1492 ;	hw5.c:371: delay();
      00067F 02 06 AD         [24] 1493 	ljmp	_delay
                                   1494 ;------------------------------------------------------------
                                   1495 ;Allocation info for local variables in function 'sendString'
                                   1496 ;------------------------------------------------------------
                                   1497 ;str                       Allocated to registers 
                                   1498 ;p                         Allocated to registers r5 r6 r7 
                                   1499 ;------------------------------------------------------------
                                   1500 ;	hw5.c:374: void sendString(char* str) {
                                   1501 ;	-----------------------------------------
                                   1502 ;	 function sendString
                                   1503 ;	-----------------------------------------
      000682                       1504 _sendString:
      000682 AD 82            [24] 1505 	mov	r5,dpl
      000684 AE 83            [24] 1506 	mov	r6,dph
      000686 AF F0            [24] 1507 	mov	r7,b
                                   1508 ;	hw5.c:381: for (p=str; *p; p++) {
      000688                       1509 00103$:
      000688 8D 82            [24] 1510 	mov	dpl,r5
      00068A 8E 83            [24] 1511 	mov	dph,r6
      00068C 8F F0            [24] 1512 	mov	b,r7
      00068E 12 06 C2         [24] 1513 	lcall	__gptrget
      000691 FC               [12] 1514 	mov	r4,a
      000692 60 18            [24] 1515 	jz	00105$
                                   1516 ;	hw5.c:382: sendChar(*p);
      000694 8C 82            [24] 1517 	mov	dpl,r4
      000696 C0 07            [24] 1518 	push	ar7
      000698 C0 06            [24] 1519 	push	ar6
      00069A C0 05            [24] 1520 	push	ar5
      00069C 12 06 61         [24] 1521 	lcall	_sendChar
      00069F D0 05            [24] 1522 	pop	ar5
      0006A1 D0 06            [24] 1523 	pop	ar6
      0006A3 D0 07            [24] 1524 	pop	ar7
                                   1525 ;	hw5.c:381: for (p=str; *p; p++) {
      0006A5 0D               [12] 1526 	inc	r5
      0006A6 BD 00 DF         [24] 1527 	cjne	r5,#0x00,00103$
      0006A9 0E               [12] 1528 	inc	r6
      0006AA 80 DC            [24] 1529 	sjmp	00103$
      0006AC                       1530 00105$:
      0006AC 22               [24] 1531 	ret
                                   1532 ;------------------------------------------------------------
                                   1533 ;Allocation info for local variables in function 'delay'
                                   1534 ;------------------------------------------------------------
                                   1535 ;c                         Allocated to registers r7 
                                   1536 ;------------------------------------------------------------
                                   1537 ;	hw5.c:385: void delay(void) {
                                   1538 ;	-----------------------------------------
                                   1539 ;	 function delay
                                   1540 ;	-----------------------------------------
      0006AD                       1541 _delay:
                                   1542 ;	hw5.c:387: for (c = 0; c < 50; c++);
      0006AD 7F 32            [12] 1543 	mov	r7,#0x32
      0006AF                       1544 00104$:
      0006AF DF FE            [24] 1545 	djnz	r7,00104$
      0006B1 22               [24] 1546 	ret
                                   1547 ;------------------------------------------------------------
                                   1548 ;Allocation info for local variables in function 'colScan'
                                   1549 ;------------------------------------------------------------
                                   1550 ;rowmask                   Allocated to registers 
                                   1551 ;------------------------------------------------------------
                                   1552 ;	hw5.c:389: char colScan(char rowmask) {
                                   1553 ;	-----------------------------------------
                                   1554 ;	 function colScan
                                   1555 ;	-----------------------------------------
      0006B2                       1556 _colScan:
      0006B2 85 82 80         [24] 1557 	mov	_P0,dpl
                                   1558 ;	hw5.c:391: return (~(P0>>4)) & 0x07;
      0006B5 E5 80            [12] 1559 	mov	a,_P0
      0006B7 C4               [12] 1560 	swap	a
      0006B8 54 0F            [12] 1561 	anl	a,#0x0F
      0006BA F4               [12] 1562 	cpl	a
      0006BB FF               [12] 1563 	mov	r7,a
      0006BC 74 07            [12] 1564 	mov	a,#0x07
      0006BE 5F               [12] 1565 	anl	a,r7
      0006BF F5 82            [12] 1566 	mov	dpl,a
      0006C1 22               [24] 1567 	ret
                                   1568 	.area CSEG    (CODE)
                                   1569 	.area CONST   (CODE)
      0006DE                       1570 ___str_0:
      0006DE 41                    1571 	.ascii "A"
      0006DF 00                    1572 	.db 0x00
      0006E0                       1573 ___str_1:
      0006E0 42                    1574 	.ascii "B"
      0006E1 00                    1575 	.db 0x00
      0006E2                       1576 ___str_2:
      0006E2 43                    1577 	.ascii "C"
      0006E3 00                    1578 	.db 0x00
      0006E4                       1579 ___str_3:
      0006E4 61                    1580 	.ascii "a"
      0006E5 00                    1581 	.db 0x00
      0006E6                       1582 ___str_4:
      0006E6 62                    1583 	.ascii "b"
      0006E7 00                    1584 	.db 0x00
      0006E8                       1585 ___str_5:
      0006E8 63                    1586 	.ascii "c"
      0006E9 00                    1587 	.db 0x00
      0006EA                       1588 ___str_6:
      0006EA 44                    1589 	.ascii "D"
      0006EB 00                    1590 	.db 0x00
      0006EC                       1591 ___str_7:
      0006EC 45                    1592 	.ascii "E"
      0006ED 00                    1593 	.db 0x00
      0006EE                       1594 ___str_8:
      0006EE 46                    1595 	.ascii "F"
      0006EF 00                    1596 	.db 0x00
      0006F0                       1597 ___str_9:
      0006F0 64                    1598 	.ascii "d"
      0006F1 00                    1599 	.db 0x00
      0006F2                       1600 ___str_10:
      0006F2 65                    1601 	.ascii "e"
      0006F3 00                    1602 	.db 0x00
      0006F4                       1603 ___str_11:
      0006F4 66                    1604 	.ascii "f"
      0006F5 00                    1605 	.db 0x00
      0006F6                       1606 ___str_12:
      0006F6 47                    1607 	.ascii "G"
      0006F7 00                    1608 	.db 0x00
      0006F8                       1609 ___str_13:
      0006F8 48                    1610 	.ascii "H"
      0006F9 00                    1611 	.db 0x00
      0006FA                       1612 ___str_14:
      0006FA 49                    1613 	.ascii "I"
      0006FB 00                    1614 	.db 0x00
      0006FC                       1615 ___str_15:
      0006FC 4A                    1616 	.ascii "J"
      0006FD 00                    1617 	.db 0x00
      0006FE                       1618 ___str_16:
      0006FE 4B                    1619 	.ascii "K"
      0006FF 00                    1620 	.db 0x00
      000700                       1621 ___str_17:
      000700 4C                    1622 	.ascii "L"
      000701 00                    1623 	.db 0x00
      000702                       1624 ___str_18:
      000702 6A                    1625 	.ascii "j"
      000703 00                    1626 	.db 0x00
      000704                       1627 ___str_19:
      000704 6B                    1628 	.ascii "k"
      000705 00                    1629 	.db 0x00
      000706                       1630 ___str_20:
      000706 6C                    1631 	.ascii "l"
      000707 00                    1632 	.db 0x00
      000708                       1633 ___str_21:
      000708 4D                    1634 	.ascii "M"
      000709 00                    1635 	.db 0x00
      00070A                       1636 ___str_22:
      00070A 4E                    1637 	.ascii "N"
      00070B 00                    1638 	.db 0x00
      00070C                       1639 ___str_23:
      00070C 4F                    1640 	.ascii "O"
      00070D 00                    1641 	.db 0x00
      00070E                       1642 ___str_24:
      00070E 6D                    1643 	.ascii "m"
      00070F 00                    1644 	.db 0x00
      000710                       1645 ___str_25:
      000710 6E                    1646 	.ascii "n"
      000711 00                    1647 	.db 0x00
      000712                       1648 ___str_26:
      000712 6F                    1649 	.ascii "o"
      000713 00                    1650 	.db 0x00
      000714                       1651 ___str_27:
      000714 50                    1652 	.ascii "P"
      000715 00                    1653 	.db 0x00
      000716                       1654 ___str_28:
      000716 51                    1655 	.ascii "Q"
      000717 00                    1656 	.db 0x00
      000718                       1657 ___str_29:
      000718 52                    1658 	.ascii "R"
      000719 00                    1659 	.db 0x00
      00071A                       1660 ___str_30:
      00071A 53                    1661 	.ascii "S"
      00071B 00                    1662 	.db 0x00
      00071C                       1663 ___str_31:
      00071C 70                    1664 	.ascii "p"
      00071D 00                    1665 	.db 0x00
      00071E                       1666 ___str_32:
      00071E 71                    1667 	.ascii "q"
      00071F 00                    1668 	.db 0x00
      000720                       1669 ___str_33:
      000720 72                    1670 	.ascii "r"
      000721 00                    1671 	.db 0x00
      000722                       1672 ___str_34:
      000722 73                    1673 	.ascii "s"
      000723 00                    1674 	.db 0x00
      000724                       1675 ___str_35:
      000724 54                    1676 	.ascii "T"
      000725 00                    1677 	.db 0x00
      000726                       1678 ___str_36:
      000726 55                    1679 	.ascii "U"
      000727 00                    1680 	.db 0x00
      000728                       1681 ___str_37:
      000728 56                    1682 	.ascii "V"
      000729 00                    1683 	.db 0x00
      00072A                       1684 ___str_38:
      00072A 74                    1685 	.ascii "t"
      00072B 00                    1686 	.db 0x00
      00072C                       1687 ___str_39:
      00072C 75                    1688 	.ascii "u"
      00072D 00                    1689 	.db 0x00
      00072E                       1690 ___str_40:
      00072E 76                    1691 	.ascii "v"
      00072F 00                    1692 	.db 0x00
      000730                       1693 ___str_41:
      000730 57                    1694 	.ascii "W"
      000731 00                    1695 	.db 0x00
      000732                       1696 ___str_42:
      000732 58                    1697 	.ascii "X"
      000733 00                    1698 	.db 0x00
      000734                       1699 ___str_43:
      000734 59                    1700 	.ascii "Y"
      000735 00                    1701 	.db 0x00
      000736                       1702 ___str_44:
      000736 5A                    1703 	.ascii "Z"
      000737 00                    1704 	.db 0x00
      000738                       1705 ___str_45:
      000738 77                    1706 	.ascii "w"
      000739 00                    1707 	.db 0x00
      00073A                       1708 ___str_46:
      00073A 78                    1709 	.ascii "x"
      00073B 00                    1710 	.db 0x00
      00073C                       1711 ___str_47:
      00073C 79                    1712 	.ascii "y"
      00073D 00                    1713 	.db 0x00
      00073E                       1714 ___str_48:
      00073E 7A                    1715 	.ascii "z"
      00073F 00                    1716 	.db 0x00
      000740                       1717 ___str_49:
      000740 20                    1718 	.ascii " "
      000741 00                    1719 	.db 0x00
      000742                       1720 ___str_50:
      000742 31                    1721 	.ascii "1"
      000743 00                    1722 	.db 0x00
      000744                       1723 ___str_51:
      000744 32                    1724 	.ascii "2"
      000745 00                    1725 	.db 0x00
      000746                       1726 ___str_52:
      000746 33                    1727 	.ascii "3"
      000747 00                    1728 	.db 0x00
      000748                       1729 ___str_53:
      000748 34                    1730 	.ascii "4"
      000749 00                    1731 	.db 0x00
      00074A                       1732 ___str_54:
      00074A 35                    1733 	.ascii "5"
      00074B 00                    1734 	.db 0x00
      00074C                       1735 ___str_55:
      00074C 36                    1736 	.ascii "6"
      00074D 00                    1737 	.db 0x00
      00074E                       1738 ___str_56:
      00074E 37                    1739 	.ascii "7"
      00074F 00                    1740 	.db 0x00
      000750                       1741 ___str_57:
      000750 38                    1742 	.ascii "8"
      000751 00                    1743 	.db 0x00
      000752                       1744 ___str_58:
      000752 39                    1745 	.ascii "9"
      000753 00                    1746 	.db 0x00
      000754                       1747 ___str_59:
      000754 2A                    1748 	.ascii "*"
      000755 00                    1749 	.db 0x00
      000756                       1750 ___str_60:
      000756 30                    1751 	.ascii "0"
      000757 00                    1752 	.db 0x00
      000758                       1753 ___str_61:
      000758 23                    1754 	.ascii "#"
      000759 00                    1755 	.db 0x00
                                   1756 	.area XINIT   (CODE)
                                   1757 	.area CABS    (ABS,CODE)
