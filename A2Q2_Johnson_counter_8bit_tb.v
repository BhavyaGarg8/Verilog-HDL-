`timescale 1ns/1ns
`include "A2Q2_Johnson_counter_8bit.v"

module Johnson_counter_8bit_tb;
    reg clk;
    reg reset;
    wire[7:0] count;
    

    Johnson_counter_8bit uut( 
                   .clk(clk),
                   .reset(reset),
                   .count(count)
               );
    always #5 clk=~clk;
    initial begin
        $dumpfile("A2Q2_Johnson_counter_8bit_tb.vcd");
        $dumpvars(0, Johnson_counter_8bit_tb);
         // initialize inputs
         
        clk= 1'b0;
        reset= 1'b0;
        #2;
        reset = 1'b1;
        #8;
        reset = 1'b0;
        
        #175 ;
        reset = 1'b1;

        #25
        reset = 1'b0;
        $display("Test Complete");
        $finish;

        end 
    
endmodule