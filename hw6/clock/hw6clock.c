#include <8051.h>
//100060007 CHIU,MING-CHANG
//CS410500
//HW6 part2 
//DUE:20140428
//STATUS:WORKS
//GOAL: 1Hz
/*******************
COMMENT:
	When TA test this code, TA should set the update frequency to the highest one.
	If TA wants to quickly verify this code, TA may change the timeBuf to {58,0,0} or {58,59,0} etc.
*******************/
#define DB7  P1_7
#define DB6  P1_6
#define DB5  P1_5
#define DB4  P1_4
#define RS  P1_3
#define E  P1_2
char timeBuf[3] = {0,0,0};//sec,min,hr ; default 0,0,0
char displayBuf[6] = {0,0,0,0,0,0};
//char min,sec,hrs;
void functionSet(void);
void setDdRamAddress(char address);
void sendChar(char c);
void sendString(char* str);
void delay(void);
void IRWRITE(char addr);
void InitLCD();  
void IncrTime(); 
void Refresh(char); 
__bit tick;
void InitTimer();
void HandleRollover();
void PollTimer(); 

void Main(){
	tick=0;	
	InitLCD();
	InitTimer();	
	while (1) {
		PollTimer();
		IncrTime();			
		tick=0;		
	}	
}
void InitTimer(){
	TMOD = 0x02;//mode 2
	TH0 = 156;//256-100=156
	TR0 = 1;
}
void InitLCD(){
	functionSet();
	//entryModeSet(1, 0); // increment and no shift
	IRWRITE(0x06);
	//displayOnOffControl(1, 1, 1); // display on, cursor on and blinking on
	IRWRITE(0x0F);
	sendString("00:00:00");
}
void IncrTime(){
	timeBuf[0]++;
	Refresh(2);
	if(timeBuf[0] == 60){//sec->min
		timeBuf[0] = 0;
		timeBuf[1]++;
		Refresh(4);
	}
	if(timeBuf[1] == 60){//min->hr
		timeBuf[1] = 0;
		timeBuf[2]++;
		Refresh(5);
	}
	if(timeBuf[2] == 24){//hr->day
		Refresh(6);
	}
			
}
void Refresh(char carrybit){
	displayBuf[0] = timeBuf[0]%10 +'0';//個位
	displayBuf[1] = timeBuf[0]/10 +'0';//十位
	displayBuf[2] = timeBuf[1]%10 +'0';
	displayBuf[3] = timeBuf[1]/10 +'0';
	displayBuf[4] = timeBuf[2]%10 +'0';
	displayBuf[5] = timeBuf[2]/10 +'0';
	if(carrybit ==2){
		setDdRamAddress(0x06);
		sendChar(displayBuf[1]);
		sendChar(displayBuf[0]);
	}
	else if(carrybit == 4){
		setDdRamAddress(0x03);
		sendChar(displayBuf[3]);
		sendChar(displayBuf[2]);
		sendChar(':');
		sendChar(displayBuf[1]);
		sendChar(displayBuf[0]);
	}
	else if (carrybit == 5){
		setDdRamAddress(0x00);
		sendChar(displayBuf[5]);
		sendChar(displayBuf[4]);
		sendChar(':');
		sendChar(displayBuf[3]);
		sendChar(displayBuf[2]);
		sendChar(':');
		sendChar(displayBuf[1]);
		sendChar(displayBuf[0]);

	}
	else if (carrybit == 6){
		setDdRamAddress(0x00);
		sendString("00:00:00");
	}
	else{}

}
void PollTimer() {
	while(tick==0){
		HandleRollover();
	}
}
void HandleRollover(){
	int x;	
	for(x = 0; x < 10000; x++){		
		while (TF0 == 0);
		TF0 = 0; // clear the timer flag		
	}	
	tick = 1;
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


