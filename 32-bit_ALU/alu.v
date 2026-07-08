module alu(
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire [3:0]  alu_op,
    output reg  [31:0] result,
    output reg         zero
);

    always @(*) begin
        case (alu_op)
            4'b0000: result = a & b; // AND
            4'b0001: result = a | b; // OR
            4'b0010: result = a + b; // ADD
            4'b0110: result = a - b; // SUBTRACT
            4'b0111: result = (a < b) ? 32'b1 : 32'b0; // SLT
            4'b1100: result = ~(a | b); // NOR
            default: result = 32'b0; // Default case
        endcase
        
        zero = (result == 32'b0) ? 1'b1 : 1'b0; // Set zero flag
    end
endmodule    
