module sign_extend_test();

wire [31:0] out;
reg [15:0] input1;


sign_extend extend(out,input1);

initial begin
  input1=16'b1111000111111101;
#5;
  input1=16'b0000000000010011;
end

initial begin
  $monitor("Time:%2d input1:%16b, out:%32b",$time,input1,out);
end


endmodule
