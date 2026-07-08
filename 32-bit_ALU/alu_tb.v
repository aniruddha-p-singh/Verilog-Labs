module alu_tb;

    reg  [31:0] a;
    reg  [31:0] b;
    reg  [3:0]  alu_op;
    wire [31:0] result;
    wire        zero;

    // Instantiate the ALU
    alu uut (
        .a(a),
        .b(b),
        .alu_op(alu_op),
        .result(result),
        .zero(zero)
    );

    initial begin

        $dumpfile("alu_tb.vcd");
        $dumpvars(0, alu_tb);

        $monitor("Time=%0t | A=%d | B=%d | ALU_OP=%b | Result=%d | Zero=%b",
                  $time, a, b, alu_op, result, zero);

        // ---------------- AND ----------------
        a = 32'd10; b = 32'd12; alu_op = 4'b0000;
        #10;

        // ---------------- OR -----------------
        a = 32'd10; b = 32'd12; alu_op = 4'b0001;
        #10;

        // ---------------- ADD ----------------
        a = 32'd15; b = 32'd20; alu_op = 4'b0010;
        #10;

        // ---------------- SUB ----------------
        a = 32'd20; b = 32'd15; alu_op = 4'b0110;
        #10;

        // ---------------- SLT ----------------
        a = 32'd5; b = 32'd10; alu_op = 4'b0111;
        #10;

        // NOR 
        a = 32'd10; b = 32'd12; alu_op = 4'b1100;
        #10;

        //ZERO FLAG TEST
        a = 32'd20; b = 32'd20; alu_op = 4'b0110;
        #10;

        $finish;
    end
endmodule