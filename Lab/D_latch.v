/ Description of D latch (transparent latch)
// See Fig. 5-6 

module D_latch (Q, D, En);
  output 	Q;
  input	D, En;
  reg 	Q;

  always @ (En, D)	
    if (En) Q <= D;	// Alternative: if (En == 1) Q <= D;
endmodule

// Description of D flip-flop
// See Fig. 5-11 
module D_flip_flop (Q, D, Clk);
  output 	Q;
  input	D, Clk;
  reg 	Q;

  always @ (posedge Clk)	
    Q <= D;	 
endmodule

// Description of D flip-flop
// with active-low asynchronous reset 
module D_flip_flop_AR (Q, D, Clk, rst);
  output 	Q;
  input	D, Clk, rst;
  reg 	Q;

  always @ (posedge Clk, negedge rst)	
    if (rst == 0) Q <= 1'b0;
    else Q <= D;	 
endmodule
