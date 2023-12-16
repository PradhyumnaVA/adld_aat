module jk_ff (
	input j,k,clk,rst,
	output reg q);
	
always@(posedge clk, posedge rst)
begin
	if(rst)
		q = 1'b1;
	else 
	case({j,k})
		2'b00 : q = q;
		2'b01 : q = 0;
		2'b10 : q = 1;
		2'b11 : q = ~q;
		default : q = 1;
	endcase
end

endmodule
	
