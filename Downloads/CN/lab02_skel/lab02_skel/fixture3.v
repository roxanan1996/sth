`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:14:41 03/06/2017
// Design Name:   demuxstruct
// Module Name:   C:/Users/Alex/Desktop/CN/lab02_skel/lab02_skel/fixture3.v
// Project Name:  lab02_skel
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demuxstruct
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fixture3;

	// Inputs
	reg in;
	reg S1;
	reg S0;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;

	// Instantiate the Unit Under Test (UUT)
	demuxstruct uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.in(in), 
		.S1(S1), 
		.S0(S0)
	);

	initial begin
		// Initialize Inputs
		in = 1;
		S1 = 0;
		S0 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		in = 1;
		S1 = 0;
		S0 = 1;

      #100
		
		in = 1;
		S1 = 0;
		S0 = 1;
		
		#100
		
		in = 1;
		S1 = 1;
		S0 = 1;


		// Add stimulus here

	end
      
endmodule

