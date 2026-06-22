module decoder_3to8_tb;
reg a;
reg b;
reg c;
wire Y0;
wire Y1;
wire Y2;
wire Y3;
wire Y4;
wire Y5;
wire Y6;
wire Y7;

decoder_3to8 uut (
    .a(a),
    .b(b),
    .c(c),
    .Y0(Y0),
    .Y1(Y1),
    .Y2(Y2),
    .Y3(Y3),
    .Y4(Y4),
    .Y5(Y5),
    .Y6(Y6),
    .Y7(Y7)
);

initial begin
    $dumpfile("decoder_3to8_tb.vcd");
    $dumpvars(0, decoder_3to8_tb);
    $monitor("a=%b, b=%b, c=%b | Y0=%b, Y1=%b, Y2=%b, Y3=%b, Y4=%b, Y5=%b, Y6=%b, Y7=%b", a, b, c, Y0, Y1, Y2, Y3, Y4, Y5, Y6, Y7);
    a = 0; b = 0; c = 0; #10;
    a = 0; b = 0; c = 1; #10;
    a = 0; b = 1; c = 0; #10;
    a = 0; b = 1; c = 1; #10;
    a = 1; b = 0; c = 0; #10;
    a = 1; b = 0; c = 1; #10;
    a = 1; b = 1; c = 0; #10;
    a = 1; b = 1; c = 1; #10;
end
endmodule