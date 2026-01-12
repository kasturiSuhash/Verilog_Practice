module tb_halfadder();
wire sum, carry;
reg a,b;

halfadder tb_halfadder (a,b,sum,carry);

initial
begin
    $dumpfile("halfadder.vcd");
    $dumpvars(0,tb_halfadder);
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