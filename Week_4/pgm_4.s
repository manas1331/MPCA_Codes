;Write an ALP to copy string from one location to another

.data
    STRING: .ASCIZ "PES University Students!"
    COPY: .ASCIZ ""
.text
    LDR R0, =STRING
    LDR R1, =COPY
    loop:
        LDRB R2, [R0]
        CMP R2, #0
        BEQ exit
        STRB R2,[R1]
        ADD R0, R0, #1
        ADD R1, R1, #1
        B loop
    exit:
        SWI 0X011
