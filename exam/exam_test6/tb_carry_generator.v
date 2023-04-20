module tb_carry_generator();
	reg C0;
	reg[2:0] P,G;
	wire C1,C2,C3;
	
	carry_generator uut(
		.C0(C0),
		.P(P),
		.G(G),
		.C1(C1),
		.C2(C2),
		.C3(C3)
		);
	initial begin 
		P=0;
		G=0;
		C0=0;
		#50 C0=1'b1;
			P=3'b001;
			G=3'b010;
		#50 C0=1'b0;
			P=3'b001;
			G=3'b010;
		#50 C0=1'b1;
			P=3'b111;
			G=3'b111;
	end
	initial #200 $finish;
endmodule
			
		