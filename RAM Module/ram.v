module ram (
    input clk,
    input write_enable,
    input [3:0] address,
    input [7:0] data_in,
    output reg [7:0] data_out
);

    // Memory with 16 locations
    reg [7:0] memory [0:15];

    // Write and read operation
    always @(posedge clk) begin

        if (write_enable)
            memory[address] <= data_in;

        else
            data_out <= memory[address];

    end

endmodule