module full_adder(input a, input b, input cin, output sum, output cout);
    assign sum = a ^ b ^ cin;
    assign cout = a & b | a & cin | b & cin;
endmodule

module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
	wire a_sum, b_sum, c_sum, d_sum, a_carry, b_carry, c_carry, d_carry;
    full_adder add1(x[0], y[0], 1'b0, a_sum, a_carry);
    full_adder add2(x[1], y[1], a_carry, b_sum, b_carry);
    full_adder add3(x[2], y[2], b_carry, c_sum, c_carry);
    full_adder add4(x[3], y[3], c_carry, d_sum, d_carry);
    assign sum = {d_carry, d_sum, c_sum, b_sum, a_sum};
endmodule