module qspi_interface_tb ();
  logic clk;
  logic rst;
  logic [31:0] addr;
  logic read_en;
  logic [127:0] dout;
  logic dval;
  logic [3:0] io;
  logic rready;
  logic csb;

  localparam int ClkPeriod = 20;

  qspi_interface dut (.*);

  spiflash flash (
      .clk(clk),
      .csb(csb),
      .io0(io[0]),
      .io1(io[1]),
      .io2(io[2]),
      .io3(io[3])
  );

  always begin
    #(CLK_PERIOD / 2) clk <= ~clk;
  end

  initial begin
    $dumpfile("tb_qspi_interface.vcd");
    $dumpvars(0, qspi_interface_tb);

    // reset everything
    rst = 1;
    #(CLK_PERIOD * 2);

    // let QSPI initialize
    rst = 0;
    #(CLK_PERIOD * 200);
    $finish();


  end
endmodule
