module tb_mul_4x1();
	reg [0:3] I;
	reg [0:1] S;
	wire Y;
	
	mul_4x1 uut(
		.I(I),
		.S(S),
		.Y(Y)
	);
	initial begin 
		S=0;
		I[0]=1'b1;
		I[1]=1'b0;
		I[2]=1'b1;
		I[3]=1'b0;
		#50 S[0]=1'b1;
			S[1]=1'b0;
		#50 S[0]=1'b1;
			S[1]=1'b1;			
		#50 S[0]=1'b0;
			S[1]=1'b1;
	end 
	initial #150 $finish;
endmodule
	
	