`timescale 1ns/1ns
module Gray_code_counter(input reset,input I,output reg Y);

parameter S0 = 3'b000,S1 = 3'b001,S2 = 3'b011,S3 = 3'b010;
parameter S4 = 3'b110,S5 = 3'b111,S6 = 3'b101,S7 = 3'b100;

reg [7:0] state ;

//----------reset---------
always @ (reset)
begin
  state <= #1 S0;
  Y <= 0;
end

//-----------state Change----------
always @ (posedge I)
begin : State_change
  case(state)
  S0 : state <= #1 S1;
  
  S1 : state <= #1 S2;

  S2 : state <= #1 S3;

  S3 : state <= #1 S4;

  S4 : state <= #1 S5;

  S5 : state <= #1 S6;

  S6 : state <= #1 S7;

  S7 : state <= #1 S0;

  default : state <= #1 S0;
  endcase
end

//--------Output-------------
always @ (posedge I)
begin : Output
  if (state == S7) begin
  Y <= 1;
  end else begin
  Y <= 0;
  end
end

endmodule