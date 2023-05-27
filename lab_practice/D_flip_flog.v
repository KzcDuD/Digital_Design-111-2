module D_flip_flop(Q,D,Clk);
    output Q;
    input D,Clk;
    reg Q;
    always @(posedge Clk)
        Q<=D;
endmodule