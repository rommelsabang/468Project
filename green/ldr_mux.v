module ldr_mux(sel,din,rin,out,op);
input [31:0] rin,din;
input sel;
input [3:0]op;
output reg [31:0] out;


always @*
begin
if (op==4'b1000)
begin
out = 32'bx;
end
else
begin
case(sel)

1'b1: out = din; // select = 1 ouput is LDR data from ram
1'b0: out = rin; // select = 0 output = result from the alu

endcase
end
end
endmodule
