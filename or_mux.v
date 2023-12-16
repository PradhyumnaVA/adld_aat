module or_mux(
	input a,b,
	output y);
	
mux_2x1 i1(.i({1'b1,b}),.sel(a),.o(y));

endmodule
