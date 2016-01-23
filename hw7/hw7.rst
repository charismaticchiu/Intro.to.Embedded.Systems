                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.4.0/*rc1*/ #8960 (Mar 15 2014) (MINGW32)
                                      4 ; This file was generated Mon May 05 04:09:45 2014
                                      5 ;--------------------------------------------------------
                                      6 	.module hw7
                                      7 	.optsdcc -mmcs51 --model-small
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _firstChar_PARM_2
                                     13 	.globl _main
                                     14 	.globl _keypadISR
                                     15 	.globl _KeyInit
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _F1
                                     23 	.globl _P
                                     24 	.globl _PS
                                     25 	.globl _PT1
                                     26 	.globl _PX1
                                     27 	.globl _PT0
                                     28 	.globl _PX0
                                     29 	.globl _RD
                                     30 	.globl _WR
                                     31 	.globl _T1
                                     32 	.globl _T0
                                     33 	.globl _INT1
                                     34 	.globl _INT0
                                     35 	.globl _TXD
                                     36 	.globl _RXD
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _EA
                                     46 	.globl _ES
                                     47 	.globl _ET1
                                     48 	.globl _EX1
                                     49 	.globl _ET0
                                     50 	.globl _EX0
                                     51 	.globl _P2_7
                                     52 	.globl _P2_6
                                     53 	.globl _P2_5
                                     54 	.globl _P2_4
                                     55 	.globl _P2_3
                                     56 	.globl _P2_2
                                     57 	.globl _P2_1
                                     58 	.globl _P2_0
                                     59 	.globl _SM0
                                     60 	.globl _SM1
                                     61 	.globl _SM2
                                     62 	.globl _REN
                                     63 	.globl _TB8
                                     64 	.globl _RB8
                                     65 	.globl _TI
                                     66 	.globl _RI
                                     67 	.globl _P1_7
                                     68 	.globl _P1_6
                                     69 	.globl _P1_5
                                     70 	.globl _P1_4
                                     71 	.globl _P1_3
                                     72 	.globl _P1_2
                                     73 	.globl _P1_1
                                     74 	.globl _P1_0
                                     75 	.globl _TF1
                                     76 	.globl _TR1
                                     77 	.globl _TF0
                                     78 	.globl _TR0
                                     79 	.globl _IE1
                                     80 	.globl _IT1
                                     81 	.globl _IE0
                                     82 	.globl _IT0
                                     83 	.globl _P0_7
                                     84 	.globl _P0_6
                                     85 	.globl _P0_5
                                     86 	.globl _P0_4
                                     87 	.globl _P0_3
                                     88 	.globl _P0_2
                                     89 	.globl _P0_1
                                     90 	.globl _P0_0
                                     91 	.globl _B
                                     92 	.globl _ACC
                                     93 	.globl _PSW
                                     94 	.globl _IP
                                     95 	.globl _P3
                                     96 	.globl _IE
                                     97 	.globl _P2
                                     98 	.globl _SBUF
                                     99 	.globl _SCON
                                    100 	.globl _P1
                                    101 	.globl _TH1
                                    102 	.globl _TH0
                                    103 	.globl _TL1
                                    104 	.globl _TL0
                                    105 	.globl _TMOD
                                    106 	.globl _TCON
                                    107 	.globl _PCON
                                    108 	.globl _DPH
                                    109 	.globl _DPL
                                    110 	.globl _SP
                                    111 	.globl _P0
                                    112 	.globl _inter
                                    113 	.globl _secondChar_PARM_3
                                    114 	.globl _secondChar_PARM_2
                                    115 	.globl _curAddr
                                    116 	.globl __sdcc_gsinit_startup
                                    117 	.globl __mcs51_genRAMCLEAR
                                    118 	.globl __mcs51_genXINIT
                                    119 	.globl __mcs51_genXRAMCLEAR
                                    120 	.globl _colScan
                                    121 	.globl _firstChar
                                    122 	.globl _secondChar
                                    123 	.globl _InitLCD
                                    124 	.globl _IRWRITE
                                    125 	.globl _functionSet
                                    126 	.globl _setDdRamAddress
                                    127 	.globl _sendChar
                                    128 	.globl _sendString
                                    129 	.globl _delay
                                    130 ;--------------------------------------------------------
                                    131 ; special function registers
                                    132 ;--------------------------------------------------------
                                    133 	.area RSEG    (ABS,DATA)
      000000                        134 	.org 0x0000
                           000080   135 _P0	=	0x0080
                           000081   136 _SP	=	0x0081
                           000082   137 _DPL	=	0x0082
                           000083   138 _DPH	=	0x0083
                           000087   139 _PCON	=	0x0087
                           000088   140 _TCON	=	0x0088
                           000089   141 _TMOD	=	0x0089
                           00008A   142 _TL0	=	0x008a
                           00008B   143 _TL1	=	0x008b
                           00008C   144 _TH0	=	0x008c
                           00008D   145 _TH1	=	0x008d
                           000090   146 _P1	=	0x0090
                           000098   147 _SCON	=	0x0098
                           000099   148 _SBUF	=	0x0099
                           0000A0   149 _P2	=	0x00a0
                           0000A8   150 _IE	=	0x00a8
                           0000B0   151 _P3	=	0x00b0
                           0000B8   152 _IP	=	0x00b8
                           0000D0   153 _PSW	=	0x00d0
                           0000E0   154 _ACC	=	0x00e0
                           0000F0   155 _B	=	0x00f0
                                    156 ;--------------------------------------------------------
                                    157 ; special function bits
                                    158 ;--------------------------------------------------------
                                    159 	.area RSEG    (ABS,DATA)
      000000                        160 	.org 0x0000
                           000080   161 _P0_0	=	0x0080
                           000081   162 _P0_1	=	0x0081
                           000082   163 _P0_2	=	0x0082
                           000083   164 _P0_3	=	0x0083
                           000084   165 _P0_4	=	0x0084
                           000085   166 _P0_5	=	0x0085
                           000086   167 _P0_6	=	0x0086
                           000087   168 _P0_7	=	0x0087
                           000088   169 _IT0	=	0x0088
                           000089   170 _IE0	=	0x0089
                           00008A   171 _IT1	=	0x008a
                           00008B   172 _IE1	=	0x008b
                           00008C   173 _TR0	=	0x008c
                           00008D   174 _TF0	=	0x008d
                           00008E   175 _TR1	=	0x008e
                           00008F   176 _TF1	=	0x008f
                           000090   177 _P1_0	=	0x0090
                           000091   178 _P1_1	=	0x0091
                           000092   179 _P1_2	=	0x0092
                           000093   180 _P1_3	=	0x0093
                           000094   181 _P1_4	=	0x0094
                           000095   182 _P1_5	=	0x0095
                           000096   183 _P1_6	=	0x0096
                           000097   184 _P1_7	=	0x0097
                           000098   185 _RI	=	0x0098
                           000099   186 _TI	=	0x0099
                           00009A   187 _RB8	=	0x009a
                           00009B   188 _TB8	=	0x009b
                           00009C   189 _REN	=	0x009c
                           00009D   190 _SM2	=	0x009d
                           00009E   191 _SM1	=	0x009e
                           00009F   192 _SM0	=	0x009f
                           0000A0   193 _P2_0	=	0x00a0
                           0000A1   194 _P2_1	=	0x00a1
                           0000A2   195 _P2_2	=	0x00a2
                           0000A3   196 _P2_3	=	0x00a3
                           0000A4   197 _P2_4	=	0x00a4
                           0000A5   198 _P2_5	=	0x00a5
                           0000A6   199 _P2_6	=	0x00a6
                           0000A7   200 _P2_7	=	0x00a7
                           0000A8   201 _EX0	=	0x00a8
                           0000A9   202 _ET0	=	0x00a9
                           0000AA   203 _EX1	=	0x00aa
                           0000AB   204 _ET1	=	0x00ab
                           0000AC   205 _ES	=	0x00ac
                           0000AF   206 _EA	=	0x00af
                           0000B0   207 _P3_0	=	0x00b0
                           0000B1   208 _P3_1	=	0x00b1
                           0000B2   209 _P3_2	=	0x00b2
                           0000B3   210 _P3_3	=	0x00b3
                           0000B4   211 _P3_4	=	0x00b4
                           0000B5   212 _P3_5	=	0x00b5
                           0000B6   213 _P3_6	=	0x00b6
                           0000B7   214 _P3_7	=	0x00b7
                           0000B0   215 _RXD	=	0x00b0
                           0000B1   216 _TXD	=	0x00b1
                           0000B2   217 _INT0	=	0x00b2
                           0000B3   218 _INT1	=	0x00b3
                           0000B4   219 _T0	=	0x00b4
                           0000B5   220 _T1	=	0x00b5
                           0000B6   221 _WR	=	0x00b6
                           0000B7   222 _RD	=	0x00b7
                           0000B8   223 _PX0	=	0x00b8
                           0000B9   224 _PT0	=	0x00b9
                           0000BA   225 _PX1	=	0x00ba
                           0000BB   226 _PT1	=	0x00bb
                           0000BC   227 _PS	=	0x00bc
                           0000D0   228 _P	=	0x00d0
                           0000D1   229 _F1	=	0x00d1
                           0000D2   230 _OV	=	0x00d2
                           0000D3   231 _RS0	=	0x00d3
                           0000D4   232 _RS1	=	0x00d4
                           0000D5   233 _F0	=	0x00d5
                           0000D6   234 _AC	=	0x00d6
                           0000D7   235 _CY	=	0x00d7
                                    236 ;--------------------------------------------------------
                                    237 ; overlayable register banks
                                    238 ;--------------------------------------------------------
                                    239 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        240 	.ds 8
                                    241 ;--------------------------------------------------------
                                    242 ; internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area DSEG    (DATA)
      000030                        245 _curAddr::
      000030                        246 	.ds 1
      000031                        247 _main_bitmap_1_19:
      000031                        248 	.ds 1
      000032                        249 _main_bitmapL_1_19:
      000032                        250 	.ds 1
      000033                        251 _main_bitmapH_1_19:
      000033                        252 	.ds 1
      000034                        253 _main_row_1_19:
      000034                        254 	.ds 1
      000035                        255 _main_rowmask_1_19:
      000035                        256 	.ds 1
      000036                        257 _main_firstP1_1_19:
      000036                        258 	.ds 1
      000037                        259 _main_firstP2_1_19:
      000037                        260 	.ds 1
      000038                        261 _main_secondP1_1_19:
      000038                        262 	.ds 1
      000039                        263 _main_secondP2_1_19:
      000039                        264 	.ds 1
      00003A                        265 _main_chr1_1_19:
      00003A                        266 	.ds 1
      00003B                        267 _secondChar_PARM_2:
      00003B                        268 	.ds 1
      00003C                        269 _secondChar_PARM_3:
      00003C                        270 	.ds 1
                                    271 ;--------------------------------------------------------
                                    272 ; overlayable items in internal ram 
                                    273 ;--------------------------------------------------------
                                    274 	.area	OSEG    (OVR,DATA)
                                    275 	.area	OSEG    (OVR,DATA)
      00003D                        276 _firstChar_PARM_2:
      00003D                        277 	.ds 1
                                    278 	.area	OSEG    (OVR,DATA)
                                    279 ;--------------------------------------------------------
                                    280 ; Stack segment in internal ram 
                                    281 ;--------------------------------------------------------
                                    282 	.area	SSEG
      00003E                        283 __start__stack:
      00003E                        284 	.ds	1
                                    285 
                                    286 ;--------------------------------------------------------
                                    287 ; indirectly addressable internal ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area ISEG    (DATA)
                                    290 ;--------------------------------------------------------
                                    291 ; absolute internal ram data
                                    292 ;--------------------------------------------------------
                                    293 	.area IABS    (ABS,DATA)
                                    294 	.area IABS    (ABS,DATA)
                                    295 ;--------------------------------------------------------
                                    296 ; bit data
                                    297 ;--------------------------------------------------------
                                    298 	.area BSEG    (BIT)
      000000                        299 _inter::
      000000                        300 	.ds 1
      000001                        301 _main_charCount_1_19:
      000001                        302 	.ds 1
                                    303 ;--------------------------------------------------------
                                    304 ; paged external ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area PSEG    (PAG,XDATA)
                                    307 ;--------------------------------------------------------
                                    308 ; external ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area XSEG    (XDATA)
                                    311 ;--------------------------------------------------------
                                    312 ; absolute external ram data
                                    313 ;--------------------------------------------------------
                                    314 	.area XABS    (ABS,XDATA)
                                    315 ;--------------------------------------------------------
                                    316 ; external initialized ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area XISEG   (XDATA)
                                    319 	.area HOME    (CODE)
                                    320 	.area GSINIT0 (CODE)
                                    321 	.area GSINIT1 (CODE)
                                    322 	.area GSINIT2 (CODE)
                                    323 	.area GSINIT3 (CODE)
                                    324 	.area GSINIT4 (CODE)
                                    325 	.area GSINIT5 (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 	.area GSFINAL (CODE)
                                    328 	.area CSEG    (CODE)
                                    329 ;--------------------------------------------------------
                                    330 ; interrupt vector 
                                    331 ;--------------------------------------------------------
                                    332 	.area HOME    (CODE)
      000000                        333 __interrupt_vect:
      000000 02 00 CB         [24]  334 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  335 	reti
      000004                        336 	.ds	7
      00000B 32               [24]  337 	reti
      00000C                        338 	.ds	7
      000013 02 00 2A         [24]  339 	ljmp	_keypadISR
                                    340 ;--------------------------------------------------------
                                    341 ; global & static initialisations
                                    342 ;--------------------------------------------------------
                                    343 	.area HOME    (CODE)
                                    344 	.area GSINIT  (CODE)
                                    345 	.area GSFINAL (CODE)
                                    346 	.area GSINIT  (CODE)
                                    347 	.globl __sdcc_gsinit_startup
                                    348 	.globl __sdcc_program_startup
                                    349 	.globl __start__stack
                                    350 	.globl __mcs51_genXINIT
                                    351 	.globl __mcs51_genXRAMCLEAR
                                    352 	.globl __mcs51_genRAMCLEAR
                                    353 ;	hw7.c:28: volatile char curAddr=0x00;
      000019 75 30 00         [24]  354 	mov	_curAddr,#0x00
                                    355 ;	hw7.c:29: volatile __bit inter=0;
      00001C C2 00            [12]  356 	clr	_inter
                                    357 	.area GSFINAL (CODE)
      00001E 02 00 16         [24]  358 	ljmp	__sdcc_program_startup
                                    359 ;--------------------------------------------------------
                                    360 ; Home
                                    361 ;--------------------------------------------------------
                                    362 	.area HOME    (CODE)
                                    363 	.area HOME    (CODE)
      000016                        364 __sdcc_program_startup:
      000016 02 00 30         [24]  365 	ljmp	_main
                                    366 ;	return from main will return to caller
                                    367 ;--------------------------------------------------------
                                    368 ; code
                                    369 ;--------------------------------------------------------
                                    370 	.area CSEG    (CODE)
                                    371 ;------------------------------------------------------------
                                    372 ;Allocation info for local variables in function 'KeyInit'
                                    373 ;------------------------------------------------------------
                                    374 ;	hw7.c:31: void KeyInit(){
                                    375 ;	-----------------------------------------
                                    376 ;	 function KeyInit
                                    377 ;	-----------------------------------------
      000021                        378 _KeyInit:
                           000007   379 	ar7 = 0x07
                           000006   380 	ar6 = 0x06
                           000005   381 	ar5 = 0x05
                           000004   382 	ar4 = 0x04
                           000003   383 	ar3 = 0x03
                           000002   384 	ar2 = 0x02
                           000001   385 	ar1 = 0x01
                           000000   386 	ar0 = 0x00
                                    387 ;	hw7.c:33: P3_3=1;
      000021 D2 B3            [12]  388 	setb	_P3_3
                                    389 ;	hw7.c:34: P0_4=0;
      000023 C2 84            [12]  390 	clr	_P0_4
                                    391 ;	hw7.c:35: P0_5=0;
      000025 C2 85            [12]  392 	clr	_P0_5
                                    393 ;	hw7.c:36: P0_6=0;
      000027 C2 86            [12]  394 	clr	_P0_6
      000029 22               [24]  395 	ret
                                    396 ;------------------------------------------------------------
                                    397 ;Allocation info for local variables in function 'keypadISR'
                                    398 ;------------------------------------------------------------
                                    399 ;	hw7.c:39: void keypadISR(void) __interrupt(2) {
                                    400 ;	-----------------------------------------
                                    401 ;	 function keypadISR
                                    402 ;	-----------------------------------------
      00002A                        403 _keypadISR:
                                    404 ;	hw7.c:41: if(!P3_3){
      00002A 20 B3 02         [24]  405 	jb	_P3_3,00103$
                                    406 ;	hw7.c:42: inter=1;
      00002D D2 00            [12]  407 	setb	_inter
      00002F                        408 00103$:
      00002F 32               [24]  409 	reti
                                    410 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    411 ;	eliminated unneeded push/pop psw
                                    412 ;	eliminated unneeded push/pop dpl
                                    413 ;	eliminated unneeded push/pop dph
                                    414 ;	eliminated unneeded push/pop b
                                    415 ;	eliminated unneeded push/pop acc
                                    416 ;------------------------------------------------------------
                                    417 ;Allocation info for local variables in function 'main'
                                    418 ;------------------------------------------------------------
                                    419 ;bitmap                    Allocated with name '_main_bitmap_1_19'
                                    420 ;bitmapL                   Allocated with name '_main_bitmapL_1_19'
                                    421 ;bitmapH                   Allocated with name '_main_bitmapH_1_19'
                                    422 ;row                       Allocated with name '_main_row_1_19'
                                    423 ;rowmask                   Allocated with name '_main_rowmask_1_19'
                                    424 ;firstP1                   Allocated with name '_main_firstP1_1_19'
                                    425 ;firstP2                   Allocated with name '_main_firstP2_1_19'
                                    426 ;secondP1                  Allocated with name '_main_secondP1_1_19'
                                    427 ;secondP2                  Allocated with name '_main_secondP2_1_19'
                                    428 ;chr1                      Allocated with name '_main_chr1_1_19'
                                    429 ;------------------------------------------------------------
                                    430 ;	hw7.c:45: void main(void) {
                                    431 ;	-----------------------------------------
                                    432 ;	 function main
                                    433 ;	-----------------------------------------
      000030                        434 _main:
                                    435 ;	hw7.c:49: volatile __bit charCount=0;
      000030 C2 01            [12]  436 	clr	_main_charCount_1_19
                                    437 ;	hw7.c:50: KeyInit();
      000032 12 00 21         [24]  438 	lcall	_KeyInit
                                    439 ;	hw7.c:51: IE=0x84;
      000035 75 A8 84         [24]  440 	mov	_IE,#0x84
                                    441 ;	hw7.c:52: InitLCD();		
      000038 12 06 27         [24]  442 	lcall	_InitLCD
                                    443 ;	hw7.c:53: while(1) {
      00003B                        444 00116$:
                                    445 ;	hw7.c:58: if (inter){
                                    446 ;	hw7.c:61: inter=0;
      00003B 10 00 02         [24]  447 	jbc	_inter,00147$
      00003E 80 FB            [24]  448 	sjmp	00116$
      000040                        449 00147$:
                                    450 ;	hw7.c:63: for (row=bitmapL=bitmapH=0, rowmask = 0xf7; row < 4; row++, rowmask >>= 1) {
      000040 75 33 00         [24]  451 	mov	_main_bitmapH_1_19,#0x00
      000043 75 32 00         [24]  452 	mov	_main_bitmapL_1_19,#0x00
      000046 75 34 00         [24]  453 	mov	_main_row_1_19,#0x00
      000049 75 35 F7         [24]  454 	mov	_main_rowmask_1_19,#0xF7
      00004C                        455 00119$:
      00004C C3               [12]  456 	clr	c
      00004D E5 34            [12]  457 	mov	a,_main_row_1_19
      00004F 64 80            [12]  458 	xrl	a,#0x80
      000051 94 84            [12]  459 	subb	a,#0x84
      000053 50 2F            [24]  460 	jnc	00103$
                                    461 ;	hw7.c:64: bitmap=colScan(rowmask);
      000055 85 35 82         [24]  462 	mov	dpl,_main_rowmask_1_19
      000058 12 00 D1         [24]  463 	lcall	_colScan
      00005B 85 82 31         [24]  464 	mov	_main_bitmap_1_19,dpl
                                    465 ;	hw7.c:65: if (row==2) {
      00005E 74 02            [12]  466 	mov	a,#0x02
      000060 B5 34 0A         [24]  467 	cjne	a,_main_row_1_19,00102$
                                    468 ;	hw7.c:66: bitmapH = (bitmapL >> 2);
      000063 E5 32            [12]  469 	mov	a,_main_bitmapL_1_19
      000065 A2 E7            [12]  470 	mov	c,acc.7
      000067 13               [12]  471 	rrc	a
      000068 A2 E7            [12]  472 	mov	c,acc.7
      00006A 13               [12]  473 	rrc	a
      00006B F5 33            [12]  474 	mov	_main_bitmapH_1_19,a
      00006D                        475 00102$:
                                    476 ;	hw7.c:68: bitmapL = (bitmapL<<3) | bitmap;
      00006D E5 32            [12]  477 	mov	a,_main_bitmapL_1_19
      00006F C4               [12]  478 	swap	a
      000070 03               [12]  479 	rr	a
      000071 54 F8            [12]  480 	anl	a,#0xF8
      000073 FF               [12]  481 	mov	r7,a
      000074 E5 31            [12]  482 	mov	a,_main_bitmap_1_19
      000076 4F               [12]  483 	orl	a,r7
      000077 F5 32            [12]  484 	mov	_main_bitmapL_1_19,a
                                    485 ;	hw7.c:63: for (row=bitmapL=bitmapH=0, rowmask = 0xf7; row < 4; row++, rowmask >>= 1) {
      000079 05 34            [12]  486 	inc	_main_row_1_19
      00007B E5 35            [12]  487 	mov	a,_main_rowmask_1_19
      00007D A2 E7            [12]  488 	mov	c,acc.7
      00007F 13               [12]  489 	rrc	a
      000080 F5 35            [12]  490 	mov	_main_rowmask_1_19,a
      000082 80 C8            [24]  491 	sjmp	00119$
      000084                        492 00103$:
                                    493 ;	hw7.c:71: if(bitmapL==0x00 && bitmapH==0x00){
      000084 E5 32            [12]  494 	mov	a,_main_bitmapL_1_19
      000086 70 04            [24]  495 	jnz	00110$
      000088 E5 33            [12]  496 	mov	a,_main_bitmapH_1_19
      00008A 60 36            [24]  497 	jz	00111$
      00008C                        498 00110$:
                                    499 ;	hw7.c:73: }else if(charCount==0){//first char				
      00008C 20 01 0D         [24]  500 	jb	_main_charCount_1_19,00107$
                                    501 ;	hw7.c:74: charCount=1;
      00008F D2 01            [12]  502 	setb	_main_charCount_1_19
                                    503 ;	hw7.c:75: firstP1=bitmapL;
      000091 85 32 36         [24]  504 	mov	_main_firstP1_1_19,_main_bitmapL_1_19
                                    505 ;	hw7.c:76: firstP2=bitmapH;
      000094 85 33 37         [24]  506 	mov	_main_firstP2_1_19,_main_bitmapH_1_19
                                    507 ;	hw7.c:77: P2 =0x0F;
      000097 75 A0 0F         [24]  508 	mov	_P2,#0x0F
      00009A 80 26            [24]  509 	sjmp	00111$
      00009C                        510 00107$:
                                    511 ;	hw7.c:79: }else if(charCount==1){//second char				
                                    512 ;	hw7.c:80: charCount=0;
      00009C 10 01 02         [24]  513 	jbc	_main_charCount_1_19,00154$
      00009F 80 21            [24]  514 	sjmp	00111$
      0000A1                        515 00154$:
                                    516 ;	hw7.c:82: P2 =0xF0;
      0000A1 75 A0 F0         [24]  517 	mov	_P2,#0xF0
                                    518 ;	hw7.c:83: secondP1=bitmapL;
      0000A4 85 32 38         [24]  519 	mov	_main_secondP1_1_19,_main_bitmapL_1_19
                                    520 ;	hw7.c:84: secondP2=bitmapH;		
      0000A7 85 33 39         [24]  521 	mov	_main_secondP2_1_19,_main_bitmapH_1_19
                                    522 ;	hw7.c:85: chr1=firstChar(firstP1,firstP2);
      0000AA 85 37 3D         [24]  523 	mov	_firstChar_PARM_2,_main_firstP2_1_19
      0000AD 85 36 82         [24]  524 	mov	dpl,_main_firstP1_1_19
      0000B0 12 00 E1         [24]  525 	lcall	_firstChar
      0000B3 85 82 3A         [24]  526 	mov	_main_chr1_1_19,dpl
                                    527 ;	hw7.c:86: secondChar(chr1,secondP1,secondP2);//secondChar() returns the input of this time
      0000B6 85 38 3B         [24]  528 	mov	_secondChar_PARM_2,_main_secondP1_1_19
      0000B9 85 39 3C         [24]  529 	mov	_secondChar_PARM_3,_main_secondP2_1_19
      0000BC 85 3A 82         [24]  530 	mov	dpl,_main_chr1_1_19
      0000BF 12 01 6F         [24]  531 	lcall	_secondChar
      0000C2                        532 00111$:
                                    533 ;	hw7.c:90: IP=curAddr;
      0000C2 85 30 B8         [24]  534 	mov	_IP,_curAddr
                                    535 ;	hw7.c:91: P0=0x00;
      0000C5 75 80 00         [24]  536 	mov	_P0,#0x00
      0000C8 02 00 3B         [24]  537 	ljmp	00116$
                                    538 ;------------------------------------------------------------
                                    539 ;Allocation info for local variables in function '_sdcc_gsinit_startup'
                                    540 ;------------------------------------------------------------
                                    541 ;	hw7.c:98: void _sdcc_gsinit_startup(void) {main();}
                                    542 ;	-----------------------------------------
                                    543 ;	 function _sdcc_gsinit_startup
                                    544 ;	-----------------------------------------
      0000CB                        545 __sdcc_gsinit_startup:
      0000CB 02 00 30         [24]  546 	ljmp	_main
                                    547 ;------------------------------------------------------------
                                    548 ;Allocation info for local variables in function '_mcs51_genRAMCLEAR'
                                    549 ;------------------------------------------------------------
                                    550 ;	hw7.c:99: void _mcs51_genRAMCLEAR(void){}
                                    551 ;	-----------------------------------------
                                    552 ;	 function _mcs51_genRAMCLEAR
                                    553 ;	-----------------------------------------
      0000CE                        554 __mcs51_genRAMCLEAR:
      0000CE 22               [24]  555 	ret
                                    556 ;------------------------------------------------------------
                                    557 ;Allocation info for local variables in function '_mcs51_genXINIT'
                                    558 ;------------------------------------------------------------
                                    559 ;	hw7.c:100: void _mcs51_genXINIT(void){}
                                    560 ;	-----------------------------------------
                                    561 ;	 function _mcs51_genXINIT
                                    562 ;	-----------------------------------------
      0000CF                        563 __mcs51_genXINIT:
      0000CF 22               [24]  564 	ret
                                    565 ;------------------------------------------------------------
                                    566 ;Allocation info for local variables in function '_mcs51_genXRAMCLEAR'
                                    567 ;------------------------------------------------------------
                                    568 ;	hw7.c:101: void _mcs51_genXRAMCLEAR(void){}
                                    569 ;	-----------------------------------------
                                    570 ;	 function _mcs51_genXRAMCLEAR
                                    571 ;	-----------------------------------------
      0000D0                        572 __mcs51_genXRAMCLEAR:
      0000D0 22               [24]  573 	ret
                                    574 ;------------------------------------------------------------
                                    575 ;Allocation info for local variables in function 'colScan'
                                    576 ;------------------------------------------------------------
                                    577 ;rowmask                   Allocated to registers 
                                    578 ;------------------------------------------------------------
                                    579 ;	hw7.c:102: char colScan(char rowmask) {
                                    580 ;	-----------------------------------------
                                    581 ;	 function colScan
                                    582 ;	-----------------------------------------
      0000D1                        583 _colScan:
      0000D1 85 82 80         [24]  584 	mov	_P0,dpl
                                    585 ;	hw7.c:104: return (~(P0>>4)) & 0x07;
      0000D4 E5 80            [12]  586 	mov	a,_P0
      0000D6 C4               [12]  587 	swap	a
      0000D7 54 0F            [12]  588 	anl	a,#0x0F
      0000D9 F4               [12]  589 	cpl	a
      0000DA FF               [12]  590 	mov	r7,a
      0000DB 74 07            [12]  591 	mov	a,#0x07
      0000DD 5F               [12]  592 	anl	a,r7
      0000DE F5 82            [12]  593 	mov	dpl,a
      0000E0 22               [24]  594 	ret
                                    595 ;------------------------------------------------------------
                                    596 ;Allocation info for local variables in function 'firstChar'
                                    597 ;------------------------------------------------------------
                                    598 ;fstP2                     Allocated with name '_firstChar_PARM_2'
                                    599 ;fstP1                     Allocated to registers r7 
                                    600 ;------------------------------------------------------------
                                    601 ;	hw7.c:107: char firstChar(char fstP1,char fstP2){	
                                    602 ;	-----------------------------------------
                                    603 ;	 function firstChar
                                    604 ;	-----------------------------------------
      0000E1                        605 _firstChar:
      0000E1 AF 82            [24]  606 	mov	r7,dpl
                                    607 ;	hw7.c:108: if (fstP2!=0x00){//1,2,3,4
      0000E3 E5 3D            [12]  608 	mov	a,_firstChar_PARM_2
      0000E5 60 2F            [24]  609 	jz	00136$
                                    610 ;	hw7.c:109: if((fstP2>>3)&1){
      0000E7 E5 3D            [12]  611 	mov	a,_firstChar_PARM_2
      0000E9 A2 E3            [12]  612 	mov	c,acc[3]
      0000EB E4               [12]  613 	clr	a
      0000EC 33               [12]  614 	rlc	a
      0000ED FE               [12]  615 	mov	r6,a
      0000EE 60 04            [24]  616 	jz	00110$
                                    617 ;	hw7.c:110: return '1';
      0000F0 75 82 31         [24]  618 	mov	dpl,#0x31
      0000F3 22               [24]  619 	ret
      0000F4                        620 00110$:
                                    621 ;	hw7.c:111: }else if((fstP2>>2)&1){
      0000F4 E5 3D            [12]  622 	mov	a,_firstChar_PARM_2
      0000F6 03               [12]  623 	rr	a
      0000F7 03               [12]  624 	rr	a
      0000F8 54 01            [12]  625 	anl	a,#0x01
      0000FA FE               [12]  626 	mov	r6,a
      0000FB 60 04            [24]  627 	jz	00107$
                                    628 ;	hw7.c:112: return '2';
      0000FD 75 82 32         [24]  629 	mov	dpl,#0x32
      000100 22               [24]  630 	ret
      000101                        631 00107$:
                                    632 ;	hw7.c:113: }else if((fstP2>>1)&1){
      000101 E5 3D            [12]  633 	mov	a,_firstChar_PARM_2
      000103 03               [12]  634 	rr	a
      000104 54 01            [12]  635 	anl	a,#0x01
      000106 FE               [12]  636 	mov	r6,a
      000107 60 04            [24]  637 	jz	00104$
                                    638 ;	hw7.c:114: return '3';
      000109 75 82 33         [24]  639 	mov	dpl,#0x33
      00010C 22               [24]  640 	ret
      00010D                        641 00104$:
                                    642 ;	hw7.c:115: }else if((fstP2)&1){
      00010D E5 3D            [12]  643 	mov	a,_firstChar_PARM_2
      00010F 30 E0 5C         [24]  644 	jnb	acc.0,00138$
                                    645 ;	hw7.c:116: return '4';
      000112 75 82 34         [24]  646 	mov	dpl,#0x34
      000115 22               [24]  647 	ret
      000116                        648 00136$:
                                    649 ;	hw7.c:120: if((fstP1>>7)&1){
      000116 EF               [12]  650 	mov	a,r7
      000117 23               [12]  651 	rl	a
      000118 54 01            [12]  652 	anl	a,#0x01
      00011A FE               [12]  653 	mov	r6,a
      00011B 60 04            [24]  654 	jz	00133$
                                    655 ;	hw7.c:121: return '5';
      00011D 75 82 35         [24]  656 	mov	dpl,#0x35
      000120 22               [24]  657 	ret
      000121                        658 00133$:
                                    659 ;	hw7.c:122: }else if((fstP1>>6)&1){
      000121 EF               [12]  660 	mov	a,r7
      000122 23               [12]  661 	rl	a
      000123 23               [12]  662 	rl	a
      000124 54 01            [12]  663 	anl	a,#0x01
      000126 FE               [12]  664 	mov	r6,a
      000127 60 04            [24]  665 	jz	00130$
                                    666 ;	hw7.c:123: return '6';
      000129 75 82 36         [24]  667 	mov	dpl,#0x36
      00012C 22               [24]  668 	ret
      00012D                        669 00130$:
                                    670 ;	hw7.c:124: }else if((fstP1>>5)&1){
      00012D EF               [12]  671 	mov	a,r7
      00012E A2 E5            [12]  672 	mov	c,acc[5]
      000130 E4               [12]  673 	clr	a
      000131 33               [12]  674 	rlc	a
      000132 FE               [12]  675 	mov	r6,a
      000133 60 04            [24]  676 	jz	00127$
                                    677 ;	hw7.c:125: return '7';
      000135 75 82 37         [24]  678 	mov	dpl,#0x37
      000138 22               [24]  679 	ret
      000139                        680 00127$:
                                    681 ;	hw7.c:126: }else if((fstP1>>4)&1){
      000139 EF               [12]  682 	mov	a,r7
      00013A C4               [12]  683 	swap	a
      00013B 54 01            [12]  684 	anl	a,#0x01
      00013D FE               [12]  685 	mov	r6,a
      00013E 60 04            [24]  686 	jz	00124$
                                    687 ;	hw7.c:127: return '8';
      000140 75 82 38         [24]  688 	mov	dpl,#0x38
      000143 22               [24]  689 	ret
      000144                        690 00124$:
                                    691 ;	hw7.c:128: }else if((fstP1>>3)&1){
      000144 EF               [12]  692 	mov	a,r7
      000145 A2 E3            [12]  693 	mov	c,acc[3]
      000147 E4               [12]  694 	clr	a
      000148 33               [12]  695 	rlc	a
      000149 FE               [12]  696 	mov	r6,a
      00014A 60 04            [24]  697 	jz	00121$
                                    698 ;	hw7.c:129: return '9';
      00014C 75 82 39         [24]  699 	mov	dpl,#0x39
      00014F 22               [24]  700 	ret
      000150                        701 00121$:
                                    702 ;	hw7.c:130: }else if((fstP1>>2)&1){
      000150 EF               [12]  703 	mov	a,r7
      000151 03               [12]  704 	rr	a
      000152 03               [12]  705 	rr	a
      000153 54 01            [12]  706 	anl	a,#0x01
      000155 FE               [12]  707 	mov	r6,a
      000156 60 04            [24]  708 	jz	00118$
                                    709 ;	hw7.c:131: return '*';
      000158 75 82 2A         [24]  710 	mov	dpl,#0x2A
      00015B 22               [24]  711 	ret
      00015C                        712 00118$:
                                    713 ;	hw7.c:132: }else if((fstP1>>1)&1){
      00015C EF               [12]  714 	mov	a,r7
      00015D 03               [12]  715 	rr	a
      00015E 54 01            [12]  716 	anl	a,#0x01
      000160 FE               [12]  717 	mov	r6,a
      000161 60 04            [24]  718 	jz	00115$
                                    719 ;	hw7.c:133: return '0';
      000163 75 82 30         [24]  720 	mov	dpl,#0x30
      000166 22               [24]  721 	ret
      000167                        722 00115$:
                                    723 ;	hw7.c:134: }else if((fstP1)&1){
      000167 EF               [12]  724 	mov	a,r7
      000168 30 E0 03         [24]  725 	jnb	acc.0,00138$
                                    726 ;	hw7.c:135: return '#';
      00016B 75 82 23         [24]  727 	mov	dpl,#0x23
      00016E                        728 00138$:
      00016E 22               [24]  729 	ret
                                    730 ;------------------------------------------------------------
                                    731 ;Allocation info for local variables in function 'secondChar'
                                    732 ;------------------------------------------------------------
                                    733 ;sndP1                     Allocated with name '_secondChar_PARM_2'
                                    734 ;sndP2                     Allocated with name '_secondChar_PARM_3'
                                    735 ;chr1                      Allocated to registers r7 
                                    736 ;chr2                      Allocated to registers r6 
                                    737 ;i                         Allocated to registers 
                                    738 ;------------------------------------------------------------
                                    739 ;	hw7.c:139: void secondChar(char chr1,char sndP1,char sndP2){
                                    740 ;	-----------------------------------------
                                    741 ;	 function secondChar
                                    742 ;	-----------------------------------------
      00016F                        743 _secondChar:
      00016F AF 82            [24]  744 	mov	r7,dpl
                                    745 ;	hw7.c:142: chr2=firstChar(sndP1,sndP2);
      000171 85 3C 3D         [24]  746 	mov	_firstChar_PARM_2,_secondChar_PARM_3
      000174 85 3B 82         [24]  747 	mov	dpl,_secondChar_PARM_2
      000177 C0 07            [24]  748 	push	ar7
      000179 12 00 E1         [24]  749 	lcall	_firstChar
      00017C AE 82            [24]  750 	mov	r6,dpl
      00017E D0 07            [24]  751 	pop	ar7
                                    752 ;	hw7.c:143: if (chr1=='2'){
      000180 BF 32 02         [24]  753 	cjne	r7,#0x32,00606$
      000183 80 03            [24]  754 	sjmp	00607$
      000185                        755 00606$:
      000185 02 01 E2         [24]  756 	ljmp	00347$
      000188                        757 00607$:
                                    758 ;	hw7.c:144: if (chr2=='1'){
      000188 BE 31 0B         [24]  759 	cjne	r6,#0x31,00117$
                                    760 ;	hw7.c:145: sendString("A");
      00018B 90 06 FC         [24]  761 	mov	dptr,#___str_0
      00018E 75 F0 80         [24]  762 	mov	b,#0x80
      000191 12 06 B0         [24]  763 	lcall	_sendString
      000194 80 47            [24]  764 	sjmp	00118$
      000196                        765 00117$:
                                    766 ;	hw7.c:146: }else if (chr2=='2'){
      000196 BE 32 0B         [24]  767 	cjne	r6,#0x32,00114$
                                    768 ;	hw7.c:147: sendString("B");
      000199 90 06 FE         [24]  769 	mov	dptr,#___str_1
      00019C 75 F0 80         [24]  770 	mov	b,#0x80
      00019F 12 06 B0         [24]  771 	lcall	_sendString
      0001A2 80 39            [24]  772 	sjmp	00118$
      0001A4                        773 00114$:
                                    774 ;	hw7.c:148: }else if (chr2=='3'){
      0001A4 BE 33 0B         [24]  775 	cjne	r6,#0x33,00111$
                                    776 ;	hw7.c:149: sendString("C");
      0001A7 90 07 00         [24]  777 	mov	dptr,#___str_2
      0001AA 75 F0 80         [24]  778 	mov	b,#0x80
      0001AD 12 06 B0         [24]  779 	lcall	_sendString
      0001B0 80 2B            [24]  780 	sjmp	00118$
      0001B2                        781 00111$:
                                    782 ;	hw7.c:150: }else if (chr2=='4'){
      0001B2 BE 34 0B         [24]  783 	cjne	r6,#0x34,00108$
                                    784 ;	hw7.c:151: sendString("a");
      0001B5 90 07 02         [24]  785 	mov	dptr,#___str_3
      0001B8 75 F0 80         [24]  786 	mov	b,#0x80
      0001BB 12 06 B0         [24]  787 	lcall	_sendString
      0001BE 80 1D            [24]  788 	sjmp	00118$
      0001C0                        789 00108$:
                                    790 ;	hw7.c:152: }else if (chr2=='5'){
      0001C0 BE 35 0B         [24]  791 	cjne	r6,#0x35,00105$
                                    792 ;	hw7.c:153: sendString("b");
      0001C3 90 07 04         [24]  793 	mov	dptr,#___str_4
      0001C6 75 F0 80         [24]  794 	mov	b,#0x80
      0001C9 12 06 B0         [24]  795 	lcall	_sendString
      0001CC 80 0F            [24]  796 	sjmp	00118$
      0001CE                        797 00105$:
                                    798 ;	hw7.c:154: }else if (chr2=='6'){		
      0001CE BE 36 0B         [24]  799 	cjne	r6,#0x36,00102$
                                    800 ;	hw7.c:155: sendString("c");
      0001D1 90 07 06         [24]  801 	mov	dptr,#___str_5
      0001D4 75 F0 80         [24]  802 	mov	b,#0x80
      0001D7 12 06 B0         [24]  803 	lcall	_sendString
      0001DA 80 01            [24]  804 	sjmp	00118$
      0001DC                        805 00102$:
                                    806 ;	hw7.c:156: }else return;
      0001DC 22               [24]  807 	ret
      0001DD                        808 00118$:
                                    809 ;	hw7.c:157: curAddr++;
      0001DD 05 30            [12]  810 	inc	_curAddr
      0001DF 02 06 12         [24]  811 	ljmp	00348$
      0001E2                        812 00347$:
                                    813 ;	hw7.c:159: }else if (chr1=='3'){
      0001E2 BF 33 02         [24]  814 	cjne	r7,#0x33,00620$
      0001E5 80 03            [24]  815 	sjmp	00621$
      0001E7                        816 00620$:
      0001E7 02 02 44         [24]  817 	ljmp	00344$
      0001EA                        818 00621$:
                                    819 ;	hw7.c:160: if (chr2=='1'){
      0001EA BE 31 0B         [24]  820 	cjne	r6,#0x31,00135$
                                    821 ;	hw7.c:161: sendString("D");
      0001ED 90 07 08         [24]  822 	mov	dptr,#___str_6
      0001F0 75 F0 80         [24]  823 	mov	b,#0x80
      0001F3 12 06 B0         [24]  824 	lcall	_sendString
      0001F6 80 47            [24]  825 	sjmp	00136$
      0001F8                        826 00135$:
                                    827 ;	hw7.c:162: }else if (chr2=='2'){
      0001F8 BE 32 0B         [24]  828 	cjne	r6,#0x32,00132$
                                    829 ;	hw7.c:163: sendString("E");
      0001FB 90 07 0A         [24]  830 	mov	dptr,#___str_7
      0001FE 75 F0 80         [24]  831 	mov	b,#0x80
      000201 12 06 B0         [24]  832 	lcall	_sendString
      000204 80 39            [24]  833 	sjmp	00136$
      000206                        834 00132$:
                                    835 ;	hw7.c:164: }else if (chr2=='3'){
      000206 BE 33 0B         [24]  836 	cjne	r6,#0x33,00129$
                                    837 ;	hw7.c:165: sendString("F");
      000209 90 07 0C         [24]  838 	mov	dptr,#___str_8
      00020C 75 F0 80         [24]  839 	mov	b,#0x80
      00020F 12 06 B0         [24]  840 	lcall	_sendString
      000212 80 2B            [24]  841 	sjmp	00136$
      000214                        842 00129$:
                                    843 ;	hw7.c:166: }else if (chr2=='4'){
      000214 BE 34 0B         [24]  844 	cjne	r6,#0x34,00126$
                                    845 ;	hw7.c:167: sendString("d");
      000217 90 07 0E         [24]  846 	mov	dptr,#___str_9
      00021A 75 F0 80         [24]  847 	mov	b,#0x80
      00021D 12 06 B0         [24]  848 	lcall	_sendString
      000220 80 1D            [24]  849 	sjmp	00136$
      000222                        850 00126$:
                                    851 ;	hw7.c:168: }else if (chr2=='5'){
      000222 BE 35 0B         [24]  852 	cjne	r6,#0x35,00123$
                                    853 ;	hw7.c:169: sendString("e");
      000225 90 07 10         [24]  854 	mov	dptr,#___str_10
      000228 75 F0 80         [24]  855 	mov	b,#0x80
      00022B 12 06 B0         [24]  856 	lcall	_sendString
      00022E 80 0F            [24]  857 	sjmp	00136$
      000230                        858 00123$:
                                    859 ;	hw7.c:170: }else if (chr2=='6'){
      000230 BE 36 0B         [24]  860 	cjne	r6,#0x36,00120$
                                    861 ;	hw7.c:171: sendString("f");
      000233 90 07 12         [24]  862 	mov	dptr,#___str_11
      000236 75 F0 80         [24]  863 	mov	b,#0x80
      000239 12 06 B0         [24]  864 	lcall	_sendString
      00023C 80 01            [24]  865 	sjmp	00136$
      00023E                        866 00120$:
                                    867 ;	hw7.c:172: }else return;
      00023E 22               [24]  868 	ret
      00023F                        869 00136$:
                                    870 ;	hw7.c:173: curAddr++;
      00023F 05 30            [12]  871 	inc	_curAddr
      000241 02 06 12         [24]  872 	ljmp	00348$
      000244                        873 00344$:
                                    874 ;	hw7.c:174: }else if (chr1=='4'){
      000244 BF 34 02         [24]  875 	cjne	r7,#0x34,00634$
      000247 80 03            [24]  876 	sjmp	00635$
      000249                        877 00634$:
      000249 02 02 A6         [24]  878 	ljmp	00341$
      00024C                        879 00635$:
                                    880 ;	hw7.c:175: if (chr2=='1'){
      00024C BE 31 0B         [24]  881 	cjne	r6,#0x31,00153$
                                    882 ;	hw7.c:176: sendString("G");
      00024F 90 07 14         [24]  883 	mov	dptr,#___str_12
      000252 75 F0 80         [24]  884 	mov	b,#0x80
      000255 12 06 B0         [24]  885 	lcall	_sendString
      000258 80 47            [24]  886 	sjmp	00154$
      00025A                        887 00153$:
                                    888 ;	hw7.c:177: }else if (chr2=='2'){
      00025A BE 32 0B         [24]  889 	cjne	r6,#0x32,00150$
                                    890 ;	hw7.c:178: sendString("H");
      00025D 90 07 16         [24]  891 	mov	dptr,#___str_13
      000260 75 F0 80         [24]  892 	mov	b,#0x80
      000263 12 06 B0         [24]  893 	lcall	_sendString
      000266 80 39            [24]  894 	sjmp	00154$
      000268                        895 00150$:
                                    896 ;	hw7.c:179: }else if (chr2=='3'){
      000268 BE 33 0B         [24]  897 	cjne	r6,#0x33,00147$
                                    898 ;	hw7.c:180: sendString("I");
      00026B 90 07 18         [24]  899 	mov	dptr,#___str_14
      00026E 75 F0 80         [24]  900 	mov	b,#0x80
      000271 12 06 B0         [24]  901 	lcall	_sendString
      000274 80 2B            [24]  902 	sjmp	00154$
      000276                        903 00147$:
                                    904 ;	hw7.c:181: }else if (chr2=='4'){
      000276 BE 34 0B         [24]  905 	cjne	r6,#0x34,00144$
                                    906 ;	hw7.c:182: sendString("G");
      000279 90 07 14         [24]  907 	mov	dptr,#___str_12
      00027C 75 F0 80         [24]  908 	mov	b,#0x80
      00027F 12 06 B0         [24]  909 	lcall	_sendString
      000282 80 1D            [24]  910 	sjmp	00154$
      000284                        911 00144$:
                                    912 ;	hw7.c:183: }else if (chr2=='5'){
      000284 BE 35 0B         [24]  913 	cjne	r6,#0x35,00141$
                                    914 ;	hw7.c:184: sendString("H");
      000287 90 07 16         [24]  915 	mov	dptr,#___str_13
      00028A 75 F0 80         [24]  916 	mov	b,#0x80
      00028D 12 06 B0         [24]  917 	lcall	_sendString
      000290 80 0F            [24]  918 	sjmp	00154$
      000292                        919 00141$:
                                    920 ;	hw7.c:185: }else if (chr2=='6'){
      000292 BE 36 0B         [24]  921 	cjne	r6,#0x36,00138$
                                    922 ;	hw7.c:186: sendString("I");
      000295 90 07 18         [24]  923 	mov	dptr,#___str_14
      000298 75 F0 80         [24]  924 	mov	b,#0x80
      00029B 12 06 B0         [24]  925 	lcall	_sendString
      00029E 80 01            [24]  926 	sjmp	00154$
      0002A0                        927 00138$:
                                    928 ;	hw7.c:187: }else return;
      0002A0 22               [24]  929 	ret
      0002A1                        930 00154$:
                                    931 ;	hw7.c:188: curAddr++;
      0002A1 05 30            [12]  932 	inc	_curAddr
      0002A3 02 06 12         [24]  933 	ljmp	00348$
      0002A6                        934 00341$:
                                    935 ;	hw7.c:189: }else if (chr1=='5'){
      0002A6 BF 35 02         [24]  936 	cjne	r7,#0x35,00648$
      0002A9 80 03            [24]  937 	sjmp	00649$
      0002AB                        938 00648$:
      0002AB 02 03 08         [24]  939 	ljmp	00338$
      0002AE                        940 00649$:
                                    941 ;	hw7.c:190: if (chr2=='1'){
      0002AE BE 31 0B         [24]  942 	cjne	r6,#0x31,00171$
                                    943 ;	hw7.c:191: sendString("J");
      0002B1 90 07 1A         [24]  944 	mov	dptr,#___str_15
      0002B4 75 F0 80         [24]  945 	mov	b,#0x80
      0002B7 12 06 B0         [24]  946 	lcall	_sendString
      0002BA 80 47            [24]  947 	sjmp	00172$
      0002BC                        948 00171$:
                                    949 ;	hw7.c:192: }else if (chr2=='2'){
      0002BC BE 32 0B         [24]  950 	cjne	r6,#0x32,00168$
                                    951 ;	hw7.c:193: sendString("K");
      0002BF 90 07 1C         [24]  952 	mov	dptr,#___str_16
      0002C2 75 F0 80         [24]  953 	mov	b,#0x80
      0002C5 12 06 B0         [24]  954 	lcall	_sendString
      0002C8 80 39            [24]  955 	sjmp	00172$
      0002CA                        956 00168$:
                                    957 ;	hw7.c:194: }else if (chr2=='3'){
      0002CA BE 33 0B         [24]  958 	cjne	r6,#0x33,00165$
                                    959 ;	hw7.c:195: sendString("L");
      0002CD 90 07 1E         [24]  960 	mov	dptr,#___str_17
      0002D0 75 F0 80         [24]  961 	mov	b,#0x80
      0002D3 12 06 B0         [24]  962 	lcall	_sendString
      0002D6 80 2B            [24]  963 	sjmp	00172$
      0002D8                        964 00165$:
                                    965 ;	hw7.c:196: }else if (chr2=='4'){
      0002D8 BE 34 0B         [24]  966 	cjne	r6,#0x34,00162$
                                    967 ;	hw7.c:197: sendString("j");
      0002DB 90 07 20         [24]  968 	mov	dptr,#___str_18
      0002DE 75 F0 80         [24]  969 	mov	b,#0x80
      0002E1 12 06 B0         [24]  970 	lcall	_sendString
      0002E4 80 1D            [24]  971 	sjmp	00172$
      0002E6                        972 00162$:
                                    973 ;	hw7.c:198: }else if (chr2=='5'){
      0002E6 BE 35 0B         [24]  974 	cjne	r6,#0x35,00159$
                                    975 ;	hw7.c:199: sendString("k");
      0002E9 90 07 22         [24]  976 	mov	dptr,#___str_19
      0002EC 75 F0 80         [24]  977 	mov	b,#0x80
      0002EF 12 06 B0         [24]  978 	lcall	_sendString
      0002F2 80 0F            [24]  979 	sjmp	00172$
      0002F4                        980 00159$:
                                    981 ;	hw7.c:200: }else if (chr2=='6'){
      0002F4 BE 36 0B         [24]  982 	cjne	r6,#0x36,00156$
                                    983 ;	hw7.c:201: sendString("l");
      0002F7 90 07 24         [24]  984 	mov	dptr,#___str_20
      0002FA 75 F0 80         [24]  985 	mov	b,#0x80
      0002FD 12 06 B0         [24]  986 	lcall	_sendString
      000300 80 01            [24]  987 	sjmp	00172$
      000302                        988 00156$:
                                    989 ;	hw7.c:202: }else return;
      000302 22               [24]  990 	ret
      000303                        991 00172$:
                                    992 ;	hw7.c:203: curAddr++;
      000303 05 30            [12]  993 	inc	_curAddr
      000305 02 06 12         [24]  994 	ljmp	00348$
      000308                        995 00338$:
                                    996 ;	hw7.c:204: }else if (chr1=='6'){
      000308 BF 36 02         [24]  997 	cjne	r7,#0x36,00662$
      00030B 80 03            [24]  998 	sjmp	00663$
      00030D                        999 00662$:
      00030D 02 03 6A         [24] 1000 	ljmp	00335$
      000310                       1001 00663$:
                                   1002 ;	hw7.c:205: if (chr2=='1'){
      000310 BE 31 0B         [24] 1003 	cjne	r6,#0x31,00189$
                                   1004 ;	hw7.c:206: sendString("M");
      000313 90 07 26         [24] 1005 	mov	dptr,#___str_21
      000316 75 F0 80         [24] 1006 	mov	b,#0x80
      000319 12 06 B0         [24] 1007 	lcall	_sendString
      00031C 80 47            [24] 1008 	sjmp	00190$
      00031E                       1009 00189$:
                                   1010 ;	hw7.c:207: }else if (chr2=='2'){
      00031E BE 32 0B         [24] 1011 	cjne	r6,#0x32,00186$
                                   1012 ;	hw7.c:208: sendString("N");
      000321 90 07 28         [24] 1013 	mov	dptr,#___str_22
      000324 75 F0 80         [24] 1014 	mov	b,#0x80
      000327 12 06 B0         [24] 1015 	lcall	_sendString
      00032A 80 39            [24] 1016 	sjmp	00190$
      00032C                       1017 00186$:
                                   1018 ;	hw7.c:209: }else if (chr2=='3'){
      00032C BE 33 0B         [24] 1019 	cjne	r6,#0x33,00183$
                                   1020 ;	hw7.c:210: sendString("O");
      00032F 90 07 2A         [24] 1021 	mov	dptr,#___str_23
      000332 75 F0 80         [24] 1022 	mov	b,#0x80
      000335 12 06 B0         [24] 1023 	lcall	_sendString
      000338 80 2B            [24] 1024 	sjmp	00190$
      00033A                       1025 00183$:
                                   1026 ;	hw7.c:211: }else if (chr2=='4'){
      00033A BE 34 0B         [24] 1027 	cjne	r6,#0x34,00180$
                                   1028 ;	hw7.c:212: sendString("m");
      00033D 90 07 2C         [24] 1029 	mov	dptr,#___str_24
      000340 75 F0 80         [24] 1030 	mov	b,#0x80
      000343 12 06 B0         [24] 1031 	lcall	_sendString
      000346 80 1D            [24] 1032 	sjmp	00190$
      000348                       1033 00180$:
                                   1034 ;	hw7.c:213: }else if (chr2=='5'){
      000348 BE 35 0B         [24] 1035 	cjne	r6,#0x35,00177$
                                   1036 ;	hw7.c:214: sendString("n");
      00034B 90 07 2E         [24] 1037 	mov	dptr,#___str_25
      00034E 75 F0 80         [24] 1038 	mov	b,#0x80
      000351 12 06 B0         [24] 1039 	lcall	_sendString
      000354 80 0F            [24] 1040 	sjmp	00190$
      000356                       1041 00177$:
                                   1042 ;	hw7.c:215: }else if (chr2=='6'){
      000356 BE 36 0B         [24] 1043 	cjne	r6,#0x36,00174$
                                   1044 ;	hw7.c:216: sendString("o");
      000359 90 07 30         [24] 1045 	mov	dptr,#___str_26
      00035C 75 F0 80         [24] 1046 	mov	b,#0x80
      00035F 12 06 B0         [24] 1047 	lcall	_sendString
      000362 80 01            [24] 1048 	sjmp	00190$
      000364                       1049 00174$:
                                   1050 ;	hw7.c:217: }else return;
      000364 22               [24] 1051 	ret
      000365                       1052 00190$:
                                   1053 ;	hw7.c:218: curAddr++;
      000365 05 30            [12] 1054 	inc	_curAddr
      000367 02 06 12         [24] 1055 	ljmp	00348$
      00036A                       1056 00335$:
                                   1057 ;	hw7.c:219: }else if (chr1=='7'){
      00036A BF 37 02         [24] 1058 	cjne	r7,#0x37,00676$
      00036D 80 03            [24] 1059 	sjmp	00677$
      00036F                       1060 00676$:
      00036F 02 03 EA         [24] 1061 	ljmp	00332$
      000372                       1062 00677$:
                                   1063 ;	hw7.c:220: if (chr2=='1'){
      000372 BE 31 0C         [24] 1064 	cjne	r6,#0x31,00213$
                                   1065 ;	hw7.c:221: sendString("P");
      000375 90 07 32         [24] 1066 	mov	dptr,#___str_27
      000378 75 F0 80         [24] 1067 	mov	b,#0x80
      00037B 12 06 B0         [24] 1068 	lcall	_sendString
      00037E 02 03 E5         [24] 1069 	ljmp	00214$
      000381                       1070 00213$:
                                   1071 ;	hw7.c:222: }else if (chr2=='2'){
      000381 BE 32 0C         [24] 1072 	cjne	r6,#0x32,00210$
                                   1073 ;	hw7.c:223: sendString("Q");
      000384 90 07 34         [24] 1074 	mov	dptr,#___str_28
      000387 75 F0 80         [24] 1075 	mov	b,#0x80
      00038A 12 06 B0         [24] 1076 	lcall	_sendString
      00038D 02 03 E5         [24] 1077 	ljmp	00214$
      000390                       1078 00210$:
                                   1079 ;	hw7.c:224: }else if (chr2=='3'){
      000390 BE 33 0B         [24] 1080 	cjne	r6,#0x33,00207$
                                   1081 ;	hw7.c:225: sendString("R");
      000393 90 07 36         [24] 1082 	mov	dptr,#___str_29
      000396 75 F0 80         [24] 1083 	mov	b,#0x80
      000399 12 06 B0         [24] 1084 	lcall	_sendString
      00039C 80 47            [24] 1085 	sjmp	00214$
      00039E                       1086 00207$:
                                   1087 ;	hw7.c:226: }else if (chr2=='4'){
      00039E BE 34 0B         [24] 1088 	cjne	r6,#0x34,00204$
                                   1089 ;	hw7.c:227: sendString("S");
      0003A1 90 07 38         [24] 1090 	mov	dptr,#___str_30
      0003A4 75 F0 80         [24] 1091 	mov	b,#0x80
      0003A7 12 06 B0         [24] 1092 	lcall	_sendString
      0003AA 80 39            [24] 1093 	sjmp	00214$
      0003AC                       1094 00204$:
                                   1095 ;	hw7.c:228: }else if (chr2=='5'){
      0003AC BE 35 0B         [24] 1096 	cjne	r6,#0x35,00201$
                                   1097 ;	hw7.c:229: sendString("p");
      0003AF 90 07 3A         [24] 1098 	mov	dptr,#___str_31
      0003B2 75 F0 80         [24] 1099 	mov	b,#0x80
      0003B5 12 06 B0         [24] 1100 	lcall	_sendString
      0003B8 80 2B            [24] 1101 	sjmp	00214$
      0003BA                       1102 00201$:
                                   1103 ;	hw7.c:230: }else if (chr2=='6'){
      0003BA BE 36 0B         [24] 1104 	cjne	r6,#0x36,00198$
                                   1105 ;	hw7.c:231: sendString("q");
      0003BD 90 07 3C         [24] 1106 	mov	dptr,#___str_32
      0003C0 75 F0 80         [24] 1107 	mov	b,#0x80
      0003C3 12 06 B0         [24] 1108 	lcall	_sendString
      0003C6 80 1D            [24] 1109 	sjmp	00214$
      0003C8                       1110 00198$:
                                   1111 ;	hw7.c:232: }else if (chr2=='7'){
      0003C8 BE 37 0B         [24] 1112 	cjne	r6,#0x37,00195$
                                   1113 ;	hw7.c:233: sendString("r");
      0003CB 90 07 3E         [24] 1114 	mov	dptr,#___str_33
      0003CE 75 F0 80         [24] 1115 	mov	b,#0x80
      0003D1 12 06 B0         [24] 1116 	lcall	_sendString
      0003D4 80 0F            [24] 1117 	sjmp	00214$
      0003D6                       1118 00195$:
                                   1119 ;	hw7.c:234: }else if (chr2=='8'){
      0003D6 BE 38 0B         [24] 1120 	cjne	r6,#0x38,00192$
                                   1121 ;	hw7.c:235: sendString("s");
      0003D9 90 07 40         [24] 1122 	mov	dptr,#___str_34
      0003DC 75 F0 80         [24] 1123 	mov	b,#0x80
      0003DF 12 06 B0         [24] 1124 	lcall	_sendString
      0003E2 80 01            [24] 1125 	sjmp	00214$
      0003E4                       1126 00192$:
                                   1127 ;	hw7.c:236: }else return;
      0003E4 22               [24] 1128 	ret
      0003E5                       1129 00214$:
                                   1130 ;	hw7.c:237: curAddr++;
      0003E5 05 30            [12] 1131 	inc	_curAddr
      0003E7 02 06 12         [24] 1132 	ljmp	00348$
      0003EA                       1133 00332$:
                                   1134 ;	hw7.c:238: }else if (chr1=='8'){
      0003EA BF 38 02         [24] 1135 	cjne	r7,#0x38,00694$
      0003ED 80 03            [24] 1136 	sjmp	00695$
      0003EF                       1137 00694$:
      0003EF 02 04 4C         [24] 1138 	ljmp	00329$
      0003F2                       1139 00695$:
                                   1140 ;	hw7.c:239: if (chr2=='1'){
      0003F2 BE 31 0B         [24] 1141 	cjne	r6,#0x31,00231$
                                   1142 ;	hw7.c:240: sendString("T");
      0003F5 90 07 42         [24] 1143 	mov	dptr,#___str_35
      0003F8 75 F0 80         [24] 1144 	mov	b,#0x80
      0003FB 12 06 B0         [24] 1145 	lcall	_sendString
      0003FE 80 47            [24] 1146 	sjmp	00232$
      000400                       1147 00231$:
                                   1148 ;	hw7.c:241: }else if (chr2=='2'){
      000400 BE 32 0B         [24] 1149 	cjne	r6,#0x32,00228$
                                   1150 ;	hw7.c:242: sendString("U");
      000403 90 07 44         [24] 1151 	mov	dptr,#___str_36
      000406 75 F0 80         [24] 1152 	mov	b,#0x80
      000409 12 06 B0         [24] 1153 	lcall	_sendString
      00040C 80 39            [24] 1154 	sjmp	00232$
      00040E                       1155 00228$:
                                   1156 ;	hw7.c:243: }else if (chr2=='3'){
      00040E BE 33 0B         [24] 1157 	cjne	r6,#0x33,00225$
                                   1158 ;	hw7.c:244: sendString("V");
      000411 90 07 46         [24] 1159 	mov	dptr,#___str_37
      000414 75 F0 80         [24] 1160 	mov	b,#0x80
      000417 12 06 B0         [24] 1161 	lcall	_sendString
      00041A 80 2B            [24] 1162 	sjmp	00232$
      00041C                       1163 00225$:
                                   1164 ;	hw7.c:245: }else if (chr2=='4'){
      00041C BE 34 0B         [24] 1165 	cjne	r6,#0x34,00222$
                                   1166 ;	hw7.c:246: sendString("t");
      00041F 90 07 48         [24] 1167 	mov	dptr,#___str_38
      000422 75 F0 80         [24] 1168 	mov	b,#0x80
      000425 12 06 B0         [24] 1169 	lcall	_sendString
      000428 80 1D            [24] 1170 	sjmp	00232$
      00042A                       1171 00222$:
                                   1172 ;	hw7.c:247: }else if (chr2=='5'){
      00042A BE 35 0B         [24] 1173 	cjne	r6,#0x35,00219$
                                   1174 ;	hw7.c:248: sendString("u");
      00042D 90 07 4A         [24] 1175 	mov	dptr,#___str_39
      000430 75 F0 80         [24] 1176 	mov	b,#0x80
      000433 12 06 B0         [24] 1177 	lcall	_sendString
      000436 80 0F            [24] 1178 	sjmp	00232$
      000438                       1179 00219$:
                                   1180 ;	hw7.c:249: }else if (chr2=='6'){
      000438 BE 36 0B         [24] 1181 	cjne	r6,#0x36,00216$
                                   1182 ;	hw7.c:250: sendString("v");
      00043B 90 07 4C         [24] 1183 	mov	dptr,#___str_40
      00043E 75 F0 80         [24] 1184 	mov	b,#0x80
      000441 12 06 B0         [24] 1185 	lcall	_sendString
      000444 80 01            [24] 1186 	sjmp	00232$
      000446                       1187 00216$:
                                   1188 ;	hw7.c:251: }else return;
      000446 22               [24] 1189 	ret
      000447                       1190 00232$:
                                   1191 ;	hw7.c:252: curAddr++;
      000447 05 30            [12] 1192 	inc	_curAddr
      000449 02 06 12         [24] 1193 	ljmp	00348$
      00044C                       1194 00329$:
                                   1195 ;	hw7.c:253: }else if (chr1=='9'){
      00044C BF 39 02         [24] 1196 	cjne	r7,#0x39,00708$
      00044F 80 03            [24] 1197 	sjmp	00709$
      000451                       1198 00708$:
      000451 02 04 CC         [24] 1199 	ljmp	00326$
      000454                       1200 00709$:
                                   1201 ;	hw7.c:254: if (chr2=='1'){
      000454 BE 31 0C         [24] 1202 	cjne	r6,#0x31,00255$
                                   1203 ;	hw7.c:255: sendString("W");
      000457 90 07 4E         [24] 1204 	mov	dptr,#___str_41
      00045A 75 F0 80         [24] 1205 	mov	b,#0x80
      00045D 12 06 B0         [24] 1206 	lcall	_sendString
      000460 02 04 C7         [24] 1207 	ljmp	00256$
      000463                       1208 00255$:
                                   1209 ;	hw7.c:256: }else if (chr2=='2'){
      000463 BE 32 0C         [24] 1210 	cjne	r6,#0x32,00252$
                                   1211 ;	hw7.c:257: sendString("X");
      000466 90 07 50         [24] 1212 	mov	dptr,#___str_42
      000469 75 F0 80         [24] 1213 	mov	b,#0x80
      00046C 12 06 B0         [24] 1214 	lcall	_sendString
      00046F 02 04 C7         [24] 1215 	ljmp	00256$
      000472                       1216 00252$:
                                   1217 ;	hw7.c:258: }else if (chr2=='3'){
      000472 BE 33 0B         [24] 1218 	cjne	r6,#0x33,00249$
                                   1219 ;	hw7.c:259: sendString("Y");
      000475 90 07 52         [24] 1220 	mov	dptr,#___str_43
      000478 75 F0 80         [24] 1221 	mov	b,#0x80
      00047B 12 06 B0         [24] 1222 	lcall	_sendString
      00047E 80 47            [24] 1223 	sjmp	00256$
      000480                       1224 00249$:
                                   1225 ;	hw7.c:260: }else if (chr2=='4'){
      000480 BE 34 0B         [24] 1226 	cjne	r6,#0x34,00246$
                                   1227 ;	hw7.c:261: sendString("Z");
      000483 90 07 54         [24] 1228 	mov	dptr,#___str_44
      000486 75 F0 80         [24] 1229 	mov	b,#0x80
      000489 12 06 B0         [24] 1230 	lcall	_sendString
      00048C 80 39            [24] 1231 	sjmp	00256$
      00048E                       1232 00246$:
                                   1233 ;	hw7.c:262: }else if (chr2=='5'){
      00048E BE 35 0B         [24] 1234 	cjne	r6,#0x35,00243$
                                   1235 ;	hw7.c:263: sendString("w");
      000491 90 07 56         [24] 1236 	mov	dptr,#___str_45
      000494 75 F0 80         [24] 1237 	mov	b,#0x80
      000497 12 06 B0         [24] 1238 	lcall	_sendString
      00049A 80 2B            [24] 1239 	sjmp	00256$
      00049C                       1240 00243$:
                                   1241 ;	hw7.c:264: }else if (chr2=='6'){
      00049C BE 36 0B         [24] 1242 	cjne	r6,#0x36,00240$
                                   1243 ;	hw7.c:265: sendString("x");
      00049F 90 07 58         [24] 1244 	mov	dptr,#___str_46
      0004A2 75 F0 80         [24] 1245 	mov	b,#0x80
      0004A5 12 06 B0         [24] 1246 	lcall	_sendString
      0004A8 80 1D            [24] 1247 	sjmp	00256$
      0004AA                       1248 00240$:
                                   1249 ;	hw7.c:266: }else if (chr2=='7'){
      0004AA BE 37 0B         [24] 1250 	cjne	r6,#0x37,00237$
                                   1251 ;	hw7.c:267: sendString("y");
      0004AD 90 07 5A         [24] 1252 	mov	dptr,#___str_47
      0004B0 75 F0 80         [24] 1253 	mov	b,#0x80
      0004B3 12 06 B0         [24] 1254 	lcall	_sendString
      0004B6 80 0F            [24] 1255 	sjmp	00256$
      0004B8                       1256 00237$:
                                   1257 ;	hw7.c:268: }else if (chr2=='8'){
      0004B8 BE 38 0B         [24] 1258 	cjne	r6,#0x38,00234$
                                   1259 ;	hw7.c:269: sendString("z");
      0004BB 90 07 5C         [24] 1260 	mov	dptr,#___str_48
      0004BE 75 F0 80         [24] 1261 	mov	b,#0x80
      0004C1 12 06 B0         [24] 1262 	lcall	_sendString
      0004C4 80 01            [24] 1263 	sjmp	00256$
      0004C6                       1264 00234$:
                                   1265 ;	hw7.c:270: }else return;
      0004C6 22               [24] 1266 	ret
      0004C7                       1267 00256$:
                                   1268 ;	hw7.c:271: curAddr++;
      0004C7 05 30            [12] 1269 	inc	_curAddr
      0004C9 02 06 12         [24] 1270 	ljmp	00348$
      0004CC                       1271 00326$:
                                   1272 ;	hw7.c:272: }else if (chr1=='*'){
      0004CC BF 2A 02         [24] 1273 	cjne	r7,#0x2A,00726$
      0004CF 80 03            [24] 1274 	sjmp	00727$
      0004D1                       1275 00726$:
      0004D1 02 05 56         [24] 1276 	ljmp	00323$
      0004D4                       1277 00727$:
                                   1278 ;	hw7.c:273: if (chr2=='2'){//up
      0004D4 BE 32 0C         [24] 1279 	cjne	r6,#0x32,00281$
                                   1280 ;	hw7.c:274: curAddr=curAddr&0x0F;
      0004D7 53 30 0F         [24] 1281 	anl	_curAddr,#0x0F
                                   1282 ;	hw7.c:275: setDdRamAddress(curAddr);
      0004DA 85 30 82         [24] 1283 	mov	dpl,_curAddr
      0004DD 12 06 72         [24] 1284 	lcall	_setDdRamAddress
      0004E0 02 06 12         [24] 1285 	ljmp	00348$
      0004E3                       1286 00281$:
                                   1287 ;	hw7.c:276: }else if (chr2=='4'){//left
      0004E3 BE 34 15         [24] 1288 	cjne	r6,#0x34,00278$
                                   1289 ;	hw7.c:277: if(curAddr==0x00 || curAddr==0x40) return;
      0004E6 E5 30            [12] 1290 	mov	a,_curAddr
      0004E8 60 05            [24] 1291 	jz	00257$
      0004EA 74 40            [12] 1292 	mov	a,#0x40
      0004EC B5 30 01         [24] 1293 	cjne	a,_curAddr,00258$
      0004EF                       1294 00257$:
      0004EF 22               [24] 1295 	ret
      0004F0                       1296 00258$:
                                   1297 ;	hw7.c:278: curAddr--;
      0004F0 15 30            [12] 1298 	dec	_curAddr
                                   1299 ;	hw7.c:279: setDdRamAddress(curAddr);
      0004F2 85 30 82         [24] 1300 	mov	dpl,_curAddr
      0004F5 12 06 72         [24] 1301 	lcall	_setDdRamAddress
      0004F8 02 06 12         [24] 1302 	ljmp	00348$
      0004FB                       1303 00278$:
                                   1304 ;	hw7.c:280: }else if (chr2=='5'){//space
      0004FB BE 35 0E         [24] 1305 	cjne	r6,#0x35,00275$
                                   1306 ;	hw7.c:281: sendString(" ");
      0004FE 90 07 5E         [24] 1307 	mov	dptr,#___str_49
      000501 75 F0 80         [24] 1308 	mov	b,#0x80
      000504 12 06 B0         [24] 1309 	lcall	_sendString
                                   1310 ;	hw7.c:282: curAddr++;
      000507 05 30            [12] 1311 	inc	_curAddr
      000509 02 06 12         [24] 1312 	ljmp	00348$
      00050C                       1313 00275$:
                                   1314 ;	hw7.c:283: }else if (chr2=='6'){//right
      00050C BE 36 14         [24] 1315 	cjne	r6,#0x36,00272$
                                   1316 ;	hw7.c:284: if((curAddr&0x0F)==0x0F) return;
      00050F AD 30            [24] 1317 	mov	r5,_curAddr
      000511 53 05 0F         [24] 1318 	anl	ar5,#0x0F
      000514 BD 0F 01         [24] 1319 	cjne	r5,#0x0F,00261$
      000517 22               [24] 1320 	ret
      000518                       1321 00261$:
                                   1322 ;	hw7.c:285: curAddr++;
      000518 05 30            [12] 1323 	inc	_curAddr
                                   1324 ;	hw7.c:286: setDdRamAddress(curAddr);
      00051A 85 30 82         [24] 1325 	mov	dpl,_curAddr
      00051D 12 06 72         [24] 1326 	lcall	_setDdRamAddress
      000520 02 06 12         [24] 1327 	ljmp	00348$
      000523                       1328 00272$:
                                   1329 ;	hw7.c:287: }else if (chr2=='8'){//down
      000523 BE 38 11         [24] 1330 	cjne	r6,#0x38,00269$
                                   1331 ;	hw7.c:288: curAddr=(curAddr&0x0F) |0x40;
      000526 74 0F            [12] 1332 	mov	a,#0x0F
      000528 55 30            [12] 1333 	anl	a,_curAddr
      00052A 44 40            [12] 1334 	orl	a,#0x40
      00052C F5 30            [12] 1335 	mov	_curAddr,a
                                   1336 ;	hw7.c:289: setDdRamAddress(curAddr);
      00052E 85 30 82         [24] 1337 	mov	dpl,_curAddr
      000531 12 06 72         [24] 1338 	lcall	_setDdRamAddress
      000534 02 06 12         [24] 1339 	ljmp	00348$
      000537                       1340 00269$:
                                   1341 ;	hw7.c:290: }else if (chr2=='9'){//newline
      000537 BE 39 0C         [24] 1342 	cjne	r6,#0x39,00266$
                                   1343 ;	hw7.c:291: curAddr=0x40;
      00053A 75 30 40         [24] 1344 	mov	_curAddr,#0x40
                                   1345 ;	hw7.c:292: setDdRamAddress(curAddr);
      00053D 85 30 82         [24] 1346 	mov	dpl,_curAddr
      000540 12 06 72         [24] 1347 	lcall	_setDdRamAddress
      000543 02 06 12         [24] 1348 	ljmp	00348$
      000546                       1349 00266$:
                                   1350 ;	hw7.c:293: }else if (chr2=='1'){//return Home
      000546 BE 31 0C         [24] 1351 	cjne	r6,#0x31,00263$
                                   1352 ;	hw7.c:294: curAddr=0x00;
      000549 75 30 00         [24] 1353 	mov	_curAddr,#0x00
                                   1354 ;	hw7.c:295: setDdRamAddress(curAddr);
      00054C 85 30 82         [24] 1355 	mov	dpl,_curAddr
      00054F 12 06 72         [24] 1356 	lcall	_setDdRamAddress
      000552 02 06 12         [24] 1357 	ljmp	00348$
      000555                       1358 00263$:
                                   1359 ;	hw7.c:296: }else return;
      000555 22               [24] 1360 	ret
      000556                       1361 00323$:
                                   1362 ;	hw7.c:298: }else if (chr1=='#'){
      000556 BF 23 02         [24] 1363 	cjne	r7,#0x23,00747$
      000559 80 03            [24] 1364 	sjmp	00748$
      00055B                       1365 00747$:
      00055B 02 06 11         [24] 1366 	ljmp	00320$
      00055E                       1367 00748$:
                                   1368 ;	hw7.c:299: if (chr2=='1'){
      00055E BE 31 0C         [24] 1369 	cjne	r6,#0x31,00317$
                                   1370 ;	hw7.c:300: sendString("1");
      000561 90 07 60         [24] 1371 	mov	dptr,#___str_50
      000564 75 F0 80         [24] 1372 	mov	b,#0x80
      000567 12 06 B0         [24] 1373 	lcall	_sendString
      00056A 02 06 0D         [24] 1374 	ljmp	00318$
      00056D                       1375 00317$:
                                   1376 ;	hw7.c:301: }else if (chr2=='2'){
      00056D BE 32 0C         [24] 1377 	cjne	r6,#0x32,00314$
                                   1378 ;	hw7.c:302: sendString("2");
      000570 90 07 62         [24] 1379 	mov	dptr,#___str_51
      000573 75 F0 80         [24] 1380 	mov	b,#0x80
      000576 12 06 B0         [24] 1381 	lcall	_sendString
      000579 02 06 0D         [24] 1382 	ljmp	00318$
      00057C                       1383 00314$:
                                   1384 ;	hw7.c:303: }else if (chr2=='3'){
      00057C BE 33 0C         [24] 1385 	cjne	r6,#0x33,00311$
                                   1386 ;	hw7.c:304: sendString("3");
      00057F 90 07 64         [24] 1387 	mov	dptr,#___str_52
      000582 75 F0 80         [24] 1388 	mov	b,#0x80
      000585 12 06 B0         [24] 1389 	lcall	_sendString
      000588 02 06 0D         [24] 1390 	ljmp	00318$
      00058B                       1391 00311$:
                                   1392 ;	hw7.c:305: }else if (chr2=='4'){
      00058B BE 34 0C         [24] 1393 	cjne	r6,#0x34,00308$
                                   1394 ;	hw7.c:306: sendString("4");
      00058E 90 07 66         [24] 1395 	mov	dptr,#___str_53
      000591 75 F0 80         [24] 1396 	mov	b,#0x80
      000594 12 06 B0         [24] 1397 	lcall	_sendString
      000597 02 06 0D         [24] 1398 	ljmp	00318$
      00059A                       1399 00308$:
                                   1400 ;	hw7.c:307: }else if (chr2=='5'){
      00059A BE 35 0C         [24] 1401 	cjne	r6,#0x35,00305$
                                   1402 ;	hw7.c:308: sendString("5");
      00059D 90 07 68         [24] 1403 	mov	dptr,#___str_54
      0005A0 75 F0 80         [24] 1404 	mov	b,#0x80
      0005A3 12 06 B0         [24] 1405 	lcall	_sendString
      0005A6 02 06 0D         [24] 1406 	ljmp	00318$
      0005A9                       1407 00305$:
                                   1408 ;	hw7.c:309: }else if (chr2=='6'){
      0005A9 BE 36 0C         [24] 1409 	cjne	r6,#0x36,00302$
                                   1410 ;	hw7.c:310: sendString("6");
      0005AC 90 07 6A         [24] 1411 	mov	dptr,#___str_55
      0005AF 75 F0 80         [24] 1412 	mov	b,#0x80
      0005B2 12 06 B0         [24] 1413 	lcall	_sendString
      0005B5 02 06 0D         [24] 1414 	ljmp	00318$
      0005B8                       1415 00302$:
                                   1416 ;	hw7.c:311: }else if (chr2=='7'){
      0005B8 BE 37 0B         [24] 1417 	cjne	r6,#0x37,00299$
                                   1418 ;	hw7.c:312: sendString("7");
      0005BB 90 07 6C         [24] 1419 	mov	dptr,#___str_56
      0005BE 75 F0 80         [24] 1420 	mov	b,#0x80
      0005C1 12 06 B0         [24] 1421 	lcall	_sendString
      0005C4 80 47            [24] 1422 	sjmp	00318$
      0005C6                       1423 00299$:
                                   1424 ;	hw7.c:313: }else if (chr2=='8'){
      0005C6 BE 38 0B         [24] 1425 	cjne	r6,#0x38,00296$
                                   1426 ;	hw7.c:314: sendString("8");
      0005C9 90 07 6E         [24] 1427 	mov	dptr,#___str_57
      0005CC 75 F0 80         [24] 1428 	mov	b,#0x80
      0005CF 12 06 B0         [24] 1429 	lcall	_sendString
      0005D2 80 39            [24] 1430 	sjmp	00318$
      0005D4                       1431 00296$:
                                   1432 ;	hw7.c:315: }else if (chr2=='9'){
      0005D4 BE 39 0B         [24] 1433 	cjne	r6,#0x39,00293$
                                   1434 ;	hw7.c:316: sendString("9");
      0005D7 90 07 70         [24] 1435 	mov	dptr,#___str_58
      0005DA 75 F0 80         [24] 1436 	mov	b,#0x80
      0005DD 12 06 B0         [24] 1437 	lcall	_sendString
      0005E0 80 2B            [24] 1438 	sjmp	00318$
      0005E2                       1439 00293$:
                                   1440 ;	hw7.c:317: }else if (chr2=='*'){
      0005E2 BE 2A 0B         [24] 1441 	cjne	r6,#0x2A,00290$
                                   1442 ;	hw7.c:318: sendString("*");
      0005E5 90 07 72         [24] 1443 	mov	dptr,#___str_59
      0005E8 75 F0 80         [24] 1444 	mov	b,#0x80
      0005EB 12 06 B0         [24] 1445 	lcall	_sendString
      0005EE 80 1D            [24] 1446 	sjmp	00318$
      0005F0                       1447 00290$:
                                   1448 ;	hw7.c:319: }else if (chr2=='0'){
      0005F0 BE 30 0B         [24] 1449 	cjne	r6,#0x30,00287$
                                   1450 ;	hw7.c:320: sendString("0");
      0005F3 90 07 74         [24] 1451 	mov	dptr,#___str_60
      0005F6 75 F0 80         [24] 1452 	mov	b,#0x80
      0005F9 12 06 B0         [24] 1453 	lcall	_sendString
      0005FC 80 0F            [24] 1454 	sjmp	00318$
      0005FE                       1455 00287$:
                                   1456 ;	hw7.c:321: }else if (chr2=='#'){
      0005FE BE 23 0B         [24] 1457 	cjne	r6,#0x23,00284$
                                   1458 ;	hw7.c:322: sendString("#");
      000601 90 07 76         [24] 1459 	mov	dptr,#___str_61
      000604 75 F0 80         [24] 1460 	mov	b,#0x80
      000607 12 06 B0         [24] 1461 	lcall	_sendString
      00060A 80 01            [24] 1462 	sjmp	00318$
      00060C                       1463 00284$:
                                   1464 ;	hw7.c:323: }else return;
      00060C 22               [24] 1465 	ret
      00060D                       1466 00318$:
                                   1467 ;	hw7.c:324: curAddr++;
      00060D 05 30            [12] 1468 	inc	_curAddr
      00060F 80 01            [24] 1469 	sjmp	00348$
      000611                       1470 00320$:
                                   1471 ;	hw7.c:325: }else return;
      000611 22               [24] 1472 	ret
      000612                       1473 00348$:
                                   1474 ;	hw7.c:327: if((curAddr==0x10)||(curAddr==0x50)){
      000612 74 10            [12] 1475 	mov	a,#0x10
      000614 B5 30 02         [24] 1476 	cjne	a,_curAddr,00773$
      000617 80 05            [24] 1477 	sjmp	00349$
      000619                       1478 00773$:
      000619 74 50            [12] 1479 	mov	a,#0x50
      00061B B5 30 08         [24] 1480 	cjne	a,_curAddr,00352$
      00061E                       1481 00349$:
                                   1482 ;	hw7.c:328: curAddr--;
      00061E 15 30            [12] 1483 	dec	_curAddr
                                   1484 ;	hw7.c:329: setDdRamAddress(curAddr);
      000620 85 30 82         [24] 1485 	mov	dpl,_curAddr
      000623 02 06 72         [24] 1486 	ljmp	_setDdRamAddress
      000626                       1487 00352$:
      000626 22               [24] 1488 	ret
                                   1489 ;------------------------------------------------------------
                                   1490 ;Allocation info for local variables in function 'InitLCD'
                                   1491 ;------------------------------------------------------------
                                   1492 ;	hw7.c:335: void InitLCD(){
                                   1493 ;	-----------------------------------------
                                   1494 ;	 function InitLCD
                                   1495 ;	-----------------------------------------
      000627                       1496 _InitLCD:
                                   1497 ;	hw7.c:336: functionSet();
      000627 12 06 55         [24] 1498 	lcall	_functionSet
                                   1499 ;	hw7.c:338: IRWRITE(0x06);
      00062A 75 82 06         [24] 1500 	mov	dpl,#0x06
      00062D 12 06 3A         [24] 1501 	lcall	_IRWRITE
                                   1502 ;	hw7.c:340: IRWRITE(0x0F);
      000630 75 82 0F         [24] 1503 	mov	dpl,#0x0F
      000633 12 06 3A         [24] 1504 	lcall	_IRWRITE
                                   1505 ;	hw7.c:342: curAddr=0x00;
      000636 75 30 00         [24] 1506 	mov	_curAddr,#0x00
      000639 22               [24] 1507 	ret
                                   1508 ;------------------------------------------------------------
                                   1509 ;Allocation info for local variables in function 'IRWRITE'
                                   1510 ;------------------------------------------------------------
                                   1511 ;addr                      Allocated to registers r7 
                                   1512 ;------------------------------------------------------------
                                   1513 ;	hw7.c:346: void IRWRITE(char addr)
                                   1514 ;	-----------------------------------------
                                   1515 ;	 function IRWRITE
                                   1516 ;	-----------------------------------------
      00063A                       1517 _IRWRITE:
      00063A AF 82            [24] 1518 	mov	r7,dpl
                                   1519 ;	hw7.c:348: P1= (addr & 0xf0) ;
      00063C 74 F0            [12] 1520 	mov	a,#0xF0
      00063E 5F               [12] 1521 	anl	a,r7
      00063F F5 90            [12] 1522 	mov	_P1,a
                                   1523 ;	hw7.c:349: E = 1;
      000641 D2 92            [12] 1524 	setb	_P1_2
                                   1525 ;	hw7.c:350: E = 0;
      000643 C2 92            [12] 1526 	clr	_P1_2
                                   1527 ;	hw7.c:351: P1 = ((addr & 0x0f) << 4) | 0x00;
      000645 53 07 0F         [24] 1528 	anl	ar7,#0x0F
      000648 EF               [12] 1529 	mov	a,r7
      000649 C4               [12] 1530 	swap	a
      00064A 54 F0            [12] 1531 	anl	a,#0xF0
      00064C F5 90            [12] 1532 	mov	_P1,a
                                   1533 ;	hw7.c:352: E = 1;
      00064E D2 92            [12] 1534 	setb	_P1_2
                                   1535 ;	hw7.c:353: E = 0;
      000650 C2 92            [12] 1536 	clr	_P1_2
                                   1537 ;	hw7.c:354: delay();
      000652 02 06 DB         [24] 1538 	ljmp	_delay
                                   1539 ;------------------------------------------------------------
                                   1540 ;Allocation info for local variables in function 'functionSet'
                                   1541 ;------------------------------------------------------------
                                   1542 ;	hw7.c:356: void functionSet(void) {//ok
                                   1543 ;	-----------------------------------------
                                   1544 ;	 function functionSet
                                   1545 ;	-----------------------------------------
      000655                       1546 _functionSet:
                                   1547 ;	hw7.c:364: P1 = (P1&0x23) | 0x20;
      000655 74 23            [12] 1548 	mov	a,#0x23
      000657 55 90            [12] 1549 	anl	a,_P1
      000659 44 20            [12] 1550 	orl	a,#0x20
      00065B F5 90            [12] 1551 	mov	_P1,a
                                   1552 ;	hw7.c:366: E = 1;
      00065D D2 92            [12] 1553 	setb	_P1_2
                                   1554 ;	hw7.c:367: E = 0;
      00065F C2 92            [12] 1555 	clr	_P1_2
                                   1556 ;	hw7.c:368: delay();
      000661 12 06 DB         [24] 1557 	lcall	_delay
                                   1558 ;	hw7.c:369: E = 1;
      000664 D2 92            [12] 1559 	setb	_P1_2
                                   1560 ;	hw7.c:370: E = 0;
      000666 C2 92            [12] 1561 	clr	_P1_2
                                   1562 ;	hw7.c:372: P1=0x80;
      000668 75 90 80         [24] 1563 	mov	_P1,#0x80
                                   1564 ;	hw7.c:373: E = 1;
      00066B D2 92            [12] 1565 	setb	_P1_2
                                   1566 ;	hw7.c:374: E = 0;
      00066D C2 92            [12] 1567 	clr	_P1_2
                                   1568 ;	hw7.c:375: delay();
      00066F 02 06 DB         [24] 1569 	ljmp	_delay
                                   1570 ;------------------------------------------------------------
                                   1571 ;Allocation info for local variables in function 'setDdRamAddress'
                                   1572 ;------------------------------------------------------------
                                   1573 ;address                   Allocated to registers r7 
                                   1574 ;------------------------------------------------------------
                                   1575 ;	hw7.c:378: void setDdRamAddress(char address) {
                                   1576 ;	-----------------------------------------
                                   1577 ;	 function setDdRamAddress
                                   1578 ;	-----------------------------------------
      000672                       1579 _setDdRamAddress:
      000672 AF 82            [24] 1580 	mov	r7,dpl
                                   1581 ;	hw7.c:380: P1= (address & 0xf0) | 0x80;
      000674 74 F0            [12] 1582 	mov	a,#0xF0
      000676 5F               [12] 1583 	anl	a,r7
      000677 44 80            [12] 1584 	orl	a,#0x80
      000679 F5 90            [12] 1585 	mov	_P1,a
                                   1586 ;	hw7.c:381: E = 1;
      00067B D2 92            [12] 1587 	setb	_P1_2
                                   1588 ;	hw7.c:382: E = 0;
      00067D C2 92            [12] 1589 	clr	_P1_2
                                   1590 ;	hw7.c:384: P1= (address & 0x0f) << 4;
      00067F 53 07 0F         [24] 1591 	anl	ar7,#0x0F
      000682 EF               [12] 1592 	mov	a,r7
      000683 C4               [12] 1593 	swap	a
      000684 54 F0            [12] 1594 	anl	a,#0xF0
      000686 F5 90            [12] 1595 	mov	_P1,a
                                   1596 ;	hw7.c:385: E = 1;
      000688 D2 92            [12] 1597 	setb	_P1_2
                                   1598 ;	hw7.c:386: E = 0;
      00068A C2 92            [12] 1599 	clr	_P1_2
                                   1600 ;	hw7.c:387: delay();
      00068C 02 06 DB         [24] 1601 	ljmp	_delay
                                   1602 ;------------------------------------------------------------
                                   1603 ;Allocation info for local variables in function 'sendChar'
                                   1604 ;------------------------------------------------------------
                                   1605 ;c                         Allocated to registers r7 
                                   1606 ;------------------------------------------------------------
                                   1607 ;	hw7.c:392: void sendChar(char c) {
                                   1608 ;	-----------------------------------------
                                   1609 ;	 function sendChar
                                   1610 ;	-----------------------------------------
      00068F                       1611 _sendChar:
      00068F AF 82            [24] 1612 	mov	r7,dpl
                                   1613 ;	hw7.c:398: P1 = (c & 0xf0) | 0x08;
      000691 74 F0            [12] 1614 	mov	a,#0xF0
      000693 5F               [12] 1615 	anl	a,r7
      000694 44 08            [12] 1616 	orl	a,#0x08
      000696 F5 90            [12] 1617 	mov	_P1,a
                                   1618 ;	hw7.c:399: E = 1;
      000698 D2 92            [12] 1619 	setb	_P1_2
                                   1620 ;	hw7.c:400: E = 0;
      00069A C2 92            [12] 1621 	clr	_P1_2
                                   1622 ;	hw7.c:406: P1=  ((c & 0x0f) << 4) | 0x08;
      00069C 53 07 0F         [24] 1623 	anl	ar7,#0x0F
      00069F EF               [12] 1624 	mov	a,r7
      0006A0 C4               [12] 1625 	swap	a
      0006A1 54 F0            [12] 1626 	anl	a,#0xF0
      0006A3 FF               [12] 1627 	mov	r7,a
      0006A4 74 08            [12] 1628 	mov	a,#0x08
      0006A6 4F               [12] 1629 	orl	a,r7
      0006A7 F5 90            [12] 1630 	mov	_P1,a
                                   1631 ;	hw7.c:407: E = 1;
      0006A9 D2 92            [12] 1632 	setb	_P1_2
                                   1633 ;	hw7.c:408: E = 0;
      0006AB C2 92            [12] 1634 	clr	_P1_2
                                   1635 ;	hw7.c:409: delay();
      0006AD 02 06 DB         [24] 1636 	ljmp	_delay
                                   1637 ;------------------------------------------------------------
                                   1638 ;Allocation info for local variables in function 'sendString'
                                   1639 ;------------------------------------------------------------
                                   1640 ;str                       Allocated to registers 
                                   1641 ;p                         Allocated to registers r5 r6 r7 
                                   1642 ;------------------------------------------------------------
                                   1643 ;	hw7.c:412: void sendString(char* str) {
                                   1644 ;	-----------------------------------------
                                   1645 ;	 function sendString
                                   1646 ;	-----------------------------------------
      0006B0                       1647 _sendString:
      0006B0 AD 82            [24] 1648 	mov	r5,dpl
      0006B2 AE 83            [24] 1649 	mov	r6,dph
      0006B4 AF F0            [24] 1650 	mov	r7,b
                                   1651 ;	hw7.c:419: for (p=str; *p; p++) {
      0006B6                       1652 00103$:
      0006B6 8D 82            [24] 1653 	mov	dpl,r5
      0006B8 8E 83            [24] 1654 	mov	dph,r6
      0006BA 8F F0            [24] 1655 	mov	b,r7
      0006BC 12 06 E0         [24] 1656 	lcall	__gptrget
      0006BF FC               [12] 1657 	mov	r4,a
      0006C0 60 18            [24] 1658 	jz	00105$
                                   1659 ;	hw7.c:420: sendChar(*p);
      0006C2 8C 82            [24] 1660 	mov	dpl,r4
      0006C4 C0 07            [24] 1661 	push	ar7
      0006C6 C0 06            [24] 1662 	push	ar6
      0006C8 C0 05            [24] 1663 	push	ar5
      0006CA 12 06 8F         [24] 1664 	lcall	_sendChar
      0006CD D0 05            [24] 1665 	pop	ar5
      0006CF D0 06            [24] 1666 	pop	ar6
      0006D1 D0 07            [24] 1667 	pop	ar7
                                   1668 ;	hw7.c:419: for (p=str; *p; p++) {
      0006D3 0D               [12] 1669 	inc	r5
      0006D4 BD 00 DF         [24] 1670 	cjne	r5,#0x00,00103$
      0006D7 0E               [12] 1671 	inc	r6
      0006D8 80 DC            [24] 1672 	sjmp	00103$
      0006DA                       1673 00105$:
      0006DA 22               [24] 1674 	ret
                                   1675 ;------------------------------------------------------------
                                   1676 ;Allocation info for local variables in function 'delay'
                                   1677 ;------------------------------------------------------------
                                   1678 ;c                         Allocated to registers r7 
                                   1679 ;------------------------------------------------------------
                                   1680 ;	hw7.c:423: void delay(void) {
                                   1681 ;	-----------------------------------------
                                   1682 ;	 function delay
                                   1683 ;	-----------------------------------------
      0006DB                       1684 _delay:
                                   1685 ;	hw7.c:425: for (c = 0; c < 50; c++);
      0006DB 7F 32            [12] 1686 	mov	r7,#0x32
      0006DD                       1687 00104$:
      0006DD DF FE            [24] 1688 	djnz	r7,00104$
      0006DF 22               [24] 1689 	ret
                                   1690 	.area CSEG    (CODE)
                                   1691 	.area CONST   (CODE)
      0006FC                       1692 ___str_0:
      0006FC 41                    1693 	.ascii "A"
      0006FD 00                    1694 	.db 0x00
      0006FE                       1695 ___str_1:
      0006FE 42                    1696 	.ascii "B"
      0006FF 00                    1697 	.db 0x00
      000700                       1698 ___str_2:
      000700 43                    1699 	.ascii "C"
      000701 00                    1700 	.db 0x00
      000702                       1701 ___str_3:
      000702 61                    1702 	.ascii "a"
      000703 00                    1703 	.db 0x00
      000704                       1704 ___str_4:
      000704 62                    1705 	.ascii "b"
      000705 00                    1706 	.db 0x00
      000706                       1707 ___str_5:
      000706 63                    1708 	.ascii "c"
      000707 00                    1709 	.db 0x00
      000708                       1710 ___str_6:
      000708 44                    1711 	.ascii "D"
      000709 00                    1712 	.db 0x00
      00070A                       1713 ___str_7:
      00070A 45                    1714 	.ascii "E"
      00070B 00                    1715 	.db 0x00
      00070C                       1716 ___str_8:
      00070C 46                    1717 	.ascii "F"
      00070D 00                    1718 	.db 0x00
      00070E                       1719 ___str_9:
      00070E 64                    1720 	.ascii "d"
      00070F 00                    1721 	.db 0x00
      000710                       1722 ___str_10:
      000710 65                    1723 	.ascii "e"
      000711 00                    1724 	.db 0x00
      000712                       1725 ___str_11:
      000712 66                    1726 	.ascii "f"
      000713 00                    1727 	.db 0x00
      000714                       1728 ___str_12:
      000714 47                    1729 	.ascii "G"
      000715 00                    1730 	.db 0x00
      000716                       1731 ___str_13:
      000716 48                    1732 	.ascii "H"
      000717 00                    1733 	.db 0x00
      000718                       1734 ___str_14:
      000718 49                    1735 	.ascii "I"
      000719 00                    1736 	.db 0x00
      00071A                       1737 ___str_15:
      00071A 4A                    1738 	.ascii "J"
      00071B 00                    1739 	.db 0x00
      00071C                       1740 ___str_16:
      00071C 4B                    1741 	.ascii "K"
      00071D 00                    1742 	.db 0x00
      00071E                       1743 ___str_17:
      00071E 4C                    1744 	.ascii "L"
      00071F 00                    1745 	.db 0x00
      000720                       1746 ___str_18:
      000720 6A                    1747 	.ascii "j"
      000721 00                    1748 	.db 0x00
      000722                       1749 ___str_19:
      000722 6B                    1750 	.ascii "k"
      000723 00                    1751 	.db 0x00
      000724                       1752 ___str_20:
      000724 6C                    1753 	.ascii "l"
      000725 00                    1754 	.db 0x00
      000726                       1755 ___str_21:
      000726 4D                    1756 	.ascii "M"
      000727 00                    1757 	.db 0x00
      000728                       1758 ___str_22:
      000728 4E                    1759 	.ascii "N"
      000729 00                    1760 	.db 0x00
      00072A                       1761 ___str_23:
      00072A 4F                    1762 	.ascii "O"
      00072B 00                    1763 	.db 0x00
      00072C                       1764 ___str_24:
      00072C 6D                    1765 	.ascii "m"
      00072D 00                    1766 	.db 0x00
      00072E                       1767 ___str_25:
      00072E 6E                    1768 	.ascii "n"
      00072F 00                    1769 	.db 0x00
      000730                       1770 ___str_26:
      000730 6F                    1771 	.ascii "o"
      000731 00                    1772 	.db 0x00
      000732                       1773 ___str_27:
      000732 50                    1774 	.ascii "P"
      000733 00                    1775 	.db 0x00
      000734                       1776 ___str_28:
      000734 51                    1777 	.ascii "Q"
      000735 00                    1778 	.db 0x00
      000736                       1779 ___str_29:
      000736 52                    1780 	.ascii "R"
      000737 00                    1781 	.db 0x00
      000738                       1782 ___str_30:
      000738 53                    1783 	.ascii "S"
      000739 00                    1784 	.db 0x00
      00073A                       1785 ___str_31:
      00073A 70                    1786 	.ascii "p"
      00073B 00                    1787 	.db 0x00
      00073C                       1788 ___str_32:
      00073C 71                    1789 	.ascii "q"
      00073D 00                    1790 	.db 0x00
      00073E                       1791 ___str_33:
      00073E 72                    1792 	.ascii "r"
      00073F 00                    1793 	.db 0x00
      000740                       1794 ___str_34:
      000740 73                    1795 	.ascii "s"
      000741 00                    1796 	.db 0x00
      000742                       1797 ___str_35:
      000742 54                    1798 	.ascii "T"
      000743 00                    1799 	.db 0x00
      000744                       1800 ___str_36:
      000744 55                    1801 	.ascii "U"
      000745 00                    1802 	.db 0x00
      000746                       1803 ___str_37:
      000746 56                    1804 	.ascii "V"
      000747 00                    1805 	.db 0x00
      000748                       1806 ___str_38:
      000748 74                    1807 	.ascii "t"
      000749 00                    1808 	.db 0x00
      00074A                       1809 ___str_39:
      00074A 75                    1810 	.ascii "u"
      00074B 00                    1811 	.db 0x00
      00074C                       1812 ___str_40:
      00074C 76                    1813 	.ascii "v"
      00074D 00                    1814 	.db 0x00
      00074E                       1815 ___str_41:
      00074E 57                    1816 	.ascii "W"
      00074F 00                    1817 	.db 0x00
      000750                       1818 ___str_42:
      000750 58                    1819 	.ascii "X"
      000751 00                    1820 	.db 0x00
      000752                       1821 ___str_43:
      000752 59                    1822 	.ascii "Y"
      000753 00                    1823 	.db 0x00
      000754                       1824 ___str_44:
      000754 5A                    1825 	.ascii "Z"
      000755 00                    1826 	.db 0x00
      000756                       1827 ___str_45:
      000756 77                    1828 	.ascii "w"
      000757 00                    1829 	.db 0x00
      000758                       1830 ___str_46:
      000758 78                    1831 	.ascii "x"
      000759 00                    1832 	.db 0x00
      00075A                       1833 ___str_47:
      00075A 79                    1834 	.ascii "y"
      00075B 00                    1835 	.db 0x00
      00075C                       1836 ___str_48:
      00075C 7A                    1837 	.ascii "z"
      00075D 00                    1838 	.db 0x00
      00075E                       1839 ___str_49:
      00075E 20                    1840 	.ascii " "
      00075F 00                    1841 	.db 0x00
      000760                       1842 ___str_50:
      000760 31                    1843 	.ascii "1"
      000761 00                    1844 	.db 0x00
      000762                       1845 ___str_51:
      000762 32                    1846 	.ascii "2"
      000763 00                    1847 	.db 0x00
      000764                       1848 ___str_52:
      000764 33                    1849 	.ascii "3"
      000765 00                    1850 	.db 0x00
      000766                       1851 ___str_53:
      000766 34                    1852 	.ascii "4"
      000767 00                    1853 	.db 0x00
      000768                       1854 ___str_54:
      000768 35                    1855 	.ascii "5"
      000769 00                    1856 	.db 0x00
      00076A                       1857 ___str_55:
      00076A 36                    1858 	.ascii "6"
      00076B 00                    1859 	.db 0x00
      00076C                       1860 ___str_56:
      00076C 37                    1861 	.ascii "7"
      00076D 00                    1862 	.db 0x00
      00076E                       1863 ___str_57:
      00076E 38                    1864 	.ascii "8"
      00076F 00                    1865 	.db 0x00
      000770                       1866 ___str_58:
      000770 39                    1867 	.ascii "9"
      000771 00                    1868 	.db 0x00
      000772                       1869 ___str_59:
      000772 2A                    1870 	.ascii "*"
      000773 00                    1871 	.db 0x00
      000774                       1872 ___str_60:
      000774 30                    1873 	.ascii "0"
      000775 00                    1874 	.db 0x00
      000776                       1875 ___str_61:
      000776 23                    1876 	.ascii "#"
      000777 00                    1877 	.db 0x00
                                   1878 	.area XINIT   (CODE)
                                   1879 	.area CABS    (ABS,CODE)
