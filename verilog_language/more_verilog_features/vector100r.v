module top_module( 
    input [99:0] in,
    output [99:0] out
);
    integer i;
        
    always @(*) begin
        for (i = 1'd0; i < 7'd100; i = i + 1'd1) begin
            out[7'd99 - i] = in[i];
        end
    end
endmodule