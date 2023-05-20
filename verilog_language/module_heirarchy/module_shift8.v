module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] n1, n2, n3;
    my_dff8 dff1(clk, d, n1);
    my_dff8 dff2(clk, n1, n2);
    my_dff8 dff3(clk, n2, n3);
    
    always @(*) begin
        case(sel)
            2'b00 : q = d;
            2'b01 : q = n1;
            2'b10 : q = n2;
            2'b11 : q = n3;
        endcase
    end
endmodule