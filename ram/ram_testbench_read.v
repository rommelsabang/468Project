module ram_testbench_read;

reg CLK,ENABLE;
reg [1:0] RW;
reg [31:0] DIN;
reg [31:0] ADDR;
wire [31:0] DOUT,FETCH;

ram RAM_12(ADDR,RW,DIN,DOUT,FETCH,CLK,ENABLE); 

initial
begin  

  $readmemb("E:/ENGR 4th year/ENGR 468/test documents from canvas/LDR Instruction Set v2.txt", RAM_12.ram);


	CLK = 0;
   ENABLE =0;   RW=2'b0;	ADDR=32'd0;  	
#5 ENABLE =1;   RW=2'b01;	ADDR=32'd0;	
#5 ENABLE =1;   RW=2'b01;	ADDR=32'd1;	
#5 ENABLE =1;   RW=2'b01;	ADDR=32'd2;	
#5 ENABLE =1;   RW=2'b01;	ADDR=32'd3;	
#5 ENABLE =1;   RW=2'b01;	ADDR=32'd4;	
#5 ENABLE =1;   RW=2'b01;	ADDR=32'd5;	
#5 ENABLE =1;   RW=2'b01;	ADDR=32'd6;	
#5 ENABLE =1;   RW=2'b01;	ADDR=32'd7;	

#50 $finish; 
end


initial
begin
$monitor($time, " data at ADDR %b is %b", ADDR, DOUT);
end

always #5 CLK=~CLK;

endmodule
