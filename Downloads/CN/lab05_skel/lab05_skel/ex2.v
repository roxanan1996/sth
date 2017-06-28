module ex2(
    output  reg AN0,
    output  reg AN1,
    output  reg AN2,
    output  reg AN3,
    output  reg CA,
    output  reg CB,
    output  reg CC,
    output  reg CD,
    output  reg CE,
    output  reg CF,
    output  reg CG,
    output  reg DP,
    input       reset,
    input       clk
    );

    localparam STATE_0 = 0;
    localparam STATE_1 = 1;
    localparam STATE_2 = 2;
    localparam STATE_3 = 3;

    reg [1:0]   currentState;
    reg [1:0]   nextState;

    reg [15:0]  delay;

    always @(posedge clk) begin
        if (reset) begin
            currentState = STATE_0;
            delay = 0;
        end else begin
            // TODO: Intarzierea schimbarii de stare.
				delay = delay+1;
				
				if(delay == 0)
				begin
				currentState = (currentState+1)%4;
				end
				
        end
    end

    always @(*) begin
        case (currentState)
            0: begin 
		AN3 = 0;
		AN2 = 1;
		AN1 = 1;
		AN0 = 1;
	 
		CA=0;
		CB=0;
		CC=0;
		CD=0;
		CE=0;
		CF=0;
		CG=1;
		DP=1;
	 end
				1:begin
	  AN3 = 1;
	  AN2 = 0;
	  AN1 = 1;
	  AN0 = 1;
	 
	  CA=1;
	  CB=0;
	  CC=0;
	  CD=1;
	  CE=1;
	  CF=1;
	  CG=1;
	  DP=1;
	  end 
	  
	  2: begin 
		AN3 = 1;
		AN2 = 1;
		AN1 = 0;
		AN0 = 1;
	 
		CA=0;
		CB=0;
		CC=1;
		CD=0;
		CE=0;
		CF=1;
		CG=0;
		DP=0;
	 end
	 
	 3: begin 
		AN3 = 1;
		AN2 = 1;
		AN1 = 1;
		AN0 = 0;
	 
		CA=0;
		CB=0;
		CC=0;
		CD=0;
		CE=1;
		CF=1;
		CG=0;
		DP=0;
	 end
	 
	 
        endcase
    end
endmodule
