/* A Lakshmi Priya Original code: Multiplication of intergers */
	AREA ASSIGNMENT,CODE,READONLY
	ENTRY
	LDR R0,=VALUE1 			//Load the value of variable VALUE1 into the register R0
	LDMIA R0,{R1-R4}		// Load multiple Registers after the increments starting with the address of R0 as the reference.
	MULS R5,R1,R2			// Multiply Signed intergers R1 and R2 and store the result in R5.
	ADCS R6,R4,R3			// Add carry for signed R4 and R3 and store the result in R6.
	LDR R0,=RESULT			// Load the register R0 with the value of the variable Result.
	STMIA R0,{R5,R6}		//Store Multiple After Increments at the location being the value of R0 and the values are R5 as MSB and R6 as the LSB
SAMBA B SAMBA				// Infinite loop to avoid execution of the same program
VALUE1 DCD -15				// Command to store Decimal -15 in the variable VALUE1
VALUE2 DCD 15				// Command to store Decimal 15 in the variable VALUE2
DECIMAL_POINT1 DCD -1
DECIMAL_POINT2 DCD -1 
	AREA answer,DATA,READWRITE
RESULT DCD 0X000
	END
