module tb_alu();
    reg  [7:0] a, b;
    reg  [2:0] opcode;
    wire [7:0] y;

    alu uut (y, a, b, opcode);

    initial begin
        $dumpfile("alu.vcd");
        $dumpvars(0, tb_alu);
    end

    integer i;
    initial begin
        a = 10;
        b = 20;
        opcode = 0;
        #5;

        for (i = 0; i < 8; i = i + 1) begin
            opcode = i;
            #10;
        end

        $finish;
    end
endmodule
