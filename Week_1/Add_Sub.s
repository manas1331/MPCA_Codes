;Write an ALP to add if the numbers are equal, otherwise subtract them.

.text
MOV R0,#5
MOV R1,#10
CMP R0,R1
BEQ L1
SUB R2,R0,R1
B L2
L1:ADD R2,R0,R1
L2:SWI 0X11
.end
