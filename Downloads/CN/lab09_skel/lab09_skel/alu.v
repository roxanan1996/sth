`include "alu_opsel.vh"

module alu(
    output  reg [31:0]  R,
    input       [31:0]  A,
    input       [31:0]  B,
    input       [2:0]   opsel
    );

    always @(*) begin
        case (opsel)
            /*
             * TODO 1: Executati operatia. Urmati exemplul operatiei NONE.
             */
					
					`OPSEL_NONE: begin
                R = 32'bx;
					 end
					 
					`OPSEL_AND: begin
                R = A & B;
					 end
					 
					`OPSEL_OR: begin
                R = A | B;
					 end 
					
					 `OPSEL_XOR: begin
                R = A ^ B;
					 end
					
					`OPSEL_NEG: begin
                R = ~A;
					 end					 
					 
					 `OPSEL_ADD: begin
                R = A + B;
					 end
					 
					 `OPSEL_SUB: begin
                R = A - B;
					 end
					 
					 `OPSEL_MUL: begin
                R = A * B;
					 end
					
        endcase
    end

endmodule
