;RA: 01 01 02 02 02 03 03 03 04
MAIN:
MOV 30h, #01
MOV 31h, #01
MOV 32h, #02
MOV 33h, #02
MOV 34h, #02
MOV 35h, #03
MOV 36h, #03
MOV 37h, #03
MOV 38h, #04
MOV R0, #2fh; move R0 começo RA-1
MOV R6,30h; "maior"
MOV R3,#00
LCALL HIGHER
SJMP $
;Achar maior valor
HIGHER:
MOV R1,#09
LOOP:
CLR C
INC R0; começar a ler RA 9 (30h)
MOV A,@R0; move pra A o valor
SUBB A,R6
JC LABEL
MOV A,@R0
MOV R6,A
INC R3
;MOV P1, #0FEh;liga P
LABEL:
DJNZ R1,LOOP
MOV P1,R3
RET