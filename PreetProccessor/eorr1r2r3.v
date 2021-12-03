module eorr1r2r3 (r2, r3, r1, n, z, c, v);
input [31:0] r2, r3;
output reg n, z, c, v;
output reg [31:0] r1;
wire [31:0] r0, r4;
assign r0 = r2^r3;
assign r4 = ~r0 + 1'b1;
always @ *
begin
r1 = r0;
n = r4[31];
c = 0'b0;
v = 0'b0;

if ( r0[31:0] == 32'b0)
	z = 1'b1;
else
begin
	z = 1'b0;
end

end
endmodule
