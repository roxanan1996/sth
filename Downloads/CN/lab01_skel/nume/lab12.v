`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:08 02/27/2017 
// Design Name: 
// Module Name:    lab12 
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
module lab12(output out, input S0, input S1, input a, input b, input c, input d);
	wire S0n;
	wire S1n;
	not(S0n,S0);
	not(S1n,S1);
	
	wire T1;
	wire T2;
	wire T3;
	wire T4;
		
	and(T1, a, S0n, S1n);
	and(T2, b, S1, S0n);
	and(T3, c, S0, S1n);
	and(T4, d, S0, S1);
	or(out, T1, T2, T3, T4);

endmodule
