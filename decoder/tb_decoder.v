module tb_decoder();
reg a,b,e;
wire y0,y1,y2,y3;
decoder duv(a,b,e,y0,y1,y2,y3);
initial begin
    $dumpfile("decoder.vcd");
    $dumpvars(1,tb_decoder);
    #5;
    e = 0; 
    #5;
    e = 1;a = 0; b = 0;
    #5;
    e = 1;a = 0; b = 1;
    #5;
    e = 1;a = 1; b = 0;
    #5;
    e = 1;a = 1; b = 1;
    #5;
end
endmodule