`include "instruction.vh"
`include "alu_opsel.vh"

module decoder(
    output  reg [31:0]  A,
    output  reg [31:0]  B,
    output  reg [2:0]   opsel,
    input       [31:0]  instruction
    );

    always @(*) begin
        case (instruction[31:16])
            /*
             * TODO 1: Decodificati instructiunea si setati iesirile
             * corespunzator. Urmati exemplul instructiunii NOP.
             */
				 
            `INSTRUCTION_NOP: begin
                A       = instruction[15:8];
                B       = instruction[7:0];
                opsel   = `OPSEL_NONE;
					 end
					 
				`INSTRUCTION_AND: begin
                A       = instruction[15:8];
                B       = instruction[7:0];
                opsel   = `OPSEL_AND;
					 end
					 
					 
				`INSTRUCTION_XOR: begin
                A       = instruction[15:8];
                B       = instruction[7:0];
                opsel   = `OPSEL_XOR;
					 end
					 
					 
				`INSTRUCTION_NEG: begin
                A       = instruction[15:8];
                B       = instruction[7:0];
                opsel   = `OPSEL_NEG;
					 end
					 
					 
				`INSTRUCTION_ADD: begin
                A       = instruction[15:8];
                B       = instruction[7:0];
                opsel   = `OPSEL_ADD;
					 end
					 
				`INSTRUCTION_SUB: begin
                A       = instruction[15:8];
                B       = instruction[7:0];
                opsel   = `OPSEL_SUB;
					 end
					 
					 
				`INSTRUCTION_MUL: begin
                A       = instruction[15:8];
                B       = instruction[7:0];
                opsel   = `OPSEL_MUL;
					 end
					 
				`INSTRUCTION_OR: begin
					 A       = instruction[15:8];
                B       = instruction[7:0];
                opsel   = `OPSEL_OR;					 
				
            end
        endcase
    end

endmodule
