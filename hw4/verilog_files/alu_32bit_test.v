module alu_32bit_test();

reg [2:0] opcode;
reg [31:0] a,b;
wire [31:0] r_i;
wire cout,zero;


alu_32bit alu32(opcode,a,b,r_i,zero,cout);

initial begin
  a=32'b00000000000000000000000000000101;
  b=32'b00000000000000000000000000000010;
  opcode[0]=1'b0;
  opcode[1]=1'b0;
  opcode[2]=1'b0;
#5;
  opcode[0]=1'b1;
  opcode[1]=1'b0;
  opcode[2]=1'b0;
#5;
  opcode[0]=1'b0;
  opcode[1]=1'b1;
  opcode[2]=1'b0;
#5;
  opcode[0]=1'b0;
  opcode[1]=1'b1;
  opcode[2]=1'b1;
#5;
  opcode[0]=1'b1;
  opcode[1]=1'b1;
  opcode[2]=1'b1;
 #5;

end

initial begin
  $monitor("Time:%2d , opcode:%3b , a:%32b, b:%32b , result:%32b , zero:%1b , c_out:%1b",$time,opcode,a,b,r_i,zero,cout);
end


endmodule
