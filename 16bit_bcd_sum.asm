	;<Program to add 16 bit BCD number>
	
	;add 16 bit normally but just adjust the accumulator content to represent BCD after addition with DAA instruction
	
	LXI D, 2056h                 ; DE = 2056h
	XCHG                         ; exchanges content of HL and DE, so HL = 2056h
	LXI D, 4023h                 ; DE = 4023h
	
	MOV A, L
	ADD E                        ; A = A + E
	DAA                          ;adjust the accumulator content to represent BCD
	MOV L, A
	
	MOV A, H
	ADC D                        ; A = A + D
	DAA                          ;adjust the accumulator content to represent BCD
	MOV H, A
	
	SHLD D040h                   ;store the content of HL pair at D040h
	
	HLT
