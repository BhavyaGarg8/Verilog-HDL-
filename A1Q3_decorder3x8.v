`timescale 1ns / 1ns


module decorder3x8(Do, Din);
    
    input [2:0] Din;
    output [7:0] Do;
    wire d2bar;
    not g1(d2bar, Din[2]);

    decoder2x4 dd0(Do[3:0], Din[1:0], d2bar);
    decoder2x4 dd1(Do[7:4], Din[1:0], Din[2]);
        
    
endmodule

// code of 2 to 4 decoder 
// if enchancer is 0 then output is 0000.
module decoder2x4(Do, Din, En);
    input En;
    input [1:0] Din;
    output reg [3:0]Do;
    
    
    always @ (En or Din)
    begin
        if (En)
        begin
            case (Din)
                2'b00: Do = 4'b0001;
                2'b01: Do = 4'b0010;
                2'b10: Do = 4'b0100;
                2'b11: Do = 4'b1000;
                default: $display("Error!");
            endcase
        end
        else
           Do = 4'b0000;
        
            
    end
endmodule
