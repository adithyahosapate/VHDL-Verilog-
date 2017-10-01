`timescale 1ns/100ps
`include "mult.v"

module Top;

reg[3:0] in;
reg[1:0] sel;
wire q;

mux mux1(sel,in,q);

initial 

begin
	$dumpfile("mux.vcd");
	$dumpvars;

	$monitor($time,"sel=%b, d=%b, q=%b\n",sel,in,q);
	sel=2'b10;in=4'b1000;
	#5 sel=2'b10;in=4'b1010;
	#5 sel=2'b10;in=4'b1000;
	#5 sel=2'b10;in=4'b1011;
	#5 sel=2'b10;in=4'b1111;
	#5 sel=2'b10;in=4'b0010;
	#5 sel=2'b10;in=4'b0100;
	#5 sel=2'b10;in=4'b1110;
	#5 sel=2'b10;in=4'b0011;
	#5;



end

endmodule