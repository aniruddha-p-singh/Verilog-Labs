module demux_1to4_tb;
    reg I;
    reg S1;
    reg S0;
    wire Y0;
    wire Y1;
    wire Y2;
    wire Y3;

    demux_1to4 uut (
        .I(I),
        .S1(S1),
        .S0(S0),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3)
    );
    
    initial begin
        $dumpfile("demux_1to4_tb.vcd");
        $dumpvars(0, demux_1to4_tb);

        $monitor("Time=%0t, I=%b, S1=%b, S0=%b, Y0=%b, Y1=%b, Y2=%b, Y3=%b", $time, I, S1, S0, Y0, Y1, Y2, Y3);

        // fixed input
        I = 1;

        // Test case 1:
        S1 = 0; S0 = 0; #10;
        // Test case 2:
        S1 = 0; S0 = 1; #10;
        // Test case 3:
        S1 = 1; S0 = 0; #10;
        // Test case 4:
        S1 = 1; S0 = 1; #10;
    end
endmodule
