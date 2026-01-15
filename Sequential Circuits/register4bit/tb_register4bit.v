module tb_register4bit();
wire [3:0]q;
reg clk,rst;
reg [3:0]d;
register4bit tb_register4bit(q,clk,rst,d);
initial begin
    $dumpfile("register4bit.vcd");
    $dumpvars(0,tb_register4bit);
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