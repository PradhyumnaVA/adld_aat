module mod6_count(
input clk,rst,
output reg [2:0]q
);

always@(posedge clk, posedge rst)
begin
if(rst)
	q <= 4'b000;

else
begin	
if(q == 4'b101)
	q <= 4'b000;
else 
	q <= q+1;
end
end

endmodule
