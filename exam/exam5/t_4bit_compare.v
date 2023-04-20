module t_4bit_compare();
	reg [3:0]A,B;
	wire lt,eq,gt;

	bit_compare uut(
	   .A(A),
	   .B(B),
		.lt(lt),
		.eq(eq),
		.gt(gt)
		);
		
	initial begin 
		A=0;
		B=0;
		#50 A=4'b0001;
			B=4'b0001;
		#50 A=4'b0000;
			B=4'b0001;
		#50 A=4'b0001;
			B=4'b0000;
	end
	initial #200 $finish;
endmodule