module alu_control_test();
  reg [5:0] funct;
  reg [1:0] alu_op;
  wire [2:0] aluctrl;

  reg [2:0] expectation;
  alu_control alu_cont(funct,alu_op,aluctrl);

  initial begin
    funct  = 6'b100100;
    expectation = 3'b000; //and
    #5
    funct  = 6'b100101;
    expectation = 3'b001; //or
    #5
    funct  = 6'b100000;
    alu_op = 2'b10;
    expectation = 3'b010; //add
    #5
    funct  = 6'b100010;
    expectation = 3'b110; //sub
    #5
    funct  = 6'b101010;
    expectation = 3'b111; //xor
  end
  initial begin
    $monitor("Time:%2d funct:%6b alu_op:%2b, alu_control:%3b, expectation:%3b",$time,funct,alu_op,aluctrl,expectation);
  end


endmodule
