`include "halfadder.v"


module fulladder (sum,c1,a,b,c);

output sum,c1;
input a,b,c;
wire c_1,c_2,sum1,sum2;



halfadder h1 (sum1,c_1,a,b);
halfadder h2(sum,c_2,sum1,c);
or o1(c1,c_1,c_2);


endmodule






