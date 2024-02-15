;Write a program to Check if a given set of numbers are even or odd . Then store even and odd numbers in two different  

.data
A:.word 4,9,5,24,37
ODD:.word
EVEN:.word

.text
LDR r0,=A
LDR r1,=ODD
LDR r2,=EVEN
MOV r7,#5
loop:LDR r3,[r0],#4
AND r4,r3,#1
CMP r4,#0
STRHI r4,[r1],#4
STREQ r4,[r2],#4
SUB r7,r7,#1
CMP r7,#0
BNE loop

SWI 0x011
