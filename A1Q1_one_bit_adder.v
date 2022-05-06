`timescale 1ns/1ns

module one_bit_adder(i1,i2,cin,s,cout);

input wire i1,i2,cin;
output reg  s,cout;

always @(i1 or i2 or cin)
begin
     s = cin^(i1^i2);
     cout= (i1&i2)| (i2&cin) | (cin & i1);
end


endmodule