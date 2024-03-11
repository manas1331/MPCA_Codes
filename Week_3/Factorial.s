;Write an ALP to find the sum of all the digits of a given 32 bit number.

.data
number: .word 109
B:.word 0

.text
ldr r0,=number
ldr r9,=B
mov r4,#0
ldr r1,[r0]
mov r2,#0
subtraction:
sub r1,r1,#10
add r2,r2,#1
cmp r1,#10
bpl subtraction
mov r7,r2
sum:
sub r7,r7,#10
add r4,r4,#1
cmp r7,#10
bpl sum
add r5,r5,r4
add r5,r5,r1
add r5,r5,r7
str r5,[r9]
.end
