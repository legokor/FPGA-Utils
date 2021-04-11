`timescale 1ns / 1ps

module CDC #(parameter LENGTH = 5, parameter WIDTH = 1) (
    input clk,
    input [WIDTH-1:0]in,
    output [WIDTH-1:0]out
    );

    (* ASYNC_REG="true" *) reg [WIDTH-1:0] shift [0:LENGTH-1];

    integer i;

    always@ (posedge clk) begin

        for(i = LENGTH-1; i > 0; i=i-1) begin

            shift[i] <= shift[i-1];

        end

        shift[0] <= in;

    end

    assign out = shift[LENGTH-1];

endmodule
