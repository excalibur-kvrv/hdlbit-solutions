module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
	assign out = ~b & ~d & a & ~c | ~a & ~b & c & ~d | ~a & b & ~c & ~d | ~a & ~b & ~c & d | a & b & ~c & d | ~a & b & c & d | a & ~b & c & d | a & b & c & ~d;
endmodule
