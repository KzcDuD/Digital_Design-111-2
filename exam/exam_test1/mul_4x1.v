module mul_4x1(
	input [0:3] I,
	input [0:1] S,
	output Y
);
    wire w1,w2,w3,w4,w5,w6;
    not n1(w1,S[0]);
	not n2(w2,S[1]);
	and G1(w3,I[0],w1,w2);
	and G2(w4,I[1],S[0],w2);
	and G3(w5,I[2],w1,S[1]);
	and G4(w6,I[3],w1,S[0]);
	or G5(Y,w3,w4,w5,w6);

endmodule