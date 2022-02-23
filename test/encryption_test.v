module encryption_test();

    reg clk;
    reg [127:0] r_Key;
    reg [127:0] r_Plain_Text;

    wire [127:0] w_Cipher_Text;

    encryption AES(
        .clk(clk),
        .i_Key(r_Key),
        .i_Plain_Text(r_Plain_Text),
        .o_Cipher_Text(w_Cipher_Text)
    );

    always #10 
        clk =~clk;

    initial begin
        $dumpfile("encryption_test.vcd");
        $dumpvars(0, encryption_test);

        clk = 0;
        #10
        r_Key = 12;
        r_Plain_Text = 100;
        
    end
           
endmodule