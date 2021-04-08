`timescale 1ns / 1ps

module CDC_test;

reg clk;
reg [7:0]in;

CDC #(.LENGTH(5), .WIDTH(8)) shiftregister(
    .clk(clk),
    .in(in)
);

initial begin
    clk = 0;
    in = 0;

    #60 in = 4;
    #20 in = 0;



    #130 in = 7;
    #20 in = 0;

end

always #25 clk = ~clk;

endmodule
