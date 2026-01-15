//jk flipflop with synchronous active low reset 
module jkflipflop(output reg q, output qbar,input j,k,clk,rst);
always@(posedge clk) begin
    if(!rst)
        q <= 0;
    else begin
        case({j,k})
            2'b00: q <= q; //hold
            2'b01: q <= 1'b0; //reset
            2'b10: q <= 1'b1; //set
            2'b11: q <= ~q; //toggle mode
        endcase
    end
end
assign qbar = ~q;
endmodule