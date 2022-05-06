`timescale 1ns / 1ns
`include "A1Q3_decorder3x8.v"

module decorder3x8_tb();
    reg [2:0] Din;
    wire [7:0] Do;
    
    decorder3x8 uut(
        .Do(Do), 
        .Din(Din) 
        );
    initial begin
        $dumpfile("A1Q3_decorder3x8_tb.vcd");
        $dumpvars(0, decorder3x8_tb);
        // Initialize Inputs

        Din =3'b000; #5;
        $display("Input: %b",Din);
        $display("Output : %b\n\n",Do);

        Din =3'b001; #5;
        $display("Input: %b",Din);
        $display("Output : %b\n\n",Do);

        Din =3'b010; #5;
        $display("Input: %b",Din);
        $display("Output : %b\n\n",Do);

        Din =3'b011; #5;
        $display("Input: %b",Din);
        $display("Output : %b\n\n",Do);

        Din =3'b100; #5;
        $display("Input: %b",Din);
        $display("Output : %b\n\n",Do);

        Din =3'b101; #5;
        $display("Input: %b",Din);
        $display("Output : %b\n\n",Do);

        Din =3'b110; #5;
        $display("Input: %b",Din);
        $display("Output : %b\n\n",Do);

        Din =3'b111; #5;
        $display("Input: %b",Din);
        $display("Output : %b\n\n",Do);
        
        
        $display("Test Complete");
        $finish;
    end
endmodule