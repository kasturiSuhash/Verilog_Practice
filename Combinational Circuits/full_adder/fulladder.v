//The full adder is implemented using two half adders

module fulladder(output sum,carry,input a,b,cin);
wire sum1,carry1,carry2;
halfadder ha1 (sum1,carry1,a,b);
halfadder ha2 (sum,carry2,sum1,cin);
assign carry = carry1 | carry2;

endmodule