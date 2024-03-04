;Write an ALP to perform Convolution using MLA instruction (Addition of multiplication of respective numbers of loc A and loc B).

.data
A: .word 7,18,10,6
B: .word 10,20,5,7

.text
mov r4,#4
ldr r0,=A
ldr r1,=B
mov r3,#0
loop:
ldr r5,[r0]
ldr r6,[r1]
mla r2,r5,r6,r2
add r0,r0,#4
add r1,r1,#4
sub r4,r4,#1
cmp r4,#0
bne loop
SWI 0x011 
