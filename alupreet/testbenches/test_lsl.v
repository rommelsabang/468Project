module test_lsl;
reg [31:0] in;
reg [4:0] num;
wire [31:0] out;

initial
begin

in = 32'b0001; num = 4'b00001;
#10 in = 32'b00100; num = 4'b00001;
#10 in = 32'b0001; num = 4'b000100;

end

initial
begin

$monitor ($time, "in = %b, out = %b, num = %b", in, out, num);

end

lsl lsl1 (num, in, out);

endmodule
