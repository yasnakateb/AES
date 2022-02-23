module mul_3(
    clk,
    i_Data,
    o_Data
    );


    input clk;
    input [7:0] i_Data;

    output  [7:0] o_Data;

    wire [7:0] w_Temp_Output;

    mul_2  m1(
        clk,
        i_Data,
        w_Temp_Output
        );

    assign o_Data = w_Temp_Output ^ i_Data;
endmodule