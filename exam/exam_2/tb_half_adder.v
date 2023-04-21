module tb_half_adder();
	reg x,y,z;
	wire S,C;
	
	full_adder M1(S,C,x,y,z);
	
	initial begin
		x=0;
		y=0;
		z=0;
		#50 x=1'b1;
			y=1'b0;
			z=1'b0;
		#50 x=1'b1;
			y=1'b1;
			z=1'b0;
		#50 x=1'b1;
			y=1'b1;
			z=1'b1;
	end
	initial #200 $finish;
endmodule