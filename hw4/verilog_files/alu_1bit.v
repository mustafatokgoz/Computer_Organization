module alu_1bit(opcode,b,a,cin,r_i,cout);

input [2:0] opcode;
input b,a,cin;
output r_i,cout;


wire w_xor,or1,and1,not1,and2,and3,or2,and4,not2,r_xor;

xor (w_xor,b,opcode[2]);
or  (or1,a,w_xor);
and (and1,a,w_xor);
not (not1,and1);
and (and2,not1,or1);
and (and3,and2,cin);
or  (or2,cin,and2);
not (not2,and3);
or  (cout,and3,and1);
and (and4,not2,or2);

xor (r_xor,a,b);

mux4x1 mux4_1(r_i,and1,or1,and4,r_xor); //  andn or subn xorn  I use xorn 111  instead slt


endmodule
