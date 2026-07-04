module priority_encoder_tb;

    reg [7:0] in;
    wire [2:0] out;
    wire valid;

    priority_encoer_8to3 uut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    initial begin

        $dumpfile("priority_encoder_tb.vcd");
        $dumpvars(0, priority_encoder_tb);
        // Test case 1: Only D0 is high
        in = 8'b00000001;
        #10;
        $display("Input: %b, Output: %b, Valid: %b", in, out, valid);

        // Test case 2: D1 is high
        in = 8'b00000010;
        #10;
        $display("Input: %b, Output: %b, Valid: %b", in, out, valid);

        // Test case 3: D2 is high
        in = 8'b00000100;
        #10;
        $display("Input: %b, Output: %b, Valid: %b", in, out, valid);

        // Test case 4: D3 is high
        in = 8'b00001000;
        #10;
        $display("Input: %b, Output: %b, Valid: %b", in, out, valid);

        // Test case 5: D4 is high
        in = 8'b00010000;
        #10;
        $display("Input: %b, Output: %b, Valid: %b", in, out, valid);

        // Test case 6: D5 is high
        in = 8'b00100000;
        #10;
        $display("Input: %b, Output: %b, Valid: %b", in, out, valid);

        // Test case 7: D6 is high
        in = 8'b01000000;
        #10;

        // Test case 8: D7 is high
        in = 8'b10000000;
        #10;
        $display("Input: %b, Output: %b, Valid: %b", in, out, valid);

    end
endmodule    
