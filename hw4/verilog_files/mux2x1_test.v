module mux2x1_test();

wire out;
reg input1,input2,s;


mux2x1 mux2_1(out,input1,input2,s);

initial begin
  input1=1'b1;
  input2=1'b0;
  s=1'b0;
#5;
  s=1;
end

initial begin
  $monitor("Time:%2d input1:%1b, input2:%1b, s:%1b, out:%1b",$time,input1,input2,s,out);
end


endmodule
