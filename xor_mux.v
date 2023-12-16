module xor_mux(
	input a,b,
	output y);

wire b_bar;
not (b_bar,b);
	
mux_2x1 i1(.i({b_bar,b}),.sel(a),.o(y));

endmodule
