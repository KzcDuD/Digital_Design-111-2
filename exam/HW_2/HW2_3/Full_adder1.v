module Full_adder1(
	input x,y,z,
	output s,c
	);
	
	wire[7:0]D_wire;
	Decoder_3x8 uut(
		.x(x),
		.y(y),
		.z(z),
		.D(D_wire)
	);
	assign  s= D_wire[1]|D_wire[2]|D_wire[4]|D_wire[7];
	assign  c=D_wire[3]|D_wire[5]|D_wire[6]|D_wire[7];
endmodule