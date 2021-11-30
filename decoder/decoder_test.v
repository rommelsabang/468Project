module decoder_test;
reg [3:0]A;
wire [15:0]B;

initial 
begin

A= 4'b0010;
#10 A= 4'b1101;
#10 A= 4'b0100;

end
initial
begin
$monitor($time, " sel=%b, Out=%b",A,B);
end

decoder dc(A,B);

endmodule
