module tb_down_counter();
wire [2:0]count;
reg clk,rst;
down_counter tb_down_counter(count,clk,rst);
initial begin
    $dumpfile("downcounter.vcd");
    $dumpvars(0,tb_down_counter);
end
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 0;
    #30;
    rst = 1;
    #30;
    rst = 0;
    #200 $finish;
end

endmodule