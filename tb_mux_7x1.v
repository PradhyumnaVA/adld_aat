module tb_mux_7x1();
reg [6:0]i;
reg [2:0]sel;
wire o;

mux_7x1 DUT(.i(i),.sel(sel),.o(o));

initial begin
i = 7'b1001101;
sel = 3'b000;
#40 $finish;
end

always #5 sel[0] = ~sel[0];

always #10 sel[1] = ~sel[1];

always #20 sel[2] = ~sel[2];

initial begin
$dumpfile("mux_7x1.vcd");
$dumpvars;
end

endmodule
