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
    output [99:0] cout,
    output [99:0] sum );
	
    wire [100:0] c;
    assign c[0] = cin;
    genvar i;
    generate
        for (i = 0; i < 100; i++) begin : add
            full_adder fa0(a[i], b[i], c[i], cout[i], sum[i]);
            assign c[i + 1] = cout[i];
        end
    endgenerate
endmodule