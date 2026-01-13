`timescale 1ns/1ps

module tb_srlatch();
wire q,qbar;
reg s,r;
//srlatch tb_srlatch(q,qbar,r,s);
srlatch2 tb_srlatch(q,qbar,r,s);
initial begin
    //$dumpfile("srlatch.vcd");
    $dumpfile("srlatch2.vcd");
    $dumpvars(0,tb_srlatch);

end
initial begin
    #5;
    s = 0; r = 0;
    #10;
    s = 0; r = 1;
    #10;
    s = 1; r = 0;
    #10;
    s = 0; r = 0;
    #10;
    s = 1; r = 1;
    #10;
    
end
endmodule