module down_counter(output reg [2:0]count,input clk,rst);
always @(posedge clk ) begin
    if(rst)
        count = 15;
    else begin
            count = count - 1;
    end
end
endmodule