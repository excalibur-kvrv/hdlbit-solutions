module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire[99:0] cout_wires;
    genvar i;
    generate
        bcd_fadd b1(a[3:0], b[3:0], cin, cout_wires[0],sum[3:0]);
        for(i = 4; i < 400; i = i + 4) begin : bcd
            bcd_fadd b0(a[i + 3:i], b[i + 3:i], cout_wires[i/4-1],cout_wires[i/4], sum[i+3:i]);
        end
    endgenerate
    assign cout = cout_wires[99];

endmodule