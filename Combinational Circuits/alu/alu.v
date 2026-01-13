module alu(
    output reg [7:0] y,
    input  [7:0] a, b,
    input  [2:0] opcode
);

parameter add       = 3'b000,
          subtract  = 3'b001,
          multiply  = 3'b010,
          divide    = 3'b011,
          andgate   = 3'b100,
          orgate    = 3'b101,
          norgate   = 3'b110,
          modulo    = 3'b111;

always @(*) begin
    case (opcode)
        add:       y = a + b;
        subtract:  y = a - b;
        multiply:  y = a * b;
        divide:    y = (b != 0) ? (a / b) : 8'b0;
        andgate:   y = a & b;
        orgate:    y = a | b;
        norgate:   y = ~(a | b);
        modulo:    y = (b != 0) ? (a % b) : 8'b0;
        default:   y = 8'b0;
    endcase
end

endmodule
