`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:14:42 04/24/2017
// Design Name:   ual
// Module Name:   C:/Users/Alex/Desktop/CN/lab08_skel/lab08_skel/testestes.v
// Project Name:  lab08_sol
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ual
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testestes;

	// Inputs
	reg [3:0] in0;
	reg [3:0] in1;
	reg [2:0] sel;

	// Outputs
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	ual uut (
		.out(out), 
		.in0(in0), 
		.in1(in1), 
		.sel(sel)
	);

	initial begin
		// Initialize Inputs
		in0 = 2;
		in1 = 3;
		sel = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

