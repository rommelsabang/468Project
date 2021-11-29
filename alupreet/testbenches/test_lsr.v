module test_lsr;
reg [31:0] in;
reg [4:0] num;
wire [31:0] out;

initial
begin

in = 32'b0001; num = 5'b00100;
#10 in = 32'b000100; num = 5'b1;
#10 in = 32'b000100000000000; num = 5'b100;

end

initial
begin

$monitor ($time, "in = %b, out = %b, num = %b", in, out, num);

end

lsr lsr1(num, in, out);

endmodule
