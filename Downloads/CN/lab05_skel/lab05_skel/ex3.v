module ex3(
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

    reg [15:0]  count;
	 
	 reg [3:0] currentDigit;
	 //currentDigit = contor%10;
	 //currentDigit = (contor/10)%10;
	 
	 reg [15:0] incrementare;
	 
	 //wire button_debounced;
	 
	 //debouncer db1(button_debounced, clk,reset, button);

    always @(posedge clk) begin
        if (reset) begin
            currentState = STATE_0;
            delay = 0;
            //count = 0;
        end else begin
            // TODO: Incrementarea contorului.
            // TODO: Intarzierea schimbarii de stare.
				delay = delay + 1;
				
				if(delay == 0)begin
				currentState = (currentState+1)%4;
				end
				
				
        end
    end
	 
	 always @(posedge clk) begin
					incrementare = incrementare + 1;
					if(incrementare % 60000000 == 0) 
					begin					
					count = count + 1;
					end					
				end
	 

    always @(*) begin
        case (currentState)
            0:
				begin
			AN3 = 1;
			AN2 = 1;
			AN1 = 1;
			AN0 = 0;
	 				end
				1:begin
				AN3 = 1;
		AN2 = 1;
		AN1 = 0;
		AN0 = 1;				
				end
				
				2:begin
				AN3 = 1;
				  AN2 = 0;
				  AN1 = 1;
				  AN0 = 1;
				
				end
				
				3:begin
				AN3 = 0;
		AN2 = 1;
		AN1 = 1;
		AN0 = 1;
				
				end
				
        endcase
    end
	 
	 always@(*)begin
		case (currentState)
		0: currentDigit = count%10;
		1: currentDigit = (count/10)%10;
		2:	currentDigit = (count/100)%10;
		3: currentDigit = (count/1000)%10;
		endcase
		end
		
		always@(*) begin
		case (currentDigit)
		0:begin
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
		 CA=1;
	  CB=0;
	  CC=0;
	  CD=1;
	  CE=1;
	  CF=1;
	  CG=1;
	  DP=1;		
		end
		2:begin
		CA=0;
		CB=0;
		CC=1;
		CD=0;
		CE=0;
		CF=1;
		CG=0;
		DP=1;		
		end
		3:begin
		
		CA=0;
		CB=0;
		CC=0;
		CD=0;
		CE=1;
		CF=1;
		CG=0;
		DP=1;
		
		
		end
		4:begin
		CA=1;
		CB=1;
		CC=0;
		CD=1;
		CE=1;
		CF=0;
		CG=0;
		DP=1;		
		
		end
		5:begin
		CA=0;
		CB=1;
		CC=0;
		CD=0;
		CE=1;
		CF=0;
		CG=0;
		DP=1;		
		
		end
		6:begin
		
		CA=0;
		CB=1;
		CC=0;
		CD=0;
		CE=0;
		CF=0;
		CG=0;
		DP=1;		
		
		
		end
		7:begin
		
		CA=0;
		CB=0;
		CC=0;
		CD=1;
		CE=1;
		CF=1;
		CG=1;
		DP=1;		
		
		
		end
		8:begin
		
		CA=0;
		CB=0;
		CC=0;
		CD=0;
		CE=0;
		CF=0;
		CG=0;
		DP=1;		
		
		
		end
		9:begin
		
		CA=0;
		CB=0;
		CC=0;
		CD=0;
		CE=1;
		CF=0;
		CG=0;
		DP=1;		
		
		end
		endcase
		end
		
		
		
endmodule
