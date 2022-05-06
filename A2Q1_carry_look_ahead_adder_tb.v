`timescale 1ns/1ns
`include "A2Q1_carry_look_ahead_adder.v"

module carry_look_ahead_adder_tb;
    reg[7:0] a,b;
    reg carry_in;
    wire[7:0] S;
    wire carry_out;

    carry_look_ahead_adder uut( 
                   .carry_out(carry_out),
                   .S(S),
                   .carry_in(carry_in),
                   .a(a),
                   .b(b)
               );
    
    initial begin
        $dumpfile("A2Q1_carry_look_ahead_adder_tb.vcd");
        $dumpvars(0, carry_look_ahead_adder_tb);
         // initialize inputs

         a = 8'b10100110;
         b = 8'b10100110;
         carry_in = 1'b0;
         #5;
         $display("Input:\n A = %b \n B = %b \n Carry_in = ", a, b, carry_in);
         $display("Output:\n Sum = %b \n Carry_out = %b\n",S,carry_out);

         a = 8'b10101010;
         b = 8'b10101111;
         carry_in = 1'b1;
         #5;
         $display("Input:\n A = %b \n B = %b \n Carry_in = ", a, b, carry_in);
         $display("Output:\n Sum = %b \n Carry_out = %b\n",S,carry_out);

         a = 8'b10101011;
         b = 8'b11100100;
         carry_in = 1'b0;
         #5;
         $display("Input:\n A = %b \n B = %b \n Carry_in = ", a, b, carry_in);
         $display("Output:\n Sum = %b \n Carry_out = %b\n",S,carry_out);

         a = 8'b11100111;
         b = 8'b10100110;
         carry_in = 1'b1;
         #5;
         $display("Input:\n A = %b \n B = %b \n Carry_in = ", a, b, carry_in);
         $display("Output:\n Sum = %b \n Carry_out = %b\n",S,carry_out);

         a = 8'b00100010;
         b = 8'b10110110;
         carry_in = 1'b1;
         #5;
         $display("Input:\n A = %b \n B = %b \n Carry_in = ", a, b, carry_in);
         $display("Output:\n Sum = %b \n Carry_out = %b\n",S,carry_out);

         a = 8'b11100111;
         b = 8'b10101010;
         carry_in = 1'b0;
         #5;
         $display("Input:\n A = %b \n B = %b \n Carry_in = ", a, b, carry_in);
         $display("Output:\n Sum = %b \n Carry_out = %b\n",S,carry_out);

         a = 8'b10000000;
         b = 8'b10100111;
         carry_in = 1'b1;
         #5;
         $display("Input:\n A = %b \n B = %b \n Carry_in = ", a, b, carry_in);
         $display("Output:\n Sum = %b \n Carry_out = %b\n",S,carry_out);

         a = 8'b10110111;
         b = 8'b11111111;
         carry_in = 1'b0;
         #5;
         $display("Input:\n A = %b \n B = %b \n Carry_in = ", a, b, carry_in);
         $display("Output:\n Sum = %b \n Carry_out = %b\n",S,carry_out);

         a = 8'b10100100;
         b = 8'b00100111;
         carry_in = 1'b1;
         #5;
         $display("Input:\n A = %b \n B = %b \n Carry_in = ", a, b, carry_in);
         $display("Output:\n Sum = %b \n Carry_out = %b\n",S,carry_out);


         a = 8'b10001110;
         b = 8'b10100111;
         carry_in = 1'b0;
         #5;
         $display("Input:\n A = %b \n B = %b \n Carry_in = ", a, b, carry_in);
         $display("Output:\n Sum = %b \n Carry_out = %b\n",S,carry_out);

         a = 8'b10111100;
         b = 8'b11100111;
         carry_in = 1'b1;
         #5;
         $display("Input:\n A = %b \n B = %b \n Carry_in = ", a, b, carry_in);
         $display("Output:\n Sum = %b \n Carry_out = %b\n",S,carry_out);


         a = 8'b10100100;
         b = 8'b11101110;
         carry_in = 1'b1;
         #5;
         $display("Input:\n A = %b \n B = %b \n Carry_in = ", a, b, carry_in);
         $display("Output:\n Sum = %b \n Carry_out = %b\n",S,carry_out);

         a = 8'b10101010;
         b = 8'b01010101;
         carry_in = 1'b1;
         #5;
         $display("Input:\n A = %b \n B = %b \n Carry_in = ", a, b, carry_in);
         $display("Output:\n Sum = %b \n Carry_out = %b\n",S,carry_out);


         a = 8'b10101010;
         b = 8'b01010101;
         carry_in = 1'b0;
         #5;
         $display("Input:\n A = %b \n B = %b \n Carry_in = ", a, b, carry_in);
         $display("Output:\n Sum = %b \n Carry_out = %b\n",S,carry_out);


         a = 8'b11100110;
         b = 8'b10100000;
         carry_in = 1'b1;
         #5;
         $display("Input:\n A = %b \n B = %b \n Carry_in = ", a, b, carry_in);
         $display("Output:\n Sum = %b \n Carry_out = %b\n",S,carry_out);


         
        end 

endmodule               

