module structural_mod (A, B, C, D, X, Y, Z, Y_out);
  input A, B, C ,D ,X ,Y, Z;
  output Y_out;
  wire AB, CD, XY, ABCD, ABCDXY;
  or gate1(AB, A, B);
  or gate2(CD, C, D);
  or gate3(XY, X, Y);
  and gate4(ABCD, AB, CD);
  and gate5(ABCDXY, ABCD, XY);
  and gate6(ABCDXY, Z, Y_out);
endmodule
