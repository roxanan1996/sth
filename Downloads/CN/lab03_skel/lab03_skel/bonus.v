`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:42:24 03/13/2017 
// Design Name: 
// Module Name:    bonus 
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
module bonus(output [7:0]led,						
						input reset,
						input clk
						 );
						 
	reg [7:0] counter;
	reg [31:0] counter2;
	
		
	always@(posedge clk, posedge reset) begin
		if(reset == 1) begin
			counter2 <= 0;
			counter <= 0;
		end else begin
					counter2 <= counter2 + 1;
					if(counter2 % 64000000 == 0) begin
					counter <= counter +1;
					end
				end
		
	end
		
	assign led = counter; 


endmodule