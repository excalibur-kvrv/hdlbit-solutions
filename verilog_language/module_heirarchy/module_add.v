module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] n1, n2, n3, n4, n5, n6;
    wire n7, n8;
    assign n1 = a[15:0];
    assign n2 = b[15:0];
    assign n3 = a[31:16];
    assign n4 = b[31:16];
    add16 add1(n1, n2, 1'b0, n5, n7);
    add16 add2(n3, n4, n7, n6, n8);
    assign sum = {n6, n5};
endmodule