.data
    STRING: .ASCIZ "HELLO EVERYONE!"
.text
    LDR R0, =STRING
    loop:
        LDRB R2, [R0]
        CMP R2, #0
        BEQ end
        ADD R1, R1, #1
        ADD R0, R0, #1
        B loop
    end:
        SWI 0X011
