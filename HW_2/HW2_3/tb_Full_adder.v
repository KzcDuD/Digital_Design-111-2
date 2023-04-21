
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/10 19:42:25
// Design Name: 
// Module Name: t_Full_adder1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module t_Full_adder();
reg x,y,z;
wire s,c;
   Full_adder1 uut(
   .x(x),
   .y(y),
   .z(z),
   .s(s),
   .c(c)
   );
initial begin
z=0;
y=0;
x=0;
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