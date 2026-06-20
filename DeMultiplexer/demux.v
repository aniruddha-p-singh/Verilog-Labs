module demux_1to4 (
    input I,
    input S1,
    input S0,
    output reg Y0,
    output reg Y1,
    output reg Y2,
    output reg Y3
);
always @(*) begin
    case ({S1, S0})
        2'b00: begin
            Y0 = I;
            Y1 = 4'b0000;
            Y2 = 4'b0000;
            Y3 = 4'b0000;
        end
        2'b01: begin
            Y0 = 4'b0000;
            Y1 = I;
            Y2 = 4'b0000;
            Y3 = 4'b0000;
        end
        2'b10: begin
            Y0 = 4'b0000;
            Y1 = 4'b0000;
            Y2 = I;
            Y3 = 4'b0000;
        end
        2'b11: begin
            Y0 = 4'b0000;
            Y1 = 4'b0000;
            Y2 = 4'b0000;
            Y3 = I;
        end
        default: begin
            Y0 = 4'b0000;
            Y1 = 4'b0000;
            Y2 = 4'b0000;
            Y3 = 4'b0000;
        end
    endcase
end    
endmodule    