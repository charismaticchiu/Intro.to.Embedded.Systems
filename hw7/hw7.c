#include <8051.h>
//100060007 CHIU,MING-CHANG
//CS410500
//HW7 
//DUE:20140506
//STATUS:WORKS,BUGS HAVE NOT FOUND
/*********
COMMENT:
	Some points should be noticed:
	1. Remember to enable interrupt: IE=0x84 for INT0
	2. Assign initial value locally, not macro, or will have bugs. e.g. curAddr
	3. Have to reassign P0 after judging which key is pressed, but I do not know why it will works. It is empirical result.
FOR TA:
	1.The best frequency might be 800~1000
	2.TA can observe P2 for checking whether the key is correctly pressed. 0x0F for first; 0xF0 for second
	3.Sometimes it will be too fast to discriminate first and second key press. So be a bit more patient :) 
*********/
#define DB7  P1_7
#define DB6  P1_6
#define DB5  P1_5
#define DB4  P1_4
#define RS  P1_3
#define E  P1_2

void _sdcc_gsinit_startup(void);  
void _mcs51_genRAMCLEAR(void); 
void _mcs51_genXINIT(void); 
void _mcs51_genXRAMCLEAR(void); 
char colScan(char c);
void functionSet(void);
void setDdRamAddress(char address);
char firstChar(char fstP1,char fstP2);// determine first char 
void secondChar(char chr1,char sndP1,char sndP2);//determine second char
void sendChar(char c);
void sendString(char* str);
void delay(void);
//void judge(char firstP1,char firstP2,char secondP1,char secondP2);
void IRWRITE(char addr);
volatile char curAddr=0x00;
volatile __bit inter=0;
void InitLCD();
void KeyInit(){
	
	P3_3=1;
	P0_4=0;
	P0_5=0;
	P0_6=0;
	//P0=0x0F;
}
void keypadISR(void) __interrupt(2) {
   // your ISR here
	if(!P3_3){
		inter=1;
	}
}
void main(void) {
	volatile char bitmap, bitmapL, bitmapH; 
	volatile char row, rowmask;
	volatile char firstP1,firstP2,secondP1,secondP2,chr1;	
	volatile __bit charCount=0;
	KeyInit();
	IE=0x84;
	InitLCD();		
	while(1) {
		//P2 =0x0F;
		
      // wait for the keyboardISR to catch an interrupt,
      // then row/column scan as you did in assignment 5.
	    if (inter){//On interrupt, inter will be set to 1 and then start scan keypad
			//P3_3=1;
			//P2 =0xF0;
			inter=0;
			
			for (row=bitmapL=bitmapH=0, rowmask = 0xf7; row < 4; row++, rowmask >>= 1) {
				bitmap=colScan(rowmask);
				if (row==2) {
					bitmapH = (bitmapL >> 2);
				}
				bitmapL = (bitmapL<<3) | bitmap;
			}
			
			if(bitmapL==0x00 && bitmapH==0x00){
				;
			}else if(charCount==0){//first char				
				charCount=1;
				firstP1=bitmapL;
				firstP2=bitmapH;
				P2 =0x0F;//for observing first or second char
				//delay();
			}else if(charCount==1){//second char				
				charCount=0;
				//P2 =0x0F;
				P2 =0xF0;//for observing first or second char
				secondP1=bitmapL;
				secondP2=bitmapH;		
				chr1=firstChar(firstP1,firstP2);
				secondChar(chr1,secondP1,secondP2);//secondChar() returns the input of this time
				//delay();				
			}
			//KeyInit();
			IP=curAddr;//for observing LCD address
			P0=0x00;//reset P0 so P3_3 will have function again(?)
		}
		
	}
}

// the following is needed to make it work with interrupt vectors and eliminating unwanted startup routines
void _sdcc_gsinit_startup(void) {main();}
void _mcs51_genRAMCLEAR(void){}
void _mcs51_genXINIT(void){}
void _mcs51_genXRAMCLEAR(void){}
char colScan(char rowmask) {
	P0 = rowmask;
	return (~(P0>>4)) & 0x07;
}

