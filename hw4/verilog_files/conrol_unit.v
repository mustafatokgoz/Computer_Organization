module control_unit(op,alu_op,RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,RegWrite2,jump,jandl);

output [1:0] alu_op;
output RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,RegWrite2,jump,jandl;
input [5:0] op;

wire r,not_op0,not_op1,not_op2,not_op3,not_op4,not_op5;
wire and1,and2,and3,and4,and5,and6;

not (not_op0, op[0]);
not (not_op1, op[1]);
not (not_op2, op[2]);
not (not_op3, op[3]);
not (not_op4, op[4]);
not (not_op5, op[5]);





// beq 000100
and (alu_op[0],not_op5,not_op4,not_op3,op[2],not_op1,not_op0);

// r-type
and (alu_op[1],not_op5,not_op4,not_op3,not_op2,not_op1,not_op0);

// r type
and (RegDst,not_op5,not_op4,not_op3,not_op2,not_op1,not_op0);

//lw 100011
and (MemToReg,op[5],not_op4,not_op3,not_op2,op[1],op[0]);

// lw 100011
and (MemRead,op[5],not_op4,not_op3,not_op2,op[1],op[0]);

//sw 101011
and (MemWrite,op[5],not_op4,op[3],not_op2,op[1],op[0]);

// branch 000100
and (Branch,not_op5,not_op4,not_op3,op[2],not_op1,not_op0);

// lw-sw-ori-lui
and (and1,op[5],not_op4,not_op2,op[1],op[0]);
and (and2,not_op5,not_op4,op[3],op[2],op[0]);
or  (ALUSrc,and1,and2);


// lw - r type -ori-lui
and (and3,not_op5,not_op4,op[3],op[2],op[0]); // ori -lui
and (and4,op[5],not_op4,not_op3,not_op2,op[1],op[0]);
and (and5,not_op5,not_op4,not_op3,not_op2,not_op1,not_op0);
or  (RegWrite,ann3,and4,and5);

and (RegWrite2,not_op5,not_op4,not_op3,not_op2,not_op1,not_op0); // for writing to rs

// jump
// j - janl
and (jump,not_op5,not_op4,not_op3,not_op2,op[1]);

// jandl
and (jandl,not_op5,not_op4,not_op3,not_op2,op[1],op[0]);


endmodule
