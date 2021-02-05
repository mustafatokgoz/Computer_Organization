module alu_1bit_test();

reg [2:0] opcode;
reg a,b,cin;

wire r_i,cout;


alu_1bit alu(opcode,b,a,cin,r_i,cout);

initial begin
  a=1'b1;
  b=1'b0;
  opcode[0]=1'b0;
  opcode[1]=1'b0;
  opcode[2]=1'b0;
  cin=0;
#5;
  a=1'b1;
  b=1'b0;
  opcode[0]=1'b1;
  opcode[1]=1'b0;
  opcode[2]=1'b0;
  cin=0;
#5;
  a=1'b1;
  b=1'b0;
  opcode[0]=1'b0;
  opcode[1]=1'b1;
  opcode[2]=1'b0;
  cin=0;
#5;
  a=1'b1;
  b=1'b0;
  opcode[0]=1'b0;
  opcode[1]=1'b1;
  opcode[2]=1'b1;
  cin=opcode[2];
#5;
  a=1'b1;
  b=1'b0;
  opcode[0]=1'b0;
  opcode[1]=1'b1;
  opcode[2]=1'b0;
  cin=0;

end

initial begin
  $monitor("Time:%2d a:%1b, b:%1b, cin:%1b, cout:%1b, out:%1b",$time,a,b,cin,cout,r_i);
end


endmodule
