module ram (addr,rw,din,dout,fetch,f,clk,enable);

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
	
		if (rw==2'b00) //not ldr or str
		begin
		fetch <= ram[addr]; 
		end
		else //read or write
		begin
			if (rw==2'b01) 
			begin    
				dout <= ram[addr]; //read

			end
	
			else
			begin
				ram[addr] <= din; //write
		
			end

			
		end
	end
	
	else
	begin
	
	dout = 32'bz; //high impedance state(signal is left open)
	
	end
end
endmodule


