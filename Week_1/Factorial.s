;Factorial Program

.text
mov r0,#6
mov r5,r0
sub r1,r0,#1
loop:cmp r0,#1
beq end
mul r3,r1,r0
cmp r0,r5
moveq r0,r1
sub r0,r0,#01
mov r1,r3
b loop
end:mov r0,r3

swi 0x011
