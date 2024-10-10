	;<Program to multiply two 8 bit numbers>

	; Multiply is just repetative addition So use one number as counter & repetative add another
	

	MVI D,Eh
	MVI C,2h
	MVI A,0

X:	ADD D
	DCR C
	JNZ X

	STA D050h

	HLT


