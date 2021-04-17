`timescale 1ns / 1ps

module freq_counter(
    input clk_ref,
    input clk_meas,
    input rst,
    output freq
    );
    
    parameter FREQ_SCALER = 2;
    parameter PULSE_SCALER = 3;
    parameter CNTR_SIZE = 10;
    
    wire ref_PSC_out;
    freq_divider #(DIVISOR(FREQ_SCALER)) ref_PSC (
        .freq_in(clk_ref),
        .rst(rst),
        .freq_out(clk_ref_PSC_out)
    );
    
    wire ref2meas_out;
    CDC ref2meas (
        .clk(clk_ref),
        .in(ref_PSC_out),
        .out(ref2meas_out)
    );
    
    wire meas_PSC_out;
    pulse_divider #(DIVISOR(PULSE_SCALER)) meas_PSC (
        .pulse_in(clk_meas),
        .rst(rst),
        .pulse_out(meas_PSC_out)
    );
    
    // ------------------------------------------------
    wire cntr_rst;
    always@ (negedge ref2meas_out) begin
        // negedge detect magic
    end
    // ------------------------------------------------
    
    
    reg [CNTR_SIZE-1:0] cntr;
    reg [CNTR_SIZE-1:0] output_container;
     
    always@(posedge meas_PSC_out) begin
    
        if(cntr_rst) begin
        
            cntr <= 0;
            output_container <= cntr;
        
        end else begin
        
            cntr <= cntr + 1;
        
        end
    
    end
    
    CDC #(WIDTH(CNTR_SIZE)) meas2ref (
        .clk(clk_ref),
        .in(output_container),
        .out(freq)
    );
    
    
endmodule
