
;<Practice Substraction with carry>

MVI A,45
MVI B,48
MVI C,32
SBB B; A-> 253 -> borrow = 1
SBB C; A-> 220 -> borrow = 0
STA RESULT1

MVI A,129
MVI B,145
MVI C,44
SBB B; A-> 240 -> borrow = 1
SBB C; A-> 195 -> borrow = 0
STA RESULT2

hlt

RESULT1: db 0 ;RESULT1 must be 220
RESULT2: db 0 ;RESULT1 must be 195