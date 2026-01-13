module tb_binaryEncoder();
wire [2:0]y;
reg [7:0]d;
binaryEncoder tb_binaryEncoder(y,d);
initial begin
    $dumpfile("binary_encoder.vcd");
    $dumpvars(0,tb_binaryEncoder);
end
initial begin
    d = 8'b1;#10;
    for(integer i = 0 ; i < 8; i = i + 1)
    begin
        d = d<<1;
        #10;
    end
end
endmodule