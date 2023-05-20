module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [15:0] n1, n2, n3, n4, n6, n7;
    wire [32:0] n5;
    wire n8, n9;
    
    assign n1 = a[15:0];
    assign n3 = a[31:16];
    assign n5 = b ^ {32{sub}};
    assign n2 = n5[15:0];
    assign n4 = n5[31:16];
    
    add16 add_1(n1, n2, sub, n6, n8);
    add16 add_2(n3, n4, n8, n7, n9);
    
    assign sum = {n7, n6};
endmodule