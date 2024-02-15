;Program to find the GCD of two numbers
mov r0,#18
mov r1,#72

loop:cmp r0,r1
beq exit
blt loop1
sub r0,r0,r1
b loop
loop1:sub r1,r1,r0
b loop
exit:mov r3,r0

swi 0x11
