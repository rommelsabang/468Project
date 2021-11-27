module ram_testbench_write;


reg CLK,RW,ENABLE,F;
reg [31:0] DIN;
reg [31:0] ADDR;
wire [31:0] DOUT,FETCH;

ram RAM_12(ADDR,RW,DIN,DOUT,FETCH,F,CLK,ENABLE); 

initial
begin  

  //$readmemh("E:/ENGR 4th year/ENGR 468/project_vs/data_h.txt", RAM_12.ram);

	CLK = 0; F=1;
   ENABLE =0;   RW=0;	ADDR=32'd0;	DIN =32'hAAAAAAA0;
#10 ENABLE =1;   RW=0;	ADDR=32'd0;	DIN =32'hAAAAAAA1;
#10 ENABLE =1;   RW=0;	ADDR=32'd1;	DIN =32'hAAAAAAA2;
#10 ENABLE =1;   RW=0;	ADDR=32'd2;	DIN =32'hAAAAAAA3;
#10 ENABLE =1;   RW=0;	ADDR=32'd3;	DIN =32'hAAAAAAA4;
#10 ENABLE =1;   RW=0;	ADDR=32'd4;	DIN =32'hAAAAAAA5;
#10 ENABLE =1;   RW=0;	ADDR=32'd5;	DIN =32'hAAAAAAA6;
#10 ENABLE =1;   RW=0;	ADDR=32'd6;	DIN =32'hAAAAAAA7;
#10 ENABLE =1;   RW=0;	ADDR=32'd7;	DIN =32'hAAAAAAA8;
#10

  $writememh("E:/ENGR 4th year/ENGR 468/project_vs/data_h.txt", RAM_12.ram);

#50 $finish; 
end


initial
begin
$monitor($time, " DIN %h", DIN);
end

always #5 CLK=~CLK;

endmodule