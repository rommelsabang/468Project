module ram (addr,rw,din,dout,fetch,clk,enable);

input clk,enable; //data in 
input [1:0] rw; //readwrite
input [31:0] din; //data in
input [31:0] addr; //adress bus 
output reg [31:0] dout; //data out 
output reg [31:0] fetch; //instruction fetch
reg [31:0] ram[0:(1<<16)-1];

always @ (posedge clk) //synchronous 
begin
	if (enable)
	begin
	casex(rw)
	2'b01: dout <= ram[addr]; //read
	2'b10: ram[addr] <= din; //write
		default: fetch <= ram[addr]; //not read write and takes from counter
	endcase

//previous
//		if (rw==2'b01) //read
//		begin
//		dout <= ram[addr];
//		end
//		else if (rw==2'b10) //write
//		begin
//		ram[addr] <= din;
//		end
//		
//		else //address from counter
//		begin
//		fetch <= ram[addr]; //does not read or write, gets intruction fetch from the counter data
//		end
	
	end
	
	else
	begin
	
	dout = 32'bz; //high impedance state(signal is left open)
	
	end
end
endmodule

