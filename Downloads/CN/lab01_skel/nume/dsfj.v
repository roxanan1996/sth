`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:51:03 02/27/2017
// Design Name:   lab13
// Module Name:   C:/Users/Alex/Desktop/CN/lab01_skel/nume/dsfj.v
// Project Name:  nume
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lab13
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dsfj;

	// Inputs
	reg S0;
	reg S1;
	reg a;
	reg b;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	lab13 uut (
		.out(out), 
		.S0(S0), 
		.S1(S1), 
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		S0 = 0;
		S1 = 0;
		a = 1;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

