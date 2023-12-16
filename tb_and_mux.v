module tb_and_mux();
reg a,b;
wire y;

and_mux DUT(.a(a),.b(b),.y(y));

initial begin
a=0; b=0;
#20 $finish;
end

always #5 b = ~b;

always #10 a = ~a;

initial begin
$dumpfile("mux_and.vcd");
$dumpvars;
end

endmodule
