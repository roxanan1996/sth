`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:00:39 02/27/2017 
// Design Name: 
// Module Name:    xor 
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
module xor(output out, input a, input b);
	wire T1;
	wire T2;
	wire na;
	not(na, a);
	wire nb;
	not(nb, b);
	and(T1,na,b);
	and(T2,nb,a);
	or(out,T1,T2);
endmodule
