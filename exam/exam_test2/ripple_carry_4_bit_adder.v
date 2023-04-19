module ripple_carry_4_bit_adder(S,C4,A,B,C0);
	output [0:3]S;
	output C4;
	input [3:0] A,B;
	input C0;
	wire C1,C2,C3;
	full_adder
		FA1(S[0],C1,A[0],B[0],C0),
		FA2(S[1],C2,A[1],B[1],C1),
		FA3(S[2],C3,A[2],B[2],C2),
		FA4(S[3],C4,A[3],B[3],C3);
endmodule