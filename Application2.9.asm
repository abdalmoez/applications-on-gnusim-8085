
;<ASCII To BCD>

LDA ASCII
SUI 030H
MOV B,A
LDA ASCII+1
SUI 030H
RLC 		;Rotate A left
RLC 		;Rotate A left
RLC 		;Rotate A left
RLC 		;Rotate A left
ADD B
STA BCD
HLT

BCD:   db 000H
ASCII: db 037H,039H
