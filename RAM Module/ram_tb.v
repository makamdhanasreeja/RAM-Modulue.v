`timescale 1ns/1ps

module ram_tb;

    reg clk;
    reg write_enable;
    reg [3:0] address;
    reg [7:0] data_in;

    wire [7:0] data_out;

    // Connect RAM
    ram uut (
        .clk(clk),
        .write_enable(write_enable),
        .address(address),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Create waveform
        $dumpfile("output.vcd");
        $dumpvars(0, ram_tb);

        // Initial values
        clk = 0;
        write_enable = 0;
        address = 0;
        data_in = 0;

        // Write 10 to address 0
        #10;
        write_enable = 1;
        address = 4'd0;
        data_in = 8'd10;

        // Write 20 to address 1
        #10;
        address = 4'd1;
        data_in = 8'd20;

        // Write 30 to address 2
        #10;
        address = 4'd2;
        data_in = 8'd30;

        // Stop writing
        #10;
        write_enable = 0;

        // Read address 0
        address = 4'd0;
        #10;

        // Read address 1
        address = 4'd1;
        #10;

        // Read address 2
        address = 4'd2;
        #10;

        $finish;

    end

endmodule