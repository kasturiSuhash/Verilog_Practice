module universal_shift_register (
    input clk,
    input rst,
    input [1:0] sel,
    input [3:0] pdata,   // parallel data input
    input sin_l,         // serial input for shift left
    input sin_r,         // serial input for shift right
    output reg [3:0] q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 4'b0000;
    else begin
        case (sel)
            2'b00: q <= q;                         // Hold
            2'b01: q <= {sin_r, q[3:1]};           // Shift Right
            2'b10: q <= {q[2:0], sin_l};           // Shift Left
            2'b11: q <= pdata;                     // Parallel Load
            default: q <= q;
        endcase
    end
end

endmodule
