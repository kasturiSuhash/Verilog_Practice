`timescale 1ns/1ps
module tb_demux();
reg [1:0] sel;
reg i;
wire y0,y1,y2,y3;
demux tb_demux(y0,y1,y2,y3,sel,i);
initial begin
    $dumpfile("demux.vcd");
    $dumpvars(0,tb_demux);
end
initial  begin
    sel=2'b00; i=0; #1;
    sel=2'b00; i=1; #1;
    sel=2'b01; i=0; #1;
    sel=2'b01; i=1; #1;
    sel=2'b10; i=0; #1;
    sel=2'b10; i=1; #1;
    sel=2'b11; i=0; #1;
    sel=2'b11; i=1; #1;
end
endmodule