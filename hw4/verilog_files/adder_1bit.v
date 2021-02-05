module adder_1bit(out,input1,input2,cin,cout);

output out,cout;
input input1,input2,cin;


wire xor1,xor2,and1,and2;

xor (xor1,input1,input2);
xor (out,xor1,cin);
and (and1,xor1,cin);
and (and2,input1,input2);
or (cout,and1,and2);

endmodule
