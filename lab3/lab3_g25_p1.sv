/* lab3_g25_p1.sv
module lab3_g25_p1(
	input logic clk,reset,en, input logic [7:0] psc, input logic yon,
	output logic tick, output logic [7:0] count 	);
	
always_ff @(posedge clk)
begin // devre ileri yonlu sayilacak sekilde calismaktadir
if (yon == 0) begin if (en)begin if (reset == 0)
count <= 8'b0;
else begin
if (count == psc) begin
count <=8'b0;
tick =1; end
if (count != psc) 
begin
count<=count +1'b1;
tick =0;
end end end end
// devre geri yonlu sayilacak sekilde calismaktadir
if (yon == 1) begin if(en) begin if (reset == 0)
count <= psc;
else begin
if (count == 0) begin
count <=psc;
tick =1;
end
else begin
count<=count - 1'b1;
tick =0;
end end end end end endmodule
