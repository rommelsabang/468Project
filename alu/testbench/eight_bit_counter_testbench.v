module eight_bit_counter_testbench;

reg CLK,RESET;
wire [7:0] COUNT;

initial begin
    CLK = 0;
    RESET = 1;
    #3 RESET = 0;
    #4 RESET = 1;

    #100 $finish;
end

initial begin
    $monitor($time, " Clk=%b, Reset=%b, Count=%b", CLK, RESET, COUNT);
end

always #5 CLK=~CLK;

eight_bit_counter count(CLK,RESET,COUNT);

endmodule