`include "state_machine.vh"

module cpu(
    input           reset,
    input           clk
    );

    /*
     * TODO 2: Prin acest fir comunica stagiul IF cu ID. Pentru ca vom aduce
     * o instructiune in timp ce decodificam o alta ne trebuie un buffer intre
     * cele doua stagii.
     */
    wire    [31:0]  instruction;

    wire    [31:0]  alu_R;

    /*
     * TODO 2: Prin aceste fire comunica stagiul ID cu EX. Ne trebuie buffer-e
     * intre cele doua stagii.
     */
    wire    [31:0]  alu_A;
    wire    [31:0]  alu_B;
    wire    [2:0]   alu_opsel;

    reg     [2:0]   state;
    reg     [2:0]   next_state;
    reg     [7:0]   program_counter;

    memory instruction_memory(
        .data(instruction),
        .address(program_counter),
        .clk(clk)
    );
	 
	 reg [31:0] buffer_instrunction;

    decoder decoder_unit(
        .A(alu_A),
        .B(alu_B),
        .opsel(alu_opsel),
        .instruction(buffer_instruction)
    );
	 
	 reg [31:0] A;
	 reg [31:0] B;
	 reg [2:0] opsel;
	 

    alu execution_unit(
        .R(alu_R),
        .A(A),
        .B(B),
        .opsel(opsel)
    );

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= `STATE_RESET;
        end else begin
            state <= next_state;
        end
    end

    always @(*) begin
        case (state)
            `STATE_RESET: begin
                next_state = `STATE_IF;
            end

            `STATE_IF: begin
                next_state = `STATE_ID;
            end

            `STATE_ID: begin
                next_state = `STATE_EX;
            end

            `STATE_EX: begin
                next_state = `STATE_IF;
            end
        endcase
    end

    always @(posedge clk or posedge reset) begin

        if (reset) begin
			program_counter <= 0;
        end else begin
            /*
             * TODO 2: Trebuie sa aducem o noua instructiune la fiecare ciclu
             * de ceas.
             */
				 
				  A = alu_A;
				  B = alu_B;
				  opsel = alu_opsel;
				  buffer_instrunction = instruction;			 
           
              program_counter = program_counter + 8'h1;            

            /* TODO 2: Rezultatul fiecarui stagiu trebuie mutat in buffer-ul de
             * intrare al urmatorului stagiu.    */
				
        end
    end

endmodule
