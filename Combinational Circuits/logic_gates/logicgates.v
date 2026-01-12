module logic_gates(
    input wire x, y,
    output reg and1, or1, nand1, nor1, xor1, xnor1
);

always @(*) begin
    // OR gate
    if (x == 1 || y == 1) or1 = 1;
    else or1 = 0;

    // AND gate 
    if (x == 1 && y == 1) and1 = 1;
    else and1 = 0;

    // NAND gate
    if (x == 1 && y == 1) nand1 = 0;
    else nand1 = 1;

    // NOR gate 
    if (x == 0 && y == 0) nor1 = 1;
    else nor1 = 0;

    // XOR gate
    if (x == 1 && y == 1) xor1 = 0;
    else if (x == 0 && y == 0) xor1 = 0;
    else xor1 = 1;

    // XNOR gate
    if (x == 1 && y == 1) xnor1 = 1;
    else if (x == 0 && y == 0) xnor1 = 1;
    else xnor1 = 0;
end

endmodule