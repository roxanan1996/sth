`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:53:19 03/06/2017
// Design Name:   lab12
// Module Name:   C:/Users/Alex/Desktop/CN/lab02_skel/lab02_skel/fixture2.v
// Project Name:  lab02_skel
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

module fixture2;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	lab12 uut (
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

