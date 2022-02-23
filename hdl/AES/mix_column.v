`timescale 1ns / 1ps

module mix_column(
    clk,
    i_Data,
    o_Data
    );


    input clk;
    input [127:0] i_Data;

    output  [127:0] o_Data;

    wire [31:0] w_N1;
    wire [31:0] w_N2;
    wire [31:0] w_N3;
    wire [31:0] w_N4;
    wire [31:0] w_N_Tmp_Out1;
    wire [31:0] w_N_Tmp_Out2;
    wire [31:0] w_N_Tmp_Out3;
    wire [31:0] w_N_Tmp_Out4;

    assign w_N1 = i_Data[127:96];
    assign w_N2 = i_Data[95:64];
    assign w_N3 = i_Data[63:32];
    assign w_N4 = i_Data[31:0];


    mul_32 m1 (
        clk,
        w_N1,
        w_N_Tmp_Out1
        );


    mul_32 m2 (
        clk,
        w_N2,
        w_N_Tmp_Out2
        );


    mul_32 m3 (
        clk,
        w_N3,
        w_N_Tmp_Out3
        );


    mul_32 m4 (
        clk,
        w_N4,
        w_N_Tmp_Out4
        );


    assign o_Data = {w_N_Tmp_Out1 , w_N_Tmp_Out2 , w_N_Tmp_Out3 , w_N_Tmp_Out4};

endmodule    