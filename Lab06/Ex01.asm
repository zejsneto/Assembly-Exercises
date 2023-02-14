LJMP MAIN
ORG 030h
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
LCALL SUB
SUB:
;Valor procurado: #00
INC R0
CJNE @R0,#00,SUB
MOV P1, #0FEh;liga P1