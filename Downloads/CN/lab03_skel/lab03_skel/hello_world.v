module hello_world(
    output reg led,
    input button_on,
    input button_off
    );
 
    always @(*) begin
        if (button_off) begin
            led = 0; // Stingem LED-ul.
        end else if (button_on) begin
            led = 1; // Aprindem LED-ul.
        end
    end
 
endmodule