module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire [15:0] a16a, b16a, a16b, b16b, a_out, b_out;
    wire a_cout, b_cout;
    assign a16a = a[15:0];
    assign b16a = b[15:0];
    assign a16b = a[31:16];
    assign b16b = b[31:16];
    add16 add_1(a16a, b16a, 1'b0, a_out, a_cout);
    add16 add_2(a16b, b16b, a_cout, b_out, b_cout);
    assign sum = {b_out, a_out};
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
	  assign sum = a ^ b ^ cin;
    assign cout = a & b | a & cin | b & cin; 
endmodule