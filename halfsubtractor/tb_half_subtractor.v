`timescale 1ns/1ps
module tb_half_subtractor();
reg a,b;
wire diff,bo;
half_subtractor dut(a,b,diff,bo);
initial begin 
$dumpfile("halfsubtractor.vcd");
$dumpvars(1,tb_half_subtractor);
#5;
a = 0; b = 0;
#5;
a = 0; b = 1;
#5;
a = 1; b = 0;
#5;
a = 1; b = 1;
#5;
$finish;
end
endmodule

