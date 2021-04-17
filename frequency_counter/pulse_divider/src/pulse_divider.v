`timescale 1ns / 1ps

module pulse_divider #(parameter DIVISOR = 2) (
    input pulse_in,
    input rst,
    output pulse_out
    );
    
    reg [DIVISOR-1 : 0] shr;
    
    always@ (posedge pulse_in) begin
    
        if(rst) begin 
        
            shr <= 1 << (DIVISOR-1);
        
        end else begin
        
            shr <= {shr[0],shr[DIVISOR-1:1]};
        
        end
    
    end
    
    assign pulse_out = pulse_in & shr[0];
    
endmodule
