`default_nettype none

module tt_um_8bit_alu (
    input  wire [7:0] ui_in,
    output reg  [7:0] uo_out,

    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,

    input  wire ena,
    input  wire clk,
    input  wire rst_n
);

wire [2:0] opcode;

assign opcode = uio_in[2:0];

always @(*) begin

    case(opcode)

        3'b000:
            uo_out = ui_in + uio_in;

        3'b001:
            uo_out = ui_in - uio_in;

        3'b010:
            uo_out = ui_in & uio_in;

        3'b011:
            uo_out = ui_in | uio_in;

        3'b100:
            uo_out = ui_in ^ uio_in;

        default:
            uo_out = 8'b00000000;

    endcase

end

assign uio_out = 8'b00000000;
assign uio_oe  = 8'b00000000;

wire _unused = &{ena, clk, rst_n, 1'b0};

endmodule
