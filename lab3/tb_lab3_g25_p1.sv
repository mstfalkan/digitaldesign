/* tb_lab3_g25_p1.sv
module tb_lab3_g25_p1 ();


 logic clk;
logic reset;
logic en;
 logic [7:0] psc;
 logic yon;
 logic tick;
 logic [7:0] count;
lab3_g25_p1 dut0(.clk(clk), .reset(reset), .en(en), .psc(psc), .yon(yon), .tick(tick), 
.count(count));


always begin
		clk = 0; #20; clk = 1; #20;
	end
   initial begin
		reset = 1; 
		en = 1; 
		yon=0; 
		count = 8'b0;
		tick = 0;
		psc=8'b10101010; 
	   $stop;
	end
	
	
endmodule
