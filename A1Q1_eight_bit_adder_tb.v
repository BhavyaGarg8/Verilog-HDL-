`timescale 1ns/1ns
`include "A1Q1_eight_bit_adder.v"

module eight_bit_adder_tb();

reg cin;
reg [7:0]i1,i2;
wire cout;
wire [7:0]s;

eight_bit_adder model(i1,i2,s,cout);

initial begin
    
    $dumpfile("A1Q1_eight_bit_adder_tb.vcd");
    $dumpvars(0,eight_bit_adder_tb);

    i1= 8'b11000011;i2=8'b11001011;
    #5;
    $display("1st input: %b",i1);
    $display("2nd input: %b",i2);
    $display(" sum is  : %b",s);
    $display("carry is : %b\n\n",cout);
   
   

     i1= 8'b01000011;i2=8'b11000011;
     #5;
    $display("1st input: %b",i1);
    $display("2nd input: %b",i2);
    $display(" sum is  : %b",s);
    $display("carry is : %b\n\n",cout);

    

     i1= 8'b01000011;i2=8'b10000011;
     #5;
    $display("1st input: %b",i1);
    $display("2nd input: %b",i2);
    $display(" sum is  : %b",s);
    $display("carry is : %b\n\n",cout);

    

     i1= 8'b01001011;i2=8'b11001111;
     #5;
    $display("1st input: %b",i1);
    $display("2nd input: %b",i2);
    $display(" sum is  : %b",s);
    $display("carry is : %b\n\n",cout);

   

     i1= 8'b11001010;i2=8'b11000011;
     #5;
    $display("1st input: %b",i1);
    $display("2nd input: %b",i2);
    $display(" sum is  : %b",s);
    $display("carry is : %b\n\n",cout);


     i1= 8'b01000011;i2=8'b10100011;
     #5;
    $display("1st input: %b",i1);
    $display("2nd input: %b",i2);
    $display(" sum is  : %b",s);
    $display("carry is : %b\n\n",cout);

     

     i1= 8'b01000011;i2=8'b11000011;
     #5;
    $display("1st input: %b",i1);
    $display("2nd input: %b",i2);
    $display(" sum is  : %b",s);
    $display("carry is : %b\n\n",cout);


     i1= 8'b01000000;i2=8'b11000000;
     #5;
    $display("1st input: %b",i1);
    $display("2nd input: %b",i2);
    $display(" sum is  : %b",s);
    $display("carry is : %b\n\n",cout);

     

     i1= 8'b01001111;i2=8'b00010011;
     #5;
    $display("1st input: %b",i1);
    $display("2nd input: %b",i2);
    $display(" sum is  : %b",s);
    $display("carry is : %b\n\n",cout);

     

     i1= 8'b01110001;i2=8'b11000011;
     #5;
    $display("1st input: %b",i1);
    $display("2nd input: %b",i2);
    $display(" sum is  : %b",s);
    $display("carry is : %b\n\n",cout);

     

     i1= 8'b01000011;i2=8'b01001001;
     #5;
    $display("1st input: %b",i1);
    $display("2nd input: %b",i2);
    $display(" sum is  : %b",s);
    $display("carry is : %b\n\n",cout);

     
     i1= 8'b01011111;i2=8'b10000000;
     #5;
    $display("1st input: %b",i1);
    $display("2nd input: %b",i2);
    $display(" sum is  : %b",s);
    $display("carry is : %b\n\n",cout);

   

     i1= 8'b00000010;i2=8'b01111111;
     #5;
    $display("1st input: %b",i1);
    $display("2nd input: %b",i2);
    $display(" sum is  : %b",s);
    $display("carry is : %b\n\n",cout);

   

     i1= 8'b11100000;i2=8'b10000011;
     #5;
    $display("1st input: %b",i1);
    $display("2nd input: %b",i2);
    $display(" sum is  : %b",s);
    $display("carry is : %b\n\n",cout);

    

     i1= 8'b11111111;i2=8'b00000000;
     #5;
    $display("1st input: %b",i1);
    $display("2nd input: %b",i2);
    $display(" sum is  : %b",s);
    $display("carry is : %b\n\n",cout);


    $finish;
   


end

endmodule