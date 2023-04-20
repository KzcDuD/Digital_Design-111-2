module bit_compare(
	output lt,eq,gt,
	input [3:0] A,B
);
	assign lt=(A<B);
	assign eq=(A==B);
	assign gt=(A>B);

endmodule