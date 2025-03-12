module spi_cache_wrapper (
`ifdef USE_POWER_PINS
    inout VPWR,
    inout VGND,
`endif
    input logic aclk,
    input logic aresetn,
    input logic arvalid,
    output logic arready,
    input logic [31:0] araddr,
    input logic [2:0] arprot,
    output logic rvalid,
    input logic rready,
    output logic [31:0] rdata,
    output logic rresp,  // TODO: set bit width of this signal

    // inout [3:0] io,
    input [3:0] in,
    output logic [3:0] out,
    output logic [3:0] oe,
    output logic csb
);

  logic [23:0] qspi_addr;
  logic qspi_read_en;
  logic [31:0] qspi_dout;
  logic qspi_dval;
  logic qspi_rready;

  spi_cache cache (
`ifdef USE_POWER_PINS
    .VPWR(VPWR),
    .VGND(VGND),
`endif
      .aclk(aclk),
      .aresetn(aresetn),
      .arvalid(arvalid),
      .arready(arready),
      .araddr(araddr),
      .rvalid(rvalid),
      .rready(rready),
      .rdata(rdata),
      .rresp(rresp),  // TODO: set bit width of this signal
      .qspi_addr(qspi_addr),
      .qspi_read_en(qspi_read_en),
      .qspi_dout(qspi_dout),
      .qspi_dval(qspi_dval),
      .qspi_rready(qspi_rready)
  );

  qspi_interface qspi (
      .clk(aclk),
      .rst(aresetn),
      .addr(qspi_addr),
      .read_en(qspi_read_en),
      .dout(qspi_dout),
      .dval(qspi_dval),
      .rready(qspi_rready),
      .in(in),
      .out(out),
      .oe(oe),
      .csb(csb)
  );

endmodule
