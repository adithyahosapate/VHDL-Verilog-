module halfadder (sum,c,a,b);

output sum,c;
input a,b;

xor x1 (sum,a,b);
and a1 (c,a,b);

endmodule





