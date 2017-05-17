// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

    //Set sum to 0
    @sum
    M=0

    //Check R1 and R2 for 0
    @R0
    D=M
    @STOP
    D;JEQ

    @first
    M=D

    @R1
    D=M
    @STOP
    D;JEQ

    @second
    M=D

    //Declare i, which is number of iteractions.
    @i
    M=0
    
    //if i > n goto end
(LOOP)
    @i
    D=M
    @second
    D=D-M
    @STOP
    D;JEQ

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

(END)
    @end
    0;JMP

