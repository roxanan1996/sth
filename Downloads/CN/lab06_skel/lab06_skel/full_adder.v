module full_adder(
    output  S,
    output  Cout,
    input   A,
    input   B,
    input   Cin
    );

    // TODO
	 wire out1;
	 wire carry1;

	half_adder ha(out1, carry1, A, B);
	
	half_adder ha2(S, carry2, out1, Cin);
	
	or(Cout, carry1, carry2);	 
	
endmodule
