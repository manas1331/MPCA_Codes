;Write a program to add array of ten 16 bit numbers taking data from memory location stored as byte data 

.DATA
	  A: .BYTE 1,2,3,4,5,6,7,8,9,10
	SUM: .word 0

.text
        LDR R1,=A
	LDR R2,=SUM
	MOV R4,#0    
	MOV R5,#1	  

  L1:	LDRB R3,[R1]
	ADD R4,R4,R3
	ADD R1,R1,#1
	ADD R5,R5,#1
	CMP R5, #11
	BNE L1
	STRB R4,[R2]

 SWI 0X011
