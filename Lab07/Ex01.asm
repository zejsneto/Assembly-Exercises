org 0000h
LJMP START ;Pula incondicionalmente para START
org 000Bh
INT_TEMP0:
MOV TH0, #0FFh
MOV TL0, #09Ch
CPL P1.0 ;complementa P1.0
RETI
org 001Bh
INT_TEMP1:
MOV TH1, #0FFh
MOV TL1, #06Ah
CPL P1.4 ;complementa P1.4
RETI ;Retorna da interrupção
org 0080h
START:
MOV TMOD, #11h ;CT0 e CT1 no modo 1
MOV TH0, #0FFh ;valor para FC18 - > MSB FC
MOV TL0, #09Ch ;valor para FC18 - > LSB 18
MOV TH1, #0FFh ;valor para FA24 - > MSB FA
MOV TL1, #06Ah ;valor para FA24 - > LSB 24
SETB EA ;Habilita as interrupções
SETB ET0 ;Habilita a interrupção do temporizador 0
SETB ET1 ;Habilita a interrupção do temporizador 1
SETB TR0 ;liga o CT0
SETB TR1 ;liga o CT1
SJMP $ ;fecha o laço