//this code discusses fullsubtractor implementation using logical expressions

module fullsubtractor(output diff,borrow,input a,b,bin);

assign diff = a ^ b ^ bin;
assign borrow = b & bin | ~(a) & bin | ~(a) & b;

endmodule