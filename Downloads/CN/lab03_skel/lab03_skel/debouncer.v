`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:49:53 03/13/2017 
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
    output reg button_out,
    input clk,
    input reset,
    input button_in
    );
 
    reg [15:0] count;
    reg button_tmp;
 
    always @(posedge clk) begin
        if (reset == 1) begin
            count <= 0;
            button_tmp <= 0;
        end else begin
            count <= count + 1;
            button_tmp <= button_in;
        end
 
        if (count == 0) begin
            button_out <= button_tmp;
        end
    end
 
endmodule