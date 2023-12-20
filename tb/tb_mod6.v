module tb_mod6;
reg clk,rst;
wire [2:0]q;

mod6_count DUT(.clk(clk),.rst(rst),.q(q));

initial begin
rst = 1; clk = 0;
#8 rst = 0;
#120 $finish; 
end

always #5 clk = ~clk;

initial begin
$dumpfile("mod6.vcd");
$dumpvars;
end

endmodule
