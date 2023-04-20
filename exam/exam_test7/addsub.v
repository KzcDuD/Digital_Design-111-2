module addsub(
	input [3:0] A,B,
	input M,
	output [3:0] S,
	output C,V
);
	wire w1,w2,w3,w4,c0,c1,c2,c3,c4;
	or(c0,M);
	xor x1(w1,B[0],M);
	xor x2(w2,B[1],M);
	xor x3(w3,B[2],M);
	xor x4(w4,B[3],M);
	
	full_adder
		FA1(S[0],c1,A[0],w1,c0),
		FA2(S[1],c2,A[1],w2,c1),
		FA3(S[2],c3,A[2],w3,c2),
		FA4(S[3],c4,A[3],w4,c3);
	or CC(C,c4);
	xor VV(V,c3,c4);
	
endmodule