`timescale 1ns/1ns
`include "A3Q1_seq1010.v"

module seq1010_tb();

    reg clk,reset,in;
    wire out;

    seq1010  model(clk,reset,in,out);
    

    initial 
    begin 
        
        reset =0; clk=0;in=0;
        $dumpfile("A3Q1_seq1010_tb.vcd");
        $dumpvars(0,seq1010_tb);

        
    //  $monitor($time, , ,"clk=%b",clk,,"out=%b",out,,"reset=%b",reset,,"in=%b",in);

       

        #4;
        in=1'b1;
        #4
        // $display("%b",out);
         in=1'b0;
        #4
          //  $display("%b",out);
         in=1'b1;
        #4
          //  $display("%b",out);
         in=1'b0;
        #4
          //  $display("%b",out);
         in=1'b1;
        #4
          //  $display("%b",out);
         in=1'b0;
        #4
          //  $display("%b",out);
         in=1'b1;
        #4
          //  $display("%b",out);
         in=1'b0;
        #4
          //  $display("%b",out);
         in=1'b0;
        #4
          //  $display("%b",out);
         in=1'b1;
        #4
          //  $display("%b",out);
        in=1'b1;
         #4
          //  $display("%b",out);
         in=1'b0;
        #4
          //  $display("%b",out);
         in=1'b1;
        #4
          //  $display("%b",out);
         in=1'b0;
        
          //  $display("%b",out);
        #4
          //  $display("%b",out);
         in=1'b0;
        #4
          //  $display("%b",out);
         in=1'b1;
        #4
          //  $display("%b",out);
         in=1'b0;
        
          //  $display("%b",out);
        

        #2 $finish;
        
    end

    always
        #2 clk=~clk;
    

    

    

endmodule



