module orgate (R1,R2,R3);
    
    input [31:0] R2,R3;
    output [31:0] R1;

    assign R1 = R2|R3; //bitwise or, for logical use ||

endmodule