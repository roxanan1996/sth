`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:15 03/06/2017 
// Design Name: 
// Module Name:    demuxstruct 
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
module demuxstruct(output a, output b, output c,
				output d, input in, input S1, input S0);
				
				wire S1n;
				wire S0n;
				
				wire A;
				wire B;
				wire C;
				wire D;
							
				not(S1n, S1);
				not(S0n, S0);
								
				and(a, S1n, S0n, in);
				and(b, S1n, S0, in);
				and(c, S1, S0n, in);
				and(d, S1, S0, in);


endmodule
