`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:32:43 04/10/2017 
// Design Name: 
// Module Name:    sumator_8_biti 
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
module sumator_8_biti(
			output  [7: 0]  S,
        output          Cout,
        input   [7: 0]  A,
        input   [7: 0]  B,
        input           Cin
    );

	wire Clow;

	cla_adder nibble(S[3:0], Clow, A[3:0], B[3:0], Cin);
	cla_adder upper(S[7:4], Cout, A[7:4], B[7:4], Clow);

endmodule
