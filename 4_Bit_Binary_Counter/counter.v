module counter(clk,reset,Q);

input clk;
output[3:0] Q;
input reset;

wire clk,reset;
reg[3:0] Q;


initial Q=0;

always @ (posedge(clk)) 
	begin
		if (reset)
		
			Q<=0;
		
		else 
		
			
			Q <=Q+1;
			
			
	end
endmodule

