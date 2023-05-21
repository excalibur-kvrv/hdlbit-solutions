module top_module( 
    input [2:0] in,
    output [1:0] out );
    reg [1:0] count;
    
    always @(in) begin
        count = 2'd0;
        for (int i = 0; i < 3; i++) begin
            if (in[i] == 1'b1) count = count + 1'b1;
        end
        out = count;
    end
endmodule