module MUX8x1(
	input A,B,C,D,
	output F
	);
assign F=(~B&~D)|(~A&B&~C&D)|(A&C&~D);
endmodule