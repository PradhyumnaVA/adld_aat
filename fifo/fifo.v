`timescale 1ns / 1ps

module 8bit_fifo(
    input clk, rst, write_en, read_en, 
    input [7:0]data_in,
    output full, empty,
    output reg [7:0] data_out
);

reg [3:0] w_ptr, r_ptr; 
reg full, empty;
reg [7:0]fifo[15:0];

always @(posedge clk, posedge rst) begin
    if(!rst)begin
        fifo <= 16'h0000;
        w_ptr <= 4'h0;
        r_ptr <= 4'h0;
        data_out <= 8'd0;
    end

    else begin
        if(w_ptr<4'd16 && write_en!=0) begin
            fifo[w_ptr] <= data_in;
            w_ptr++;
            if(w_ptr==4'd15) full <= 1'b1;
            else full <= 1'b0;

        end

        else if(r_ptr<4'd16 && read_en!=0) begin
            data_out <= fifo[r_ptr];
            r_ptr++;
            if(r_ptr==4'd15) empty <= 1'b1;
            else empty <= 1'b0; 
        end

        else if(empty==1 && read_en!=0) begin
            $display("FIFO buffer is empty");
            break;
        end

        else if(r_ptr==4'd15 && write_en!=0) begin
            $display("FIFO buffer is full");
            break;
        end
    end
end

endmodule