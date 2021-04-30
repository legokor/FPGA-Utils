`timescale 1ns / 1ps

module pulse_divider_test;

reg pulse_in;
reg rst;

pulse_divider #(.DIVISOR(2)) test2 (
    .pulse_in(pulse_in),
    .rst(rst)
);

pulse_divider #(.DIVISOR(4)) test4 (
    .pulse_in(pulse_in),
    .rst(rst)
);

pulse_divider #(.DIVISOR(5)) test5 (
    .pulse_in(pulse_in),
    .rst(rst)
);


initial begin

    pulse_in = 0;
    rst = 0;
    #10 rst = 1;
    #20 rst = 0; 

end

always #25 pulse_in = ~pulse_in;

endmodule