char firstChar(char fstP1,char fstP2){	
	if (fstP2!=0x00){//1,2,3,4
		if((fstP2>>3)&1){
			return '1';
		}else if((fstP2>>2)&1){
			return '2';
		}else if((fstP2>>1)&1){
			return '3';
		}else if((fstP2)&1){
			return '4';
		}
	
	}else { //5,6,7,8,9,0,*,#
		if((fstP1>>7)&1){
			return '5';
		}else if((fstP1>>6)&1){
			return '6';
		}else if((fstP1>>5)&1){
			return '7';
		}else if((fstP1>>4)&1){
			return '8';
		}else if((fstP1>>3)&1){
			return '9';
		}else if((fstP1>>2)&1){
			return '*';
		}else if((fstP1>>1)&1){
			return '0';
		}else if((fstP1)&1){
			return '#';
		}
	}	
}
void secondChar(char chr1,char sndP1,char sndP2){
	char chr2;
	int i=0;
	chr2=firstChar(sndP1,sndP2);
	if (chr1=='2'){
		if (chr2=='1'){
			sendString("A");
		}else if (chr2=='2'){
			sendString("B");
		}else if (chr2=='3'){
			sendString("C");
		}else if (chr2=='4'){
			sendString("a");
		}else if (chr2=='5'){
			sendString("b");
		}else if (chr2=='6'){		
			sendString("c");
		}else return;
	curAddr++;
	
	}else if (chr1=='3'){
		if (chr2=='1'){
			sendString("D");
		}else if (chr2=='2'){
			sendString("E");
		}else if (chr2=='3'){
			sendString("F");
		}else if (chr2=='4'){
			sendString("d");
		}else if (chr2=='5'){
			sendString("e");
		}else if (chr2=='6'){
			sendString("f");
		}else return;
	curAddr++;
	}else if (chr1=='4'){
		if (chr2=='1'){
			sendString("G");
		}else if (chr2=='2'){
			sendString("H");
		}else if (chr2=='3'){
			sendString("I");
		}else if (chr2=='4'){
			sendString("G");
		}else if (chr2=='5'){
			sendString("H");
		}else if (chr2=='6'){
			sendString("I");
		}else return;
	curAddr++;
	}else if (chr1=='5'){
		if (chr2=='1'){
			sendString("J");
		}else if (chr2=='2'){
			sendString("K");
		}else if (chr2=='3'){
			sendString("L");
		}else if (chr2=='4'){
			sendString("j");
		}else if (chr2=='5'){
			sendString("k");
		}else if (chr2=='6'){
			sendString("l");
		}else return;
	curAddr++;
	}else if (chr1=='6'){
		if (chr2=='1'){
			sendString("M");
		}else if (chr2=='2'){
			sendString("N");
		}else if (chr2=='3'){
			sendString("O");
		}else if (chr2=='4'){
			sendString("m");
		}else if (chr2=='5'){
			sendString("n");
		}else if (chr2=='6'){
			sendString("o");
		}else return;
	curAddr++;
	}else if (chr1=='7'){
		if (chr2=='1'){
			sendString("P");
		}else if (chr2=='2'){
			sendString("Q");
		}else if (chr2=='3'){
			sendString("R");
		}else if (chr2=='4'){
			sendString("S");
		}else if (chr2=='5'){
			sendString("p");
		}else if (chr2=='6'){
			sendString("q");
		}else if (chr2=='7'){
			sendString("r");
		}else if (chr2=='8'){
			sendString("s");
		}else return;
	curAddr++;
	}else if (chr1=='8'){
		if (chr2=='1'){
			sendString("T");
		}else if (chr2=='2'){
			sendString("U");
		}else if (chr2=='3'){
			sendString("V");
		}else if (chr2=='4'){
			sendString("t");
		}else if (chr2=='5'){
			sendString("u");
		}else if (chr2=='6'){
			sendString("v");
		}else return;
	curAddr++;
	}else if (chr1=='9'){
		if (chr2=='1'){
			sendString("W");
		}else if (chr2=='2'){
			sendString("X");
		}else if (chr2=='3'){
			sendString("Y");
		}else if (chr2=='4'){
			sendString("Z");
		}else if (chr2=='5'){
			sendString("w");
		}else if (chr2=='6'){
			sendString("x");
		}else if (chr2=='7'){
			sendString("y");
		}else if (chr2=='8'){
			sendString("z");
		}else return;
	curAddr++;
	}else if (chr1=='*'){
		if (chr2=='2'){//up
			curAddr=curAddr&0x0F;
			setDdRamAddress(curAddr);
		}else if (chr2=='4'){//left
			if(curAddr==0x00 || curAddr==0x40) return;
			curAddr--;
			setDdRamAddress(curAddr);
		}else if (chr2=='5'){//space
			sendString(" ");
			curAddr++;
		}else if (chr2=='6'){//right
			if((curAddr&0x0F)==0x0F) return;
			curAddr++;
			setDdRamAddress(curAddr);
		}else if (chr2=='8'){//down
			curAddr=(curAddr&0x0F) |0x40;
			setDdRamAddress(curAddr);
		}else if (chr2=='9'){//newline
			curAddr=0x40;
			setDdRamAddress(curAddr);
		}else if (chr2=='1'){//return Home
			curAddr=0x00;
			setDdRamAddress(curAddr);
		}else return;
		
	}else if (chr1=='#'){
		if (chr2=='1'){
			sendString("1");
		}else if (chr2=='2'){
			sendString("2");
		}else if (chr2=='3'){
			sendString("3");
		}else if (chr2=='4'){
			sendString("4");
		}else if (chr2=='5'){
			sendString("5");
		}else if (chr2=='6'){
			sendString("6");
		}else if (chr2=='7'){
			sendString("7");
		}else if (chr2=='8'){
			sendString("8");
		}else if (chr2=='9'){
			sendString("9");
		}else if (chr2=='*'){
			sendString("*");
		}else if (chr2=='0'){
			sendString("0");
		}else if (chr2=='#'){
			sendString("#");
		}else return;
	curAddr++;
	}else return;
		
	if((curAddr==0x10)||(curAddr==0x50)){
		curAddr--;
		setDdRamAddress(curAddr);
	}
		
	
}

