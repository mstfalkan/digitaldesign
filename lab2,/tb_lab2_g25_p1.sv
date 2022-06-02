/* lab2_g25_p1.sv
module lab2_g25_p1(
	input logic clk, rst, en, d,
	output logic q0,q1,q2
);
//latch
always_latch
	if(clk) q0<= d;
//rising edge flip flop
always_ff @(posedge clk)
	q1 <= d;
//falling edge flip flop
always_ff @(negedge clk)
	q2 <= d;
endmodule