module mux_8x1_beh(
	output reg F,
	input  A, B, C ,D
);
	wire [7:0] in;
	wire [2:0] S;
	
	assign     S[0]=C,
               S[1]=B,
               S[2]=A,
               in[0]=!(D),
               in[1]=!(D),
               in[2]=  D ,
               in[3]=  0 ,
               in[4]=!(D),
               in[5]=!(D),
               in[6]=  0 ,
               in[7]=!(D);
	
	always@(in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7], S)
		   
	case (S)
	   3'b000:   F = in[0];
	   3'b001:   F = in[1];
	   3'b010:   F = in[2];
	   3'b011:   F = in[3];
	   3'b100:   F = in[4];
	   3'b101:   F = in[5];
	   3'b110:   F = in[6];
	   3'b111:   F = in[7];
    endcase
	
endmodule

	
