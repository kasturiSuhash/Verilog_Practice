//d flipflop with synchronous reset(active high )
module dflipflop(output reg q, input clk,rst,d);
always@(posedge clk) begin
    if(rst)
        q <= 0;
    else 
        q <= d;
end
endmodule