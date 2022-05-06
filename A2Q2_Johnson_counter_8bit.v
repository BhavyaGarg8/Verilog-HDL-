`timescale 1ns/1ns 

module Johnson_counter_8bit (clk, reset, count);
  input clk;
  input reset;
  output [7:0] count;
  reg [7:0] count_temp;

  always @ (negedge clk or posedge reset) begin
    if (reset == 1'b1) begin
      count_temp = 8'b00000000;
    end
    else if (clk == 1'b0) begin
      count_temp[1] <= count_temp[0];
      count_temp[2] <= count_temp[1];
      count_temp[3] <= count_temp[2];
      count_temp[4] <= count_temp[3];
      count_temp[5] <= count_temp[4];
      count_temp[6] <= count_temp[5];
      count_temp[7] <= count_temp[6];
      count_temp[0] <= ~count_temp[7];
    end
  end

  assign count = count_temp;
endmodule