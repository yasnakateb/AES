module round_constant (
    clk,
    o_Output,
    o_Output_2,
    o_Output_3,
    o_Output_4,
    o_Output_5,
    o_Output_6,
    o_Output_7,
    o_Output_8,
    o_Output_9,
    o_Output_10
    );


    input clk;

    output [7:0] o_Output;
    output [7:0] o_Output_2;
    output [7:0] o_Output_3;
    output [7:0] o_Output_4;
    output [7:0] o_Output_5;
    output [7:0] o_Output_6;
    output [7:0] o_Output_7;
    output [7:0] o_Output_8;
    output [7:0] o_Output_9;
    output [7:0] o_Output_10;

    assign	o_Output  = frcon(0);
    assign	o_Output_2 = frcon(1); 
    assign	o_Output_3 = frcon(2);
    assign	o_Output_4 = frcon(3);
    assign	o_Output_5 = frcon(4);
    assign	o_Output_6 = frcon(5);
    assign	o_Output_7 = frcon(6); 
    assign	o_Output_8 = frcon(7);
    assign	o_Output_9 = frcon(8);
    assign	o_Output_10 = frcon(9);		 

    function [7:0] frcon;

        input [3:0]	i;

        case(i)	
            4'h0: frcon=8'h01;		//1
            4'h1: frcon=8'h02;		//x
            4'h2: frcon=8'h04;		//x^2
            4'h3: frcon=8'h08;		//x^3
            4'h4: frcon=8'h10;		//x^4
            4'h5: frcon=8'h20;		//x^5
            4'h6: frcon=8'h40;		//x^6
            4'h7: frcon=8'h80;		//x^7
            4'h8: frcon=8'h1b;		//x^8
            4'h9: frcon=8'h36;		//x^9
            default: frcon=8'h00;
        endcase

    endfunction

endmodule
