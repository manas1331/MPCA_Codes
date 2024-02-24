;Write a program to search for an element in an array using binary search technique.
.data
    A: .BYTE 1,2,3,4,5,9,10,11,12,14
.text
    LDR R0, =A
    MOV R1, #12 ;Search element
    MOV R2, #-1 
    MOV R3, #0 ;min
    MOV R4, #9 ;max
    MOV R8, #0
    loop:
        CMP R4, R3
        BMI exit ;min>high
        ADD R5, R3, R4
        ADD R6, R8, R5, LSR #1 
        LDRB R7, [R0,R6]
        CMP R7, R1
        BEQ found
        BMI lesser
        SUB R6, R6, #1
        MOV R4, R6
        B loop
    found:
        MOV R2, R6
        SWI 0x011
    lesser:
        ADD R6, R6,#1
        MOV R3, R6
        B loop
    exit:
        SWI 0x011
