`timescale 1ns / 1ps

module round(
    clk,
    i_Data,
    i_Key,
    o_Data
    );


    input clk;
    input [127:0] i_Data;
    input [127:0] i_Key;

    output [127:0] o_Data;

    wire [127:0] w_Sub_Data_Out;
    wire [127:0] w_Shift_Data_Out;
    wire [127:0] w_Mix_Data_Out; 

    sub_bytes Sub_Bytes(
        clk,
        i_Data,
        w_Sub_Data_Out
        );


    shift_rows Shift_Rows(
        clk,
        w_Sub_Data_Out,
        w_Shift_Data_Out
        );


    mix_column Mix_Column(
        clk,
        w_Shift_Data_Out,
        w_Mix_Data_Out
        );

    assign o_Data = w_Mix_Data_Out ^ i_Key;

endmodule