void InitLCD(){
	functionSet();
	//entryModeSet(1, 0); // increment and no shift
	IRWRITE(0x06);
	//displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
	IRWRITE(0x0F);
	//sendString("00:00:00");
	curAddr=0x00;
}

// LCD Module instructions -------------------------------------------
void IRWRITE(char addr)
{
	P1= (addr & 0xf0) ;
	E = 1;
	E = 0;
	P1 = ((addr & 0x0f) << 4) | 0x00;
	E = 1;
	E = 0;
	delay();
}
void functionSet(void) {//ok
	// The high nibble for the function set is actually sent twice. Why? See 4-bit operation
	// on pages 39 and 42 of HD44780.pdf.
	/*DB7 = 0;
	DB6 = 0;
	DB5 = 1;
	DB4 = 0;
	RS = 0;*/
	P1 = (P1&0x23) | 0x20;
	
	E = 1;
	E = 0;
	delay();
	E = 1;
	E = 0;
	//DB7 = 1;
	P1=0x80;
	E = 1;
	E = 0;
	delay();
}

void setDdRamAddress(char address) {
	
	P1= (address & 0xf0) | 0x80;
	E = 1;
	E = 0;
	
	P1= (address & 0x0f) << 4;
	E = 1;
	E = 0;
	delay();
}

// --------------------------------------------------------------------

void sendChar(char c) {
	/*DB7 = getBit(c, 7);
	DB6 = getBit(c, 6);
	DB5 = getBit(c, 5);
	DB4 = getBit(c, 4);
	RS = 1;*/
	P1 = (c & 0xf0) | 0x08;
	E = 1;
	E = 0;
	/*DB7 = getBit(c, 3);
	DB6 = getBit(c, 2);
	DB5 = getBit(c, 1);
	DB4 = getBit(c, 0);
	//*/
	P1=  ((c & 0x0f) << 4) | 0x08;
	E = 1;
	E = 0;
	delay();
}

void sendString(char* str) {
	/*int index = 0;
	while (str[index] != 0) {
		sendChar(str[index]);
		index++;
	}*/
	char *p;
	for (p=str; *p; p++) {
		sendChar(*p);
	}
}
void delay(void) {
	char c;
	for (c = 0; c < 50; c++);
}
