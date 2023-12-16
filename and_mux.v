module and_mux(
	input a,b,
	output y);
	
mux_2x1 i1(.i({b,1'b0}),.sel(a),.o(y));

endmodule
