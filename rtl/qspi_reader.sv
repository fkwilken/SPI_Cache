module qspi_reader (
    input logic clk,
    input logic rst,
    input logic [7:0] cmd_in,
    input logic [7:0] we,
    input logic [31:0] addr,
    output logic done,
    output logic [3:0] io
);

  localparam int DummyDone = 2;
  localparam byte ReadCmd = 8'h3B;

  // command register w/ counter
  logic cmd_out, cmd_done;
  shift_cntr #(
      .SIZE(8),
      .OUT_SIZE(1)
  ) cmd_reg (
      .clk (clk),
      .rst (rst),
      .din (cmd_in),
      .we  (we),
      .se  (1),
      .dout(cmd_out),
      .done(cmd_done)
  );

  // address register w/ counter
  logic [3:0] addr_out;
  logic addr_done;
  shift_cntr #(
      .SIZE(32),
      .OUT_SIZE(4)
  ) addr_reg (
      .clk (clk),
      .rst (rst),
      .din (addr),
      .we  (we),
      .se  (cmd_done),
      .dout(addr_out),
      .done(addr_done)
  );

  // dummy counter
  logic [7:0] dummy_cntr;
  always_ff @(posedge clk) begin
    if (rst | we) begin
      dummy_cntr <= DummyDone;
    end else if (cmd_done) begin
      dummy_cntr <= dummy_cntr - 1;
    end
  end

  logic is_read_cmd;
  always_ff @(posedge clk) begin
    if (rst) begin
      is_read_cmd <= 0;
    end else if (we) begin
      is_read_cmd <= cmd_in == ReadCmd;
    end
  end

  assign done = is_read_cmd ? dummy_cntr == 0 : cmd_done;

endmodule
