ORG 0050h
DB 25
ORG 0060h
DB -9
ORG 0h
CLR A
MOV DPTR, #0050h
MOVC A,@A+DPTR
MOV R2,A
CLR A
MOV DPTR, #0060h
MOVC A,@A+DPTR
ADD A,R2
MOV R7,A
SJMP $
;A resposta da conta está correta, pois 25+(-9) = 16, 16 em hexadecimal é 10.