module half_adder_tb;
    reg a;
    reg b;
    wire sum;
    wire carry;

    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin

        $dumpfile("half_adder_tb.vcd");
        $dumpvars(0, half_adder_tb);
        // Test case 1: a = 0, b = 0
        a = 0; b = 0; #10;
        $display("Test case 1: a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);

        // Test case 2: a = 0, b = 1
        a = 0; b = 1; #10;
        $display("Test case 2: a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);

        // Test case 3: a = 1, b = 0
        a = 1; b = 0; #10;
        $display("Test case 3: a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);

        // Test case 4: a = 1, b = 1
        a = 1; b = 1; #10;
        $display("Test case 4: a=%b, b=%b, sum=%b, carry=%b", a, b, sum, carry);

        $finish;
    end
endmodule    