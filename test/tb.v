`timescale 1ns/1ps

module tb;

reg [7:0] ui_in;
reg [7:0] uio_in;

wire [7:0] uo_out;

tt_um_8bit_alu dut (
    .ui_in(ui_in),
    .uo_out(uo_out),
    .uio_in(uio_in),
    .uio_out(),
    .uio_oe(),
    .ena(),
    .clk(),
    .rst_n()
);

initial begin

    $dumpfile("wave.vcd");
    $dumpvars(0,tb);

    // ADD
    ui_in = 8'd10;
    uio_in = 8'b00000101;
    #10;

    // SUB
    ui_in = 8'd10;
    uio_in = 8'b00000001;
    #10;

    // AND
    ui_in = 8'b10101010;
    uio_in = 8'b01010110;
    #10;

    // OR
    ui_in = 8'b10101010;
    uio_in = 8'b00000011;
    #10;

    // XOR
    ui_in = 8'b11110000;
    uio_in = 8'b00000100;
    #10;

    $finish;

end

endmodule
