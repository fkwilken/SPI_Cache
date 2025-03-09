`include "qspi_interface.svh"

module qspi_interface (
    input logic clk,
    input logic rst,
    input logic [23:0] addr,
    input logic read_en,
    output logic [31:0] dout,
    output logic dval,
    output logic rready,
    inout logic [3:0] io,
    output logic csb
);

  logic [1:0] out_mux;

  cmd_t cmd_in;
  logic cmd_we, cmd_out, cmd_done, cmd_last;

  logic addr_se, addr_done;
  logic [3:0] addr_out;

  logic [7:0] timer, timer_set;
  logic timer_start, timer_done;

  logic data_se, data_se1;

  // tristate mux (didn't work with case statement)
  assign io = (out_mux == 0) ? 4'hz : (out_mux == 1) ? {3'hz, cmd_out} : addr_out;

  qspi_fsm fsm (
      .clk(clk),
      .rst(rst),
      .cmd_done(cmd_done),
      .cmd_last_cycle(cmd_last),
      .cnt_done(timer_done),
      .start_read(read_en),
      .addr_done(addr_done),
      .cmd_out(cmd_in),
      .cmd_we(cmd_we),
      .cs(csb),
      .rready(rready),
      .addr_shift(addr_se),
      .data_shift(data_se),
      .cnt_val(timer_set),
      .cnt_we(timer_start),
      .out_mux(out_mux)
  );

  shift_cntr #(
      .SIZE(8),
      .OUT_SIZE(1)
  ) cmd_reg (
      .clk(clk),
      .rst(rst),
      .din(cmd_in),
      .we(cmd_we),
      .se(1'b1),
      .dout(cmd_out),
      .done(cmd_done),
      .lst_cycle(cmd_last)
  );

  shift_cntr #(
      .SIZE(32),
      .OUT_SIZE(4)
  ) addr_reg (
      .clk (clk),
      .rst (rst),
      .din ({addr, 8'h0}),
      .we  (read_en),
      .se  (addr_se),
      .dout(addr_out),
      .done(addr_done)
  );

  // timer
  always @(posedge clk) begin
    if (rst) begin
      timer <= 8'hFF;
    end else if (timer_start) begin
      timer <= 0;
    end else if (timer != 8'hFF) begin
      timer <= timer + 1;
    end
  end

  assign timer_done = timer == timer_set;


  // output data register
  always_ff @(posedge clk) begin
    if (rst) begin
      data_se1 <= 0;
      dout <= 32'h0;
    end else if (data_se) begin
      // switches the byte ordering (in a rather convoluted way admitedly)
      dout[(timer[2:0]^1)*4+:4] <= io;
    end
    data_se1 <= data_se;
  end

  assign dval = data_se1 & (timer[2:0] == 0);


endmodule
