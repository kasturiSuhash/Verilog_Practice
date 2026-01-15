module tb_jkflipflop();
wire q,qbar;
reg j,k,rst,clk;
jkflipflop tb_jkflipflop(q,qbar,j,k,clk,rst);

initial begin
    $dumpfile("jkflipflop.vcd");
    $dumpvars(0,tb_jkflipflop);
end
always #5 clk = ~clk;
initial begin
    clk = 0; 
    rst = 0; j = 1; k = 0;
    #10;
    rst = 0; j = 0;k = 1;
    #10;
    rst = 1;
    j = 0; k = 0;
    #10;
    j = 0; k = 1;
    #10;
    j = 1; k = 0;
    #10;
    j = 1; k =1;
    #30;
    $finish;
end
endmodule