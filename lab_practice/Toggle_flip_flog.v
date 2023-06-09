module Toggle_flip_flog_1(Q,T,Clk,rst);
    output Q;
    input T,Clk;
    reg Q;

    always @(posedge Clk ,negedge rst)
    if(!rst) Q<=1'b0;
    else if(T) Q<=!Q;
endmodule

module Toggle_flip_flog_2(Q,T,Clk,rst);
    output Q;
    input T,Clk,rst;
    reg Q;
    wire DT;

    assign DT =T^Q;
    D_flip_flop_AR M0(Q,DT,Clk,rst);

endmodule
module Toggle_flip_flog_3(Q,T,Clk,rst);
    output Q;
    input T,Clk;
    reg Q;

    always @(posedge Clk ,negedge rst)
    if(!rst) Q<=1'b0;
    else Q<=Q^T;

endmodule