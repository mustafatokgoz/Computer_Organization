module compareTozero(biggerT,lessT,zero,input1);

input [31:0] input1;
input zero;
output biggerT,lessT;

wire not_zero;

and (lessT,input[31],1'b1);
not (biggerT,not_zero);


endmodule
