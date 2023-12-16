module tb_sr_ff();
reg s,r,clk,rst;
wire w;

sr_ff DUT (.s(s),.r(r),.clk(clk),.rst(rst),.q(q));

initial
begin
s=0;r=0;clk=0;rst=1;
#6 rst=0;
#40 $finish;
end

always #5 clk = ~clk;

always #10 r = ~r;

always #20 s = ~s;

initial begin
$dumpfile("ff_sr.vcd");
$dumpvars;
end

endmodule
