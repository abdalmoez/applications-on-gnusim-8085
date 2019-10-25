
;<Greatest of three numbers using CMP instruction>

LXI H,data;Load starting address of list
MOV A,M
inx H
CMP M
JNC Next
MOV A,M
Next: inx H
CMP M
JNC End
MOV A,M
End: inx H
MOV M,A

hlt

data: db 3,7,5
max:  db 0