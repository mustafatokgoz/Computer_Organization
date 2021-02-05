module adder_32bit(out,input1,input2,cin,cout);

output [31:0] out;
output cout;
input [31:0] input1,input2;
input cin;

wire [30:0] carry;

adder_1bit b0(out[0],input1[0],input2[0],cin,carry[0]);
adder_1bit b1(out[1],input1[1],input2[1],carry[0],carry[1]);
adder_1bit b2(out[2],input1[2],input2[2],carry[1],carry[2]);
adder_1bit b3(out[3],input1[3],input2[3],carry[2],carry[3]);
adder_1bit b4(out[4],input1[4],input2[4],carry[3],carry[4]);
adder_1bit b5(out[5],input1[5],input2[5],carry[4],carry[5]);
adder_1bit b6(out[6],input1[6],input2[6],carry[5],carry[6]);
adder_1bit b7(out[7],input1[7],input2[7],carry[6],carry[7]);
adder_1bit b8(out[8],input1[8],input2[8],carry[7],carry[8]);
adder_1bit b9(out[9],input1[9],input2[9],carry[8],carry[9]);
adder_1bit b10(out[10],input1[10],input2[10],carry[9],carry[10]);
adder_1bit b11(out[11],input1[11],input2[11],carry[10],carry[11]);
adder_1bit b12(out[12],input1[12],input2[12],carry[11],carry[12]);
adder_1bit b13(out[13],input1[13],input2[13],carry[12],carry[13]);
adder_1bit b14(out[14],input1[14],input2[14],carry[13],carry[14]);
adder_1bit b15(out[15],input1[15],input2[15],carry[14],carry[15]);
adder_1bit b16(out[16],input1[16],input2[16],carry[15],carry[16]);
adder_1bit b17(out[17],input1[17],input2[17],carry[16],carry[17]);
adder_1bit b18(out[18],input1[18],input2[18],carry[17],carry[18]);
adder_1bit b19(out[19],input1[19],input2[19],carry[18],carry[19]);
adder_1bit b20(out[20],input1[20],input2[20],carry[19],carry[20]);
adder_1bit b21(out[21],input1[21],input2[21],carry[20],carry[21]);
adder_1bit b22(out[22],input1[22],input2[22],carry[21],carry[22]);
adder_1bit b23(out[23],input1[23],input2[23],carry[22],carry[23]);
adder_1bit b24(out[24],input1[24],input2[24],carry[23],carry[24]);
adder_1bit b25(out[25],input1[25],input2[25],carry[24],carry[25]);
adder_1bit b26(out[26],input1[26],input2[26],carry[25],carry[26]);
adder_1bit b27(out[27],input1[27],input2[27],carry[26],carry[27]);
adder_1bit b28(out[28],input1[28],input2[28],carry[27],carry[28]);
adder_1bit b29(out[29],input1[29],input2[29],carry[28],carry[29]);
adder_1bit b30(out[30],input1[30],input2[30],carry[29],carry[30]);
adder_1bit b31(out[31],input1[31],input2[31],carry[30],cout);

endmodule
