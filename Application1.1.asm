 LXI H,DATA 
 MOV A,M    
 INX H
 ADD M      
 INX H
 ADD M      
 LXI H,RESULT
 MOV M,A
 HLT

DATA: DB 45,32,78
RESULT: DB 0