`timescale 1ns / 1ps


module freq_divider #(parameter DIVISOR = 2) (
        input freq_in,
        input rst,
        output freq_out
    );
    
    reg [DIVISOR-1 : 0] cntr;
    
    always@(posedge freq_in) begin
        
        if(rst) begin 
        
            cntr <= 0;
        
        end else begin
        
            cntr <= cntr + 1;
        
        end
        
    end
    
    assign freq_out = cntr[DIVISOR - 2];
    
endmodule
