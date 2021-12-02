module movr1r2 (r2, r1, n, z, c, v);
input [31:0] r2;
output [31:0] r1;
output reg n, z, c, v;
assign r1 = r2;

assign n = 1'b0;
assign z = 1'b0;
assign c = 1'b0;
assign v = 1'b0;

endmodule
