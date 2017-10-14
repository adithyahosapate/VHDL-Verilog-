`timescale 1ns/100ps
`include "xor.v"


module Top;


reg a,b;

Xor xo(out,a,b);



initial 

begin
	$dumpfile("xor.vcd");
	$dumpvars;

	$monitor($time,"a=%b, b=%b , out=%b\n",a,b,out);
	
	a=0;b=0;
	#5 a=0;b=1;
	#5 a=0;b=1;
	#5 a=1;b=0;
	#5 a=1;b=0;
	#5 a=1;b=1;
	#5 a=1;b=1;
	#5 a=0;b=0;
	#5;
end
endmodule
