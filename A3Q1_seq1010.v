module seq1010(clk,reset,in,out);

    input wire clk ,reset,in;
    output reg out;

    reg[1:0] curr,next;

    parameter S0 = 2'b00,
            S1 = 2'b01,
            S2 = 2'b10,
            S3 = 2'b11;

   

    always @(curr or in  )

    begin
       

    case(curr)

      
        S0: if (in == 1'b1)
                begin
                next = S1;
               out=1'b0;
                end
            else
                begin
                next = curr;
                out=1'b0;
                end
           
            
        S1: if (in == 1'b0)
                begin
                next = S2;
                out=1'b0;
                end
            else
                begin
                next = curr;
                out=1'b0;
                end
        S2: if (in == 1'b1)
                begin
                next = S3;
                out=1'b0;
                end    
                    else
                begin
                next = S0;
                out=1'b0;
                end
        S3: if (in == 1'b0)
                begin
                next = S2;
                out=1'b1;
                end
            else
                begin
                next = S1;
                out=1'b0;
                end
     default:
              next = S0; 
              
              
     

    endcase
    end

    always @(negedge clk)
    begin

        $write("%b",out);
    end

     always @(posedge clk  or negedge reset)
    begin
        if(reset)
            curr <= S0;
        else
            curr <= next;
    end

  

endmodule