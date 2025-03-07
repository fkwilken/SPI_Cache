`include "qspi_interface.svh"

module qspi_interface (
    input logic clk,
    input logic rst,
    input logic [31:0] addr,
    input logic read_en,
    output logic [127:0] dout,
    output logic dval,
    output logic rready,
    output logic [3:0] io,
    output logic csb
);
  cmd_t curr_cmd;
  logic cmd_we, cmd_done;
  logic [31:0] curr_addr;
  logic cnt_done;
  logic oe;
  logic io_out;

  // Tristate Muxes
  always_comb begin
    if (oe) begin
      io = io_out;
    end else begin
      io = 4'hz;
    end
  end

  qspi_reader qrdr (
      .clk (clk),
      .rst (rst),
      .cmd (curr_cmd),
      .we  (cmd_we),
      .done(cmd_done),
      .io  (io_out)
  );

  logic reading;
  qspi_fsm fsm (
      .clk(clk),
      .rst(rst),
      .cmd_done(cmd_done),
      .cmd_out(curr_cmd),
      .cmd_we(cmd_we),
      .reading(reading),
      .cnt_done(cnt_done),
      .cs(csb)
  );

  // base address register
  logic [31:0] base_addr;
  always_ff @(posedge clk) begin
    if (rst) begin
      base_addr <= 0;
    end else if (we) begin
      base_addr <= addr;
    end
  end

  // address counter
  logic [1:0] addr_cntr;
  always_ff @(posedge clk) begin
    if (rst | we) begin
      addr_cntr <= 0;
    end else if (reading & cmd_done) begin
      addr_cntr <= addr_cntr + 1;
    end
  end

  assign cnt_done = addr_cntr == 2'd3;

  // data output shift register
  always_ff @(posedge clk) begin
    if (rst) begin
      dout <= 0;
    end else if (reading & cmd_done) begin
      dout <= {dout[123:0], io};
    end
  end

endmodule
