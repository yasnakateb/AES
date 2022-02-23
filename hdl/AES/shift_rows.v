`timescale 1ns / 1ps

module shift_rows(
    clk,
    i_Data,
    o_Data
    );


    input clk;
    input [127:0] i_Data;

    output reg [127:0] o_Data = 128'b0;

    always@ (posedge clk) begin
	o_Data [127:120] <= i_Data [95:88];
	o_Data [119:112] <= i_Data [55:48];
	o_Data [111:104] <= i_Data [15:8];
	o_Data [103:96] <= i_Data [103:96];

	o_Data [95:88] <= i_Data [63:56];
	o_Data [87:80] <= i_Data [23:16];
	o_Data [79:72] <= i_Data [111:104];
	o_Data [71:64] <= i_Data [71:64];

	o_Data [63:56] <= i_Data [31:24];
	o_Data [55:48] <= i_Data [119:112];
	o_Data [47:40] <= i_Data [79:72];
	o_Data [39:32] <= i_Data [39:32];

	o_Data [31:24] <= i_Data [127:120];
	o_Data [23:16] <= i_Data [87:80];
	o_Data [15:8] <= i_Data [47:40];
	o_Data [7:0] <= i_Data [7:0];
    end

endmodule
