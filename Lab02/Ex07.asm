MOV R1,#90h
MOV R0,#9Fh
MOV A,R1
ADDC A,R0
MOV R6,A
CLR A
MOV ACC.0,C;passado pelo prof (OU: ADDC A,#0)
MOV R7,A