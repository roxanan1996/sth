`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:19:38 03/06/2017 
// Design Name: 
// Module Name:    demuxfluxdedate 
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
module demuxfluxdedate(output a, output b, output c, output d,
								input sel0, input sel1, input in);
								
								
	assign a = (in & ~sel0 & ~sel1);
	assign b = (in & ~sel0 & sel1);
	assign c = (in & sel0 & ~sel1);
	assign d = (in & sel0 & sel1);


endmodule
