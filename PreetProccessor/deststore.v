module deststore (destination, op, ldrdest);
input [3:0] destination;
input [3:0] op;
output reg [3:0] ldrdest;
always @*
begin
if(op == 4'b1001)
	ldrdest = destination;
else
begin
	ldrdest = ldrdest;
end
end
endmodule

