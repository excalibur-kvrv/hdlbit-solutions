module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] n1, n2, n3, n4, n5, n6, n7, n8;
    wire n9, n10, n11;
    
    assign n1 = a[15:0];
    assign n2 = b[15:0];
    assign n3 = a[31:16];
    assign n4 = b[31:16];
    
    add16 add_1(n1, n2, 1'b0, n5, n9);
    add16 add_2(n3, n4, 1'b0, n6, n10);
    add16 add_3(n3, n4, 1'b1, n7, n11);
    
    always @(*) begin
        case(n9)
            1'b0 : n8 = n6;
            1'b1 : n8 = n7;
        endcase
    end
    assign sum = {n8, n5};
    
endmodule