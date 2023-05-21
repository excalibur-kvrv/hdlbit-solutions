module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
	wire n1, n2, n3, n4;
    assign n1 = (~x3) & x2 & (~x1);
    assign n2 = (~x3) & x2 & x1;
    assign n3 = x3 & (~x2) & x1;
    assign n4 = x3 & x2 & x1;
    assign f = n1 | n2 | n3 | n4;
endmodule