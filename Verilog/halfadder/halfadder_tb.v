`timescale 1ns/100ps
`include "halfadder.v"

module Top;

wire sum,c;
reg a,b;

halfadder ha1(sum,c,a,b);


initial 

begin
	$dumpfile("halfadder.vcd");
	$dumpvars;

	$monitor($time,"a=%b, b=%b ,sum=%b, carry=%b\n",a,b,sum,c);
	a=0;b=0;
	#5 a=0;b=1;
	#5 a=1;b=0;
	#5 a=1;b=1;
	#5 a=0;b=0;
	#5;



end

endmodule