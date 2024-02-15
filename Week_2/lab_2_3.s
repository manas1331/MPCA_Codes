;Write a program to Classify the given set of numbers as positive, negative or zero and also store them in different memory locations.

.data
A:.word -34,-20,0,12,56
B:.word
C:.word
D:.word

.text
LDR r0,=A
LDR r1,=B
LDR r2,=C
LDR r3,=D
MOV r7,#5
loop:LDR r4,[r0],#4
CMP r4,#0
STRHI r4,[r1],#4
STRLO r4,[r2],#4
STREQ r4,[r3],#4
SUB r7,r7,#1
CMP r7,#0
BNE loop

SWI 0x011