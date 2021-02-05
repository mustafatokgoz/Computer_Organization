module alu_32bit(opcode,a,b,out,zero);

output [31:0] out;
input [31:0] a,b;
input [2:0] opcode;

wire [30:0] carry;



alu_1bit b0(opcode,b[0],a[0],opcode[2],out[0],carry[0]);
alu_1bit b1(opcode,b[1],a[1],carry[0],out[1],carry[1]);
alu_1bit b2(opcode,b[2],a[2],carry[1],out[2],carry[2]);
alu_1bit b3(opcode,b[3],a[3],carry[2],out[3],carry[3]);
alu_1bit b4(opcode,b[4],a[4],carry[3],out[4],carry[4]);
alu_1bit b5(opcode,b[5],a[5],carry[4],out[5],carry[5]);
alu_1bit b6(opcode,b[6],a[6],carry[5],out[6],carry[6]);
alu_1bit b7(opcode,b[7],a[7],carry[6],out[7],carry[7]);
alu_1bit b8(opcode,b[8],a[8],carry[7],out[8],carry[8]);
alu_1bit b9(opcode,b[9],a[9],carry[8],out[9],carry[9]);
alu_1bit b10(opcode,b[10],a[10],carry[9],out[10],carry[10]);
alu_1bit b11(opcode,b[11],a[11],carry[10],out[11],carry[11]);
alu_1bit b12(opcode,b[12],a[12],carry[11],out[12],carry[12]);
alu_1bit b13(opcode,b[13],a[13],carry[12],out[13],carry[13]);
alu_1bit b14(opcode,b[14],a[14],carry[13],out[14],carry[14]);
alu_1bit b15(opcode,b[15],a[15],carry[14],out[15],carry[15]);
alu_1bit b16(opcode,b[16],a[16],carry[15],out[16],carry[16]);
alu_1bit b17(opcode,b[17],a[17],carry[16],out[17],carry[17]);
alu_1bit b18(opcode,b[18],a[18],carry[17],out[18],carry[18]);
alu_1bit b19(opcode,b[19],a[19],carry[18],out[19],carry[19]);
alu_1bit b20(opcode,b[20],a[20],carry[19],out[20],carry[20]);
alu_1bit b21(opcode,b[21],a[21],carry[20],out[21],carry[21]);
alu_1bit b22(opcode,b[22],a[22],carry[21],out[22],carry[22]);
alu_1bit b23(opcode,b[23],a[23],carry[22],out[23],carry[23]);
alu_1bit b24(opcode,b[24],a[24],carry[23],out[24],carry[24]);
alu_1bit b25(opcode,b[25],a[25],carry[24],out[25],carry[25]);
alu_1bit b26(opcode,b[26],a[26],carry[25],out[26],carry[26]);
alu_1bit b27(opcode,b[27],a[27],carry[26],out[27],carry[27]);
alu_1bit b28(opcode,b[28],a[28],carry[27],out[28],carry[28]);
alu_1bit b29(opcode,b[29],a[29],carry[28],out[29],carry[29]);
alu_1bit b30(opcode,b[30],a[30],carry[29],out[30],carry[30]);
alu_1bit b31(opcode,b[31],a[31],carry[30],out[31],carry[31]);


nor (zero,out[0],out[1],out[2],out[3],out[4],out[5],out[6],out[7],out[8],out[9],
           out[10],out[11],out[12],out[13],out[14],out[15],out[16],out[17],out[18],out[19],
           out[20],out[21],out[22],out[23],out[24],out[25],out[26],out[27],out[28],out[29],out[30],out[31]);


endmodule
