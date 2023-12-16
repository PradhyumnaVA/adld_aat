module mux_2x1(
	input [1:0]i,
	input sel,
	output reg o);
	
always@(*)
case(sel)
	1'b0 : o = i[0];
	1'b1 : o = i[1];
	default : o = 1'b0;
endcase

endmodule
	

