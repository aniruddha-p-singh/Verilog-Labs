module comparator_4bit_tb;
reg [3:0] A;
reg [3:0] B;
wire A_gt_B;
wire A_lt_B;
wire A_eq_B;

comparator_4bit uut (
    .A(A),
    .B(B),
    .A_gt_B(A_gt_B),
    .A_lt_B(A_lt_B),
    .A_eq_B(A_eq_B)
);

initial begin
    $dumpfile("comparator_4bit_tb.vcd");
    $dumpvars(0, comparator_4bit_tb);

    for (integer i = 0; i < 16; i = i + 1) begin
        for (integer j = 0; j < 16; j = j + 1) begin
            A = i;
            B = j;
            #10; // Wait for 10 time units
        end
    end

   
end
endmodule