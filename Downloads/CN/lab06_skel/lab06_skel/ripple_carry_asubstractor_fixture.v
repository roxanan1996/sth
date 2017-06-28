`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:04:04 04/03/2017
// Design Name:   ripple_carry_subtractor
// Module Name:   C:/Users/Alex/Desktop/CN/lab06_skel/lab06_skel/ripple_carry_asubstractor_fixture.v
// Project Name:  lab06_skel
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_carry_asubstractor_fixture;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg Cin;

	// Outputs
	wire [7:0] D;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_subtractor uut (
		.D(D), 
		.Cout(Cout), 
		.A(A), 
		.B(B), 
		.Cin(Cin)
	);

	initial begin
		// Initialize Inputs
		A = 0'b00001111;
		B = 0'b00010000;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

