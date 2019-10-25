
;<BCD To ASCII>

LDA bcd 	;A <- [bcd]
MOV B,A 	;B <- A
ANI 0FH 	;A <- A & 0F
ADI 030h  	;A <- A + 30
STA ascii	;[ascii]<-A
MOV A,B 	;A <- B
ANI 0F0H	;A <- A & F0
RLC 		;Rotate A left
RLC 		;Rotate A left
RLC 		;Rotate A left
RLC 		;Rotate A left
ADI 030h	;A <- A + 30
STA ascii+1	;[ascii+1]<-A
HLT 		;Stop Execution

bcd:   db 027H
ascii: db 0,0 