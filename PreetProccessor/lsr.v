module lsr (num, in, out);
input [31:0] in;
input [4:0] num;
output reg [31:0] out;
always@*
begin
case (num)
5'b00001:out = {{1{1'b0}}, in[31:1]};
5'b00010:out = {{2{1'b0}}, in[31:2]};
5'b00011:out = {{3{1'b0}}, in[31:3]};
5'b00100:out = {{4{1'b0}}, in[31:4]};
5'b00101:out = {{5{1'b0}}, in[31:5]};
5'b00110:out = {{6{1'b0}}, in[31:6]};
5'b00111:out = {{7{1'b0}}, in[31:7]};
5'b01000:out = {{8{1'b0}}, in[31:8]};
5'b01001:out = {{9{1'b0}}, in[31:9]};
5'b01010:out = {{10{1'b0}}, in[31:10]};
5'b01011:out = {{11{1'b0}}, in[31:11]};
5'b01100:out = {{12{1'b0}}, in[31:12]};
5'b01101:out = {{12{1'b0}}, in[31:13]};
5'b01110:out = {{14{1'b0}}, in[31:14]};
5'b01111:out = {{15{1'b0}}, in[31:15]};
5'b10000:out = {{16{1'b0}}, in[31:16]};
5'b10001:out = {{17{1'b0}}, in[31:17]};
5'b10010:out = {{18{1'b0}}, in[31:18]};
5'b10011:out = {{19{1'b0}}, in[31:19]};
5'b10100:out = {{20{1'b0}}, in[31:20]};
5'b10101:out = {{21{1'b0}}, in[31:21]};
5'b10110:out = {{22{1'b0}}, in[31:22]};
5'b10111:out = {{23{1'b0}}, in[31:23]};
5'b11000:out = {{24{1'b0}}, in[31:24]};
5'b11001:out = {{25{1'b0}}, in[31:25]};
5'b11010:out = {{26{1'b0}}, in[31:26]};
5'b11011:out = {{27{1'b0}}, in[31:27]};
5'b11100:out = {{28{1'b0}}, in[31:28]};
5'b11101:out = {{29{1'b0}}, in[31:29]};
5'b11110:out = {{30{1'b0}}, in[31:30]};
5'b11111:out = {{31{1'b0}}, in[31:31]};
default:out = in;
endcase
end
endmodule