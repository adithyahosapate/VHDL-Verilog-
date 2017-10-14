`timescale 1ns/100ps
`include "fulladder.v"

module Top;

wire sum,c1;
reg a,b,c;

fulladder fu1(sum,c1,a,b,c);


initial 

begin
	$dumpfile("fulladder.vcd");
	$dumpvars;

	$monitor($time,"a=%b, b=%b , c=%b ,sum=%b, carry=%b\n",a,b,c,sum,c1);
	a=0;b=0;c=0;
	#5 a=0;b=0;c=1;
	#5 a=0;b=1;c=0;
	#5 a=0;b=1;c=1;
	#5 a=1;b=0;c=0;
	#5 a=1;b=0;c=1;
	#5 a=1;b=1;c=0;
	#5 a=1;b=1;c=1;
	#5 a=0;b=0;c=0;
	#5;



end

endmodule