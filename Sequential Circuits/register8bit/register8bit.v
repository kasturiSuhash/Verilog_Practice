module register8bit (
    output [7:0]q,
    input clk,rst,
    input [7:0]d
    
);

dflipflop dff1(q[0],clk,rst,d[0]);
dflipflop dff2(q[1],clk,rst,d[1]);
dflipflop dff3(q[2],clk,rst,d[2]);
dflipflop dff4(q[3],clk,rst,d[3]);
dflipflop dff5(q[4],clk,rst,d[4]);
dflipflop dff6(q[5],clk,rst,d[5]);
dflipflop dff7(q[6],clk,rst,d[6]);
dflipflop dff8(q[7],clk,rst,d[7]);
endmodule