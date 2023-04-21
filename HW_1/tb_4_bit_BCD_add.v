module tb_HW_add ;
    
    reg A,B,C,D;
    wire W,X,Y,Z;
   

    HW_add M1(A, B, C, D, W, X, Y, Z);

    initial begin
         A = 1'b0; B = 1'b0;C=1'b0;D=1'b0;
        #10 A = 1'b0; B = 1'b0;C=1'b0;D=1'b1;
        #10 A = 1'b0; B = 1'b0;C=1'b1;D=1'b0;
        #10 A = 1'b0; B = 1'b0;C=1'b1;D=1'b1;
        #10 A = 1'b0; B = 1'b1;C=1'b0;D=1'b0;
        #10 A = 1'b0; B = 1'b1;C=1'b0;D=1'b1;
        #10 A = 1'b0; B = 1'b1;C=1'b1;D=1'b0;
        #10 A = 1'b0; B = 1'b1;C=1'b1;D=1'b1;
        #10 A = 1'b1; B = 1'b0;C=1'b0;D=1'b0;
        #10 A = 1'b1; B = 1'b0;C=1'b0;D=1'b1;
    end
initial #100 $finish;  
      
endmodule

