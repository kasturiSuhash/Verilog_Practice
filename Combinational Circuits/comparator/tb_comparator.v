module tb_comparator();
reg [3:0]a,b;
wire a_eq_b,a_less_b,a_grt_b;
comparator tb_comparator(a_grt_b,a_less_b,a_eq_b,a,b);
initial begin
$dumpfile("comparator.vcd");
$dumpvars(0,tb_comparator);
end
initial begin
repeat(5) begin
    a = $random%16; b = $random%16;
    #10;
end
end
endmodule