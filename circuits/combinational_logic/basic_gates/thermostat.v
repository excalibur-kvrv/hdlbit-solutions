module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 
	wire n1, n2;
    assign n1 = mode == 1 ? too_cold: 1'b0;
    assign n2 = mode == 0 ? too_hot: 1'b0;
    assign fan = n1 | n2 | fan_on;
    assign heater = n1;
    assign aircon = n2;
endmodule