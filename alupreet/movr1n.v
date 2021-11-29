module movr1n (iv, r1, n, z, c, v);
input [15:0] iv;
output [31:0] r1;
output reg n, z, c, v;
assign r1 = {{16{1'b0}},iv};

assign n = 1'b0;
assign z = 1'b0;
assign c = 1'b0;
assign v = 1'b0;

endmodule
