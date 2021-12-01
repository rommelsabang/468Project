module eight_bit_counter (clk,reset,count,count_32bit);

    input clk, reset;
    output reg[7:0] count;
	output reg [31:0] count_32bit	;

    always @ (posedge clk) //synchronous 
begin    
if (~reset)
    count <= 8'b00000000;

    else
    count <= count + 1; //increment the counter after each cycle
end 
assign count_32bit = {{24{1'b0}},count};

endmodule 
