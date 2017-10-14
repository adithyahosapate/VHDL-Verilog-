module mux( select, d, q );

input[1:0] select;
input[3:0] d;
output     q;

assign q=(d[0]&&!select[0]&&!select[1])
||(d[1]&&select[0]&&!select[1])
||(d[2]&&!select[0]&&select[1])
||(d[3]&&select[0]&&select[1]);

endmodule