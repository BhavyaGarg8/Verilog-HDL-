`timescale 1ns/1ns
`include "A4_Q2_8bit_add-sub.v"


module eight_bit_add_sub_tb();
reg signed [7:0] a;
reg signed [7:0] b;
reg opcode;
wire signed [7:0] sum;
wire ovf;

eight_bit_add_sub model(a,b,opcode,sum,ovf);

initial begin
 $dumpfile("A4_Q2_8bit_add-sub_tb.vcd");
 $dumpvars(0,eight_bit_add_sub_tb);

 a = 120;
 b = 45;
 opcode = 0;
 #5
 $display("A =%d \nB =%d \nopcode = %d \nsum =%d  overflow = %d\n",a,b,opcode,sum,ovf);
 
 a = 11;
 b = 33;
 opcode = 0;
 #5
 $display("A =%d \nB =%d \nopcode = %d \nsum =%d  overflow = %d\n",a,b,opcode,sum,ovf);

a = -12;
b = 90;
opcode = 0;
 #5
 $display("A =%d \nB =%d \nopcode = %d \nsum =%d  overflow = %d\n,",a,b,opcode,sum,ovf);

a = 120;
b = 45;
opcode = 1;
 #5
 $display("A =%d \nB =%d \nopcode = %d \nsum =%d  overflow = %d\n",a,b,opcode,sum,ovf);

a = 20;
b = -45;
opcode = 0;
 #5
 $display("A =%d \nB =%d \nopcode = %d \nsum =%d  overflow = %d\n",a,b,opcode,sum,ovf);

a = 99;
b = 5;
opcode = 1;
 #5
 $display("A =%d \nB =%d \nopcode = %d \nsum =%d  overflow = %d\n",a,b,opcode,sum,ovf);

a = -10;
b = -99;
opcode = 0;
 #5
 $display("A =%d \nB =%d \nopcode = %d \nsum =%d  overflow = %d\n",a,b,opcode,sum,ovf);

a = 120;
b = 45;
opcode = 0;
#5
$display("A =%d \nB =%d \nopcode = %d \nsum =%d  overflow = %d\n",a,b,opcode,sum,ovf);

a = 67;
b = -129;
opcode = 0;
 #5
 $display("A =%d \nB =%d \nopcode = %d \nsum =%d  overflow = %d\n",a,b,opcode,sum,ovf);

a = 10;
 b = 89;
 opcode = 1;
 #5
 $display("A =%d \nB =%d \nopcode = %d \nsum =%d  overflow = %d\n",a,b,opcode,sum,ovf);

a = 78;
 b = -135;
 opcode = 1;
 #5
 $display("A =%d \nB =%d \nopcode = %d \nsum =%d  overflow = %d\n",a,b,opcode,sum,ovf);

a = 112;
 b = 35;
 opcode = 1;
 #5
 $display("A =%d \nB =%d \nopcode = %d \nsum =%d  overflow = %d\n",a,b,opcode,sum,ovf);

a = 0;
 b = 4;
 opcode = 1;
 #5
 $display("A =%d \nB =%d \nopcode = %d \nsum =%d  overflow = %d\n",a,b,opcode,sum,ovf);

a = 104;
 b = 24;
 opcode = 0;
 #5
 $display("A =%d \nB =%d \nopcode = %d \nsum =%d  overflow = %d\n",a,b,opcode,sum,ovf);

end
endmodule
