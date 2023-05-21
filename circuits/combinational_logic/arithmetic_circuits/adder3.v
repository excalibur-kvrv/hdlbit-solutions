module adder(input a, input b, input cin, output sum, output cout);
	assign sum = a ^ b ^ cin;
    assign cout = a & cin | b & cin | a & b;
endmodule

module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum );
    wire n1, n2, n3, n4, n5, n6;
    
    adder add1(a[0], b[0], cin, n1, n2);
    adder add2(a[1], b[1], n2, n3, n4);
    adder add3(a[2], b[2], n4, n5, n6);
    
    assign sum = {n5, n3, n1};
    assign cout = {n6, n4, n2};
endmodule