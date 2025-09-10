`timescale 1ns/1ps
module tb_encoder();
reg y0,y1,y2,y3;
wire a0,a1;
encoder dut(y0,y1,y2,y3,a0,a1);
initial begin
$dumpfile("encoder.vcd");
$dumpvars(1,tb_encoder);
#5;
{y3,y2,y1,y0} = 4'b0001;
#5;
{y3,y2,y1,y0} = 4'b0010;
#5;
{y3,y2,y1,y0} = 4'b0100;
#5;
{y3,y2,y1,y0} = 4'b1000;
#5;
$finish;
end
endmodule