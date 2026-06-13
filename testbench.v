module tb;

  // Inputs
  reg [3:0] a, b;

  // Outputs
  wire [4:0] sum;

  // Instantiate the DUT (adder)
  adder uut (
    .a(a),
    .b(b),
    .sum(sum)
  );

  initial begin
   // Dump Waveform
   $dumpfile("output.vcd");
   $dumpvars(0,tb);

    // Apply test vectors
    a = 4'd3; b = 4'd5; #10;
    a = 4'd7; b = 4'd8; #10;
    a = 4'd15; b = 4'd1; #10;

    // End simulation
    $finish;
  end

endmodule
