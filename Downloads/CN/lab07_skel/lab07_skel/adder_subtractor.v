module adder_subtractor(
    output reg  [3:0]   R,
    input   [3:0]   A,
    input   [3:0]   B,
    input           button
    );
	 
    // TODO
	 
	 	 
	 wire [3:0] out_suma;
	 wire [3:0] out_diff;
		 
	 cla_adder nume3(
	 .S(out_suma),	 
	 .A(A),
	 .B(B),
	 .Cin(0)
	 );
	 
	 cla_subtractor nume4(
	 .D(out_diff),	 
	 .A(A),
	 .B(B),
	 .Cin(0)
	 );
	 
	 always@(*)begin	 
	 case(button)
	 0: begin
	 R = out_suma;	
	 end
	 1: begin
		R = out_diff;		
		end
	 endcase
	 end
	 
endmodule
