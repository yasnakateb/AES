module mul_2 (
    clk,
    i_Data,
    o_Data
    );


    input [7:0] i_Data;
    input clk;

    output reg [7:0] o_Data;
    
    always@(posedge clk)
        o_Data <= {i_Data[6:0],1'b0} ^ (8'h1b & {8{i_Data[7]}});

endmodule