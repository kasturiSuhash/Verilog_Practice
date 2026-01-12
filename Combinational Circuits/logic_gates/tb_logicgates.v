`timescale 1ns/1ps
module tb_logicgates;
reg X,Y;
wire and1, or1, nand1, nor1, xor1, xnor1;
logic_gates duv(.and1(and1), .or1(or1), .nand1(nand1), .nor1(nor1), .xor1(xor1), .xnor1(xnor1),.x(X),.y(Y));
initial begin
$dumpfile("logic_gates.vcd");   
$dumpvars(1,tb_logicgates);   
#5;
X = 0; Y = 0;
#5;
X = 0; Y = 1;
#5;
X = 1; Y = 0;
#5;
X = 1; Y = 1;
#5;
$finish;
end 
endmodule