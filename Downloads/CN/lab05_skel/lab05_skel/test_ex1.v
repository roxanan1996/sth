`timescale 1ns / 1ps

module test_ex1;

        // Outputs
        wire AN0;
        wire AN1;
        wire AN2;
        wire AN3;
        wire CA;
        wire CB;
        wire CC;
        wire CD;
        wire CE;
        wire CF;
        wire CG;
        wire DP;

        // Instantiate the Unit Under Test (UUT)
        ex1 uut (
                .AN0(AN0),
                .AN1(AN1),
                .AN2(AN2),
                .AN3(AN3),
                .CA(CA),
                .CB(CB),
                .CC(CC),
                .CD(CD),
                .CE(CE),
                .CF(CF),
                .CG(CG),
                .DP(DP)
        );

        initial begin
                // Initialize Inputs

                // Wait 100 ns for global reset to finish
                #100;

                // Add stimulus here
        end
endmodule
