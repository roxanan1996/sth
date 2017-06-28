`timescale 1ns / 1ps

module test_ex1;

        // Inputs
        reg reset;
        reg clk;

        // Outputs
        wire [7:0] out;

        // Instantiate the Unit Under Test (UUT)
        ex1 uut (
                .out(out),
                .reset(reset),
                .clk(clk)
        );

        always begin
            #0.001 clk = ~clk;
        end

        initial begin
                // Initialize Inputs
                reset = 1;
                clk = 0;

                // Wait 100 ns for global reset to finish
                #100;

                // Add stimulus here
                reset = 0;
        end
endmodule
