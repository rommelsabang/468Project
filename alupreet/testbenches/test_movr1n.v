module test_movr1n;
reg [15:0] iv;
wire [31:0] r1;
wire n, z, c, v;

initial
begin

iv = 16'b1;
#10 iv = 16'b10;
#10 iv = 16'b100;
#10 iv = 16'b1000;

end

initial
begin

$monitor ($time, "iv = %b, r1 = %b, n = %b, z = %b, c = %b, v = %b", iv, r1, n, z, c, v);

end

movr1n m1(iv, r1, n, z, c, v);

endmodule