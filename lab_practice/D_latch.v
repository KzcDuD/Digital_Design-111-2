module D_latch(Q,D,En);
    output Q;
    input D,En;
    reg Q;

    always @(En,D)
        if(En) Q<=D;
endmodule