module mux( select, d, q );

input[1:0] select;
input[3:0] d;
output     q;

wire      q;
wire[1:0] select;
wire[3:0] d;


wire a_1,a_2,a_3,a_4,a_5,a_6,a_7,a_8,temp_1,temp_2;

and a1(a_1,d[0],!select[1]);
and a2(a_2,a_1,!select[0]);

and a3(a_3,d[1],!select[1]);
and a4(a_4,a_3,select[0]);

and a5(a_5,d[2],select[1]);
and a6(a_6,a_5,!select[0]);

and a7(a_7,d[3],select[1]);
and a8(a_8,a_7,select[0]);

or o1(temp_1,a_8,a_6);
or o2(temp_2,a_4,a_2);

or o3(q,temp_2,temp_1);

endmodule