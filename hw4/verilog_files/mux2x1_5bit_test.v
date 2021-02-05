module mux2x1_5bit_test();

wire [4:0] out;
reg [4:0] input1,input2;
reg s;


mux2x1_5bit mux2_1_5(out,input1,input2,s);

initial begin
  input1=5'b11111
  input2=5'b00000;
  s=1'b0;
#5;
  s=1;
end

initial begin
  $monitor("Time:%2d input1:%5b, input2:%5b, s:%1b, out:%5b",$time,input1,input2,s,out);
end


endmodule
