
;<HEX2BCD>

LHLD NUMBER1
CALL BCD2HEX
STA BCD1          ;Store the Least Significant Byte 
MOV A,D 
STA BCD1+1          ;Store the Most Significant Byte 
MOV A,C
STA BCD1+2

LHLD NUMBER2
CALL BCD2HEX
STA BCD2          ;Store the Least Significant Byte 
MOV A,D 
STA BCD2+1          ;Store the Most Significant Byte 
MOV A,C
STA BCD2+2
HLT



BCD2HEX: MVI C,0
	MVI D,00          ;Clear D- reg for Most significant Byte 
        XRA A             ;Clear Accumulator for Least Significant Byte 
	STA tmp
LOOP2: 	LDA tmp
	ADI 01              ;Count the number one by one 
        DAA               ;Adjust for BCD count 
        JNC LOOP1 
	
	STA tmp
	MOV A,D
	STC      ; set Carry flag
	CMC      ; complement Carry flag
        INR A 
	DAA
	JNC CONT
	INR C
CONT:	MOV D,A
	JMP LOOP0
LOOP1:  STA tmp
LOOP0:	DCX  H 
	MOV A,H
	CPI 0
	JNZ LOOP2
	mov  a, l

	CPI 0
	JNZ LOOP2

        JNZ LOOP2 
END:    LDA tmp
        RET

tmp: db 0
NUMBER1: db 207,0  ;0CF
NUMBER2: db 149,10 ;A95
BCD1:  db 0,0,0
BCD2:  db 0,0,0