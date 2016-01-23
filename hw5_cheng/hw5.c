/*	100062101 鄭以琳
	10220CS410550 Introduction to Embedded System
	hw5 20140410	*/
	
/*	Status: the code works and can be simulated	*/

/*	Concept:
	1.	main:
		while(1){
			對每個row作scankey,
			若有key被按下, 則根據目前的row和bitmap的值,查表(press2num)找出按下的key值.
			若已按下兩個key, 判斷是要移動指標或輸出字元
				a.移動指標:呼叫moveCursor()
				b.輸出字元:查表(charVal)判斷要輸出的字
		}
	2.	moveCursor:
		宣告一個char cursor紀錄目前cursor的位置
		移動時利用setDdRamAddress改變cursor的位置
		若到達邊界則不能移動
*/
		
/*	Reduce code size & Speed up
	1.	避免大量使用if/else
		宣告兩個二維陣列press2num和charVal, 
		在判斷使用者按的鍵還有要執行的動作時, 可以用查表的方式較為迅速.
	2.	沿用hw4 LCD的加速
		把entryModeSet, displayOnOffControl, sendChar, setDdRamAddress合併成IRWrite和setC兩個function, 
		避免重複的code.
		function內使用bit operation代替多個assignment.
*/
	
/*	Discussion
	1.	本來想要直接抓出指標的位置(利用AC的值), 但一直無法成功, 
		所以最後宣告char cursor模擬指標的移動, 
		需要指標位置時則讀取cursor的值.
	2.	老師要求指標的範圍要在螢幕內(0x00~0x0F和0x40~0x4F), 
		但每次sendChar後, 指標都會自動向右移, 可能會到達0x10或0x50, 
		無法控制指標不要向右移, 所以改成一旦指標超過邊界, 
		呼叫moveCursor()強制向左移回來.
*/

/* Code size:683bytes*/

#include <8051.h>

#define DB7  P1_7
#define DB6  P1_6
#define DB5  P1_5
#define DB4  P1_4
#define RS  P1_3
#define E  P1_2


void IRWrite(char c, __bit rs);
void setC(char c, __bit rs, __bit b7, __bit b6, __bit b5, __bit b4);
void functionSet(void);

void delay(void);
void moveCursor(int x);

char cursor;

const char charVal[11][12]=
	{
		{'-','-','-','-','-','-','-','-','-','-','-','-'},//1
		{'A','B','C','a','b','c','-','-','-','-','-','-'},//2
		{'D','E','F','d','e','f','-','-','-','-','-','-'},//3
		{'G','H','I','g','h','i','-','-','-','-','-','-'},//4
		{'J','K','L','j','k','l','-','-','-','-','-','-'},//5
		{'M','N','O','m','n','o','-','-','-','-','-','-'},//6
		{'P','Q','R','S','p','q','r','s','-','-','-','-'},//7
		{'T','U','V','t','u','v','-','-','-','-','-','-'},//8
		{'W','X','Y','Z','w','x','y','z','-','-','-','-'},//9
		{'1','2','3','4','5','6','7','8','9','#','0','*'},//10(#)
		{'-','-','-','-','-','-','-','-','-','-','-','-'}//11(0)
	};

const int press2num[4][5]=
	{
		{0,3,2,0,1},
		{0,6,5,0,4},
		{0,9,8,0,7},
		{0,10,11,0,12}
	};


void Main(void) {
	char bitmap;
	char row, rowmask, ch;
	int num[2];
	__bit b=0; //紀錄目前讀到的是第一個還是第二個數字
	
	functionSet();
	setC(0,0,0,1,1,0); //entryModeSet(1, 0);
	setC(0,0,1,1,1,1); //displayOnOffControl(1, 1, 1);
	cursor=0x00; //紀錄目前cursor的位置
	
	while (1) {
		for (row=0, rowmask = 0xf7; row < 4; row++, rowmask >>= 1) {
			P0=rowmask;
			bitmap=(~(P0>>4)) & 0x07;
			
			if(bitmap!=0){ //代表有讀到東西
				num[b]=press2num[row][bitmap]; //找出按下的是哪個鍵
				b^=1;
				if(b==0){
					if(num[0]==12){ //按的第一個是'*' ->移動指標或是輸出空白
						if(num[1]==5){ //輸出空白
							IRWrite(' ', 1); //sendChar(' ');
							cursor++;
							if((cursor&0x0F)==0x00) moveCursor(4); //如果指標已經超過畫面(一行16個字元), 把指標移回畫面中
						}
						else moveCursor(num[1]); //移動指標
					}
					else{ //輸出數字
						ch=charVal[num[0]-1][num[1]-1]; //找出要輸出的數字
						if(ch=='-') continue; //not defined
						IRWrite(ch, 1); //sendChar(ch);
						cursor++;
						if((cursor&0x0F)==0x00) moveCursor(4); //如果指標已經超過畫面(一行16個字元), 把指標移回畫面中

					}
				}
			}
		}
	}
}


void moveCursor(int x)
{
	if(x==2){//up
		cursor=cursor&0x0F;
	}
	else if(x==4){//left
		if(cursor==0x00 || cursor==0x40) return; //若是已到達最左邊, 不移動
		cursor--;
	}
	else if(x==6){//right
		if((cursor&0x0F)==0x0F) return; //若是已到達最右邊, 不移動
		else cursor++;
	}
	else if(x==8){//down
		cursor=(cursor&0x0F)|0x40;
	}
	else if(x==9){//newline
		cursor=0x40;
	}
	else return;
	
	IRWrite(cursor|(1<<7), 0); //setDdRamAddress(cursor);
	
}
	
void functionSet(void) {
	// The high nibble for the function set is actually sent twice. Why? See 4-bit operation
	// on pages 39 and 42 of HD44780.pdf.
	char c;
	c=(0<<7)|(0<<6)|(1<<5)|(0<<4); //DB7=0, DB6=0, DB5=1, DB4=0
	P1=(c&0xF0); //P1=(DB7~4)(Dont care)
	RS = 0;
	E = 1;
	E = 0;
	delay();
	E = 1;
	E = 0;
	DB7 = 1;
	E = 1;
	E = 0;
	delay();
}

void IRWrite(char c, __bit rs){
	P1=(c&0xF0); //set high nibble
	RS=rs;
	E=1;
	E=0;
	P1=(c<<4)|(P1&0x0F); // set low nibble
	E=1;
	E=0;
	delay();
}

void setC(char c, __bit rs, __bit b7, __bit b6, __bit b5, __bit b4){
	c=(c|(b7<<3)|(b6<<2)|(b5<<1)|b4);
	IRWrite(c, rs);
}

void delay(void) {
	char c;
	for (c = 0; c < 50; c++);
}