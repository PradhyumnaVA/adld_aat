module xnor_mux(
	input a,b,
	output y);

wire b_bar;
not (b_bar,b);
	
mux_2x1 i1(.i({b,b_bar}),.sel(a),.o(y));

endmodule
