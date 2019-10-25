
;<BINARY To ASCII>

LDA binary 	;A<-[binary]
CALL CONV 	;go to address CONV
STA ascii 	;A->[ascii]

LDA binary 	;A<-[binary]
RLC 		;Rotate the number by one bit to left without carry
RLC 		;Rotate the number by one bit to left without carry
RLC 		;Rotate the number by one bit to left without carry
RLC 		;Rotate the number by one bit to left without carry
CALL CONV 	;go to address 2500
STA ascii+1 	;A->[ascii+1]

HLT 		;Terminates the program

binary: db 224
ascii:  db 0,0,0

CONV:	ANI 0FH ;A<-[A] AND 0F
	CPI 0AH ;[A]-0A
	JNC NEXT ;Jump to [250A] if carryflag is 0
	ADI 48 ;A<-[A]+48
	RET ;Return to the next instruction from where subroutine address was called in main routine
NEXT:	ADI 55 ;A<-[A]+55
	RET ;Return to the next instruction from where subroutine address was called in main routine
