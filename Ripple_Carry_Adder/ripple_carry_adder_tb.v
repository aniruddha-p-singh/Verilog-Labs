module ripple_carry_adder_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg carry_in;
    wire [3:0] sum;
    wire carry_out;

    integer i,j;

    ripple_carry_adder uut (
        .a(a),
        .b(b),
        .carry_in(carry_in),
        .sum(sum),
        .carry_out(carry_out)
    );
    initial begin
        $dumpfile("ripple_carry_adder_tb.vcd");
        $dumpvars(0, ripple_carry_adder_tb);

        $monitor("Time=%0t, a=%b, b=%b, carry_in=%b, sum=%b, carry_out=%b", $time, a, b, carry_in, sum, carry_out);

        //Test all possible combinations of inputs
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                a = i;
                b = j;
                carry_in = 0; // Test with carry_in = 0
                #10;
                $display("Test case: a=%b, b=%b, carry_in=%b, sum=%b, carry_out=%b", a, b, carry_in, sum, carry_out);

                carry_in = 1; // Test with carry_in = 1
                #10;
                $display("Test case: a=%b, b=%b, carry_in=%b, sum=%b, carry_out=%b", a, b, carry_in, sum, carry_out);
            end
        end
        $finish;
    end    
endmodule