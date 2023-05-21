module full_adder(
    input a, 
    input b, 
    input cin, 
    output sum, 
    output cout
);
    assign sum = a ^ b ^ cin;
    assign cout = a & b | a & cin | b & cin;
endmodule

module adder_8bit(
    input [7:0] a, b, 
    output cout, 
    output [7:0] sum
);
	wire a_sum, b_sum, c_sum, d_sum, e_sum, f_sum, g_sum, h_sum;
    wire a_carry, b_carry, c_carry, d_carry, e_carry, f_carry, g_carry, h_carry;
    full_adder add1(a[0], b[0], 1'b0, a_sum, a_carry);
    full_adder add2(a[1], b[1], a_carry, b_sum, b_carry);
    full_adder add3(a[2], b[2], b_carry, c_sum, c_carry);
    full_adder add4(a[3], b[3], c_carry, d_sum, d_carry);
    full_adder add5(a[4], b[4], d_carry, e_sum, e_carry);
    full_adder add6(a[5], b[5], e_carry, f_sum, f_carry);
    full_adder add7(a[6], b[6], f_carry, g_sum, g_carry);
    full_adder add8(a[7], b[7], g_carry, h_sum, h_carry);
    assign sum = {h_sum, g_sum, f_sum, e_sum, d_sum, c_sum, b_sum, a_sum};
    assign cout = h_carry;
endmodule

module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
    wire n1;
    wire [7:0] n2;
    adder_8bit(a, b, n1, n2);
    assign overflow = ((a[7] == 1'b1 && b[7] == 1'b1 && n2[7] == 1'b0) || (a[7] == 1'b0 && b[7] == 1'b0 && n2[7] == 1'b1)) ? 1'b1: 1'b0;
    assign s = n2;
endmodule