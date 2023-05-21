module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
	assign out = ~a & ~d | a & ~b & ~c | a & ~b &d | a & c & d | b & c & d | ~a & b & c | ~a & c & ~d | ~a & ~b & ~c;
endmodule