`timescale 1ns/100ps
`include "counter.v"

module Top;
reg clk;
reg reset;
wire[3:0] Q;

counter c1(clk, reset , Q);
 

initial 
	begin
		reset = 0;
		#1000 reset=1;
		#100 reset=0;
		#5000 reset=1;
		#100  reset=0;
		#10000 $finish;

	end

always 
	begin

		clk = 0; #50;
		clk = 1; #50;
	end

initial
begin
	

 $monitor($stime," clk = %b, reset = %b, dout = %h",clk,reset,Q );
$dumpfile("counter.vcd");
$dumpvars;

end
endmodule 