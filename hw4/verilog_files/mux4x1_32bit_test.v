module mux4x1_32bit_test();

wire [31:0] out;
reg [31:0] input1,input2,input3,input4;
reg s0,s1;

mux4x1_32bit mux4_1_32(out,input1,input2,input3,input4,s0,s1);

initial begin
  input1=32'b11111111111111111111111111111111;
  input2=32'b00000000000000000000000000000001;
  input3=32'b00000000000000000000000000000111;
  input4=32'b11000000000000000000000000000000;
  s0=1'b0;
  s1=1'b0;
#5;
  s0=1'b1;
  s1=1'b0;
#5;
  s0=1'b0;
  s1=1'b1;
#5;
  s0=1'b1;
  s1=1'b1;
end

initial begin
  $monitor("Time:%2d input1:%32b, input2:%32b, input3:%32b, input4:%32b, s1:%1b, s0:%1b, out:%32b",$time,input1,input2,input3,input4,s1,s0,out);
end


endmodule
