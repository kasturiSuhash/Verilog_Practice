module tb_register8bit();
wire [7:0]q;
reg clk,rst;
reg [7:0]d;
register8bit tb_register8bit(q,clk,rst,d);
initial begin
    $dumpfile("register8bit.vcd");
    $dumpvars(0,tb_register8bit);
end
always #5 clk = ~clk;
initial begin
    clk =0;

    rst = 1'b0;
    d = 1'b0;
    for(integer i = 0; i < 16;i = i + 1)
    begin
        d = i;
        #10;
    end
    #10;
    rst = 1; d = 4'b1010;
    #10 $finish;
end
endmodule