module compareTozero_test();

reg zero;
reg [31:0] input1;

wire biggerT,lessT;

compareTozero  cmp(biggerT,lessT,zero,input1);

initial begin
  input1=1'b11111111111100111111111111111111;
  zero=0;
#5;
  input1=1'b00011111111111111111111111111111;
  zero=0
end

initial begin
  $monitor("Time:%2d input1:%32b, biggerT:%1b ,lessT:%1b",$time,input1,biggerT,lessT);
end


endmodule
