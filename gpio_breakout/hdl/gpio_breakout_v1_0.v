`timescale 1ns / 1ps

module gpio_breakout #(
    parameter GPIO_WIDTH = 4
) (
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_M TRI_T" *)
    input [GPIO_WIDTH-1:0] m_t,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_M TRI_O" *)
    input [GPIO_WIDTH-1:0] m_o,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_M TRI_I" *)
    output [GPIO_WIDTH-1:0] m_i,


    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S0 TRI_T" *)
    output s_t0,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S0 TRI_O" *)
    output s_o0,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S0 TRI_I" *)
    input s_i0,

    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S1 TRI_T" *)
    output s_t1,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S1 TRI_O" *)
    output s_o1,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S1 TRI_I" *)
    input s_i1,

    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S2 TRI_T" *)
    output s_t2,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S2 TRI_O" *)
    output s_o2,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S2 TRI_I" *)
    input s_i2,

    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S3 TRI_T" *)
    output s_t3,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S3 TRI_O" *)
    output s_o3,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S3 TRI_I" *)
    input s_i3,

    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S4 TRI_T" *)
    output s_t4,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S4 TRI_O" *)
    output s_o4,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S4 TRI_I" *)
    input s_i4,

    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S5 TRI_T" *)
    output s_t5,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S5 TRI_O" *)
    output s_o5,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S5 TRI_I" *)
    input s_i5,

    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S6 TRI_T" *)
    output s_t6,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S6 TRI_O" *)
    output s_o6,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S6 TRI_I" *)
    input s_i6,

    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S7 TRI_T" *)
    output s_t7,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S7 TRI_O" *)
    output s_o7,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S7 TRI_I" *)
    input s_i7,

    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S8 TRI_T" *)
    output s_t8,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S8 TRI_O" *)
    output s_o8,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S8 TRI_I" *)
    input s_i8,

    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S9 TRI_T" *)
    output s_t9,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S9 TRI_O" *)
    output s_o9,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S9 TRI_I" *)
    input s_i9,

    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S10 TRI_T" *)
    output s_t10,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S10 TRI_O" *)
    output s_o10,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S10 TRI_I" *)
    input s_i10,

    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S11 TRI_T" *)
    output s_t11,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S11 TRI_O" *)
    output s_o11,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S11 TRI_I" *)
    input s_i11,

    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S12 TRI_T" *)
    output s_t12,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S12 TRI_O" *)
    output s_o12,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S12 TRI_I" *)
    input s_i12,

    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S13 TRI_T" *)
    output s_t13,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S13 TRI_O" *)
    output s_o13,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S13 TRI_I" *)
    input s_i13,

    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S14 TRI_T" *)
    output s_t14,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S14 TRI_O" *)
    output s_o14,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S14 TRI_I" *)
    input s_i14,

    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S15 TRI_T" *)
    output s_t15,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S15 TRI_O" *)
    output s_o15,
    (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 GPIO_S15 TRI_I" *)
    input s_i15
);

assign m_i[0 ] = s_i0 ;
assign m_i[1 ] = s_i1 ;
assign m_i[2 ] = s_i2 ;
assign m_i[3 ] = s_i3 ;
assign m_i[4 ] = s_i4 ;
assign m_i[5 ] = s_i5 ;
assign m_i[6 ] = s_i6 ;
assign m_i[7 ] = s_i7 ;
assign m_i[8 ] = s_i8 ;
assign m_i[9 ] = s_i9 ;
assign m_i[10] = s_i10;
assign m_i[11] = s_i11;
assign m_i[12] = s_i12;
assign m_i[13] = s_i13;
assign m_i[14] = s_i14;
assign m_i[15] = s_i15;

assign s_o0  = m_o[0 ];
assign s_o1  = m_o[1 ];
assign s_o2  = m_o[2 ];
assign s_o3  = m_o[3 ];
assign s_o4  = m_o[4 ];
assign s_o5  = m_o[5 ];
assign s_o6  = m_o[6 ];
assign s_o7  = m_o[7 ];
assign s_o8  = m_o[8 ];
assign s_o9  = m_o[9 ];
assign s_o10 = m_o[10];
assign s_o11 = m_o[11];
assign s_o12 = m_o[12];
assign s_o13 = m_o[13];
assign s_o14 = m_o[14];
assign s_o15 = m_o[15];

assign s_t0  = m_t[0 ];
assign s_t1  = m_t[1 ];
assign s_t2  = m_t[2 ];
assign s_t3  = m_t[3 ];
assign s_t4  = m_t[4 ];
assign s_t5  = m_t[5 ];
assign s_t6  = m_t[6 ];
assign s_t7  = m_t[7 ];
assign s_t8  = m_t[8 ];
assign s_t9  = m_t[9 ];
assign s_t10 = m_t[10];
assign s_t11 = m_t[11];
assign s_t12 = m_t[12];
assign s_t13 = m_t[13];
assign s_t14 = m_t[14];
assign s_t15 = m_t[15];

endmodule
