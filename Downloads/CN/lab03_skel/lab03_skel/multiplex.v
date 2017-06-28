`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:13 03/13/2017 
// Design Name: 
// Module Name:    multiplex 
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
module multiplex(input button1,
					  input button2,
					  input sel0,
					  input sel1,
					  output reg out1,
					  output out2,
					  input clk,
					  input reset);
					  
		wire button_debounced1;
		wire button_debounced2;
		wire button_debounced3;
		wire button_debounced4;
		
		
		debouncer db1(button_debounced1, clk, reset, button1);
		debouncer db2(button_debounced2, clk, reset, button2);
		debouncer db3(button_debounced3, clk, reset, sel0);
		debouncer db4(button_debounced4, clk, reset, sel1);
		
		
		always@(*)
		begin
			case ({button_debounced3, button_debounced4})
				2'b00: out1 = button_debounced1 ^ button_debounced2;
				2'b01: out1 = !(button_debounced1 & button_debounced2);
				2'b10: out1 = button_debounced1 | button_debounced2;
				2'b11: out1 = button_debounced1 & button_debounced2;
			endcase
		end

			assign out2 = ~out1;
		
endmodule
