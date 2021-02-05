module mux2x1_32bit_test();

wire [31:0] out;
reg [31:0] input1,input2;
reg s;


mux2x1_32bit mux2_1_32(out,input1,input2,s);

initial begin
  input1=32'b11111111111111111111111111111111;
  input2=32'b00000000000000000000000000000000;
  s=1'b0;
#5;
  s=1;
end

initial begin
  $monitor("Time:%2d input1:%32b, input2:%32b, s:%1b, out:%32b",$time,input1,input2,s,out);
end


endmodule
