`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:49:22 03/06/2017 
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
module lab12(output reg out, input a, input b);

always @(*)
begin
	case ({a, b})
		2'b00: out = a;
		2'b01: out = b;
		2'b10: out = a;
		2'b11: out = ~a;
		default: out = 1'bx;
	endcase
end


endmodule
