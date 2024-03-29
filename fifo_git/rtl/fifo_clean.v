`timescale 1ns / 1ps

module fifo_clean(
    input clk, rst, write_en, read_en, 
    input [7:0]data_in,
    output full, empty,
    output reg [7:0] data_out
);

integer i;
reg [3:0] w_ptr, r_ptr; 
reg full, empty;
reg [7:0]fifo[15:0];

always @(posedge clk) begin
    if(!rst)begin
      	for (i = 0; i < 16; i = i + 1) begin
      		fifo[i] <= 8'h00;
    	end
        w_ptr <= 4'h0;
        r_ptr <= 4'h0;
        data_out <= 8'd0;
        full <= 1'b0;
        empty <= 1'b0;
    end

    else begin
        if(w_ptr<=4'd15 && write_en!=0 && full!=1) begin
            fifo[w_ptr] <= data_in; 
            if(w_ptr==4'hF) begin 
                full <= 1'b1;
                r_ptr <= 4'd0;
            end          	
            else full <= 1'b0;          
            w_ptr <= w_ptr + 1;
        end

        else if(r_ptr<=4'd15 && read_en!=0 && empty!=1) begin
            data_out <= fifo[r_ptr];
            if(r_ptr==4'd15) begin
                empty <= 1'b1;
                w_ptr <= 4'd0;
            end
            else empty <= 1'b0;             
            r_ptr <= r_ptr + 1;
        end

    end
end

endmodule
