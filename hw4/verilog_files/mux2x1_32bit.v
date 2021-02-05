module mux2x1_32bit(out,input1,input2,s);


output  [31:0] out;
input [31:0] input1,input2;
input s;


mux2x1 b0 (out[0],input1[0],input2[0],s);
mux2x1 b1 (out[1],input1[1],input2[1],s);
mux2x1 b2 (out[2],input1[2],input2[2],s);
mux2x1 b3 (out[3],input1[3],input2[3],s);
mux2x1 b4 (out[4],input1[4],input2[4],s);
mux2x1 b5 (out[5],input1[5],input2[5],s);
mux2x1 b6 (out[6],input1[6],input2[6],s);
mux2x1 b7 (out[7],input1[7],input2[7],s);
mux2x1 b8 (out[8],input1[8],input2[8],s);
mux2x1 b9 (out[9],input1[9],input2[9],s);
mux2x1 b10 (out[10],input1[10],input2[10],s);
mux2x1 b11 (out[11],input1[11],input2[11],s);
mux2x1 b12 (out[12],input1[12],input2[12],s);
mux2x1 b13 (out[13],input1[13],input2[13],s);
mux2x1 b14 (out[14],input1[14],input2[14],s);
mux2x1 b15 (out[15],input1[15],input2[15],s);
mux2x1 b16 (out[16],input1[16],input2[16],s);
mux2x1 b17 (out[17],input1[17],input2[17],s);
mux2x1 b18 (out[18],input1[18],input2[18],s);
mux2x1 b19 (out[19],input1[19],input2[19],s);
mux2x1 b20 (out[20],input1[20],input2[20],s);
mux2x1 b21 (out[21],input1[21],input2[21],s);
mux2x1 b22 (out[22],input1[22],input2[22],s);
mux2x1 b23 (out[23],input1[23],input2[23],s);
mux2x1 b24 (out[24],input1[24],input2[24],s);
mux2x1 b25 (out[25],input1[25],input2[25],s);
mux2x1 b26 (out[26],input1[26],input2[26],s);
mux2x1 b27 (out[27],input1[27],input2[27],s);
mux2x1 b28 (out[28],input1[28],input2[28],s);
mux2x1 b29 (out[29],input1[29],input2[29],s);
mux2x1 b30 (out[30],input1[30],input2[30],s);
mux2x1 b31 (out[31],input1[31],input2[31],s);

endmodule
