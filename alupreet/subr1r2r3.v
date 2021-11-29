module subr1r2r3 (r2, r3, r1, n, z, c, v);
input [31:0] r2, r3;
output reg n, z, c, v;
output reg [31:0] r1;
wire [32:0] r0;
assign r0 = r2 - r3;
always @ *
begin
r1 = r0[31:0];
n = r1[31];
c = r0[32];

if ( r0[31:0] == 32'b0)
	z = 1'b1;
else
begin
	z = 1'b0;
end

if (r2[31] == 1 && r3[31] == 0 && r0[31] == 0)
	v = 1'b1;
else if (r2[31] == 0 && r3[31] == 1 && r0[31] == 1)
	v = 1'b1;
else
begin
	v = 1'b0;
end

end
endmodule
