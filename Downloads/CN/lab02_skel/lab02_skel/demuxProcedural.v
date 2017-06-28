`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:24:34 03/06/2017 
// Design Name: 
// Module Name:    demuxProcedural 
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
module demuxProcedural(output reg a, output reg b, output reg c,
								output reg d, input sel0, input sel1, input in);
								
	
	
	
	always @(*)
	begin
		a = 0;
		b = 0;
		c = 0;
		d = 0;
		case ({sel0, sel1})
			2'b00: a = in;
			2'b01: b = in;
			2'b10: c = in;
			2'b11: d = in;
		endcase
	end


endmodule
