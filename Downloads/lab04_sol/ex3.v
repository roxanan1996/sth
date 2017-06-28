module ex3(
    output  reg mutant,
    output  reg super_mutant,
    input       A,
    input       G,
    input       C,
    input       T,
    input       reset,
    input       clk
    );

    localparam STATE_0 = 0;
    localparam STATE_1 = 1;
    localparam STATE_2 = 2;
    localparam STATE_3 = 3;
    localparam STATE_4 = 4;
    localparam STATE_5 = 5;
    localparam STATE_6 = 6;

    reg [2:0]   currentState;

    reg A_pressed;
    reg G_pressed;
    reg C_pressed;
    reg T_pressed;

    wire A_debounced;
    wire G_debounced;
    wire T_debounced;
    wire C_debounced;

    debouncer dbA(A_debounced, clk, reset, A);
    debouncer dbG(G_debounced, clk, reset, G);
    debouncer dbC(C_debounced, clk, reset, C);
    debouncer dbT(T_debounced, clk, reset, T);

    always @(posedge clk) begin
        if (reset) begin
            currentState <= STATE_0;
            mutant <= 0;
            super_mutant <= 0;

            A_pressed <= 0;
            G_pressed <= 0;
            C_pressed <= 0;
            T_pressed <= 0;
        end else begin
            case (currentState)
                STATE_0: begin
                    if (A_debounced) begin
                        if (!A_pressed) begin
                            currentState <= STATE_0;
                            A_pressed <= 1;
                        end
                    end else begin
                        A_pressed <= 0;
                    end

                    if (G_debounced) begin
                        if (!G_pressed) begin
                            currentState <= STATE_1;
                            G_pressed <= 1;
                        end
                    end else begin
                        G_pressed <= 0;
                    end

                    if (C_debounced) begin
                        if (!C_pressed) begin
                            currentState <= STATE_0;
                            C_pressed <= 1;
                        end
                    end else begin
                        C_pressed <= 0;
                    end

                    if (T_debounced) begin
                        if (!T_pressed) begin
                            currentState <= STATE_0;
                            T_pressed <= 1;
                        end
                    end else begin
                        T_pressed <= 0;
                    end
                end

                STATE_1: begin
                    if (A_debounced) begin
                        if (!A_pressed) begin
                            currentState <= STATE_0;
                            A_pressed <= 1;
                        end
                    end else begin
                        A_pressed <= 0;
                    end

                    if (G_debounced) begin
                        if (!G_pressed) begin
                            currentState <= STATE_2;
                            G_pressed <= 1;
                        end
                    end else begin
                        G_pressed <= 0;
                    end

                    if (C_debounced) begin
                        if (!C_pressed) begin
                            currentState <= STATE_0;
                            C_pressed <= 1;
                        end
                    end else begin
                        C_pressed <= 0;
                    end

                    if (T_debounced) begin
                        if (!T_pressed) begin
                            currentState <= STATE_0;
                            T_pressed <= 1;
                        end
                    end else begin
                        T_pressed <= 0;
                    end
                end

                STATE_2: begin
                    if (A_debounced) begin
                        if (!A_pressed) begin
                            currentState <= STATE_0;
                            A_pressed <= 1;
                        end
                    end else begin
                        A_pressed <= 0;
                    end

                    if (G_debounced) begin
                        if (!G_pressed) begin
                            currentState <= STATE_2;
                            G_pressed <= 1;
                        end
                    end else begin
                        G_pressed <= 0;
                    end

                    if (C_debounced) begin
                        if (!C_pressed) begin
                            currentState <= STATE_0;
                            C_pressed <= 1;
                        end
                    end else begin
                        C_pressed <= 0;
                    end

                    if (T_debounced) begin
                        if (!T_pressed) begin
                            currentState <= STATE_3;
                            T_pressed <= 1;
                        end
                    end else begin
                        T_pressed <= 0;
                    end
                end

                STATE_3: begin
                    if (A_debounced) begin
                        if (!A_pressed) begin
                            currentState <= STATE_0;
                            A_pressed <= 1;
                        end
                    end else begin
                        A_pressed <= 0;
                    end

                    if (G_debounced) begin
                        if (!G_pressed) begin
                            currentState <= STATE_1;
                            G_pressed <= 1;
                        end
                    end else begin
                        G_pressed <= 0;
                    end

                    if (C_debounced) begin
                        if (!C_pressed) begin
                            mutant <= 1;
                            currentState <= STATE_4;
                            C_pressed <= 1;
                        end
                    end else begin
                        C_pressed <= 0;
                    end

                    if (T_debounced) begin
                        if (!T_pressed) begin
                            currentState <= STATE_0;
                            T_pressed <= 1;
                        end
                    end else begin
                        T_pressed <= 0;
                    end
                end

                STATE_4: begin
                    if (A_debounced) begin
                        if (!A_pressed) begin
                            currentState <= STATE_5;
                            A_pressed <= 1;
                        end
                    end else begin
                        A_pressed <= 0;
                    end

                    if (G_debounced) begin
                        if (!G_pressed) begin
                            currentState <= STATE_1;
                            G_pressed <= 1;
                        end
                    end else begin
                        G_pressed <= 0;
                    end

                    if (C_debounced) begin
                        if (!C_pressed) begin
                            currentState <= STATE_0;
                            C_pressed <= 1;
                        end
                    end else begin
                        C_pressed <= 0;
                    end

                    if (T_debounced) begin
                        if (!T_pressed) begin
                            currentState <= STATE_0;
                            T_pressed <= 1;
                        end
                    end else begin
                        T_pressed <= 0;
                    end
                end

                STATE_5: begin
                    if (A_debounced) begin
                        if (!A_pressed) begin
                            currentState <= STATE_0;
                            A_pressed <= 1;
                        end
                    end else begin
                        A_pressed <= 0;
                    end

                    if (G_debounced) begin
                        if (!G_pressed) begin
                            super_mutant <= 1;
                            currentState <= STATE_6;
                            G_pressed <= 1;
                        end
                    end else begin
                        G_pressed <= 0;
                    end

                    if (C_debounced) begin
                        if (!C_pressed) begin
                            currentState <= STATE_0;
                            C_pressed <= 1;
                        end
                    end else begin
                        C_pressed <= 0;
                    end

                    if (T_debounced) begin
                        if (!T_pressed) begin
                            currentState <= STATE_0;
                            T_pressed <= 1;
                        end
                    end else begin
                        T_pressed <= 0;
                    end
                end

                STATE_6: begin
                end
            endcase
        end
    end
endmodule
