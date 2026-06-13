module full_adder_tb;
    reg a;
    reg b;
    reg carry_in;
    wire sum;
    wire carry_out;

    // Instantiate the full adder
    full_adder uut (
        .a(a),
        .b(b),
        .carry_in(carry_in),
        .sum(sum),
        .carry_out(carry_out)
    );

    initial begin

        $dumpfile("full_adder_tb.vcd");
        $dumpvars(0, full_adder_tb);

        // Test case 1: 0 + 0 + 0
        a = 0; b = 0; carry_in = 0;
        #10; // Wait for 10 time units

        // Test case 2: 0 + 0 + 1
        a = 0; b = 0; carry_in = 1;
        #10;

        // Test case 3: 0 + 1 + 0
        a = 0; b = 1; carry_in = 0;
        #10;

        // Test case 4: 0 + 1 + 1
        a = 0; b = 1; carry_in = 1;
        #10;

        // Test case 5: 1 + 0 + 0
        a = 1; b = 0; carry_in = 0;
        #10;

        // Test case 6: 1 + 0 + 1
        a = 1; b = 0; carry_in = 1;
        #10;

        // Test case 7: 1 + 1 + 0
        a = 1; b = 1; carry_in = 0;
        #10;

        // Test case 8: 1 + 1 + 1
        a = 1; b = 1; carry_in = 1;
        #10;

        $finish; // End the simulation
    end
endmodule    

