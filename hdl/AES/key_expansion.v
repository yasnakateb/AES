`timescale 1ns / 1ps

module key_expansion ( 
   clk,
   i_Key,
   o_Key_S0,
   o_Key_S1,
   o_Key_S2,
   o_Key_S3,
   o_Key_S4,
   o_Key_S5,
   o_Key_S6,
   o_Key_S7,
   o_Key_S8,
   o_Key_S9,
   o_Key_S10
   );


   input clk;
   input	[127:0] i_Key;

   output [127:0] o_Key_S0;
   output [127:0] o_Key_S1;
   output [127:0] o_Key_S2;
   output [127:0] o_Key_S3;
   output [127:0] o_Key_S4;
   output [127:0] o_Key_S5;
   output [127:0] o_Key_S6;
   output [127:0] o_Key_S7;
   output [127:0] o_Key_S8;
   output [127:0] o_Key_S9;
   output [127:0] o_Key_S10;

   reg [31:0] r_W_0;
   reg [31:0] r_W_1;
   reg [31:0] r_W_2;
   reg [31:0] r_W_3;
   reg [31:0] r_W_4;
   reg [31:0] r_W_5;
   reg [31:0] r_W_6;
   reg [31:0] r_W_7;
   reg [31:0] r_W_8;
   reg [31:0] r_W_9;
   reg [31:0] r_W_10;
   reg [31:0] r_W_11;
   reg [31:0] r_W_12;
   reg [31:0] r_W_13;
   reg [31:0] r_W_14;
   reg [31:0] r_W_15;
   reg [31:0] r_W_16;
   reg [31:0] r_W_17;
   reg [31:0] r_W_18;
   reg [31:0] r_W_19;
   reg [31:0] r_W_20;
   reg [31:0] r_W_21;
   reg [31:0] r_W_22;
   reg [31:0] r_W_23;
   reg [31:0] r_W_24;
   reg [31:0] r_W_25;
   reg [31:0] r_W_26;
   reg [31:0] r_W_27;
   reg [31:0] r_W_28;
   reg [31:0] r_W_29;
   reg [31:0] r_W_30;
   reg [31:0] r_W_31;
   reg [31:0] r_W_32;
   reg [31:0] r_W_33;
   reg [31:0] r_W_34;
   reg [31:0] r_W_35;
   reg [31:0] r_W_36;
   reg [31:0] r_W_37;
   reg [31:0] r_W_38;
   reg [31:0] r_W_39;
   reg [31:0] r_W_40;
   reg [31:0] r_W_41;
   reg [31:0] r_W_42;
   reg [31:0] r_W_43;
   
   wire [31:0] w_Sub_Word;
   wire [31:0] w_Sub_Word2;
   wire [31:0] w_Sub_Word3;
   wire [31:0] w_Sub_Word4;
   wire [31:0] w_Sub_Word5;
   wire [31:0] w_Sub_Word6;
   wire [31:0] w_Sub_Word7;
   wire [31:0] w_Sub_Word8;
   wire [31:0] w_Sub_Word9;
   wire [31:0] w_Sub_Word10;	
      		
   wire	[7:0]	 w_Round_Constant;
   wire [7:0]   w_Round_Constant_2;
   wire [7:0]   w_Round_Constant_3;
   wire [7:0]   w_Round_Constant_4;
   wire [7:0]   w_Round_Constant_5;
   wire [7:0]   w_Round_Constant_6;
   wire [7:0]   w_Round_Constant_7;
   wire [7:0]   w_Round_Constant_8;
   wire [7:0]   w_Round_Constant_9;
   wire [7:0]   w_Round_Constant_10;	

   always @* begin
   
      r_W_0  =  i_Key[127:096];

      r_W_1  =  i_Key[095:064];

      r_W_2  =  i_Key[063:032];

      r_W_3  =  i_Key[031 - 1:000];

      r_W_4  =  i_Key[127:096] ^ w_Sub_Word ^ {8'h01,24'b0};
 
      r_W_5  =  i_Key[095:064] ^ i_Key[127:096] ^ w_Sub_Word ^ {8'h01,24'b0};

      r_W_6  =  i_Key[063:032] ^ i_Key[095:064] ^ i_Key[127:096] ^ w_Sub_Word ^ {8'h01,24'b0}; 

      r_W_7  =  i_Key[127:096] ^ i_Key[095:064] ^ i_Key[063:032] ^ i_Key[031 - 1:000] ^ w_Sub_Word ^ {8'h01,24'b0};

      r_W_8  =  r_W_4 ^ w_Sub_Word2 ^ {w_Round_Constant_2,24'b0};

      r_W_9  =  r_W_5 ^ r_W_4 ^ w_Sub_Word2 ^ {w_Round_Constant_2,24'b0};

      r_W_10  =  r_W_6 ^r_W_5 ^ r_W_4 ^ w_Sub_Word2 ^ {w_Round_Constant_2,24'b0}; 

      r_W_11  =  r_W_7 ^r_W_6 ^ r_W_5 ^ r_W_4 ^ w_Sub_Word2 ^ {w_Round_Constant_2,24'b0};

      r_W_12  =  r_W_8 ^ w_Sub_Word3 ^ {w_Round_Constant_3,24'b0};

      r_W_13  =  r_W_8 ^ r_W_9^w_Sub_Word3 ^ {w_Round_Constant_3,24'b0};

      r_W_14  =  r_W_8 ^ r_W_9 ^ r_W_10 ^ w_Sub_Word3 ^ {w_Round_Constant_3,24'b0}; 

      r_W_15  =  r_W_8 ^ r_W_9 ^ r_W_10 ^ r_W_11 ^ w_Sub_Word3 ^ {w_Round_Constant_3,24'b0};

      r_W_16  =  r_W_12 ^ w_Sub_Word4 ^ {w_Round_Constant_4,24'b0};

      r_W_17  =  r_W_12 ^ r_W_13 ^ w_Sub_Word4 ^ {w_Round_Constant_4,24'b0};

      r_W_18  =  r_W_12 ^ r_W_13 ^ r_W_14 ^ w_Sub_Word4 ^ {w_Round_Constant_4,24'b0}; 

      r_W_19  =  r_W_12 ^ r_W_13 ^ r_W_14 ^ r_W_15 ^ w_Sub_Word4 ^ {w_Round_Constant_4,24'b0};

      r_W_20  =  r_W_16 ^ w_Sub_Word5 ^ {w_Round_Constant_5,24'b0};

      r_W_21  =  r_W_16 ^ r_W_17 ^ w_Sub_Word5 ^ {w_Round_Constant_5,24'b0};

      r_W_22  =  r_W_16 ^ r_W_17 ^ r_W_18 ^ w_Sub_Word5 ^ {w_Round_Constant_5,24'b0}; 

      r_W_23  =  r_W_16 ^ r_W_17 ^ r_W_18 ^ r_W_19 ^ w_Sub_Word5 ^ {w_Round_Constant_5,24'b0};

      r_W_24  =  r_W_20 ^ w_Sub_Word6^{w_Round_Constant_6,24'b0};

      r_W_25  =  r_W_20 ^ r_W_21 ^ w_Sub_Word6 ^ {w_Round_Constant_6,24'b0};

      r_W_26  =  r_W_20 ^ r_W_21 ^ r_W_22 ^ w_Sub_Word6 ^ {w_Round_Constant_6,24'b0}; 

      r_W_27  =  r_W_20 ^ r_W_21 ^ r_W_22 ^ r_W_23 ^ w_Sub_Word6 ^ {w_Round_Constant_6,24'b0};

      r_W_28  =  r_W_24 ^ w_Sub_Word7 ^ {w_Round_Constant_7,24'b0};

      r_W_29  =  r_W_24 ^ r_W_25 ^ w_Sub_Word7 ^ {w_Round_Constant_7,24'b0};

      r_W_30  =  r_W_24 ^ r_W_25 ^ r_W_26 ^ w_Sub_Word7 ^ {w_Round_Constant_7,24'b0}; 

      r_W_31  =  r_W_24 ^ r_W_25 ^ r_W_26 ^ r_W_27 ^ w_Sub_Word7 ^ {w_Round_Constant_7,24'b0};

      r_W_32  =  r_W_28 ^ w_Sub_Word8 ^ {w_Round_Constant_8,24'b0};

      r_W_33  =  r_W_28 ^ r_W_29 ^ w_Sub_Word8 ^ {w_Round_Constant_8,24'b0};

      r_W_34  =  r_W_28 ^ r_W_29 ^ r_W_30 ^ w_Sub_Word8 ^ {w_Round_Constant_8,24'b0}; 

      r_W_35  =  r_W_28 ^ r_W_29 ^ r_W_30 ^ r_W_31 ^ w_Sub_Word8 ^ {w_Round_Constant_8,24'b0};

      r_W_36  =  r_W_32 ^ w_Sub_Word9 ^ {w_Round_Constant_9,24'b0};

      r_W_37  =  r_W_32 ^r_W_33 ^ w_Sub_Word9 ^ {w_Round_Constant_9,24'b0};

      r_W_38  =  r_W_32 ^r_W_33 ^ r_W_34 ^ w_Sub_Word9 ^ {w_Round_Constant_9,24'b0}; 

      r_W_39  =  r_W_32 ^r_W_33 ^ r_W_34 ^ r_W_35 ^ w_Sub_Word9 ^ {w_Round_Constant_9,24'b0};

      r_W_40  =  r_W_36 ^ w_Sub_Word10 ^ {w_Round_Constant_10,24'b0};

      r_W_41  =  r_W_36 ^ r_W_37 ^ w_Sub_Word10 ^ {w_Round_Constant_10,24'b0};

      r_W_42  =  r_W_36 ^ r_W_37 ^ r_W_38 ^ w_Sub_Word10 ^ {w_Round_Constant_10,24'b0}; 

      r_W_43  =  r_W_36 ^ r_W_37 ^ r_W_38 ^ r_W_39 ^ w_Sub_Word10 ^ {w_Round_Constant_10,24'b0};

   end

   round_constant r1 (
      clk,
      w_Round_Constant,
      w_Round_Constant_2,
      w_Round_Constant_3,
      w_Round_Constant_4,
      w_Round_Constant_5,
      w_Round_Constant_6,
      w_Round_Constant_7,
      w_Round_Constant_8,
      w_Round_Constant_9,
      w_Round_Constant_10
      );


   sbox u0(
      r_W_3[23:16],
      w_Sub_Word[31:24]
      );


   sbox u1(	
      r_W_3[15:8],
      w_Sub_Word[23:16]
      );


   sbox u2(
      r_W_3[7:0],
      w_Sub_Word[15:8]
      );


   sbox u3(	
      r_W_3[31:24],
      w_Sub_Word[7:0]
      );
 

   sbox u4(	
      r_W_7[23:16],
      w_Sub_Word2[31:24]
      );


   sbox u5(	
      r_W_7[15:08],
      w_Sub_Word2[23:16]
      );


   sbox u6(	
      r_W_7[7:0],
      w_Sub_Word2[15:8]
      );


   sbox u7(	
      r_W_7[31:24],
      w_Sub_Word2[7:0]
      );
 

   sbox u8(	
      r_W_11[23:16],
      w_Sub_Word3[31:24]
      );


   sbox u9(	
      r_W_11[15:8],
      w_Sub_Word3[23:16]
      );


   sbox u10(
      r_W_11[7:0],
      w_Sub_Word3[15:08]
      );


   sbox u11(
      r_W_11[31:24],
      w_Sub_Word3[7:0]
      );
 

   sbox u12(
      r_W_15[23:16],
      w_Sub_Word4[31:24]
      );


   sbox u13(
      r_W_15[15:08],
      w_Sub_Word4[23:16]
      );


   sbox u14(
      r_W_15[7:0],
      w_Sub_Word4[15:8]
      );


   sbox u15(
      r_W_15[31:24],
      w_Sub_Word4[7:0]
      );


   sbox u16(
      r_W_19[23:16],
      w_Sub_Word5[31:24]
      );


   sbox u17(
      r_W_19[15:8],
      w_Sub_Word5[23:16]
      );


   sbox u18(
      r_W_19[7:0],
      w_Sub_Word5[15:8]
      );


   sbox u19(
      r_W_19[31:24],
      w_Sub_Word5[7:0]
      );
 

   sbox u20(
      r_W_23[23:16],
      w_Sub_Word6[31:24]
      );


   sbox u21(
      r_W_23[15:8],
      w_Sub_Word6[23:16]
      );


   sbox u22(
      r_W_23[7:0],
      w_Sub_Word6[15:8]
      );


   sbox u23(
      r_W_23[31:24],
      w_Sub_Word6[7:0]
      );
 
      
   sbox u24(
      r_W_27[23:16],
      w_Sub_Word7[31:24]
      );


   sbox u25(
      r_W_27[15:08],
      w_Sub_Word7[23:16]
      );


   sbox u26(
      r_W_27[7:0],
      w_Sub_Word7[15:8]
      );


   sbox u27(
      r_W_27[31:24],
      w_Sub_Word7[7:0]
      );


   sbox u28(
      r_W_31[23:16],
      w_Sub_Word8[31:24]	
      );


   sbox u29(
      r_W_31[15:08],
      w_Sub_Word8[23:16]	
      );


   sbox u30(
      r_W_31[7:0],
      w_Sub_Word8[15:8]	
      );


   sbox u31(
      r_W_31[31:24],
      w_Sub_Word8[7:0]
      );
 

   sbox u32(
      r_W_35[23:16],
      w_Sub_Word9[31:24]	
      );


   sbox u33(
      r_W_35[15:08],
      w_Sub_Word9[23:16]
      );


   sbox u34(
      r_W_35[7:0],
      w_Sub_Word9[15:8]
      );


   sbox u35(
      r_W_35[31:24],
      w_Sub_Word9[7:0]
      );
 

   sbox u36(
      r_W_39[23:16],
      w_Sub_Word10[31:24]	
      );


   sbox u37(
      r_W_39[15:08],
      w_Sub_Word10[23:16]
      );


   sbox u38(
      r_W_39[7:0],
      w_Sub_Word10[15:8]
      );


   sbox u39(
      r_W_39[31:24],
      w_Sub_Word10[7:0]	
      );
 
 
   assign o_Key_S0 = {r_W_0,r_W_1,r_W_2,r_W_3};
   assign o_Key_S1 = {r_W_4,r_W_5,r_W_6,r_W_7};
   assign o_Key_S2 = {r_W_8,r_W_9,r_W_10,r_W_11};
   assign o_Key_S3 = {r_W_12,r_W_13,r_W_14,r_W_15};
   assign o_Key_S4 = {r_W_16,r_W_17,r_W_18,r_W_19};
   assign o_Key_S5 = {r_W_20,r_W_21,r_W_22,r_W_23};
   assign o_Key_S6 = {r_W_24,r_W_25,r_W_26,r_W_27};
   assign o_Key_S7 = {r_W_28,r_W_29,r_W_30,r_W_31};
   assign o_Key_S8 = {r_W_32,r_W_33,r_W_34,r_W_35};
   assign o_Key_S9 = {r_W_36,r_W_37,r_W_38,r_W_39};
   assign o_Key_S10 = {r_W_40,r_W_41,r_W_42,r_W_43};

endmodule
