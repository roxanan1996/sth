`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:18:27 04/03/2017 
// Design Name: 
// Module Name:    sumator_placa 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sumator_placa(
        output reg [3: 0]  D,
        output reg  Cout,
        input   [3: 0]  A,
        input   [3: 0]  B,
        input           push_it
    );

    // TODO
	 
	 wire [3:0] out_suma;
	 wire [3:0] out_diff;
	 wire carry_suma;
	 wire carry_diff;
	 
	 ripple_carry_adder nume3(
	 .S(out_suma),
	 .Cout(carry_suma),
	 .A(A),
	 .B(B),
	 .Cin(0)
	 );
	 
	 ripple_carry_subtractor nume4(
	 .D(out_diff),
	 .Cout(carry_diff),
	 .A(A),
	 .B(B),
	 .Cin(0)
	 );
	 always@(*)begin
	 
	 case(push_it)
	 0: begin
	 D = out_suma;
	Cout = carry_suma;
	 end
	 1: begin
		D = out_diff;
		Cout = carry_diff;
		end
	 endcase
	 end
	 
	
endmodule

	 
	 
	 


