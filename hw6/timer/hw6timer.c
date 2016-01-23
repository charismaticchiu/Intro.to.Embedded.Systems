#include <8051.h>
//100060007 CHIU,MING-CHANG
//CS410500
//HW6 part1 
//DUE:20140428
//STATUS:WORKS
//GOAL: 1Hz
/*************************
Q:how can you make sure the tick is set at the exact rate of 1 Hz?How would you test it in Edsim51?  Describe the steps you can think of and try it out.  Does it work as you expect?
A:I just let it run in Edsim51, since I complement P1(one of the 7-segment-display)right after the timer poll,so I know when "tick" is changed. And I recorded every timestamps P1 changed and calculated the time interval, found that it is 1sec each interval=> done.
RM: TA can test it, the changing time should be at 189us each second(i.e. 1s 189us, 2s 189us etc)

Method I use: 
	I know each timer increment is 1us and Mode 2 is only 8-bit so timer can only count 256 times. I let timer run 100us(from 156 to 256) and 10000 times so it is 1s.
	I did not use a software counter for I find it is useless but I write "software counter" version in comments.


*************************/

void InitTimer(); 
void HandleRollover();
void PollTimer(); 
__bit tick;
//char SWcounter;
void Main(void) {
	tick=0;
	//SWcounter=0;
	InitTimer();	
	while (1) {
		PollTimer();
		tick=0;
		//SWcounter=0;
		
	} 
}
/****************************/
void InitTimer() {
	TMOD = 0x02;//mode 2
	TH0 = 156;//256-100=156
	TR0 = 1;
}
void PollTimer() {
	while(tick==0){
		HandleRollover();
	}
	P1=~P1;
}
void HandleRollover(){
	int x;	
	for(x = 0; x < 10000; x++){		
		while (TF0 == 0);
		TF0 = 0; // clear the timer flag		
	}
	//SWcounter++; // incrment the software counter
	//if(SWcounter == 100)
	tick = 1;
}

