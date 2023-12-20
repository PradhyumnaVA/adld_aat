module tb_mod9;
reg clk,rst;
wire [3:0]q;

mod9_counter DUT(.clk(clk),.rst(rst),.q(q));

initial begin
rst = 1; clk = 0;
#8 rst = 0;
#120 $finish; 
end

always #5 clk = ~clk;

initial begin
$dumpfile("mod9.vcd");
$dumpvars;
end

endmodule
