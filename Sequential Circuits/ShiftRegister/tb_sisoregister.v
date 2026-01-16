`timescale 1ns/1ps
module tb_sisoregister();
reg clk,rst,d;
wire q;
initial begin
    $dumpfile("sisoregister.vcd");
    $dumpvars(0,tb_sisoregister);
end
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 0;
    d = 1;
    #10;
    d = 0;
    #10;
    d = 1;
    #10;
    d = 0;
    #10;

    #20 $finish;

end
endmodule