module mux16x1_test;
reg [31:0] A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15;
reg [3:0] B; //select
wire [31:0] C; // output

initial
begin
A2 = 32'b1;
A1 = 32'b101;
A15 = 32'b101010101010;
B = 4'b0010; 
#10 B = 4'b0001;
#10 B = 4'b1111;

end 

initial
begin
$monitor($time, " sel=%b, Out=%b",B,C);
end

mux16x1 mult(A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,B,C);

endmodule
