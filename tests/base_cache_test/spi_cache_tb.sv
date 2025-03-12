module spi_cache_tb ();
  logic [2:0] arprot;
  logic aclk;
  logic aresetn;
  logic arvalid;
  logic arready;
  logic [31:0] araddr;
  //arprot: figure out what this is
  logic rvalid;
  logic rready;
  logic [31:0] rdata;
  logic rresp;  // TODO: set bit width of this signal

  wire [3:0] io;
  wire [3:0] in;
  wire [3:0] out;
  wire [3:0] oe;

  assign in = io;
  assign io[0] = oe[0] ? out[0] : 1'bz;
  assign io[1] = oe[1] ? out[1] : 1'bz;
  assign io[2] = oe[2] ? out[2] : 1'bz;
  assign io[3] = oe[3] ? out[3] : 1'bz;

  logic csb;

  localparam int ClkPeriod = 20;

  spi_cache_wrapper dut (.*);

  spiflash flash (
      .csb(csb),
      .clk(aclk),
      .io0(io[0]),
      .io1(io[1]),
      .io2(io[2]),
      .io3(io[3])
  );

  always begin
    #(ClkPeriod / 2) aclk <= ~aclk;
  end

  initial begin
    $dumpfile("spi_cache_tb.vcd");
    $dumpvars(0, spi_cache_tb);
    aclk = 0;

    // reset everything
    aresetn = 1;
    #(ClkPeriod * 2);
    aresetn = 0;

    // initiate a read when ready
    rready  = 1;
    araddr  = 1;
    arvalid = 1;
    wait (arready == 1);
    @(posedge aclk);
    @(posedge aclk);
    arvalid = 0;

    #(ClkPeriod * 100);
    $finish();



  end

endmodule
