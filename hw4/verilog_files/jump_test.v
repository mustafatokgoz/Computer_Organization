module jump_test();


wire [31:0] out;
reg [25:0] input1;
reg [3:0] pc;

jump jp(out,input1,pc);

initial begin
  input1=32'b11111111111111111111111111;
  pc=4'b0000
#5;
  pc=4'b1000
end

initial begin
  $monitor("Time:%2d input1:%32b, pc:%4b, out:%32b",$time,input1,pc,out);
end


endmodule
