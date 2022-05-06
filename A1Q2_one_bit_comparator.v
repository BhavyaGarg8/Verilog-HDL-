`timescale 1ns/1ns

module one_bit_comparator (input a, input b, output L, output E, output G);

wire s1, s2;

not X1(s1, a);
not X2 (s2, b);
and X3 (L,s1, b);
and X4 (G,s2, a);
xnor X5 (E, a, b);


endmodule