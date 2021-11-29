module test_movr1r2;
reg [31:0] r2;
wire [31:0] r1;
wire n, z, c, v;

initial
begin

r2 = 32'b1;
#10 r2 = 32'b10;
#10 r2 = 32'b100;
#10 r2 = 32'b1000;

end

initial
begin

$monitor ($time, "r2 = %b, r1 = %b, n = %b, z = %b, c = %b, v = %b", r2, r1, n, z, c, v);

end

movr1r2 m2(r2, r1, n, z, c, v);

endmodule
