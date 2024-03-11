;Write a program to perform 2X2 matrix addition. 


.DATA
A: .word 1,3,5,8
B: .word 2,4,6,10
C: .word

.TEXT
LDR R5,=A
LDR R6,=B
LDR R7,=C
MOV R3, #4 ; number of elements in matrix
MOV R4, #0

Loop:
LDR R1, [R5], #4
LDR R2, [R6], #4
ADD R0, R1, R2 ;Addition of R1 And R2 And Store Result In R0
STR R0, [R7], #4
SUB R3, R3, #1
TEQ R3, #0 ; Check for equality
BNE Loop

SWI 0x11
