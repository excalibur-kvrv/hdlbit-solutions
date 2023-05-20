module top_module ( input clk, input d, output q );
    wire n1, n2;
    my_dff diff1(clk, d, n1);
    my_dff diff2(clk, n1, n2);
    my_dff diff3(clk, n2,  q);
endmodule
