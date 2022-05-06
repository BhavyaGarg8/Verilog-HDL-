`timescale 1ns/1ns
`include "A1Q2_eight_bit_comparator.v"

module eight_bit_comparator_tb();

reg [7:0] A, B;
wire L, E, G;

eight_bit_comparator model(
    .A(A),
    .B(B),
    .L(L),
    .E(E),
    .G(G)
);

initial begin
    
    $dumpfile("A1Q2_eight_bit_comparator_tb.vcd");
    $dumpvars(0,eight_bit_comparator_tb);

    A= 8'b11000011;B=8'b11001011;
    #5;
    $display("1st input: %b",A);
    $display("2nd input: %b",B);
    $display("L : %b",L);
    $display("E : %b",E);
    $display("G : %b\n\n",G);
    
   
   

    A= 8'b01000011;B=8'b11000011;
    #5;
    $display("1st input: %b",A);
    $display("2nd input: %b",B);
    $display("L : %b",L);
    $display("E : %b",E);
    $display("G : %b\n\n",G);

    

    A= 8'b01000011;B=8'b10000011;
    #5;
    $display("1st input: %b",A);
    $display("2nd input: %b",B);
    $display("L : %b",L);
    $display("E : %b",E);
    $display("G : %b\n\n",G);

    

    A= 8'b01001011;B=8'b01001011;
    #5;
    $display("1st input: %b",A);
    $display("2nd input: %b",B);
    $display("L : %b",L);
    $display("E : %b",E);
    $display("G : %b\n\n",G);

   

    A= 8'b11001010;B=8'b11000011;
    #5;
    $display("1st input: %b",A);
    $display("2nd input: %b",B);
    $display("L : %b",L);
    $display("E : %b",E);
    $display("G : %b\n\n",G);


    A= 8'b01000011;B=8'b10100011;
    #5;
    $display("1st input: %b",A);
    $display("2nd input: %b",B);
    $display("L : %b",L);
    $display("E : %b",E);
    $display("G : %b\n\n",G);

     

    A= 8'b01000011;B=8'b11000011;
    #5;
    $display("1st input: %b",A);
    $display("2nd input: %b",B);
    $display("L : %b",L);
    $display("E : %b",E);
    $display("G : %b\n\n",G);


    A= 8'b01000000;B=8'b11000000;
    #5;
    $display("1st input: %b",A);
    $display("2nd input: %b",B);
    $display("L : %b",L);
    $display("E : %b",E);
    $display("G : %b\n\n",G);

     

    A= 8'b01001111;B=8'b00010011;
    #5;
    $display("1st input: %b",A);
    $display("2nd input: %b",B);
    $display("L : %b",L);
    $display("E : %b",E);
    $display("G : %b\n\n",G);

     

    A= 8'b01110001;B=8'b11000011;
    #5;
    $display("1st input: %b",A);
    $display("2nd input: %b",B);
    $display("L : %b",L);
    $display("E : %b",E);
    $display("G : %b\n\n",G);
     

    A= 8'b01000011;B=8'b01000011;
    #5;
    $display("1st input: %b",A);
    $display("2nd input: %b",B);
    $display("L : %b",L);
    $display("E : %b",E);
    $display("G : %b\n\n",G);

     
    A= 8'b01011111;B=8'b10000000;
    #5;
    $display("1st input: %b",A);
    $display("2nd input: %b",B);
    $display("L : %b",L);
    $display("E : %b",E);
    $display("G : %b\n\n",G);

   

    A= 8'b00000010;B=8'b01111111;
    #5;
    $display("1st input: %b",A);
    $display("2nd input: %b",B);
    $display("L : %b",L);
    $display("E : %b",E);
    $display("G : %b\n\n",G);

   

    A= 8'b11100000;B=8'b10000011;
    #5;
    $display("1st input: %b",A);
    $display("2nd input: %b",B);
    $display("L : %b",L);
    $display("E : %b",E);
    $display("G : %b\n\n",G);

    

    A= 8'b11111111;B=8'b00000000;
    #5;
    $display("1st input: %b",A);
    $display("2nd input: %b",B);
    $display("L : %b",L);
    $display("E : %b",E);
    $display("G : %b\n\n",G);


    $finish;
   


end

endmodule