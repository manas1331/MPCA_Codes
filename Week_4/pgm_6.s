;Write a program in ARM7TDMI-ISA to generate a diagonal matrix.

.data
Diagonal:.word 0

.text
ldr r0,=Diagonal; To store the diagonal matrix
mov r2,#3
mov r3,r2
mov r4,#1

loop:
        mov r2,#3
        str r4,[r0],#4
        sub r3,r3,#1
        cmp r3,#0
        bne subtract
        b l

subtract:
                sub r2,r2,#1
                str r5,[r0],#4
                cmp r2,#0
                bne subtract
                beq loop

l:
        swi 0x11
.end
