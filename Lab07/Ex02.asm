org 0000h
LJMP START ;Pula incondicionalmente para START
org 0003h
INT_TEMP0:
DEC P1
;CPL P1.0 ;complementa P1.0
RETI ;Retorna da interrup��o
org 0013h
INT_TEMP1:
INC P1
;CPL P1.7 ;complementa P1.7
RETI ;Retorna da interrup��o
org 0080h
START:
SETB EA ;Habilita as interrup��es
SETB EX0 ;Habilita a interrup��o 0
SETB EX1 ;Habilita a interrup��o 1
SETB IT0 ;Trabalhando com borda de descida
SETB IT1 ;Trabalhando com borda de descida
SJMP $ ;La�o de repeti��o