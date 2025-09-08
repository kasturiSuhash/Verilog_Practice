module fulladder(
    input a,b,cin,
    output reg sum,cout);
    always@(*) begin
        sum = a^b^cin;
        cout = (a&b)|(a&cin)|(b&cin);
    end
endmodule

