`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:32 02/27/2017 
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
module bonus(output out,output carry, input a, input b);

	xor(out, a, b);
	and(carry, a, b);
	

endmodule
