module tb_fifo();
reg clk, rst, write_en, read_en;
reg [7:0]data_in;
// reg [7:0]fifo[15:0];
wire full, empty;
wire [7:0] data_out;


fifo DUT(.clk(clk), .rst(rst), .write_en(write_en), .read_en(read_en), .data_in(data_in), 
        .full(full), .empty(empty), .data_out(data_out));

initial begin
    clk = 0; rst = 0; write_en = 0; read_en = 0;
    #6 rst = 1;
    write_en = 1;
    for (int i = 0; i < 16; i = i + 1) begin
      #6 data_in = $random % 256;
    end
    #1000 $finish;
end 

always #5 clk = ~clk;

initial begin
    $dumpfile("fifo.vcd");
    $dumpvars;
end

endmodule


