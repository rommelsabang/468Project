module test_processor;
reg clk, enable, reset;
wire n, z, c, v,
selldrmux, seladdbusmux;
wire [1:0] rw;
wire [3:0] ldrdest;
wire [7:0] count; 
wire [15:0] en, ldrdestdec; 
wire [31:0] din, dout, addressbus, fetch, s1, s2, result,R, q0, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15,ldrram, addbusaccess, pcinstruct;

ram RAM_69(pcinstruct, addbusaccess, rw , dout, din, fetch, enable); // dout is output from memcontrol input for ram LDR cycle din is is output from ram during an LDR cycle iput for memcontrol
decoder D69(fetch[22:19],en);
registerbank BANKRANK69(en, result, din, ldrdestdec, rw, q0, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15);
mux16x1 MUX69(q0, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15, fetch[14:11], s2);
mux16x1 MUX70(q0, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15, fetch[18:15], s1);
alu ALU69(s2, s1, fetch, result, n, z, c, v);
memorycontrol MC69( clk, fetch[27:24], s1, s2, addbusaccess, selldrmux, seladdbusmux, rw, ldrram, dout, din);
//addbus_mux ADBMUX69( clk, rw, addbusaccess, pcinstruct, addressbus);
//ldr_mux LDRMUX69(selldrmux, din, result, R,fetch[27:24]);
eight_bit_counter COUNT69( clk, reset, count, pcinstruct);
deststore DS69(fetch[22:19], fetch[27:24], ldrdest);
decoder D70(ldrdest, ldrdestdec);

initial begin

	clk =0; enable=0; reset=1; 
	#3 reset =0;
	#1 enable =1;
	#3 reset =1; 
	#8 enable =1;   //$readmemb("C:/Users/preet/Downloads/STR Instruction Set v2.txt", RAM_69.ram);
	#10 enable =1;   		
	#10 enable =1;   		
	#10 enable =1;   		
	#10 enable =1;   		
	#10 enable =1;   		
	#10 enable =1;   		
	#10 enable =1;   

 	#150 $finish;

end

initial begin

$monitor( $time ,
//" din=%b ", din,
//" dout=%b ", dout,
" q0=%b ", q0,
" q1=%b ", q1,
" q2=%b ", q2,
" q3=%b ", q3,
" q4=%b ", q4,
" q5=%b                                                 ", q5,
" q6=%b ", q6,
" q7=%b ", q7,
" q8=%b ", q8,
" q9=%b ", q9,
"q10=%b ", q10,
"q11=%b                                                ", q11,
" q12=%b ", q12,
"q13=%b ", q13,
"q14=%b ", q14,
"q15=%b                                                                                                                                                              ", q15,
"fetch=%b ", fetch,
"n=%b ", n,
"z=%b ", z,
"c=%b ", c,
"v=%b                                                                                                                                                                                                                       ", v,
"result=%b ", result,
"s1=%b ", s1,
"s2=%b                                                                                                                                                           ", s2,
"addressbus=%b", addressbus,
" pcinstruct=%b ", pcinstruct,
" seladdbusmux=%b", seladdbusmux,
" addbusaccess=%b", addbusaccess,
" dout=%b", dout,
" rw=%b                                                                                                                                                                                                                ",rw);

end


always 
begin

#5 clk=~clk;
if(rw == 2'b10) 
begin $writememb("C:/Users/preet/Downloads/ALU Instruction Set v2.txt", RAM_69.ram); 
end 
else begin $readmemb("C:/Users/preet/Downloads/ALU Instruction Set v2.txt", RAM_69.ram); 
end

end

endmodule
