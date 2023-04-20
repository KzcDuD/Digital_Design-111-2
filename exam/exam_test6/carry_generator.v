module carry_generator(
	output C1,C2,C3,
	input C0,
	input[2:0] P,G
);
	wire w1,w2,w3,w4,w5,w6;
	and G1(w1,P[0],C0,P[1],P[2]);
	and G2(w2,G[0],P[1],P[2]);
	and G3(w3,G[1],P[2],P[1]);
	and G4(w4,P[0],C0,P[1]);
	and G5(w5,P[1],G[0]);
	and G6(w6,C0,P[0]);
	or G7(C3,G[2],w1,w2,w3);
	or G8(C2,w4,w5,G[1]);
	or G9(C1,w6,G[0]);
endmodule
	