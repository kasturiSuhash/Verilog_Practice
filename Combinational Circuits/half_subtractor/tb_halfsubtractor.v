module tb_halfsubractor();
wire diff, borrow;
reg a,b;

halfsubractor tb_halfsubractor (diff,borrow,a,b);

initial
begin
    $dumpfile("halfsubractor.vcd");
    $dumpvars(0,tb_halfsubractor);
end

initial begin
    #10;
    a = 0; b = 0;
    #10;
    a = 0; b = 1;
    #10;
    a = 1; b = 0;
    #10;
    a = 1; b = 1;
    #10;
    $finish;
end
endmodule