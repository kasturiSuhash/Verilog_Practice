//sr latch using behavioural modelling 
module srlatch(output reg q,output qbar, input r,s);
always@(s,r) begin 
if(~s && r)
q = 1'b0;
else if(s && ~r)
q = 1'b1;
else if(~s && ~r)
q = q;
else
q  = 1'bx;
end
assign qbar = ~q;
endmodule