
;<BINARY To ASCII>

LDA ascii 	;A<-[ascii]
CALL CONV 	;call sub routine
MOV B,A
LDA ascii+1 	;A<-[ascii+1]
CALL CONV 	;call sub routine

RLC 		;Rotate the number by one bit to left without carry
RLC 		;Rotate the number by one bit to left without carry
RLC 		;Rotate the number by one bit to left without carry
RLC 		;Rotate the number by one bit to left without carry
Add B
STA binary 	;A->[binary]

HLT 		;Terminates the program

binary: db 255
ascii:  db 65,49

CONV:	CPI 41H ;[A]-'A'
	JNC NEXT ;Jump to [250A] if carryflag is 0
	SUI 48 ;A<-[A]-30
	RET ;Return to the next instruction from where subroutine address was called in main routine
NEXT:	SUI 55 ;A<-[A]+37
	RET ;Return to the next instruction from where subroutine address was called in main routine
