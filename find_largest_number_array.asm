	;<Program to find the largest number of an array having size of 15 data>
	
	MVI C, 15                    ; length of that array as counter 
	LXI H, 2050h                 ; starting point of array stored in HL
	MOV A, M                     ; assume M is greatest ( M = value pointed by address stored in HL)
	
COMPARE: INX H                ; HL = HL + 1
	CMP M                   
	JNC NEXT                     ; if A > M jump to NEXT
	MOV A, M                     ; if A < M, then A = M
	
	
NEXT: DCR C                   ; C = C - 1
	JNZ COMPARE                  ; If C != 0, jump to COMPARE
	STA 2040h                    ; store accumulator content in 2040h
	hlt                          ; halt the program
