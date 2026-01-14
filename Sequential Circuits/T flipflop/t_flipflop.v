module t_flipflop(output reg q, output qbar, input t, clk, rst);
always @(posedge clk) begin
    if(!rst)             // active-low reset
        q <= 0;
    else
        q <= t ? ~q : q; // toggle if t=1
end

assign qbar = ~q;

endmodule
