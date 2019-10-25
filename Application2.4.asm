
;<Bubble SORT Ascending order>

START:	LXI H, SIZE		;Load size of array
		MVI D, 00H	;Clear D register to set up a flag
		MOV C, M	;Set C register with number of elements in list
		DCR C		;Decrement C
		INX H		;Increment memory to access list
CHECK:	MOV A, M		;Retrieve list element in Accumulator
		INX H		;Increment memory to access next element
		CMP M		;Compare Accumulator with next element
		JC NEXTBYTE	;If accumulator is less then jump to NEXTBYTE
		MOV B, M	;Swap the two elements
		MOV M, A	;
		DCX H		;
		MOV M, B	;
		INX H		;
		MVI D, 01H	;If exchange occurs save 01 in D register
NEXTBYTE:	DCR C		;Decrement C for next iteration
		JNZ CHECK	;Jump to CHECK if C>0
		MOV A, D	;Transfer contents of D to Accumulator
		CPI 01H		;Compare accumulator contents with 01H
		JZ START	;Jump to START if D=01H
		HLT		;HALT

SIZE:  DB 10
ARRAY: db 12,4,128,3,151,1,7,9,8,18