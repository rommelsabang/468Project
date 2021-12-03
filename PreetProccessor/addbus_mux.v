module addbus_mux(clk, rw,din,pcin,out);
input [31:0] din;
input [31:0] pcin;
input clk;
input [1:0] rw;
output reg [31:0] out;

always @ (posedge clk)
begin
case(rw)
2'b10: out = din;  //select = 1 out = add bus data access
2'b01: out = din; 
default: out =  pcin; // select = 0 out = pc instruction access

endcase
end
endmodule
