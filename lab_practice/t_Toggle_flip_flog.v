module t_Toggle_flip_flogs;
    wire Q_1,Q_2,Q_3;
    reg t_T,t_Clk,t_rst;
    Toggle_flip_flog_1 M1(Q_1,t_T,t_Clk,t_rst);
    Toggle_flip_flog_2 M2(Q_2,t_T,t_Clk,t_rst);
    Toggle_flip_flog_3 M3(Q_3,t_T,t_Clk,t_rst);

    initial #150 $finish;
    initial begin forever #5 t_Clk=!t_Clk; end
    initial fork
        t_T = 1;
        t_rst = 0;
        #22 t_rst = 1;
        #42 t_rst = 0;
        #62 t_rst = 1;

        #90 t_T = 0;
        #120 t_T = 1;
    join
endmodule