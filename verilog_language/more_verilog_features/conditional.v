module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    wire [7:0] mval1, mval2;
    assign mval1 = a < b ? a: b;
    assign mval2 = d < c ? d: c;
    assign min = mval1 > mval2 ? mval2 : mval1;
    // assign intermediate_result1 = compare? true: false;

endmodule