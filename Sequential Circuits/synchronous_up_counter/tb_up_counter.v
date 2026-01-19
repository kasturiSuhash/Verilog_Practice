`timescale 1ns / 1ps
module tb_up_counter();
reg clk,rst;
wire [2:0]count;
syncronous_up_counter tb_up_counter(.clk(clk),.rst(rst),.count(count));
always #5 clk = ~clk;
initial begin
clk = 0;
rst = 0;
#30;
rst = 1;
#30;
rst = 0;
#100 $finish;

end
initial begin
$dumpfile("upcounter.vcd");
$dumpvars(0,tb_up_counter);
end
endmodule