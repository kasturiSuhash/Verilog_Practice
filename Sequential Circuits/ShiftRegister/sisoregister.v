module sisoregister(output q,input clk,rst,d);
wire q0,q1,q2;
dflipflop dff0(q0,clk,rst,d);
dflipflop dff1(q1,clk,rst,q0);
dflipflop dff2(q2,clk,rst,q1);
dflipflop dff3(q,clk,rst,q2);

endmodule