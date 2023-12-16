module tb_jk_ff();
reg j,k,clk,rst;
wire w;

jk_ff DUT (.j(j),.k(k),.clk(clk),.rst(rst),.q(q));

initial
begin
j=0;k=0;clk=0;rst=1;
#10 rst=0;
#40 $finish;
end

always #5 clk = ~clk;

always #10 k = ~k;

always #20 j = ~j;

initial begin
$dumpfile("ff_jk.vcd");
$dumpvars;
end

endmodule
