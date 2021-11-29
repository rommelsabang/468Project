module test_andr1r2r3;
reg [31:0] r2, r3;
wire n, z, c, v;
wire [31:0] r1;

initial
begin

r2 = 32'b1; r3 = 32'b1;
#10 r2 = 32'b10; r3 = 32'b01;
#10 r2 = 32'b100; r3 = 32'b100;
#10 r2 = 32'b11; r3 = 32'b11;
#10 r2 = 32'b1110000; r3 = 32'b1100;
#10 r2 = 32'b10000000000000000000000000000000; r3 = 32'b10000000000000000000000000000000;
#10 r2 = 32'b00000000000000000000000000000000; r3 = 32'b10000000000000000000000000000000;

end

initial
begin

$monitor ($time, " r2 = %b, r3 = %b, r1 = %b, n = %b, z = %b, c = %b, v = %b", r2, r3, r1, n, z, c, v);

end

andr1r2r3 and1(r2, r3, r1, n, z, c, v);

endmodule
