.data
Array:.word 3,4,5
.word 9,8,10
sum:.word 0

.text
ldr r0,=Array; Loading the 2d array
ldr r1,=sum; Loading an array to store the sum
mov r3,#3
mov r4,#2
loop:
        ldr r2,[r0],#4
        add r5,r5,r2
        sub r3,r3,#1
        cmp r3,#0
        bne loop
        beq loop2

loop2:
        mov r3,#3
        str r5,[r1],#4
        mov r5,#0
        sub r4,r4,#1
        cmp r4,#0
        bne loop
        beq exit
exit:
swi 0x11
.end