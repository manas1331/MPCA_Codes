;Write an ALP to check whether the given number has odd or even number of 1’s (Even Parity and Odd Parity). 

.data
    A: .word 0
    B: .word 1
    
.text
    mov R0, #3
    mov R1, #1
    mov R3, #2
    
loop:
eor R0, R0, R0, LSR R1
mul R4, R1, R3
mov R1, R4
cmp R1, #32
beq exit
B loop

exit:
and R0,R0,#1
cmp R0, #1
beq oddparity
ldr R5,=A
ldr r5,[r5]
SWI 0x011

oddparity:
ldr R5,=B
ldr r5,[r5]
SWI 0x011
