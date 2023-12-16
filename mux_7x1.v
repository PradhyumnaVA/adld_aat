module mux_7x1(
	input [6:0]i,
	input [2:0]sel,
	output o);
	
wire [5:0]w;

mux_2x1 i1(.i(i[1:0]),.sel(sel[0]),.o(w[0]));

mux_2x1 i2(.i(i[3:2]),.sel(sel[0]),.o(w[1]));

mux_2x1 i3(.i(i[5:4]),.sel(sel[0]),.o(w[2]));

mux_2x1 i4(.i({i[6],i[0]}),.sel(sel[0]),.o(w[3]));

mux_2x1 i5(.i(w[1:0]),.sel(sel[1]),.o(w[4]));

mux_2x1 i6(.i(w[3:2]),.sel(sel[1]),.o(w[5]));

mux_2x1 i7(.i(w[5:4]),.sel(sel[2]),.o(o));

endmodule
