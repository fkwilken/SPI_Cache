module qspi_interface_tb ();
  logic clk;
  logic rst;
  logic [23:0] addr;
  logic read_en;
  logic [31:0] dout;
  logic dval;
  wire [3:0] io;
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

  task static read_qspi(input logic [23:0] addr_in, output logic [127:0] data);
    @(posedge clk);
    addr = addr_in;
    read_en = 1;
    @(posedge clk);
    read_en = 0;

    @(posedge dval);
    @(posedge dval);
    data[31:0] = dout;
    $display("Got: 0x%0h", dout);
    @(posedge dval);
    data[63:32] = dout;
    $display("Got: 0x%0h", dout);
    @(posedge dval);
    data[95:64] = dout;
    $display("Got: 0x%0h", dout);
    @(posedge dval);
    data[127:96] = dout;
    $display("Got: 0x%0h", dout);
  endtask

  always begin
    #(ClkPeriod / 2) clk <= ~clk;
  end

  logic [127:0] data_out;

  initial begin
    $dumpfile("tb_qspi_interface.vcd");
    $dumpvars(0, qspi_interface_tb);
    clk = 0;

    // reset everything
    rst = 1;
    read_en = 0;
    #(ClkPeriod * 2);

    // let QSPI initialize
    rst = 0;
    #(ClkPeriod * 30);

    // try to read from the QSPI
    read_qspi(0, data_out);
    assert (data_out == 128'hefcdab8967452301efcdab8967452301) $display("Read Address 0");
    else $error("Got 0x%h from address 0", data_out);

    wait (rready);
    read_qspi(16, data_out);
    assert (data_out == 128'h0123456789abcdef0123456789abcdef) $display("Read Address 0");
    else $error("Got 0x%h from address 16", data_out);
    $finish();


  end
endmodule
