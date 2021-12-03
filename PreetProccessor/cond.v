module cond(n, z, c, v, r2, r3, cond, t);
input n, z, c, v;
input [31:0] r2, r3;
input [3:0] cond;
output reg t;

always @*
begin

if ((r2==r3) && (cond == 4'b0001 || cond == 4'b0100 || cond == 4'b0101))
t = 1'b1;
else if ((r2>r3) && (cond == 4'b0010 || cond == 4'b0100))
t = 1'b1;
else if ((r2<r3) && (cond == 4'b0011 || cond == 4'b0101))
t = 1'b1;
else if ( (c==1 && z==0) && (cond == 4'b0110))
t = 1'b1;
else if ( (c==0) && (cond == 4'b0111))
t = 1'b1;
else if ( (c==1) && (cond == 4'b1000))
t = 1'b1;
else if ((cond == 4'b0000) || (cond>4'b1000))
t = 1'b1;
else
begin
t = 1'b0;
end

end

endmodule