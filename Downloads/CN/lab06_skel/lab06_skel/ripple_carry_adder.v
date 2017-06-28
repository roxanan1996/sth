module ripple_carry_adder(
        output  [3: 0]  S,
        output          Cout,
        input   [3: 0]  A,
        input   [3: 0]  B,
        input           Cin
    );
	 
	 wire Cout0;
	 wire Cout1;
	 wire Cout2;
	
    // TODO
	 full_adder f0(S[0],Cout0, A[0], B[0], Cin);
	 full_adder f1(S[1],Cout1, A[1], B[1], Cout0);
	 full_adder f2(S[2],Cout2, A[2], B[2], Cout1);
	 full_adder f3(S[3],Cout, A[3], B[3], Cout2);
endmodule
