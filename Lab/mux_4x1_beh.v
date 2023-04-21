// ; 以一個功能及演算法層次來表示數位電路，大多用來描述序向電路。
// ; 使用 always關鍵字，其後跟著一個選項事件控制式與一串程序式指定敘述
// ; 程序式指定敘述之目標輸出必須為具有reg的資料型態
// ; wire資料類型中一個指定目標的輸出可能連續不斷地更新，但reg資料型態則保留它的值直到一個新的值被指定
module mux_4x1_beh(
  output reg	m_out,
  input 		in_0, in_1, in_2, in_3,
  input [1: 0]	select
);

  always @ (in_0, in_1, in_2, in_3, select)
    case (select)
       2'b00:	m_out = in_0;
       2'b01:	m_out = in_1;
       2'b10:	m_out = in_2;
       2'b11:	m_out = in_3;
    endcase
  endmodule
