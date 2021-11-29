module test_rr;
reg [31:0] in;
reg [4:0] num;
wire [31:0] out;

initial
begin

in = 32'b0001; num = 4'b00100;
#10 in = 32'b1000; num = 4'b11;
#10 in = 32'b1000000000000000000000; num = 4'b1000;

end

initial
begin

$monitor ($time, "in = %b, out = %b, num = %b", in, out, num);

end

rr rr1 (num, in, out);

endmodule
