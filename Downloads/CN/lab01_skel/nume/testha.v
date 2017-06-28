`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:42:43 02/27/2017
// Design Name:   bonus
// Module Name:   C:/Users/Alex/Desktop/CN/lab01_skel/nume/testha.v
// Project Name:  nume
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bonus
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testha;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire out;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	bonus uut (
		.out(out), 
		.carry(carry), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		b = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

