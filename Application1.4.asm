
;<Evaluate 20/2 >

MVI A, 20
ANI 0FEH
RRC
STA RESULT
hlt

RESULT: DB 0