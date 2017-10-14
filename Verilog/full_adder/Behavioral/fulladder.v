module fulladder (sum, c_out, in0, in1, c_in);

output sum, c_out;
input in0, in1, c_in;

assign { c_out, sum } = in0 + in1 + c_in;

endmodule
