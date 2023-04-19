module tb_ripple_carry_4_bit_adder();
	reg [3:0] A,B;
	reg C0;
	wire [3:0] S;
	wire C4;
	
	ripple_carry_4_bit_adder uut(
		.A(A),
		.B(B),
		.S(S),
		.C4(C4),
		.C0(C0)
		);
	
	initial begin
		A=0;
		B=0;
		C0=0;
				// Add stimulus here
		#10 C0 = 0;
		#10 A = 4'ha; 
		#10 B = 4'h5;
		#20 A = 0; 
		#20 B = 0;
		#30 A = 4'h5; 
		#30 B = 4'ha;
		#40 C0 = 1;
		#50 A = 4'ha; 
		#50 B = 4'h5;
		#60 A = 0; 
		#60 B = 0;
		#70 A = 4'h5; 
		#70 B = 4'ha;

	end
      
endmodule
