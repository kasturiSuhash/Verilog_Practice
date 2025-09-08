`timescale 1ns/1ps
module tb_fulladder();
reg A,B,CIN;
wire SUM,COUT;
fulladder dut(A,B,CIN,SUM,COUT);
initial begin 
    $dumpfile("full_adder.vcd");
    $dumpvars(1,tb_fulladder);
    #5;
    A = 0; B = 0; CIN = 0;
    #5;
    A = 0; B = 0; CIN = 1;
    #5;
    A = 0; B = 1; CIN = 0;
    #5;
    A = 0; B = 1; CIN = 1;
    #5;
    A = 1; B = 0; CIN = 0;
    #5;
    A = 1; B = 0; CIN = 1;
    #5;
    A = 1; B = 1; CIN = 0;
    #5;
    A = 1; B = 1; CIN = 1;
    #5;
    $finish;
    end
 endmodule
    
