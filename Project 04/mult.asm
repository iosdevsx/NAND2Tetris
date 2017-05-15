// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

	//Store R1 and R2 values
	@R0
	D=M
	@first
	M=D

	@R1
	D=M
	@second
	M=D

	//Declare i, which is number of iteractions.
	@i
	M=1

	//Declare sum, which is multiple result
	@sum
	M=0

	//check if first number is zero
	@first
	D=M
	@STOP
	D;JEQ

	//check if second number is zero
	@second
	D=M
	@STOP
	D;JEQ
	
	//if i > n goto end
(LOOP)
	@i
	D=M
	@second
	D=D-M
	@STOP
	D;JGT

	@first
	D=M
	@sum
	M=M+D
	@i
	M=M+1
	@LOOP
	0;JMP

(STOP)
	@sum
	D=M
	@R2
	M=D

	@end
	0;JMP

