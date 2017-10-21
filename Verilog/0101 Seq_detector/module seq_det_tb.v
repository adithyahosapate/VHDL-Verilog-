`timescale 1ns/1ps
`include "seq_det.v"
module seq_det_tb;
reg din, clk, reset;
wire z;
seq_det m1(din, reset, clk, z);
initial
begin
reset=0       ;clk=0;din=0;
$monitor($time, , ,"c=%b",clk,,"z=%b",z,,"r=%b",reset,,"d=%b",din);
$dumpfile("seq_det.vcd");
$dumpvars;
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=0;
#10 din=1;
#10 din=0;
#10 din=1;
//#5 reset=1;
//#5 reset=0;
end

always
#5 clk=~clk;
initial
#100 $finish ;
endmodule