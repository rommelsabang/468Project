module eight_bit_counter (clk,reset,count);

    input clk, reset;
    output reg[7:0] count;

    always @ (posedge clk) //synchronous 
begin    
if (~reset)
    count <= 8'b00000000;

    else
    count <= count + 1; //increment the counter after each cycle
end 
endmodule 