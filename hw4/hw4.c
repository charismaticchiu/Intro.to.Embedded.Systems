#include <8051.h>
//100060007 CHIU,MING-CHANG
//CS410500
//HW4 
//DUE:20140324
//STATUS:WORKS
#define DB7  P1_7
#define DB6  P1_6
#define DB5  P1_5
#define DB4  P1_4
#define RS  P1_3
#define E  P1_2

#define clear  P2_4
#define ret  P2_5		  
#define left  P2_6
#define right  P2_7

/*void returnHome(void);
void entryModeSet(__bit id, __bit s);
void displayOnOffControl(__bit display, __bit cursor, __bit blinking);
void cursorOrDisplayShift(__bit sc, __bit rl);*/
/*********
COMMENT:
	There are many redundant and similar codes that can be reduced to only one function.
	e.g. the 4 functions above can be reduced to only one function "IRWRITE(char addr)"
	WE just have to pass the instruction byte into the function then we can get the same outcome. The advantage of reducing functions is we can make the code size small
	
	The original code took extra cycles since it use bit assignment each bit, the modified code use bit operation on a byte so the later is much faster and therefore have smaller code size.

	The final hw4.bin size is :327 bytes



**********/
void functionSet(void);
void setDdRamAddress(char address);
void sendChar(char c);
void sendString(char* str);
/*__bit getBit(char c, char bitNumber);*/
/*********
COMMENT:
	If we use bit operation on a byte, the above function is not necessary.
*********/
void delay(void);
void IRWRITE(char addr);

void Main(void) {

	functionSet();
	//entryModeSet(1, 0); // increment and no shift
	IRWRITE(0x06);
	//displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
	IRWRITE(0x0F);
	sendString("EdSim51 LCD Module Simulation");
	setDdRamAddress(0x40); // set address to start of second line
	sendString("Based on Hitachi HD44780");

	// The program can be controlled from some of the switches on port 2.
	// If switch 5 is closed the cursor returns home (address 0).
	// Otherwise, switches 6 and 7 are read - if both switches are open or both switches 
	//      are closed, the display does not shift.
	// If switch 7 is closed, continuously shift left.
	// If switch 6 is closed, continuously shift right.
	while (1) {
		if (ret == 0) {
			//returnHome();
			IRWRITE(0x02);
		}
		else {	
			if (left == 0 && right == 1) {
				//cursorOrDisplayShift(1, 0); // shift display left
				IRWRITE(0x18);
			}
			else if (left == 1 && right == 0) {
				//cursorOrDisplayShift(1, 1); // shift display right
				IRWRITE(0x1C);
			}	
		}	
	}
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