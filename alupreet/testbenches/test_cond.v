module test_cond;
reg n, z, c, v;
reg [31:0] r2, r3;
reg [3:0] cond;
wire t;

initial
begin

cond = 4'b0000;
#10 cond = 4'b1001;

#10 cond = 4'b0001; r2 = 32'b1; r3 = 32'b1;
#10 cond = 4'b0100; r2 = 32'b1; r3 = 32'b1;
#10 cond = 4'b0101; r2 = 32'b1; r3 = 32'b1;


#10 cond = 4'b0001; r2 = 32'b1; r3 = 32'b0;
#10 cond = 4'b0100; r2 = 32'b1; r3 = 32'b0;
#10 cond = 4'b0101; r2 = 32'b1; r3 = 32'b0;

#10 cond = 4'b0010; r2 = 32'b1; r3 = 32'b1;
#10 cond = 4'b0011; r2 = 32'b1; r3 = 32'b1;

#10 cond = 4'b0010; r2 = 32'b1; r3 = 32'b0;
#10 cond = 4'b0011; r2 = 32'b0; r3 = 32'b1;

#10 cond = 4'b0110; c=1; z = 0;
#10 cond = 4'b0111; c=0;
#10 cond = 4'b1000; c=1;

#10 cond = 4'b0110; c=0; z = 0;
#10 cond = 4'b0111; c=1;
#10 cond = 4'b1000; c=0;

end

initial
begin

$monitor($time, "n = %b, z = %b, c = %b, v = %b, r2 = %b, r3 = %b, cond = %b, t = %b",n, z, c, v, r2, r3, cond, t);

end

cond cond1(n, z, c, v, r2, r3, cond, t);

endmodule
