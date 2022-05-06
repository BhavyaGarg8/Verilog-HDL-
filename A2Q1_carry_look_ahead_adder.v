`timescale 1ns/1ns 

module carry_look_ahead_adder ( carry_out, S, carry_in, a,b);

  output carry_out;
  output [7:0] S;     // sum
  input carry_in;    
  input [7:0] a,b;    // 4 bits of each number

  wire [7:0] g,p;      // wires for generators and propagators
  wire [7:0] c;        // wires for carries
 
  assign g = a & b;

  assign p = a ^ b;    
  wire P,G;

  assign c[0] = carry_in;
  assign c[1] = g[0] | (p[0] & c[0]);
  assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c[0]);
  assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c[0]);

  assign P = p[3] & p[2] & p[1] & p[0];
  assign G = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);

  assign c[4] = G | (P & c[0]);
  assign c[5] = g[4] | (p[4] & G) | (p[4] & P & c[0]);
  assign c[6] = g[5] | (p[5] & g[4]) | (p[5] & p[4] & G) | (p[5] & p[4] & P & c[0]);
  assign c[7] = g[6] | (p[6] & g[5]) | (p[6] & p[5] & g[4]) | (p[6] & p[5] & p[4] & G) | (p[6] & p[5] & p[4] & P & c[0]);

  assign carry_out = g[7] | p[7] & (g[6] | (p[6] & g[5]) | (p[6] & p[5] & g[4]) | (p[6] & p[5] & p[4] & G) | (p[6] & p[5] & p[4] & P & c[0]));
  assign S = p^c;
endmodule


// module carry_look_adder_8bit (carry_out,S,carry_in,a,b);

// output carry_out;
// output [7:0] S;
// input carry_in;
// input [7:0] a,b;

// wire out1;

// carry_look_adder_4bit X (out1, S[3:0], carry_in, a[3:0], b[3:0] );
// carry_look_adder_4bit Y (carry_out, S[7:4], out1, a[7:4], b[7:4]);



// endmodule