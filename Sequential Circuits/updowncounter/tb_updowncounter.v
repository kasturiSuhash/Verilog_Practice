module tb_updowncounter();
wire [3:0]count;
reg clk,rst,updown;
updown_counter tb_updowncounter(count,rst,clk,updown);
initial begin
    $dumpfile("updowncounter.vcd");
    $dumpvars(0,tb_updowncounter);
end
always #5 clk = ~clk;
initial begin
    clk = 0;rst = 1;
    #20;
    rst = 0;
    updown = 1;
    #200;
    updown = 0;
    #200;
    rst = 1;
    #10;
    $finish;
end
initial begin
    $monitor($time,"count is %d",count);
end
endmodule