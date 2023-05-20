module top_module( 
    input [254:0] in,
    output [7:0] out );
    reg [7:0] count;
    
    always @(in) begin
        count = 8'd0;
        for (int i = 1'b0; i < 8'd255; i++) begin
            if (in[i] == 1'b1) begin
                count = count + 1'b1;
            end
        end
        out = count;
    end
    
endmodule