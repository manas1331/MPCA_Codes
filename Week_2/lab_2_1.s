; Write a program to add two numbers by reading them from memory and store the result back to the memory.
.text

LDR R0,=a
LDR R1,=b
LDR R2,=c
LDR R4,[r0]
LDR R5,[r1]
ADD R6,R4,R5
STR R6,[r3]


SWI 0x011

.data
a: .word 45
b: .word 100
c: .word 0
