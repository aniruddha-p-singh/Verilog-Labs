module encoder_8to3 (
    input D0,
    input D1,
    input D2,
    input D3,
    input D4,
    input D5,
    input D6,
    input D7,
    output reg Y2,
    output reg Y1,
    output reg Y0

);

always @(*) begin
    case ({D7, D6, D5, D4, D3, D2, D1, D0})
        8'b00000001: begin
            Y2 = 0;
            Y1 = 0;
            Y0 = 0;
        end
        8'b00000010: begin
            Y2 = 0;
            Y1 = 0;
            Y0 = 1;
        end
        8'b00000100: begin
            Y2 = 0;
            Y1 = 1;
            Y0 = 0;
        end
        8'b00001000: begin
            Y2 = 0;
            Y1 = 1;
            Y0 = 1;
        end
        8'b00010000: begin
            Y2 = 1;
            Y1 = 0;
            Y0 = 0;
        end
        8'b00100000: begin
            Y2 = 1;
            Y1 = 0;
            Y0 = 1;
        end
        8'b01000000: begin
            Y2 = 1;
            Y1 = 1;
            Y0 = 0;
        end
        8'b10000000: begin
            Y2 = 1;
            Y1 = 1;
            Y0 = 1;
        end
        default: begin
            Y2 = 'bx;
            Y1 = 'bx; 
            Y0 = 'bx; 
        end
    endcase
end
endmodule