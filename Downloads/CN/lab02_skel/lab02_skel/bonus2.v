`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:36:31 03/06/2017 
// Design Name: 
// Module Name:    bonus2 
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
module bonus2(output clk2, input clk, input reset );

	reg stare;
	
	assign clk2 = stare;
	
	always @(posedge clk, reset) 
			begin
			if(reset == 1) stare = 0;
			else stare = ~stare;
			end
			
			

	


endmodule
