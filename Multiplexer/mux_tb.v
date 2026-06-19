module mux_4to1_tb;
    reg [3:0] I0;
    reg [3:0] I1;
    reg [3:0] I2;
    reg [3:0] I3;
    reg [1:0] S1;
    reg [1:0] S0;
    wire [3:0] Y;

    mux_4to1 uut (
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .S1(S1),
        .S0(S0),
        .Y(Y)
    );
    
    initial begin
        $dumpfile("mux_4to1_tb.vcd");
        $dumpvars(0, mux_4to1_tb);

        $monitor("Time=%0t, I0=%b, I1=%b, I2=%b, I3=%b, S1=%b, S0=%b, Y=%b", $time, I0, I1, I2, I3, S1, S0, Y);

        // fixed inputs
        I0 = 0;
        I1 = 1;
        I2 = 0;
        I3 = 1;

        // Test case 1: S1 = 0, S0 = 0
        S1 = 0; S0 = 0; #10;
        // Test case 2: S1 = 0, S0 = 1
        S1 = 0; S0 = 1; #10;
        // Test case 3: S1 = 1, S0 = 0
        S1 = 1; S0 = 0; #10;
        // Test case 4: S1 = 1, S0 = 1
        S1 = 1; S0 = 1; #10;
        $finish;
    end
endmodule    