module sign_extend(out, input1);

output [31:0] out;
input [15:0] input1;

	and w1(out[16],1'b1,input1[15]);
	and w2(out[17],1'b1,input1[15]);
	and w3(out[18],1'b1,input1[15]);
	and w4(out[19],1'b1,input1[15]);
	and w5(out[20],1'b1,input1[15]);
	and w6(out[21],1'b1,input1[15]);
	and w7(out[22],1'b1,input1[15]);
	and w8(out[23],1'b1,input1[15]);
	and w9(out[24],1'b1,input1[15]);
	and w10(out[25],1'b1,input1[15]);
	and w11(out[26],1'b1,input1[15]);
	and w12(out[27],1'b1,input1[15]);
	and w13(out[28],1'b1,input1[15]);
	and w14(out[29],1'b1,input1[15]);
	and w15(out[30],1'b1,input1[15]);
	and w16(out[31],1'b1,input1[15]);
  and w17(out[15],1'b1,input1[15]);
	and w18(out[14],1'b1,input1[14]);
	and w19(out[13],1'b1,input1[13]);
	and w20(out[12],1'b1,input1[12]);
	and w21(out[11],1'b1,input1[11]);
	and w22(out[10],1'b1,input1[10]);
	and w23(out[9],1'b1,input1[9]);
	and w24(out[8],1'b1,input1[8]);
	and w25(out[7],1'b1,input1[7]);
	and w26(out[6],1'b1,input1[6]);
	and w27(out[5],1'b1,input1[5]);
	and w28(out[4],1'b1,input1[4]);
	and w29(out[3],1'b1,input1[3]);
	and w30(out[2],1'b1,input1[2]);
	and w31(out[1],1'b1,input1[1]);
	and w32(out[0],1'b1,input1[0]);

endmodule
