//4 bit comparator 
module comparator(output reg a_grt_b,a_less_b,a_eq_b,input [3:0]a,b);


always@(*) begin 
    //initialise all outputs to zero 
a_eq_b = 0;
a_grt_b = 0;
a_less_b = 0;
//compare the inputs 
if(a > b)
a_grt_b = 1'b1;

else if(a < b)
a_less_b = 1'b1;
else if(a == b)
a_eq_b = 1'b1;
else
$display("enter valid values of a and b");
end
endmodule