module Xor(out,a,b);

output out;
input a,b;
wire and_1,and_2,or_1;


and a1(and_1,!a,b);
and a2(and_2,a,!b);

or o1(or_1,and_1,and_2);

assign out =or_1 ;


endmodule	