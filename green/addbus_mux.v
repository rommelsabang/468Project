module addbus_mux(sel,din,pcin,out);
input [31:0] din;
input [7:0] pcin;
input sel;
output reg [31:0] out;

always @*
begin
case(sel)

1'b1: out = din;  //select = 1 out = add bus data access
1'b0: out = {{24{1'b0}}, pcin}; // select = 0 out = pc instruction access

endcase
end
endmodule
