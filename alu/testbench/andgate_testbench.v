module andgate_testbench;

reg[31:0] r2,r3;
wire [31:0]r1;

initial begin
     r2 = 32'b00000000000000000000000000000001; r3 = 32'b00000000000000000000000000000001;
    #10 r2 = 32'b00000000000000000000000000000010; r3 = 32'b00000000000000000000000000000001;
    #10 r2 = 32'b00000000000000000000000000000100; r3 = 32'b00000000000000000000000000000010;
    #10 r2 = 32'b00000000000000000000000000001000; r3 = 32'b00000000000000000000000000000001;
end

initial begin
    
    $monitor ($time, " R2 = %b, R3 = %b , R1 = %b", r2,r3,r1);

end

andgate and_(r1,r2,r3);

endmodule