bits		32
section		.text
	align		4
	dd			0x1BADB002
	dd			0x00
	dd			- (0x1BADB002+0x00)
	
global start
extern kmain ; located in kernel.c
start:
	cli ; clear interrupts
	call kmain
	hlt ; halt cpu
	