	;<Program to transfer block 20 data from memory location to D050H to D080H>
	
	
	
	mvi A, 14h                   ; A = 14h
	lxi H, D050h                 ; HL = D050h
	
	;loading the 20 block of data starting from D050H
	
X: MOV M, A                   ; (value in memory pointed by HL pair) M < - A
	INX H                        ; HL = HL + 1
	DCR A                        ; A = A - 1
	JNZ X                        ; if zero flag != 1 then JUMP X
	lxi D, D080h                 ; DE = D080h
	lxi H, D050h                 ; HL = D050h
	mvi C, 14h                   ; C =14h
	
	;moving the 20 block of data from D050H to D080H
	
Y: MOV A, M                   ; A < - M
	STAX D                       ; load accumulator with value pointed by DE pair
	INX H                        ; H = H + 1
	INX D                        ; DE = DE + 1
	DCR C                        ; C = C - 1
	JNZ Y                        ; if zero flag != 1 JUMP Y
	
	hlt                          ; halt the program
