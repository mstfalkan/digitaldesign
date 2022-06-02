/* lab4_g25_p1.sv
module lab4_g25_p1(
		input logic clk, reset,en,
		input logic [4:0]D,
		input logic baslat,
		output logic y,
		output logic mesgul);
 typedef enum {s0,s1, s2, s3, s4, s5, s6, s7} statetype;
 statetype state,next_state;
 
 
 always_ff @(posedge clk)
 begin
 if(en==1)
 begin
 if(reset) 		state <= s0;
 else 	state <= next_state;
 end 	end
 always_comb	 begin
 case(state)
		s0: 	begin 
		if(baslat) 
		next_state = s1;
			else
		next_state = s0;
		end
		s1:    begin 
		 if(baslat) 
		next_state = s0; 
			else
		next_state = s2;
		end
		s2: 	begin 
		 if(baslat) 
		next_state = s0;
			else
		next_state = s3; 
		end
		s3:	 	begin 
		 if(baslat) 
		next_state = s0; 
			else
		next_state = s4; 
		end
		s4: 	begin 
		 if(baslat) 
		 next_state = s0; 
			else
		next_state = s5;
		end
		s5: 	begin 
		 if(baslat) 
		 next_state = s0; 
			else
		next_state = s6; 
		end
		s6: 	begin 
		if(baslat) 
		next_state = s0; 
			else
		next_state = s7; 
		end
		s7: 	begin 
		next_state = s0;
		end
		endcase
		end
		
		
always_comb
begin
case(state)
		s0: 	begin
		mesgul = 0;
		y = 1; 		end
		s1: 	begin
		mesgul = 1;
		y = 0; 		end
		s2: 	begin
		mesgul = 1;
		y = D[0]; 	end
		s3: 	begin
		mesgul = 1;
		y = D[1];	 end
		s4: 	begin
		mesgul = 1;
		y = D[2];	 end
		s5: 	begin
		mesgul = 1;
		y = D[3]; 	end
		s6: 	begin
		mesgul = 1;
		y = D[4];	 end
		s7: 	begin
		mesgul = 0;
		y = 1;	 end
		endcase
		end
		endmodule
