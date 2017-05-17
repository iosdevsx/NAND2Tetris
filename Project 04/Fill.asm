	@status
	M=0

(LISTEN)
	@KBD
	D=M
	@status
	D=D-M
	@LISTEN
	D;JEQ

	@KBD
	D=M
	@BLACK
	D;JGT
	@WHITE
	0;JMP

(BLACK)
	@status
	M=-1
	@SETSTATUS
	0;JMP

(WHITE)
	@status
	M=0
	@SETSTATUS
	0;JMP

(SETSTATUS)
	@8192
	D=A
	@n
	M=D

	@i
	M=0

	@SCREEN
	D=A
	@addr
	M=D
	@LOOP
	0;JMP

(LOOP)
	@i
	D=M
	@n
	D=D-M
	@LISTEN
	D;JGT

	@status
	D=M
	@addr
	A=M
	M=D
	@i
	M=M+1
	@R1
	D=A
	@addr
	M=D+M
	@LOOP
	0;JMP