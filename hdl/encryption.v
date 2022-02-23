`timescale 1ns / 1ps

module encryption (
    clk,
    i_Key,
    i_Plain_Text,
    o_Cipher_Text
    );


    localparam SIZE = 128;

    input clk;
    input [SIZE - 1:0] i_Plain_Text;
    input [SIZE - 1:0] i_Key;
    
    output [SIZE - 1:0] o_Cipher_Text;

    wire [SIZE - 1:0] w_Key_S;
    wire [SIZE - 1:0] w_Key_S0;
    wire [SIZE - 1:0] w_Key_S1;
    wire [SIZE - 1:0] w_Key_S2;
    wire [SIZE - 1:0] w_Key_S3;
    wire [SIZE - 1:0] w_Key_S4;
    wire [SIZE - 1:0] w_Key_S5;
    wire [SIZE - 1:0] w_Key_S6;
    wire [SIZE - 1:0] w_Key_S7;
    wire [SIZE - 1:0] w_Key_S8;
    wire [SIZE - 1:0] w_Key_S9;


    wire [SIZE - 1:0] w_R_Cipher_Text; 
    wire [SIZE - 1:0] w_R0_Cipher_Text; 
    wire [SIZE - 1:0] w_R1_Cipher_Text; 
    wire [SIZE - 1:0] w_R2_Cipher_Text; 
    wire [SIZE - 1:0] w_R3_Cipher_Text; 
    wire [SIZE - 1:0] w_R4_Cipher_Text; 
    wire [SIZE - 1:0] w_R5_Cipher_Text; 
    wire [SIZE - 1:0] w_R6_Cipher_Text; 
    wire [SIZE - 1:0] w_R7_Cipher_Text; 
    wire [SIZE - 1:0] w_R8_Cipher_Text;
    wire [SIZE - 1:0] w_R9_Cipher_Text;

    assign w_R_Cipher_Text = i_Plain_Text ^ w_Key_S;


    key_expansion a0 (
        clk,
        i_Key, 
        w_Key_S,
        w_Key_S0,
        w_Key_S1,
        w_Key_S2,
        w_Key_S3,
        w_Key_S4,
        w_Key_S5,
        w_Key_S6,
        w_Key_S7,
        w_Key_S8,
        w_Key_S9
        );


    round Round_0 (
        clk,
        w_R_Cipher_Text,
        w_Key_S0,
        w_R0_Cipher_Text
        );


    round Round_1 (
        clk,
        w_R0_Cipher_Text,
        w_Key_S1,
        w_R1_Cipher_Text
        );


    round Round_2 (
        clk,
        w_R1_Cipher_Text,
        w_Key_S2,
        w_R2_Cipher_Text
        );


    round Round_3 (
        clk,
        w_R2_Cipher_Text,
        w_Key_S3,
        w_R3_Cipher_Text
        );


    round Round_4(
        clk,
        w_R3_Cipher_Text,
        w_Key_S4,
        w_R4_Cipher_Text
        );


    round Round_5(
        clk,
        w_R4_Cipher_Text,
        w_Key_S5,
        w_R5_Cipher_Text
        );


    round Round_6(
        clk,
        w_R5_Cipher_Text,
        w_Key_S6,
        w_R6_Cipher_Text
        );


    round Round_7(
        clk,
        w_R6_Cipher_Text,
        w_Key_S7,
        w_R7_Cipher_Text
        );


    round Round_8 (
        clk,
        w_R7_Cipher_Text,
        w_Key_S8,
        w_R8_Cipher_Text
        );


    last_round Round_9 (
        clk,
        w_R8_Cipher_Text,
        w_Key_S9,
        w_R9_Cipher_Text
        );

    assign o_Cipher_Text = w_R9_Cipher_Text;

endmodule