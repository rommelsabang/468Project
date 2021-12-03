module memorycontrol ( clk, Op, S1, S2, abda, sell, sells, rw, ldfr, doutstr, dinldr);
input [31:0] S1, S2, dinldr;
input [3:0] Op;
input clk;
output reg sell, sells;
output reg [1:0] rw;
output reg [31:0] doutstr, abda, ldfr;

always @ (posedge clk)
begin
	if (Op == 4'b1001)
	begin
		rw <= 2'b01;
		sells <= 1'b1;
		sell <= 1'b1;
		abda <= S1;
		ldfr <= dinldr;
		rw = 2'b00;
	end
	else if (Op == 4'b1010)
	begin
		rw <= 2'b10;
		sells <= 1'b1;
		abda <= S1;
		doutstr <= S2;
		rw = 2'b00;
	end
	else
	begin
		rw = 2'b00;
		sell = 1'b0;
		sells = 1'b0;	
	end
	
end

endmodule