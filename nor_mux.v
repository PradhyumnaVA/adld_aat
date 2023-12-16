module nor_mux(
	input a,b,
	output y);
	
wire b_bar;

mux_2x1 i1(.i({1'b0,1'b1}),.sel(b),.o(b_bar));
	
mux_2x1 i2(.i({1'b0,b_bar}),.sel(a),.o(y));

endmodule
