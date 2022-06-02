/* tb_lab4_g25_p1
module tb_lab4_g25_p1 ();
logic clk, reset, en, y, mesgul, baslat;
logic [4:0] D;


lab4_g25_p1 dut02(.clk(clk), .reset(reset), .en(en), .y(y), 
.mesgul(mesgul), .baslat(baslat), .D(D) );


always begin
clk = 0; #15;
clk = 1; #15 ;
end


initial begin
en=0; #15;
en=1; #30;
reset = 1; baslat = 0; #30;
reset = 0; baslat = 1; #30;
baslat = 0; #400;
D = 5'b01010 ;
$stop;
end


endmodule
