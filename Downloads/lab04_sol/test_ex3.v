`timescale 1ns / 1ps

module test_ex3;

        // Inputs
        reg A;
        reg G;
        reg C;
        reg T;
        reg reset;
        reg clk;

        // Outputs
        wire mutant;
        wire super_mutant;

        // Instantiate the Unit Under Test (UUT)
        ex3 uut (
                .mutant(mutant),
                .super_mutant(super_mutant),
                .A(A),
                .G(G),
                .C(C),
                .T(T),
                .reset(reset),
                .clk(clk)
        );

        always begin
            #10 clk = ~clk;
        end

        initial begin
                // Initialize Inputs
                A = 0;
                G = 0;
                C = 0;
                T = 0;
                reset = 1;
                clk = 0;

                // Wait 100 ns for global reset to finish
                #100;

                // Add stimulus here
                reset = 0;

                #10 G = 1; #90 G = 0;
                #30 G = 1; #90 G = 0;
                #30 T = 1; #90 T = 0;
                #30 C = 1; #90 C = 0;
                #30 A = 1; #90 A = 0;
                #30 G = 1; #90 G = 0;
        end
endmodule
