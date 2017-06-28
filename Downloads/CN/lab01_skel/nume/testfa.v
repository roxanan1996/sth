`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:43:42 02/27/2017
// Design Name:   bonus2
// Module Name:   C:/Users/Alex/Desktop/CN/lab01_skel/nume/testfa.v
// Project Name:  nume
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bonus2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testfa;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire out;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	bonus2 uut (
		.out(out), 
		.carry(carry), 
		.a(a), 
		.b(b), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		b = 0;
		c = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

