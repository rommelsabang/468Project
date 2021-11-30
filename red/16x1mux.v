module mux16x1(Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15,sel,out);
input [31:0] Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8,Q9,Q10,Q11,Q12,Q13,Q14,Q15;
input [3:0] sel;
output [31:0] out;
reg [31:0] out;
always @*
begin
case(sel)
4'b0000: out = Q0;
4'b0001: out = Q1;
4'b0010: out = Q2;
4'b0011: out = Q3;
4'b0100: out = Q4;
4'b0101: out = Q5;
4'b0110: out = Q6;
4'b0111: out = Q7;
4'b1000: out = Q8;
4'b1001: out = Q9;
4'b1010: out = Q10;
4'b1011: out = Q11;
4'b1100: out = Q12;
4'b1101: out = Q13;
4'b1110: out = Q14;
4'b1111: out = Q15;
endcase
end
endmodule
