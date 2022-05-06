`timescale 1ns / 1ns
`include "A1Q4_encoder8x3.v"

module encoder8x3_tb;
    reg [7:0] I;
    wire [2:0] Y;
    
    encoder8x3 uut(
        .Y(Y),
        .I(I)
    );
    initial begin
        $dumpfile("A1Q4_encoder8x3_tb.vcd");
        $dumpvars(0, encoder8x3_tb);
        // Initialize Inputs
        
        I =8'b00000001; #5;
        $display("Input: %b",I);
        $display("Output : %b\n\n",Y);

        I =8'b01011000; #5;
        $display("Input: %b",I);
        $display("Output : %b\n\n",Y);

        I =8'b10100000; #5;
        $display("Input: %b",I);
        $display("Output : %b\n\n",Y);

        I =8'b11100000; #5;
        $display("Input: %b",I);
        $display("Output : %b\n\n",Y);

        I =8'b10000100; #5;
        $display("Input: %b",I);
        $display("Output : %b\n\n",Y);
        
        
        $display("Test Complete");
        $finish;
    end
endmodule