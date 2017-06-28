module cla_adder (
        output  [3: 0]  S,
        output          Cout,
        input   [3: 0]  A,
        input   [3: 0]  B,
        input           Cin
    );

    // TODO 
	 wire C0;
	 wire C1;
	 wire C2;
	 //wire C3;
	 
	 wire G[3:0];
	 wire P[3:0];
	 
	 assign G[0] = A[0] & B[0];
	 assign G[1] = A[1] & B[1];
	 assign G[2] = A[2] & B[2];
	 assign G[3] = A[3] & B[3];
	 
	 assign P[0] = A[0] ^ B[0];
	 assign P[1] = A[1] ^ B[1];
	 assign P[2] = A[2] ^ B[2];
	 assign P[3] = A[3] ^ B[3];
	 
	 assign C0 = G[0] | P[0] & Cin;
	 assign C1 = G[1] | G[0] & P[1] | Cin & P[0] & P[1];
	 assign C2 = G[2] | G[1]&P[2] | G[0]&P[1]&P[2] | Cin&P[0]&P[1]&P[2];
	 assign C3 = G[3] | G[2]&P[3] | G[1]&P[2]&P[3] | G[0]&P[1]&P[2]&P[3] | Cin&P[0]&P[1]&P[2]&P[3];
	 
	 full_adder fa0(.S(S[0]), .A(A[0]), .B(B[0]),.Cin(Cin));
	 full_adder fa1(.S(S[1]), .A(A[1]), .B(B[1]),.Cin(C0));
	 full_adder fa2(.S(S[2]), .A(A[2]), .B(B[2]),.Cin(C1));
	 full_adder fa3(.S(S[3]),.Cout(C3), .A(A[3]), .B(B[3]),.Cin(C2));
	 
	  
endmodule


