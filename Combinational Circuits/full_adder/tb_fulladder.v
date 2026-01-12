`timescale 1ns/1ps
module tb_fulladder();
wire sum,carry;
reg a,b,cin;

fulladder tb_fulladder (sum,carry,a,b,cin);

initial begin
    $dumpfile("fulladder.vcd");
    $dumpvars(0,tb_fulladder);
end
initial begin
    #10;
    a = 0; b = 0; cin = 0;
    #10;
    a = 0; b = 0; cin = 1;
    #10;
    a = 0; b = 1; cin = 0;
    #10;
    a = 0; b = 1; cin = 1;
    #10;
    a = 1; b = 0; cin = 0;
    #10;
    a = 1; b = 0; cin = 1;
    #10;
    a = 1; b = 1; cin = 0;
    #10;
    a = 1; b = 1; cin = 1;
    #10;
    $finish;
end
endmodule