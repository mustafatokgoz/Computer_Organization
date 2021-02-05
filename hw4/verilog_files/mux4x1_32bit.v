module mux4x1_32bit(out,input1,input2,input3,input4,s0,s1);


output  [31:0] out;
input [31:0] input1,input2,input3,input4;
input s1,s0;


mux4x1 b0 (out[0],input1[0],input2[0],input3[0],input4[0],s0,s1);
mux4x1 b1 (out[1],input1[1],input2[1],input3[1],input4[1],s0,s1);
mux4x1 b2 (out[2],input1[2],input2[2],input3[2],input4[2],s0,s1);
mux4x1 b3 (out[3],input1[3],input2[3],input3[3],input4[3],s0,s1);
mux4x1 b4 (out[4],input1[4],input2[4],input3[4],input4[4],s0,s1);
mux4x1 b5 (out[5],input1[5],input2[5],input3[5],input4[5],s0,s1);
mux4x1 b6 (out[6],input1[6],input2[6],input3[6],input4[6],s0,s1);
mux4x1 b7 (out[7],input1[7],input2[7],input3[7],input4[7],s0,s1);
mux4x1 b8 (out[8],input1[8],input2[8],input3[8],input4[8],s0,s1);
mux4x1 b9 (out[9],input1[9],input2[9],input3[9],input4[9],s0,s1);
mux4x1 b10 (out[10],input1[10],input2[10],input3[10],input4[10],s0,s1);
mux4x1 b11 (out[11],input1[11],input2[11],input3[11],input4[11],s0,s1);
mux4x1 b12 (out[12],input1[12],input2[12],input3[12],input4[12],s0,s1);
mux4x1 b13 (out[13],input1[13],input2[13],input3[13],input4[13],s0,s1);
mux4x1 b14 (out[14],input1[14],input2[14],input3[14],input4[14],s0,s1);
mux4x1 b15 (out[15],input1[15],input2[15],input3[15],input4[15],s0,s1);
mux4x1 b16 (out[16],input1[16],input2[16],input3[16],input4[16],s0,s1);
mux4x1 b17 (out[17],input1[17],input2[17],input3[17],input4[17],s0,s1);
mux4x1 b18 (out[18],input1[18],input2[18],input3[18],input4[18],s0,s1);
mux4x1 b19 (out[19],input1[19],input2[19],input3[19],input4[19],s0,s1);
mux4x1 b20 (out[20],input1[20],input2[20],input3[20],input4[20],s0,s1);
mux4x1 b21 (out[21],input1[21],input2[21],input3[21],input4[21],s0,s1);
mux4x1 b22 (out[22],input1[22],input2[22],input3[22],input4[22],s0,s1);
mux4x1 b23 (out[23],input1[23],input2[23],input3[23],input4[23],s0,s1);
mux4x1 b24 (out[24],input1[24],input2[24],input3[24],input4[24],s0,s1);
mux4x1 b25 (out[25],input1[25],input2[25],input3[25],input4[25],s0,s1);
mux4x1 b26 (out[26],input1[26],input2[26],input3[26],input4[26],s0,s1);
mux4x1 b27 (out[27],input1[27],input2[27],input3[27],input4[27],s0,s1);
mux4x1 b28 (out[28],input1[28],input2[28],input3[28],input4[28],s0,s1);
mux4x1 b29 (out[29],input1[29],input2[29],input3[29],input4[29],s0,s1);
mux4x1 b30 (out[30],input1[30],input2[30],input3[30],input4[30],s0,s1);
mux4x1 b31 (out[31],input1[31],input2[31],input3[31],input4[31],s0,s1);

endmodule
