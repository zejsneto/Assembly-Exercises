MOV P1, #0FEh
MOV A,P1
REPEAT:
RL A
MOV P1,A
AJMP REPEAT