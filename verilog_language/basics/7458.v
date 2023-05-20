module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
	  wire n1, n2, n3, n4;
    assign n1 = p1a & p1b & p1c;
    assign n2 = p2a & p2b;
    assign n3 = p2c & p2d;
    assign n4 = p1f & p1e & p1d;
    assign p2y = n3 | n2;
    assign p1y = n1 | n4;
endmodule