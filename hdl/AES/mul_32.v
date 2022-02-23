module mul_32(
    clk,
    i_Data,
    o_Data
    );


    input clk;
    input [31:0]i_Data;

    output [31:0] o_Data;

    wire [7:0] w_Temp1;
    wire [7:0] w_Temp2;
    wire [7:0] w_Temp3;
    wire [7:0] w_Temp4;
    wire [7:0] w_M_Output0;
    wire [7:0] w_M_Output1;
    wire [7:0] w_M_Output2;
    wire [7:0] w_M_Output3;
    wire [7:0] w_M2_Tmp_Out1;
    wire [7:0] w_M2_Tmp_Out2;
    wire [7:0] w_M2_Tmp_Out3;
    wire [7:0] w_M2_Tmp_Out4;
    wire [7:0] w_M3_Tmp_Out1;
    wire [7:0] w_M3_Tmp_Out2;
    wire [7:0] w_M3_Tmp_Out3;
    wire [7:0] w_M3_Tmp_Out4;

    assign w_Temp1 = i_Data[31:24];
    assign w_Temp2 = i_Data[23:16];
    assign w_Temp3 = i_Data[15:8];
    assign w_Temp4 = i_Data[7:0];
    
    mul_2 m1 (
        clk,
        w_Temp1,
        w_M2_Tmp_Out1
        );


    mul_2 m2 (
        clk,
        w_Temp2,
        w_M2_Tmp_Out2
        );


    mul_2 m3 (
        clk,
        w_Temp3,
        w_M2_Tmp_Out3
        );


    mul_2 m4 (
        clk,
        w_Temp4,
        w_M2_Tmp_Out4
        );


    mul_3 m5( 
        clk,
        w_Temp1,
        w_M3_Tmp_Out1
        );


    mul_3 m6( 
        clk,
        w_Temp2,
        w_M3_Tmp_Out2
        );


    mul_3 m7( 
        clk,
        w_Temp3,
        w_M3_Tmp_Out3
        );


    mul_3 m8( 
        clk,
        w_Temp4,
        w_M3_Tmp_Out4
        );

    assign w_M_Output0 = w_M2_Tmp_Out1 ^ w_M3_Tmp_Out2 ^ w_Temp3 ^ w_Temp4;
    assign w_M_Output1 = w_Temp1 ^ w_M2_Tmp_Out2 ^ w_M3_Tmp_Out3 ^ w_Temp4;
    assign w_M_Output2 = w_Temp1 ^ w_Temp2 ^ w_M2_Tmp_Out3 ^ w_M3_Tmp_Out4;
    assign w_M_Output3 = w_M3_Tmp_Out1 ^ w_Temp2 ^ w_Temp3 ^ w_M2_Tmp_Out4;

    assign o_Data = {w_M_Output0,w_M_Output1,w_M_Output2,w_M_Output3};
endmodule
