`timescale 1ns/1ps
module tb_priority_encoder();
reg [7:0]D;
wire [2:0]y;
priority_encoder tb_priority_encoder(y,D);
initial begin
    $dumpfile("priorityencoder.vcd");
    $dumpvars(0,tb_priority_encoder);
end
initial begin
    repeat(8) begin
        D = $random;
        #10;
    end
end
endmodule