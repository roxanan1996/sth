`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:18:18 02/27/2017
// Design Name:   lab12
// Module Name:   C:/Users/Alex/Desktop/CN/lab01_skel/nume/test2.v
// Project Name:  nume
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lab12
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test2;

	// Inputs
	reg S0;
	reg S1;
	reg a;
	reg b;
	reg c;
	reg d;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	lab12 uut (
		.out(out), 
		.S0(S0), 
		.S1(S1), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d)
	);

	initial begin
		// Initialize Inputs
		S0 = 0;
		S1 = 0;
		a = 1;
		b = 0;
		c = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

