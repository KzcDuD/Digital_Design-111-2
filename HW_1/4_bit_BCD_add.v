module HW_add (A, B, C, D, W, X, Y, Z);
  output W,X,Y,Z;
  input	A,B,C,D;
  wire w1,w2;
 
  and G1(w1,B,C);
  and G2(w2,(!B),(!C));
  or G3(W,A,B,C);
  or G4(X,w1,w2);
  not G5(Y,C);
  or G6(Z,D,0);

endmodule