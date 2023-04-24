module tb_MUX8x1;
reg A,B,C,D;
wire F;
mux_8x1_beh uut(
.A(A),
.B(B),
.C(C),
.D(D),
.F(F)
);
initial begin
		// Initialize Inputs
		A=0;
		B=0;
		C=0;
		D=0;
		#50 A=1'b 0;
		   B=1'b 0;
		   C=1'b 1;
	   	   D=1'b 0;
	 	#50 A=1'b 1;
		   B=1'b 1;
		   C=1'b 0;
		   D=1'b 1;
		#50 A=1'b 1;
            B=1'b 0;
            C=1'b 1;
            D=1'b 1;
		#50 A=1'b 0;
             B=1'b 0;
             C=1'b 0;
             D=1'b 0;
		
	end
	initial #300 $finish;
endmodule