module register4bit (
    output [3:0]q,
    input clk,rst,
    input [3:0]d
    
);
dflipflop dff1(q[0],clk,rst,d[0]);
dflipflop dff2(q[1],clk,rst,d[1]);
dflipflop dff3(q[2],clk,rst,d[2]);
dflipflop dff4(q[3],clk,rst,d[3]);
endmodule