module tb_mux();
reg i0,i1,i2,i3,s1,s0;
wire y;
mux duv(i0,i1,i2,i3,s1,s0,y);
integer i;
initial begin
    $dumpfile("mux.vcd");
    $dumpvars(1,tb_mux);
    {i3,i2,i1,i0} = 4'b1010;
    #5;
    s1 = 0; s0 = 0;
    #5;
    s1 = 0; s0 = 1;
    #5;
    s1 = 1; s0 = 0;
    #5;
    s1 = 1; s0 = 1;
    #5;
    $finish;
end
endmodule