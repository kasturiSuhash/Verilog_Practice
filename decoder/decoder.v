module decoder(input a,b,e, output reg y0,y1,y2,y3);
always@(*) begin
    y0 = ~a&~b&e;
    y1 = ~a&b&e;
    y2  = a&~b&e;
    y3 = a&b&e;
end
endmodule