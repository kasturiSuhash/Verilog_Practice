module updown_counter(output reg [3:0]count,input rst,clk,updown);
always @(posedge clk) begin
    if(rst)
        count <= 0;
    else if (updown) begin
        if(count == 15)
            count <= 0;
        else 
            count <= count + 1;
    end
    else begin
        if(count == 0)
            count <=15;
        else 
            count <= count - 1;
    end
end

endmodule