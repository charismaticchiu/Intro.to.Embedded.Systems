package com.example.bletestv2;

public class DecisionMaker {
private byte d;
	
	public byte getDecision(float x, float y, float z) {
		
		// case 1: forward 1
		if (x >= 2 && x < 4) {
			d = 0x00;
		}
		// case 2: forward 2
		else if (x >= 4) {
			d = 0x01;
		}
		// case 3: backward 1
		else if (x <= -2 && x > -4) {
			d = 0x02;
		}
		// case 4: backward 2
		else if (x <= -4) {
			d = 0x03;
		}
		// case 5: left
		else if (y >= 4) {
			d = 0x04;
		}
		// case 6: right
		else if (y <= -4) {
			d = 0x05;
		}
		// case 7: stop
		else {
			d = 0x06;
		}
		
		return d;
		
	}

}
