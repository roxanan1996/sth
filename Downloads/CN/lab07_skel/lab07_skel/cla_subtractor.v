module cla_subtractor (
        output  [3: 0]  D,
        output          Cout,
        input   [3: 0]  A,
        input   [3: 0]  B,
        input           Cin
    );

    // TODO
		wire [3:0] nB = ~B;
		wire [3:0] temp;
		
		cla_adder adder1(.S(temp), .A(0), .B(nB), .Cin(1));
		cla_adder adder2(.S(D), .A(A), .B(temp), .Cin(Cin));
endmodule
