module tb_dflipflop();
wire q;
reg clk,rst,d;
dflipflop tb_dflipflop(q,clk,rst,d);
initial begin
    $dumpfile("dflipflop.vcd");
    $dumpvars(0,tb_dflipflop);
end
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 0; d = 0;
    #10;
    rst = 0; d = 1;
    #10;
    rst = 1; d = 0;
    #10;
    rst = 1; d = 1;
    #10;
    $finish;
end
endmodule