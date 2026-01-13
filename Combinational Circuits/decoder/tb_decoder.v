module tb_decoder();
reg [2:0]i;
wire [7:0]y;
decoder tb_decoder(y,i);
initial begin
    $dumpfile("decoder.vcd");
    $dumpvars(0,tb_decoder);
end   
initial begin
#5; i = 000;
#5; i = 001;
#5; i = 010;
#5; i = 011;
#5; i = 100;
#5; i = 101;
#5; i = 110;
#5; i = 111;

$finish();
end
endmodule