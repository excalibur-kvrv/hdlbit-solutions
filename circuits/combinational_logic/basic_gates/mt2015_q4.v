module cir1 (input x, input y, output z);
    assign z = ((~x) & (~y)) | (x & y);
endmodule

module cir2 (input x, input y, output z);
    assign z = (x ^ y) & x;
endmodule

module top_module (input x, input y, output z);
    wire n1, n2, n3, n4, n5, n6;
    
    cir1 c11(x, y, n1);
    cir1 c12(x, y, n2);
    cir2 c21(x, y, n3);
    cir2 c22(x, y, n4);
    
    assign n5 = n1 | n3;
    assign n6 = n2 & n4;
    assign z = n5 ^ n6;
    

endmodule