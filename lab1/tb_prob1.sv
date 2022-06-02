`timescale 1ns/1ps

module tb_prob1();
logic a, b, c;
logic y;

prob1 dut0(a, b, c, y);

initial begin
   a = 0;  b= 0;   c = 0;  #10;
   a = 1;  #10;
   b = 1;  #10;
   c = 1;  #10;  
   b = 0;  #10;
   a = 0;  #10; 
   c = 0;  #10;

 $stop;

end


endmodule
