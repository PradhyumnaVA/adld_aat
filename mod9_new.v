module mod9_counter(
input clk,rst,
output reg [3:0]q
);

always@(posedge clk)
begin
if(rst)
	q <= 4'b0000;

else
begin	
if(q == 4'b1000)
	q <= 4'b0000;
else 
	q <= q+1;
end
end

endmodule
	 
