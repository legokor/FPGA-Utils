`timescale 1ns / 1ps

module pulse_divider #(parameter DIVISOR = 2) (
    input pulse_in,
    input rst,
    output pulse_out
    );
    
    reg [$clog2(DIVISOR) : 0] cnt;
    
    always@ (posedge pulse_in) begin
    
        if(rst) begin 
        
            cnt <= 0;
        
        end else begin
        
            if(cnt == DIVISOR-1) begin
                
                cnt <= 0;
            
            end else begin
            
                cnt <= cnt + 1;
            
            end
        
        end
    
    end
    
    assign pulse_out = (cnt == 0) & pulse_in;
    
endmodule
