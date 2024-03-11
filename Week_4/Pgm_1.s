;Write an ALP to perform Convolution using MUL instruction (Addition of multiplication of respective numbers of loc A and loc B)

.data
A: .word 1,3,6,8
B: .word 3,4,5,10

.text
mov r4,#4
ldr r0,=A
ldr r1,=B

loop:
ldr r5,[r0]
ldr r6,[r1]
mul r2,r5,r6
add r3,r2,r3
add r0,r0,#4
add r1,r1,#4
sub r4,r4,#1
cmp r4,#0
bne loop

SWI 0x011 



