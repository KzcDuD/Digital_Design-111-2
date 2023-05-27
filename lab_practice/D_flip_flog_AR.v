module D_flip_flop_AR(Q,D,Clk,rst);
    reg output Q;
    input D,Clk,rst;

    always @(posedge Clk , negedge rst)
        if(rst==0) Q<=1'b0;
        else Q<=D;
emdmodule