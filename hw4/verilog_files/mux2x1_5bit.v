module mux2x1_32bit(out,input1,input2,s);

output  [4:0] out;
input [4:0] input1,input2;
input s;

mux2x1 m5_0 (out[0],input1[0],input2[0],s);
mux2x1 m5_1 (out[1],input1[1],input2[1],s);
mux2x1 m5_2 (out[2],input1[2],input2[2],s);
mux2x1 m5_3 (out[3],input1[3],input2[3],s);
mux2x1 m5_4 (out[4],input1[4],input2[4],s);


endmodule
