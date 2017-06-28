module ripple_carry_subtractor(
        output  [3: 0]  D,
        output          Cout,
        input   [3: 0]  A,
        input   [3: 0]  B,
        input           Cin
    );

    // TODO
	 
	 wire [3:0] S;
	 wire [3:0] B_neg;
	 assign B_neg = ~B;
	 
	 ripple_carry_adder nume1(
	 .S(S),
	 .A(0),
	 .B(B_neg),
	 .Cin(1)
	 );
	 
	 ripple_carry_adder nume2(
	 .S(D),
	 .A(A),
	 .B(S),
	 .Cin(Cin)
	 );
	 
	
endmodule
