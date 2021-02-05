module adder_1bit_test();

wire out,cout;
reg input1,input2,cin;


adder_1bit add1(out,input1,input2,cin,cout);

initial begin
  input1=1'b1;
  input2=1'b0;
  cin=1'b0;
#5;
  cin=1'b1;
end

initial begin
  $monitor("Time:%2d input1:%1b, input2:%1b, cin:%1b, cout:%1b, out:%1b",$time,input1,input2,cin,cout,out);
end


endmodule
