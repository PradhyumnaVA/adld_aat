module tb_or_mux();
reg a,b;
wire y;

or_mux DUT(.a(a),.b(b),.y(y));

initial begin
a=0; b=0;
#20 $finish;
end

always #5 b = ~b;

always #10 a = ~a;

initial begin
$dumpfile("mux_or.vcd");
$dumpvars;
end

endmodule
