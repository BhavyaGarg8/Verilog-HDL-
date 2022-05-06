`timescale 1ns / 1ns

// it is implemented using two 4:2 priority encoder

module encoder8x3(output [2:0] Y, input [7:0] I);
  wire [1:0] out0;
  wire [1:0] out1; // output ports for 4:2 encoders
  
  encoder4x2 en0(out0, I[3:0]);
  encoder4x2 en1(out1, I[7:4]);

  assign Y[2] = (~I[0])&(~I[1])&(~I[2])&(~I[3]);

  assign Y[0] = (out1[0]&Y[2]) | (out0[0]&(~Y[2]));
  assign Y[1] = (out1[1]&Y[2]) | (out0[1]&(~Y[2]));
  

endmodule




module encoder4x2(output [1:0] Y, input [3:0] I);
  wire I0bar, I1bar, I2bar ;
  wire out;

  not g0(I0bar, I[0]);
  not g1(I1bar, I[1]);
  not g2(I2bar, I[2]);
  and g3(Y[1], I0bar, I1bar);
  or g4(out, I2bar, I[1]);
  and g5(Y[0], I0bar, out);

endmodule

