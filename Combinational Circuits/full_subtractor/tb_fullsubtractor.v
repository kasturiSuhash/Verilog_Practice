module tb_fullsubtractor();
wire diff,borrow;
reg a,b,bin;

fullsubtractor tb_fullsubtractor(diff,borrow,a,b,bin);
integer  i;
initial begin 
$dumpfile("fullsubtractor.vcd");
$dumpvars(0,tb_fullsubtractor);
end

initial
begin
    for(i = 0; i < 7; i = i + 1)
    begin
        a = $random%2;
        b = $random%2;
        bin = $random %2;
        #10;
    end
    $finish;
end


endmodule