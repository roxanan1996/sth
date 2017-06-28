`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:30:01 04/03/2017
// Design Name:   half_adder
// Module Name:   C:/Users/Alex/Desktop/CN/lab06_skel/lab06_skel/half.v
// Project Name:  lab06_skel
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: half_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module half;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire S;
	wire C;

	// Instantiate the Unit Under Test (UUT)
	half_adder uut (
		.S(S), 
		.C(C), 
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		A = 0;
		B = 1;
		
		#100;
		
		A = 1;
		B = 0;
        
		#100;
		
		A = 1;
		B = 1;
		// Add stimulus here

	end
      
endmodule

