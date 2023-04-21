module Decoder_3x8(
	input x,y,z,
	output [7:0] D
	);
	wire [2:0] D0_wire,D1_wire,D2_wire,D3_wire,D4_wire,D5_wire,D6_wire,D7_wire;
	
	and G0(D[0],D0_wire[0],D0_wire[1],D0_wire[2]);
	and G1(D[1],D1_wire[0],D1_wire[1],D1_wire[2]);
	and G2(D[2],D2_wire[0],D2_wire[1],D2_wire[2]);
	and G3(D[3],D3_wire[0],D3_wire[1],D3_wire[2]);
	and G4(D[4],D4_wire[0],D4_wire[1],D4_wire[2]);
	and G5(D[5],D5_wire[0],D5_wire[1],D5_wire[2]);
	and G6(D[6],D6_wire[0],D6_wire[1],D6_wire[2]);
	and G7(D[7],D7_wire[0],D7_wire[1],D7_wire[2]);
	
	not G8(z_out,z);
	not G9(y_out,y);
	not G10(x_out,x);
	
	assign D0_wire[0]=z_out;
	assign D0_wire[1]=y_out;
	assign D0_wire[2]=x_out;
	assign D1_wire[0]=z;
	assign D1_wire[1]=y_out;
	assign D1_wire[2]=x_out;
	assign D2_wire[0]=z_out;
	assign D2_wire[1]=y;
	assign D2_wire[2]=x_out;
	assign D3_wire[0]=z;
	assign D3_wire[1]=y;
	assign D3_wire[2]=x_out;
	assign D4_wire[0]=z_out;
	assign D4_wire[1]=y_out;
	assign D4_wire[2]=x;
	assign D5_wire[0]=z;
	assign D5_wire[1]=y_out;
	assign D5_wire[2]=x;
	assign D6_wire[0]=z_out;
	assign D6_wire[1]=y;
	assign D6_wire[2]=x;
	assign D7_wire[0]=z;
	assign D7_wire[1]=y;
	assign D7_wire[2]=x;
	
	endmodule