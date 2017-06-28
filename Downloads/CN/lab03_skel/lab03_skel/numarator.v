`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:55:44 03/13/2017 
// Design Name: 
// Module Name:    numarator 
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
module numarator(output [7:0]led,
						input button,
						input reset,
						input clk
						 );
						 
	reg [7:0] counter;
	wire button_debounced;
	
	debouncer db(button_debounced, clk, reset, button);
	
	always@(posedge button_debounced, reset) begin
		if(reset == 1) begin
			counter <= 0;
		end else begin
					counter <= counter + 1;
					end
	end
		
	assign led = counter; 


endmodule
