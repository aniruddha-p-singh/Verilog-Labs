module full_adder (
    input a,
    input b,
    input carry_in,
    output sum,
    output carry_out
);
    assign sum = a ^ b ^ carry_in; // XOR for sum
    assign carry_out = (a & b) | (carry_in & (a ^ b)); // AND-OR for carry out
endmodule    