module tb_universal_shift_register;

reg clk, rst;
reg [1:0] sel;
reg [3:0] pdata;
reg sin_l, sin_r;
wire [3:0] q;

universal_shift_register dut (
    .clk(clk),
    .rst(rst),
    .sel(sel),
    .pdata(pdata),
    .sin_l(sin_l),
    .sin_r(sin_r),
    .q(q)
);

// Clock generation
always #5 clk = ~clk;

initial begin
    $dumpfile("universal_shift_register.vcd");
    $dumpvars(0, tb_universal_shift_register);

    clk = 0;
    rst = 1;
    sel = 2'b00;
    pdata = 4'b0000;
    sin_l = 0;
    sin_r = 0;

    #10 rst = 0;

    // Parallel Load
    #10 sel = 2'b11; pdata = 4'b1010;

    // Hold
    #10 sel = 2'b00;

    // Shift Right
    #10 sel = 2'b01; sin_r = 1;
    #10 sin_r = 0;

    // Shift Left
    #10 sel = 2'b10; sin_l = 1;
    #10 sin_l = 0;

    // Hold again
    #10 sel = 2'b00;

    #20 $finish;
end

endmodule
