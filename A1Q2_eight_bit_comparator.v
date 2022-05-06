`timescale 1ns/1ns
`include "A1Q2_one_bit_comparator.v"

module eight_bit_comparator(input [7:0] A,input [7:0] B,output L, output E, output G);
  
  wire [7:0] Lo,Eo,Go; // used as output ports for onebitcomp
  wire l1,l2,g3,g4,e1;

  one_bit_comparator cc7(A[7], B[7], Lo[7], Eo[7], Go[7]);
  one_bit_comparator cc6(A[6], B[6], Lo[6], Eo[6], Go[6]);
  one_bit_comparator cc5(A[5], B[5], Lo[5], Eo[5], Go[5]);
  one_bit_comparator cc4(A[4], B[4], Lo[4], Eo[4], Go[4]);
  one_bit_comparator cc3(A[3], B[3], Lo[3], Eo[3], Go[3]);
  one_bit_comparator cc2(A[2], B[2], Lo[2], Eo[2], Go[2]);
  one_bit_comparator cc1(A[1], B[1], Lo[1], Eo[1], Go[1]);
  one_bit_comparator cc0(A[0], B[0], Lo[0], Eo[0], Go[0]);
  
  // this is how these are connected 
  assign E = Eo[7]&Eo[6]&Eo[5]&Eo[4]&Eo[3]&Eo[2]&Eo[1]&Eo[0];

  assign e1 =  Eo[7]&Eo[6]&Eo[5]&Eo[4];

  assign l1 = (Lo[7]) | (Lo[6]&Eo[7]) | (Lo[5]&Eo[7]&Eo[6]) | (Lo[4]&Eo[7]&Eo[6]&Eo[5]);
  assign l2 = (Lo[3]) | (Lo[2]&Eo[3]) | (Lo[1]&Eo[3]&Eo[2]) | (Lo[0]&Eo[3]&Eo[2]&Eo[1]);
  assign L = l1 | (l2&e1);

  assign g1 = (Go[7]) | (Go[6]&Eo[7]) | (Go[5]&Eo[7]&Eo[6]) | (Go[4]&Eo[7]&Eo[6]&Eo[5]);
  assign g2 = (Go[3]) | (Go[2]&Eo[3]) | (Go[1]&Eo[3]&Eo[2]) | (Go[0]&Eo[3]&Eo[2]&Eo[1]);
  assign G = g1 | (g2&e1);

endmodule