MOV 20h, #1 ;RA exemplo 11 222 333 4
MOV 21h, #1
MOV 22h, #2
MOV 23h, #2
MOV 24h, #2
MOV 25h, #3
MOV 26h, #3
MOV 27h, #3
MOV 28h, #4

LCALL SUB
SJMP $;laço infinito

SUB: ;subrotina
MOV R0,#9;limite vezes Ra
MOV R1,#20h; começa memoria
SUM:
ADD A,@R1
INC R1
DJNZ R0, SUM
MOV 30h,A
RET