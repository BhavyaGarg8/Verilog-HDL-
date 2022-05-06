`timescale 1ns/1ns
`include "A1Q1_one_bit_adder.v"



module eight_bit_adder(i1,i2,s,c_out);

input wire [7:0]i1;
input wire [7:0]i2;
output wire [7:0]s;
output wire c_out;

wire [6:0]cout;
wire c_in;
assign c_in=0;


    one_bit_adder adder1(i1[0],i2[0],c_in,s[0],cout[0]);
    one_bit_adder adder2(i1[1],i2[1],cout[0],s[1],cout[1]);
    one_bit_adder adder3(i1[2],i2[2],cout[1],s[2],cout[2]);
    one_bit_adder adder4(i1[3],i2[3],cout[2],s[3],cout[3]);
    one_bit_adder adder5(i1[4],i2[4],cout[3],s[4],cout[4]);
    one_bit_adder adder6(i1[5],i2[5],cout[4],s[5],cout[5]);
    one_bit_adder adder7(i1[6],i2[6],cout[5],s[6],cout[6]);
    one_bit_adder adder8(i1[7],i2[7],cout[6],s[7],c_out);
    

endmodule