module adder_32bit_test();

wire [31:0] out;
wire cout;
reg [31:0] input1,input2;
reg cin;


adder_32bit add32(out,input1,input2,cin,cout);

initial begin
  input1=32'b00000000000000000000000000000001;
  input2=32'b00000000000000000000000000000111;
  cin=1'b0;
#5;
  cin=1'b1;
end

initial begin
  $monitor("Time:%2d input1:%32b, input2:%32b, cin:%1b, cout:%1b, out:%32b",$time,input1,input2,cin,cout,out);
end


endmodule
