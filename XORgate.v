module XORgate  (
    R1,R2,R3
);
    
    input[31:0] R2,R3;
    output [31:0] R1;

    assign R1 = R2^R3; //R2 XOR with R3

endmodule