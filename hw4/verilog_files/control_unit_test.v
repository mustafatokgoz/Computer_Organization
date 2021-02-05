module control_unit_test();
  reg  [5:0] op;
  wire [1:0] alu_op;
  wire RegDst, AluSrc, MemToReg,RegWrite,MemRead, MemWrite, Branch,RegWrite2,jump,jandl;
  control_unit cntrl(op,alu_op,RegDst,AluSrc,MemToReg,RegWrite,MemRead,MemWrite,Branch,RegWrite2,jump,jandl);

  initial begin
    op=6'b000000;
    #5
    op=6'b000100;
    #5
    op=6'b100011;
    #5
    op=6'b101011;
    #5
    op=6'b000010;
    #5
    op=6'b001101;
    #5
    op=6'b001111;
  end

  initial begin
   $monitor("Time:%2d  op=%6b  RegDst=%1b AluSrc=%1b MemToReg=%1b RegWrite=%1b MemRead=%1b  MemWrite=%1b Branch=%1b RegWrite2=%1b ALUop=%2b jump=%1b jandl=%1b",$time,op, RegDst, AluSrc, MemToReg,RegWrite,MemRead, MemWrite, Branch,RegWrite2,alu_op,jump,jandl);

 end
endmodule
