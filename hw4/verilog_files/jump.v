module jump(out,input1,pc);

output [31:0] out;
input [25:0] input1;
input [3:0] pc;


and w0(output[0],1'b1,1'b0);
and w1(output[1],1'b1,1'b0);
and w2(output[2],1'b1,input1[0]);
and w3(output[3],1'b1,input1[1]);
and w4(output[4],1'b1,input1[2]);
and w5(output[5],1'b1,input1[3]);
and w6(output[6],1'b1,input1[4]);
and w7(output[7],1'b1,input1[5]);
and w8(output[8],1'b1,input1[6]);
and w9(output[9],1'b1,input1[7]);
and w10(output[10],1'b1,input1[8]);
and w11(output[11],1'b1,input1[9]);
and w12(output[12],1'b1,input1[10]);
and w13(output[13],1'b1,input1[11]);
and w14(output[14],1'b1,input1[12]);
and w15(output[15],1'b1,input1[13]);
and w16(output[16],1'b1,input1[14]);
and w17(output[17],1'b1,input1[15]);
and w18(output[18],1'b1,input1[16]);
and w19(output[19],1'b1,input1[17]);
and w20(output[20],1'b1,input1[18]);
and w21(output[21],1'b1,input1[19]);
and w22(output[22],1'b1,input1[20]);
and w23(output[23],1'b1,input1[21]);
and w24(output[24],1'b1,input1[22]);
and w25(output[25],1'b1,input1[23]);
and w25(output[26],1'b1,input1[24]);
and w25(output[27],1'b1,input1[25]);

and w25(output[28],1'b1,pc[0]);
and w25(output[29],1'b1,pc[1]);
and w25(output[30],1'b1,pc[2]);
and w25(output[31],1'b1,pc[3]);


endmodule
