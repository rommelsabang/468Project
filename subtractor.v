module subtractor (R1,R2,R3); //n bits
    
    input [31:0] R2,R3; //input 
    output reg [31:0] R1; //output 
    

    assign R1 = R2 - R3;
   
    
endmodule