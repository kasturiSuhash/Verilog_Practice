module half_subtractor(
    input a,b,
    output reg diff, bo);
always @(*) begin 
diff = a^b;
bo  = (~a & b);
end  
endmodule
