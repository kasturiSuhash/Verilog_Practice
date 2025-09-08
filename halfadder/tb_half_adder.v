`timescale 1ns/1ps
module tb_halfadder;
    reg A,B;
    wire SUM, CARRY;
    halfadder duv(A,B,SUM,CARRY);
    
    initial 
    begin 
    $dumpfile("half_adder.vcd");
    $dumpvars(1,tb_halfadder);
    #5;
    A = 0; B = 0;
    #5;
    A = 0; B = 1;
    #5;
    A = 1; B = 0;
    #5;
    A = 1; B = 1;
    #5;
    $finish;
    end
endmodule

