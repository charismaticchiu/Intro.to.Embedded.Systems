#include <8051.h>
char colScan(char c);
void Main(void) {
	char bitmap, bitmapL, bitmapH; 
	char row, rowmask;
	while (1) {
		for (row=bitmapL=bitmapH=0, rowmask = 0xf7; row < 4; row++, rowmask >>= 1) {
			bitmap=colScan(rawmask);
			if (row==2) {
				bitmapH = (bitmapL >> 2);
			}
			bitmapL = (bitmapL<<3) | bitmap;
		}
		P1 = bitmapL;
		P2 = bitmapH;
	}
}
char colScan(char rowmask) {
	P0 = rowmask;
	return (~(P0>>4)) & 0x07;
}

