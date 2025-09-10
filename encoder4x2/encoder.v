module encoder(
    input y0,y1,y2,y3,
    output reg a0,a1
    );
    always@(*) begin
    a0 = (~y2&y1)|y3;
    a1 = y2 |y3;
    end
endmodule