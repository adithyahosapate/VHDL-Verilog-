`timescale 1ns/1ps
module seq_det(din, reset, clk, z);
	input clk, reset, din;
	output reg z;
	reg [1:0] cst, nst;
	parameter A=2'b00, B=2'b01, C=2'b10, D=2'b11;

	always @(cst or din)
	begin
		case(cst)
		A: if(din == 1'b0) begin
			nst = B; z = 1'b0; end
		   else begin
			nst = A; z = 1'b0; end

		B: if(din == 1'b1) begin
			nst = C; z = 1'b0; end
		   else begin
			nst = B; z = 1'b0; end

		C: if(din == 1'b0) begin
			nst = D; z = 1'b0; end
		   else begin
			nst = A; z = 1'b0; end

		D: if(din == 1'b1) begin 
			nst = C; z = 1'b1; end
		   else begin
			nst = B; z = 1'b0; end
		default: nst = A;
		endcase
	end
	
	always @(posedge(clk))
	begin 
		if(reset)
			cst <= A;
		else 
			cst <= nst;
	end 
	endmodule


