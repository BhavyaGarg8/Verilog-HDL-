`timescale 1ns/1ns

module eight_bit_add_sub( a,b,opcode,sum,ovf);

input [7:0] a;
input [7:0] b;
input opcode;
output [7:0] sum;
output ovf;

wire [7:0] carry_out; 

one_bit_add_sub as1(a[0],b[0],opcode,carry_out[0],sum[0], opcode);
one_bit_add_sub as2(a[1],b[1],carry_out[0],carry_out[1],sum[1], opcode);
one_bit_add_sub as3(a[2],b[2],carry_out[1],carry_out[2],sum[2],opcode);
one_bit_add_sub as4(a[3],b[3],carry_out[2],carry_out[3],sum[3],opcode);
one_bit_add_sub as5(a[4],b[4],carry_out[3],carry_out[4],sum[4],opcode);
one_bit_add_sub as6(a[5],b[5],carry_out[4],carry_out[5],sum[5],opcode);
one_bit_add_sub as7(a[6],b[6],carry_out[5],carry_out[6],sum[6],opcode);
one_bit_add_sub as8(a[7],b[7],carry_out[6],carry_out[7],sum[7],opcode);

assign ovf = carry_out[7] ^ carry_out[6];

endmodule
 

module one_bit_add_sub( 
input  a,
input  b,
input  cin,
output cout,
output sum,
input opcode
);

wire a,b,cin, opcode;
wire  cout,sum;
wire b1;
assign b1= b ^ opcode;

assign sum = a ^ b1 ^ cin ;
assign cout = (a & b1) | (b1 & cin) | (a & cin) ;


endmodule
