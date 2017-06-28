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
        if (reset) begin
            count <= 0;
            currentState <= STATE_INITIAL;
        end else begin
            count <= count + 1;

            // 100000000 threshold should be lowered for simulation.
            if (count == 100000000) begin
                currentState <= nextState;
                count <= 0;
            end
        end
    end

    always @(*) begin
        case (currentState)
            STATE_INITIAL: begin
                out = 8'b00000000;
                nextState = STATE_T00;
            end

            STATE_T00: begin
                out = 8'b10000000;
                nextState = STATE_T01;
            end

            STATE_T01: begin
                out = 8'b11000000;
                nextState = STATE_T02;
            end

            STATE_T02: begin
                out = 8'b11100000;
                nextState = STATE_T03;
            end

            STATE_T03: begin
                out = 8'b11110000;
                nextState = STATE_T04;
            end

            STATE_T04: begin
                out = 8'b11111000;
                nextState = STATE_T05;
            end

            STATE_T05: begin
                out = 8'b11111100;
                nextState = STATE_T06;
            end

            STATE_T06: begin
                out = 8'b11111110;
                nextState = STATE_T07;
            end

            STATE_T07: begin
                out = 8'b11111111;
                nextState = STATE_T08;
            end

            STATE_T08: begin
                out = 8'b01111111;
                nextState = STATE_T09;
            end

            STATE_T09: begin
                out = 8'b00111111;
                nextState = STATE_T10;
            end

            STATE_T10: begin
                out = 8'b00011111;
                nextState = STATE_T11;
            end

            STATE_T11: begin
                out = 8'b00001111;
                nextState = STATE_T12;
            end

            STATE_T12: begin
                out = 8'b00000111;
                nextState = STATE_T13;
            end

            STATE_T13: begin
                out = 8'b00000011;
                nextState = STATE_T14;
            end

            STATE_T14: begin
                out = 8'b00000001;
                nextState = STATE_T00;
            end
        endcase
    end
endmodule
