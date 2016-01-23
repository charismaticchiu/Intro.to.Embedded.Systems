#include<8051.h>
//100060007 CHIU,MING-CHANG
//CS410500
//HW3 
//DUE:20140324
//STATUS:WORKS
/*****
COMMENT: The seven-segment truth table start from LSB NOT MSB
e.g. a->P1.0
	 b->P1.1

The program works but have the following messages:
	Error! Function set incorrect.
	DL=1 N=0 F=0
	Function set must be
	DL=X N=1 F=0.
I haven't figure it out!!
Maybe I will ask advisor or TA

*****/
void Main(){
    while(1){
        P1=0x40;//0
        P1=0x79;//1
        P1=0x24;//2
        P1=0x30;//3
        P1=0x19;//4
        P1=0x12;//5
        P1=0x02;//6
        P1=0x78;//7
        P1=0x00;//8
        P1=0x18;//9

    }


}
