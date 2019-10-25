
;<Evaluate Y = A+B-C>

LXI H,Val1
MOV A,M
INX H
MOV B,M
ADD B
INX H
MOV C,M
SUB C
STA Result
HLT

; Result = Val1+Val2-Val3
Val1: DB 5
Val2: DB 78
Val3: DB 32
Result: DB 0