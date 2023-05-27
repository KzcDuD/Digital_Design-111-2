module Mul_4x3(
	input [2:0]A,
	input [3:0]B,
	output[6:0]C
	);
	wire[2:0]x;
	wire[3:0]y;
	wire[3:0]v;
	wire[3:0]z;
	
	and G1(C[0],A[0],B[0]);
	and G2(x[0],A[0],B[1]);
	and G3(x[1],A[0],B[2]);
	and G4(x[2],A[0],B[3]);
	and G5(y[0],A[1],B[0]);
	and G6(y[1],A[1],B[1]);
	and G7(y[2],A[1],B[2]);
	and G8(y[3],A[1],B[3]);
	and G9(z[0],A[2],B[0]);
	and G10(z[1],A[2],B[1]);
	and G11(z[2],A[2],B[2]);
	and G12(z[3],A[2],B[3]);
	ripple_carry_4_bit_adder Adder1(
			.S({v[2],v[1],v[0],C[1]}),
			.C4(v[3]),
			.A({y[3],y[2],y[1],y[0]}),
			.B({0,x[2],x[1],x[0]}),
			.C0(0)
			);
	ripple_carry_4_bit_adder Adder2(
		.S({C[5],C[4],C[3],C[2]}),
		.C4(C[6]),
		.A({z[3],z[2],z[1],z[0]}),
		.B({v[3],v[2],v[1],v[0]}),
		.C0(0)
		);
endmodule

	