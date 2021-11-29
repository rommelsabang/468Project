module test_alu;
reg [31:0] a, d, inf;
wire [31:0] r;
wire n, z, c, v;

initial
begin

a = 32'b10; d = 32'b10; inf = 32'b00000000100010010001100010000000;
#10 a = 32'b10; d = 32'b10; inf = 32'b00010000100010010001100010000000;
#10 a = 32'b10000000000000000000000000000000; d = 32'b10000000000000000000000000000000; inf = 32'b00010000100010010001100010000000;
#10 a = 32'b10000000000000000000000000000000; d = 32'b10000000000000000000000000000000; inf = 32'b00010001100010010001100010000000;
#10 a = 32'b00000000000000000000000000000001; d = 32'b00000000000000000000000000000001; inf = 32'b00000010100010010001100010000000;
#10 a = 32'b10; d = 32'b10; inf = 32'b00010000100010001000100010000001;
#10 a = 32'b100; d = 32'b10; inf = 32'b00000000000010001000100001000001;

end

initial
begin

$monitor ($time, "a = %b, d = %b, inf = %b, r = %b, n = %b, z = %b, c = %b, v = %b", a, d, inf, r, n, z, c, v);

end

alu alu1(a, d, inf, r, n, z, c, v);

endmodule