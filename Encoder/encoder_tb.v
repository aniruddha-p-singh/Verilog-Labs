module encoder_8to3_tb;
reg D0, D1, D2, D3, D4, D5, D6, D7;
wire Y2, Y1, Y0;

encoder_8to3 uut (
    .D0(D0),
    .D1(D1),
    .D2(D2),
    .D3(D3),
    .D4(D4),
    .D5(D5),
    .D6(D6),
    .D7(D7),
    .Y2(Y2),
    .Y1(Y1),
    .Y0(Y0)
);
initial begin
    $dumpfile("encoder_8to3_tb.vcd");
    $dumpvars(0, encoder_8to3_tb);

    $monitor("Time=%0t, D7=%b, D6=%b, D5=%b, D4=%b, D3=%b, D2=%b, D1=%b, D0=%b, Y2=%b, Y1=%b, Y0=%b", $time, D7, D6, D5, D4, D3, D2, D1, D0, Y2, Y1, Y0);
    // Test case 1:
    D7 = 0; D6 = 0; D5 = 0; D4 = 0; D3 = 0; D2 = 0; D1 = 0; D0 = 1; #10;
    // Test case 2:
    D7 = 0; D6 = 0; D5 = 0; D4 = 0; D3 = 0; D2 = 0; D1 = 1; D0 = 0; #10;
    // Test case 3:
    D7 = 0; D6 = 0; D5 = 0; D4 = 0; D3 = 0; D2 = 1; D1 = 0; D0 = 0; #10;
    // Test case 4:
    D7 = 0; D6 = 0; D5 = 0; D4 = 0; D3 = 1; D2 = 0; D1 = 0; D0 = 0; #10;
    // Test case 5:
    D7 = 0; D6 = 0; D5 = 0; D4 = 1; D3 = 0; D2 = 0; D1 = 0; D0 = 0; #10;
    // Test case 6:
    D7 = 0; D6 = 0; D5 = 1; D4 = 0; D3 = 0; D2 = 0; D1 = 0; D0 = 0; #10;
    // Test case 7:
    D7 = 0; D6 = 1; D5 = 0; D4 = 0; D3 = 0; D2 = 0; D1 = 0; D0 = 0; #10;
    // Test case 8:
    D7 = 0; D6 = 0; D5 = 0; D4 = 0; D3 = 0; D2 = 0; D1 = 0; D0 = 0; #10;
end
endmodule