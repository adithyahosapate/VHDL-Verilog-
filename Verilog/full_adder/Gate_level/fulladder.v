module fulladder (sum, c_out, in0, in1, c_in);

	output sum, c_out;
	input in0, in1, c_in;
	wire xor_1,xor_2,and_1,and_2,or_1;
//outputs of each gate

	xor x1(xor_1,in0,in1);
	and a1(and_1,xor_1,c_in);

	xor x2(sum,xor_1,c_in);
	and a2(and_2,in0,in1);

	or o1(c_out,and_2,and_1);

	

endmodule
