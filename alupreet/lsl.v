module lsl(num, in, out);
input [31:0] in;
input [4:0] num;
output reg[31:0] out;
always@*
begin
case (num)
5'b00001:out = {in[31-1:0],{1{1'b0}}};
5'b00010:out = {in[31-2:0],{2{1'b0}}};
5'b00011:out = {in[31-3:0],{3{1'b0}}};
5'b00100:out = {in[31-4:0],{4{1'b0}}};
5'b00101:out = {in[31-5:0],{5{1'b0}}};
5'b00110:out = {in[31-6:0],{6{1'b0}}};
5'b00111:out = {in[31-7:0],{7{1'b0}}};
5'b01000:out = {in[31-8:0],{8{1'b0}}};
5'b01001:out = {in[31-9:0],{9{1'b0}}};
5'b01010:out = {in[31-10:0],{10{1'b0}}};
5'b01011:out = {in[31-11:0],{11{1'b0}}};
5'b01100:out = {in[31-12:0],{12{1'b0}}};
5'b01101:out = {in[31-13:0],{13{1'b0}}};
5'b01110:out = {in[31-14:0],{14{1'b0}}};
5'b01111:out = {in[31-15:0],{15{1'b0}}};
5'b10000:out = {in[31-16:0],{16{1'b0}}};
5'b10001:out = {in[31-17:0],{17{1'b0}}};
5'b10010:out = {in[31-18:0],{18{1'b0}}};
5'b10011:out = {in[31-19:0],{19{1'b0}}};
5'b10100:out = {in[31-20:0],{20{1'b0}}};
5'b10101:out = {in[31-21:0],{21{1'b0}}};
5'b10110:out = {in[31-20:0],{22{1'b0}}};
5'b10111:out = {in[31-20:0],{23{1'b0}}};
5'b11000:out = {in[31-24:0],{24{1'b0}}};
5'b11001:out = {in[31-25:0],{25{1'b0}}};
5'b11010:out = {in[31-26:0],{26{1'b0}}};
5'b11011:out = {in[31-27:0],{27{1'b0}}};
5'b11100:out = {in[31-28:0],{28{1'b0}}};
5'b11101:out = {in[31-29:0],{29{1'b0}}};
5'b11110:out = {in[31-30:0],{30{1'b0}}};
5'b11111:out = {in[31-31:0],{31{1'b0}}};
default:out = in;
endcase
end
endmodule