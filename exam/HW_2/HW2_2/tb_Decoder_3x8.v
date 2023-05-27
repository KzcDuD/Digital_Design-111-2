module tb_Decoder_3x8;
reg z,y,x;
wire [7:0] D;
Decoder_3x8 uut(
.z(z),
.y(y),
.x(x),
.D(D)
);
initial begin
		// Initialize Inputs
		z= 0;
		y = 0;
		x = 0;
		#50 z = 1'b0;
			y = 1'b1;
			x = 1'b0;
		#50 z = 1'b0;
			y = 1'b1;
			x = 1'b1;
		#50 z = 1'b1;
			y = 1'b1;
			x = 1'b0;
		#50 z = 1'b1;
			y = 1'b1;
			x = 1'b1;
		#50 z = 1'b0;
			y = 1'b0;
			x = 1'b1;
		
	end
	initial #300 $finish;
endmodule
