module ual(
        output reg  [7: 0]  out,
        input   [3: 0]  in0,
        input   [3: 0]  in1,
        input   [2: 0]  sel
    );
	
	wire [7:0] outMul;
	
		
    // TODO
	 //M = in0
	 // R = in1
	 
	 // pas1:
	 reg [8:0] P;
	 
	 // pas2:
	 
	 reg [8:0] A;
	 
	 reg [8:0] S;
	 
	 
	 // pas 3 & 4
	 
	 integer i;
	 
	 always@(*) begin
		P = {4'b0, in1, 1'b0};
		A = {in0, 5'b0};
		S = {~in0+1, 5'b0};
		for (i = 0; i < 4; i = i+ 1) begin
			
			//verificam primii 2 biti ai lui P :)
			case (P[1:0])
				2'b00 : begin end
				2'b01: P = P + A;
				2'b10 : P = P + S;
				2'b11: begin end
			endcase
			
			//pasul 4
			P = ($signed(P) >>> 1);
		end
	 end
	 assign outMul = P[8:1];
	 
	 
	 always@(*) begin
		case (sel) 
			3'b000 : out = ~(in0 & in1);
			3'b001 : out = in0 ^ in1;
			3'b010 : out = in0 + in1;
			3'b011 : out = in0 - in1;
			3'b100 : out = outMul;
		endcase
		end
	 
endmodule
