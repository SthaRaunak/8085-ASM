	;<Program to divide two 8 - bit data of choice and store remainder in C050H and result in C051H>
	
	
	MVI A, 14H                   ; A = 14h (20 in decimal)
	MVI B, 02H                   ; B = 02h
	MVI C, 00H                   ; C = 00h
	
X: CMP B                      ; Compare A with B
	JC Y                         ; if A is less than B jump to Y
	SUB B                        ; A = A - B
	INR C                        ; C = C + 1
	JMP X                        ; jump to X
	
	
Y: STA C050H                  ; Store accumulator content in C050H memory location
	MOV A, C                     ; A < - C
	STA C051H                    ; Store accumulator content in C051H memory location
	
	hlt                          ;halt the program
