;Write an ALP to find whether a given character is present in a string. If present, find how many times the given character is present in a string.

.data
    STRING: .ASCIZ "technlgy!"
    LETTER: .ASCIZ "o"
.text
    LDR R0, =STRING;No search letter in the string
    LDR R1, =LETTER
    LDRB R1, [R1] ;Search letter
    MOV R5,#0; Count of the search letter in the string
    loop:
        LDRB R4, [R0] 
        ADD R0,R0,#1 ;Incrementing the pointer to move through the String
        CMP R4, #0
        BEQ end
        CMP R4, R1
        BNE loop
        ADD R5, R5, #1 ;Prints no of appearance
        B loop
    end:
        SWI 0x011
