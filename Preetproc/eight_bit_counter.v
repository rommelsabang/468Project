module eight_bit_counter (rw, clk,reset,count,count_32bit);
    input [1:0] rw;
    input clk, reset;
    output reg[7:0] count;
	output reg [31:0] count_32bit	;

    always @ (posedge clk) //synchronous 
begin    
if (~reset)
    count <= 8'b00000000;

    else
    if(rw == 2'b01 || rw == 2'b10)
        count = count;
    else begin
        count = count + 1; //increment the counter after each cycle
    end
end 
assign count_32bit = {{24{1'b0}},count};

endmodule 
