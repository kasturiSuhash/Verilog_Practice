module tb_tflipflop();
wire q, qbar;
reg t, clk, rst;

t_flipflop dut(q, qbar, t, clk, rst);

always #5 clk = ~clk;   // 10 ns clock

initial begin
    clk = 0;            // IMPORTANT FIX
    rst = 0;
    t = 0;

    $dumpfile("tflipflop.vcd");
    $dumpvars(0, tb_tflipflop);

    // Test sequence
    #10 rst = 1; t = 0;   // normal hold
    #10 t = 1;            // toggle
    #10 t = 0;            // hold
    #10 t = 1;            // toggle
    #20;

    $finish;
end

endmodule
