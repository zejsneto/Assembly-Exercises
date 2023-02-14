MOV R3, #05h;num inteiro 1
MOV R4, #012h;num inteiro 2
COMP:
MOV A,R3;coloca primeiro num em R3
CLR C;zera o Carry
SUBB A,R4;
JNC ROT1;salta se Carry = 0
XCH A,R3;troca A e R3
XCH A,R4;troca A e R4
XCH A,R3;troca A e R3
;por fim, trocado R3 <-> R4
MOV A,R3;move R3 p/A
MOV R5,A;move A p/R
CLR A;zera Acc
MOV A,R4;move R4 p/A
MOV R6,A;move A p/R6
;R5 maior valor,R6 menor valor
ROT1:
SJMP $;para em laço infinito