`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:11:05 03/20/2017 
// Design Name: 
// Module Name:    ex2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ex2(input clk,
			input reset,
			input A,
			input G,
			input T,
			input C,
			output out
				 );
		
localparam STATE_INITIAL = 3'd0 ,
STATE_1 = 3'd1 ,
STATE_2 = 3'd2 ,
STATE_3 = 3'd3 ,
STATE_4 = 3'd4;
		
		wire A1;
		wire G1;
		wire T1;
		wire C1;
		reg [2:0] current_state;
		reg [2:0] next;


		debouncer db(A1, clk, reset, A);
		debouncer db1(G1, clk, reset, G);
		debouncer db2(T1, clk, reset, T);
		debouncer db3(C1, clk, reset, C);
		
		assign out = (current_state == STATE_4);
		
		always@ ( posedge clk ) begin
  if ( reset ) 
    current_state = STATE_INITIAL ;
  else 
    current_state = next ;
end
		
		always@(*) begin
			if(reset == 1)begin
				next = STATE_INITIAL;
				
			end
			else begin
				 case(current_state)
				 STATE_INITIAL: if(G1) begin next = STATE_1; end
							 else begin  next = current_state;	end						
				 STATE_1: if(G1) begin  next = STATE_2; end 
							 else begin  next = current_state; end
				 STATE_2: if(T1) begin  next = STATE_3; end
							 else if(G1) begin  next = STATE_2; end
									else begin  next = current_state;end	 									
				 STATE_3: if(C1) begin  next = STATE_4;end
							 else begin  next = current_state;end
					STATE_4: next = current_state;
					endcase
			end
		end

endmodule
