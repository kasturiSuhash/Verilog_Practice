//2x4 decoder
module decoder(output reg [7:0]y,input [2:0]i);

always@(i) begin
    y = 8'b0;
    case(i)
    3'b000: y = {7'b0,1'b1};
    3'b001:y = {6'b0,1'b1,1'b0};
    3'b010:y= {5'b0,1'b1,2'b0};
    3'b011:y = {4'b0,1'b1,3'b0};
    3'b100: y = {3'b0,1'b1,4'b0};
    3'b101:y = {2'b0,1'b1,5'b0};
    3'b110:y = {1'b0,1'b1,6'b0};
    3'b111:y = {1'b1,7'b0};
    default: y = 0;
    endcase
end

endmodule