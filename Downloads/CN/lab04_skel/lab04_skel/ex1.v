`timescale 1ns / 1ps
module ex1(
    output  reg [7:0]   out,
    input reset,
    input clk
    );

    localparam STATE_INITIAL = 0;
    localparam STATE_T00 = 1;
    localparam STATE_T01 = 2;
    localparam STATE_T02 = 3;
    localparam STATE_T03 = 4;
    localparam STATE_T04 = 5;
    localparam STATE_T05 = 6;
    localparam STATE_T06 = 7;
    localparam STATE_T07 = 8;
    localparam STATE_T08 = 9;
    localparam STATE_T09 = 10;
    localparam STATE_T10 = 11;
    localparam STATE_T11 = 12;
    localparam STATE_T12 = 13;
    localparam STATE_T13 = 14;
    localparam STATE_T14 = 15;

    reg [31:0]  count;
    reg [3:0]   currentState;
    reg [3:0]   nextState;
	 

    always @(posedge clk) begin
        if (reset == 1) begin
            count = 0;
            currentState = STATE_INITIAL;
        end else begin
            count = count + 1;
				if (count % 64000000 == 0) begin
					count = 0;
					currentState = (currentState + 1) % 15;
				end

            // TODO: Tranzitia de la currentState la nextState.
				
        end
    end

    always @(*) begin
        case (currentState)
            // TODO: Iesire in fiecare stare si care pregatirea starii urmatoare.
				0: out <= 8'b10000000;
				1: out <= 8'b11000000;
				2: out <= 8'b11100000;
				3: out <= 8'b11110000;
				4: out <= 8'b11111000;
				5: out <= 8'b11111100;
				6: out <= 8'b11111110;
				7: out <= 8'b11111111;
				8: out <= 8'b01111111;
				9: out <= 8'b00111111;
				10: out <= 8'b0001111;
				11: out <= 8'b0000111;
				12: out <= 8'b0000011;
				13: out <= 8'b0000001;
				14: out <= 8'b0000000;
				default: out <= 8'b11001100;
        endcase
    end
endmodule
