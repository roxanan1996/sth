`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:29 02/27/2017 
// Design Name: 
// Module Name:    lab13 
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
module lab13(output out, input S0, input S1, input a, input b);

	wire T1;
	wire T2;
	wire T3;
	wire T4;
	
	xor(T1, a, b);
	or(T2, a, b);
	and(T3, a, b);
	nand(T4, a, b);

	lab12 nume(out, S0, S1, T1, T2, T3, T4);
	
endmodule
