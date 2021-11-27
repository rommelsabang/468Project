module  adder (R1,R2,R3);

input [31:0] R2,R3;
output [31:0] R1;   //regular output that will be displayed
wire [32:0] R1_carry;  //output with extra bit to check for carry
//output reg C;   //carry flag

assign R1 = R2 + R3; //output to be displayed
assign R1_carry = R2 + R3; //extra not output

    //always @ (*)
     
    //begin
        //if (R1_carry[32]==1) //check carry bit
        //assign C = 1'b1; // carry flag to 1
        
        //else
        //assign C = 1'b0;
    //end
    
endmodule
