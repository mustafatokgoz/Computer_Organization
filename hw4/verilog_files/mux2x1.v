module mux2x1(out,input1,input2,s);

output out;
input input1,input2,s;

wire not_s,and1,and2;

not (not_s,s);
and (and1,input1,not_s);
and (and2,input2,s);

or (out,and1,and2);

endmodule
