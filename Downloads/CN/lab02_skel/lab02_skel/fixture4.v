`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:22:10 03/06/2017
// Design Name:   demuxfluxdedate
// Module Name:   C:/Users/Alex/Desktop/CN/lab02_skel/lab02_skel/fixture4.v
// Project Name:  lab02_skel
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: demuxfluxdedate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fixture4;

	// Inputs
	reg sel0;
	reg sel1;
	reg in;

	// Outputs
	wire a;
	wire b;
	wire c;
	wire d;

	// Instantiate the Unit Under Test (UUT)
	demuxfluxdedate uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.sel0(sel0), 
		.sel1(sel1), 
		.in(in)
	);

	initial begin
		// Initialize Inputs
		in = 1;
		sel0 = 0;
		sel1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		in = 1;
		sel0 = 0;
		sel1 = 1;

      #100
		
		in = 1;
		sel0 = 1;
		sel1 = 0;
		
		#100
		
		in = 1;
		sel0 = 1;
		sel1 = 1;


		// Add stimulus here

	end
      
endmodule

