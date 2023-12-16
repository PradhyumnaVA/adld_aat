module tb_mux_6x1();
reg [5:0]i;
reg [2:0]sel;
wire o;

mux_6x1 DUT(.i(i),.sel(sel),.o(o));

initial begin
i = 6'b100110;
sel = 3'b000;
#120 $finish;
end

always #5 sel[0] = ~sel[0];

always #10 sel[1] = ~sel[1];

always #20 sel[2] = ~sel[2];

initial begin
$dumpfile("mux_6x1.vcd");
$dumpvars;
end

endmodule
