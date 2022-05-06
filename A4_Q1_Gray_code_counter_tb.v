`timescale 1ns/1ns
`include "A4_Q1_Gray_code_counter.v"

module Gray_code_counter_tb;
    reg reset;
    reg I;
    wire Y;

    Gray_code_counter uut( 
                   .reset(reset),
                   .I(I),
                   .Y(Y)
               );
    

    initial begin
        $dumpfile("A4_Q1_Gray_code_counter_tb.vcd");
        $dumpvars(0, Gray_code_counter_tb);
        // initialize inputs

        reset = 1'b1;
        I = 1'b0;
        #3;
        reset = 1'b0;
        #2;
        I = 1'b1;
        #5;
        I = 1'b0;
        #10;
        I = 1'b1;
        #5;
        I = 1'b0;
        #20;
        I = 1'b1;
        #5;
        I = 1'b0;
        #10;
        I = 1'b1;
        #5;
        I = 1'b0;
        #15;
        I = 1'b1;
        #5;
        I = 1'b0;
        #10;
        I = 1'b1;
        #5;
        I = 1'b0;
        #5;
        I = 1'b1;
        #5;
        I = 1'b0;
        #10;
        I = 1'b1;
        #5;
        I = 1'b0;
        #10;
        I = 1'b1;
        #5;
        I = 1'b0;
        #10;
        I = 1'b1;
        #5;
        I = 1'b0;
        #10;
        I = 1'b1;
        #5;

        $finish;
        end 

endmodule