module JK_flip_flog_1(Q,J,K,Clk,rst);
    output reg Q;
    input J,K,Clk,rst;
    wire D;

    assign xor(D,J,K);
    D_flip_flop_AR M0(Q,D,Clk,rst);
endmodule

module JK_flip_flog_2(Q,J,K,Clk);
    output reg Q;
    input J,K,Clk,rst;

    always @ (posedge Clk)
    case ({J,K})
        2'b00:Q<=Q;
        2'b01:Q<=1'b0;
        2'b11:Q<=1'b1;
        2'b10:Q<=~Q;
    endcase
endmodule