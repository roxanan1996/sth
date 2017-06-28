`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:16:49 03/20/2017 
// Design Name: 
// Module Name:    debouncer 
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
module debouncer(
    input button_in,
    input clk,
    input reset,
    output [7:0] count
    );
 
    wire button_debounced;	 
    reg [7:0] contor;
 
    // Instantiem modulul de debouncer si ii dam butonul ca intrare
    // Iesirea modulului (button_debounced) identifica corect apasarea
    // butonului dat ca intrare si va fi folosita in restul programului
    // in locul lui button_in
    //debouncer db(button_debounced, clk, reset, button_in);
 
    always @(posedge button_debounced) begin
        if (reset == 1)
            contor <= 0;
	else 
            contor <= contor + 1;
    end
 
    assign count = contor;
 
endmodule

