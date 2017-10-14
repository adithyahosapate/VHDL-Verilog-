module Xor(out,a,b);

output out;
input a,b;

assign out =(!a&b)||(a&!b);

endmodule	