`timescale 1ns / 1ps

module test_ex2;

        // Inputs
        reg cerere_0;
        reg cerere_1;
        reg reset;
        reg clk;

        // Outputs
        wire grant_0;
        wire grant_1;

        // Instantiate the Unit Under Test (UUT)
        ex2 uut (
                .grant_0(grant_0),
                .grant_1(grant_1),
                .cerere_0(cerere_0),
                .cerere_1(cerere_1),
                .reset(reset),
                .clk(clk)
        );

        always begin
            #1 clk = ~clk;
        end

        initial begin
                // Initialize Inputs
                cerere_0 = 0;
                cerere_1 = 0;
                reset = 1;
                clk = 0;

                // Wait 100 ns for global reset to finish
                #100;

                // Add stimulus here
                reset = 0;

                #10 cerere_0 = 1;
                #10 cerere_1 = 1;
                #10 cerere_1 = 0;
                #10 cerere_0 = 0;

                #10 cerere_0 = 1;
                #10 cerere_0 = 0; cerere_1 = 1;
                #10 cerere_1 = 0;

                #10 cerere_1 = 1;
                #10 cerere_0 = 1;
                #10 cerere_0 = 0;
                #10 cerere_1 = 0;

                #10 cerere_1 = 1;
                #10 cerere_1 = 0; cerere_0 = 1;
                #10 cerere_0 = 0;

                #10; cerere_0 = 1; cerere_1 = 1;
        end
endmodule
