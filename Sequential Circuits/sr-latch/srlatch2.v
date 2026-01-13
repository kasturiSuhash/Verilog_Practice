module srlatch2(output reg q,output qbar,input s,r);
always@(*) begin
    casez({s,r})
    2'b10: q = 1;
    2'b01: q = 0;
    2'b00: q = q;
    2'b11: q = 1'bx;
    endcase
end
assign qbar = ~q;
endmodule