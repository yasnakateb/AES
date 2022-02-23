`timescale 1ns / 1ps

module sub_bytes(
  clk,
  i_Data,
  o_S_Data
  );


  input clk;
  input [127:0] i_Data;

  output reg [127:0] o_S_Data;

  wire [127:0] w_Tmp_Output;
		
  sbox S_Box_0 (
    i_Data[127:120],
    w_Tmp_Output[127:120] 
    );


  sbox S_Box_1 ( 
    i_Data[119:112],
    w_Tmp_Output[119:112] 
    );


  sbox S_Box_2 ( 
    i_Data[111:104],
    w_Tmp_Output[111:104] 
    );


  sbox S_Box_3 ( 
    i_Data[103:96],
    w_Tmp_Output[103:96] 
    );


  sbox S_Box_4 (
    i_Data[95:88],
    w_Tmp_Output[95:88] 
    );


  sbox S_Box_5 (
    i_Data[87:80],
    w_Tmp_Output[87:80] 
    );


  sbox S_Box_6 (
    i_Data[79:72],
    w_Tmp_Output[79:72] 
    );


  sbox S_Box_7 (
    i_Data[71:64],
    w_Tmp_Output[71:64] 
    );


  sbox S_Box_8 (
    i_Data[63:56],w_Tmp_Output[63:56] 
    );


  sbox S_Box_9 (
    i_Data[55:48],
    w_Tmp_Output[55:48] 
    );


  sbox S_Box_10 (
    i_Data[47:40],
    w_Tmp_Output[47:40] 
    );


  sbox S_Box_11 (
    i_Data[39:32],
    w_Tmp_Output[39:32]  
    );


  sbox S_Box_12 (
    i_Data[31:24],
    w_Tmp_Output[31:24] 
    );


  sbox S_Box_13 (
    i_Data[23:16],
    w_Tmp_Output[23:16] 
    );


   sbox S_Box_14 (
    i_Data[15:8],
    w_Tmp_Output[15:8] 
    );

   sbox S_Box_15(i_Data[7:0],w_Tmp_Output[7:0] );
	  
   always@(posedge clk) begin
       o_S_Data <= w_Tmp_Output;
   end

endmodule
