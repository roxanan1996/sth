`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:50:41 03/06/2017
// Design Name:   bonus2
// Module Name:   C:/Users/Alex/Desktop/CN/lab02_skel/lab02_skel/bonusfix.v
// Project Name:  lab02_skel
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

module bonusfix;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire clk2;

	// Instantiate the Unit Under Test (UUT)
	bonus2 uut (
		.clk2(clk2), 
		.clk(clk), 
		.reset(reset)
	);

	always begin
		#10 clk=~clk;
		end
		
	initial begin
		// Initialize Inputs
	
		
		reset = 1;
		#10 reset = 0;
		// Wait 100 ns for global reset to finish
		
        
		  
		// Add stimulus here

	end
      
endmodule

