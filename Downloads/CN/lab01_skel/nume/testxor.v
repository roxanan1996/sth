`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:06:34 02/27/2017
// Design Name:   lab11
// Module Name:   C:/Users/Alex/Desktop/CN/lab01_skel/nume/testxor.v
// Project Name:  nume
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lab11
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testxor;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	lab11 uut (
		.out(out), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 0;
		b = 1;
		
		#100
		
		a = 1;
		b = 0;
		
		#100
		
		a = 1;
		b = 1;
        
		// Add stimulus here

	end
      
endmodule

