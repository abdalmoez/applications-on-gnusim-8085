
;<Add 2 numbers 16bits>

 	   LHLD number1
	   XCHG
	   LHLD number2
	   MVI C,00
	   DAD D
	   JNC AHEAD
	   INR C
AHEAD: 	   SHLD result
	   MOV A,C
	   STA carry
	   HLT

number1: db 255,70
number2: db 255,200
result:  db 0,0
carry:   db 0