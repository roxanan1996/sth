`include "instruction.vh"

module memory(
    output  reg [31:0]  data,
    input       [7:0]   address,
    input               clk
    );

    always @(negedge clk) begin
        case (address)
            /*
             * TODO 1: Adaugati instructiuni pe care sa le execute procesorul.
             * Urmati exemplul cazului default.
             */
            default:    data = {`INSTRUCTION_NOP,   8'h00,  8'h00};
				
				8'h01:		data = {`INSTRUCTION_AND, 8'h01, 8'h01};
				
				8'h02:		data = {`INSTRUCTION_OR, 8'h02, 8'h02}; 
				
				8'h03:		data = {`INSTRUCTION_XOR, 8'h03, 8'h03};
				
				8'h04:		data = {`INSTRUCTION_NEG, 8'h04, 8'h04};
				
				8'h05:		data = {`INSTRUCTION_ADD, 8'h05, 8'h05};
				
				8'h06:		data = {`INSTRUCTION_SUB, 8'h06, 8'h06};
				
				8'h07:		data = {`INSTRUCTION_MUL, 8'h07, 8'h07};

        endcase
    end

endmodule
