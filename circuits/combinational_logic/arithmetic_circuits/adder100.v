module full_adder(
	input a,
    input b,
    input cin,
    output cout,
    output sum
);
    assign sum = a ^ b ^ cin;
    assign cout = a & b | a & cin | b & cin;
endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    genvar i;
    
    wire [100:0] carry, out;
    assign carry[0] = cin;
    generate
        for(i = 0; i < 100; i++) begin : add
            full_adder add0(a[i], b[i], carry[i], out[i], sum[i]);
            assign carry[i + 1] = out[i];
        end
    endgenerate
    assign cout = out[99];

endmodule