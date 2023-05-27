module tb_Mul_4x3;
reg [2:0] A;
reg [3:0] B;
wire[6:0] C;
Mul_4x3 uut(
.C(C),
.A(A),
.B(B)
);
initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		#50 A = 3'b000;
		        B = 4'b0001;
		#50 A = 3'b001;
		        B = 4'b0011;
		#50 A = 3'b100;
		        B = 4'b0001;
		#50 A = 3'b010;
		        B = 4'b0100;
	end
	initial #300 $finish;
endmodule
