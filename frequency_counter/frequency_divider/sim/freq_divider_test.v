`timescale 1ns / 1ps

module freq_divider_test;

reg freq_in;
reg rst;

freq_divider #(.DIVISOR(3)) test (
    .freq_in(freq_in),
    .rst(rst)
    );

initial begin
    freq_in = 0;
    rst = 0;
    
    #10 rst = 1;
    
    #20 rst = 0;
    
end

always #25 freq_in = ~freq_in;

endmodule
