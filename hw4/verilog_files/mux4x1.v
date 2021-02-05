module mux4x1(out,input1,input2,input3,input4,s0,s1);

output out;
input input1,input2,input3,input4,s0,s1;

wire not_s0,not_s1;
wire and1,and2,and3,and4;

not (not_s0,s0);
not (not_s1,s1);


and (and1,input1,not_s1,not_s0);
and (and2,input2,not_s1,s0);
and (and3,input3,s1,not_s0);
and (and4,input4,s1,s0);

or (out,and1,and2,and3,and4);
endmodule
