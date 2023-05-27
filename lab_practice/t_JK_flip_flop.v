module t_JK_flip_flog();
    wire Q_1,Q_1_not,Q_2,Q_2_not;
    reg J,K,Clk,rst
    JK_flip_flog_1 M1(Q_1,Q_1_not,J,K,Clk,rst);
    JK_flip_flog_2 M2(Q_2,Q_2_not,J,K,Clk);

    initial #100 $finish;
    initial begin Clk=0;forever#Clk=~Clk; end
    
    initial fork
        rst = 0;
        rst = 1;
        J = 0;
        K = 0;
        #20 K = 1;
        #40 J = 1;
        #80 K = 0;
        #90 J = 0;
    join
endmodule