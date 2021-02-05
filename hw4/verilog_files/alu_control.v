module alu_control(func,alu_op,op);

output [2:0] op;
input [5:0] func;
input [1:0] alu_op;

wire not_f0,not_f1,not_f2,not_f3,not_f4,not_f5,not_alu1;
wire and1,and2,and3;


not (not_f0,func[0]);
not (not_f1,func[1]);
not (not_f2,func[2]);
not (not_f3,func[3]);
not (not_f4,func[4]);
not (not_f5,func[5]);

// function codes
// andn 100100
// orn 100101
// addn 100000
// subn 100010
// xorn 100110



and (and1,alu_op[1],func[3]);
and (and2,alu_op[1],func[0]);
or (op[0],and1,and2);

not (not_alu1,alu_op[1]);
or (op[1],not_alu1,not_f2);

and (and3,alu_op[1],funct[1]);
or (op[2],and3,alu_op[0]);


endmodule
