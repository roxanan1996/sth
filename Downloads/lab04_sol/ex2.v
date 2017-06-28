module ex2(
    output  reg grant_0,
    output  reg grant_1,
    input       cerere_0,
    input       cerere_1,
    input       reset,
    input       clk
    );

    always @(posedge clk) begin
        if (reset) begin
            grant_0 <= 0;
            grant_1 <= 0;
        end else begin
            case ({grant_1, grant_0})
                2'b00: begin
                    case ({cerere_1, cerere_0})
                        2'b00: begin
                        end

                        2'b01: begin
                            grant_0 <= 1;
                        end

                        2'b10: begin
                            grant_1 <= 1;
                        end

                        2'b11: begin
                            grant_0 <= 1;
                        end
                    endcase
                end

                2'b01: begin
                    case ({cerere_1, cerere_0})
                        2'b00: begin
                            grant_0 <= 0;
                        end

                        2'b01: begin
                        end

                        2'b10: begin
                            grant_0 <= 0;
                            grant_1 <= 1;
                        end

                        2'b11: begin
                        end
                    endcase
                end

                2'b10: begin
                    case ({cerere_1, cerere_0})
                        2'b00: begin
                            grant_1 <= 0;
                        end

                        2'b01: begin
                            grant_0 <= 1;
                            grant_1 <= 0;
                        end

                        2'b10: begin
                        end

                        2'b11: begin
                        end
                    endcase
                end

                2'b11: begin
                    grant_0 <= 0;
                    grant_1 <= 0;
                end
            endcase
        end
    end
endmodule
