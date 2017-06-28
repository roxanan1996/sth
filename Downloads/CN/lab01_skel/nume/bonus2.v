`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:34:28 02/27/2017 
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
module bonus2(output out, output carry, input a, input b, input c);

	wire out1;
	wire carry1;

	bonus ha(out1, carry1, a, b);
	
	bonus ha2(out, carry2, out1, c);
	
	or(carry, carry1, carry2);
	


endmodule
