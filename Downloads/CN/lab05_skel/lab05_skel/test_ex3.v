`timescale 1ns / 1ps

module test_ex3;

        // Inputs
        reg button;
        reg reset;
        reg clk;

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
        ex3 uut (
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
                .DP(DP),
                .button(button),
                .reset(reset),
                .clk(clk)
        );

        always begin
            #1 clk = ~clk;
        end

        initial begin
                // Initialize Inputs
                button = 0;
                reset = 1;
                clk = 0;

                // Wait 100 ns for global reset to finish
                #100;

                // Add stimulus here
                reset = 0;

                #10 button = 1; #10 button = 0;
                #10 button = 1; #10 button = 0;
                #10 button = 1; #10 button = 0;
                #10 button = 1; #10 button = 0;
                #10 button = 1; #10 button = 0;
                #10 button = 1; #10 button = 0;
                #10 button = 1; #10 button = 0;
                #10 button = 1; #10 button = 0;
                #10 button = 1; #10 button = 0;
                #10 button = 1; #10 button = 0;
                #10 button = 1; #10 button = 0;
                #10 button = 1; #10 button = 0;
                #10 button = 1; #10 button = 0;
                #10 button = 1; #10 button = 0;
        end
endmodule
