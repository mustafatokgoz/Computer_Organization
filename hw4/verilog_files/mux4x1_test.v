module mux4x1_test();

wire out;
reg input1,input2,input3,input4;
reg s0,s1;

mux4x1 mux4_1(out,input1,input2,input3,input4,s0,s1);

initial begin
  input1=1'b1;
  input2=1'b0;
  input3=1'b0;
  input4=1'b0;
  s0=1'b0;
  s1=1'b0;
#5;
  input1=1'b0;
  input2=1'b1;
  input3=1'b0;
  input4=1'b0;
  s0=1'b1;
  s1=1'b0;
#5;
  input1=1'b0;
  input2=1'b0;
  input3=1'b1;
  input4=1'b0;
  s0=1'b0;
  s1=1'b1;
#5;
  input1=1'b0;
  input2=1'b0;
  input3=1'b0;
  input4=1'b1;
  s0=1'b1;
  s1=1'b1;
end

initial begin
  $monitor("Time:%2d input1:%1b, input2:%1b, input3:%1b, input4:%1b, s1:%1b, s0:%1b, out:%1b",$time,input1,input2,input3,input4,s1,s0,out);
end


endmodule
