module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//
    wire [31:0] n1;
    // assign { ... } = { ... };
    assign n1 = {a, b, c, d, e, f, 1'b1, 1'b1};
    assign w = n1[31:24];
    assign x  = n1[23:16];
    assign y = n1[15:8];
    assign z = n1[7:0];

endmodule