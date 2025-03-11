module spi_cache (
    // AXI Interface
    input logic aclk,
    input logic aresetn,
    input logic arvalid,
    output logic arready,
    input logic [31:0] araddr,
    //arprot: figure out what this is
    output logic rvalid,
    input logic rready,
    output logic [31:0] rdata,
    output logic rresp,  // TODO: set bit width of this signal

    // QSPI Interface
    output logic [23:0] qspi_addr,
    output logic qspi_read_en,
    input logic [31:0] qspi_dout,
    input logic qspi_dval,
    input logic qspi_rready
);

localparam CLINES = 256;
localparam CLINEWORDS=4;
localparam CLINEOFFSET=$clog2(CLINEWORDS);

localparam TADDRSIZE = $clog2(CLINES);
localparam CADDRSIZE = $clog2(CLINES*CLINEWORDS);
localparam TAGSIZE = 15;

localparam ADDRSPACE = CADDRSIZE + TAGSIZE + CLINEOFFSET;

  logic [TAGSIZE-1:0] addr_tag;
  logic [TADDRSIZE-1:0] addr_cline;
  logic [1:0] addr_woff;

  logic [31:0] cache_din;
  logic cache_wen;
  logic [TAGSIZE-1:0] cache_tag;
  logic cache_present;
  logic [CADDRSIZE-1:0] cache_addr;
  logic tag_wen;

  logic active;

  logic [1:0] addr_cnt;
  logic [CADDRSIZE-1:0] cache_waddr, cache_raddr;

  logic [ADDRSPACE-1:0] addr_buff, curr_addr;

  logic [TADDRSIZE-1:0] init_cntr;
  logic init_mode, init_done;
  logic [TAGSIZE:0] tag_din;


  assign addr_tag   = curr_addr[TADDRSIZE+TAGSIZE+1:TADDRSIZE+2];
  assign addr_cline = curr_addr[TADDRSIZE+1:2];
  assign addr_woff  = curr_addr[1:0];

  // Initialization FSM
  spi_cache_fsm fsm (
      .clk(aclk),
      .rst(aresetn),
      .init_done(init_done),
      .init_mode(init_mode)
  );
  always_ff @(posedge aclk) begin
    if (aresetn) begin
      init_cntr <= 0;
    end else if (init_mode) begin
      init_cntr <= init_cntr + 1;
    end
  end
  assign init_done = init_mode & (init_cntr == {TADDRSIZE{1'b1}});

  // active register to track operations in progress
  always_ff @(posedge aclk) begin
    if (aresetn | (rvalid & rready)) begin
      active <= 0;
    end else if (arready & arvalid) begin
      active <= 1;
    end
  end

  // address buffer
  always_ff @(posedge aclk) begin
    if (aresetn) begin
      addr_buff <= 0;
    end else if (!active & arvalid) begin
      addr_buff <= araddr[ADDRSPACE-1:0];
    end
  end

  assign curr_addr = active ? addr_buff : araddr[ADDRSPACE-1:0];


  // Main Cache Memory
  dffram1024x32_wrap main_cache (
      .clk_i(aclk),
      .EN0(1'b1),
      .A0(cache_addr),
      .Di0(qspi_dout),
      .Do0(rdata),
      .WE0({4{qspi_dval}})
  );

  // Tag Cache Memory
  dffram256x16_wrap tag_mem (
      .clk_i(aclk),
      .EN0(1'b1),
      .A0(init_mode ? init_cntr : addr_cline),
      .Di0(tag_din),
      .Do0({cache_present, cache_tag}),
      .WE0({2{tag_wen | init_mode}})
  );

  assign tag_din = init_mode ? 16'h0 : {1'b1, addr_tag};

  // cache read/write mux
  always_ff @(posedge aclk) begin
    if (aresetn) begin
      addr_cnt <= 0;
    end else if (qspi_dval) begin
      addr_cnt <= addr_cnt + 1;
    end
  end

  assign cache_addr = qspi_dval ? cache_waddr : cache_raddr;
  assign cache_raddr = {addr_cline, addr_woff};
  assign cache_waddr = ({2'b0, addr_cline} << 2) | {8'b0, addr_cnt};
  assign tag_wen = (addr_cnt == 3) && qspi_dval;

  // QSPI assignments
  pulse_gen qspi_pg (
      .clk(aclk),
      .rst(aresetn),
      .i  (!cache_present & active),
      .o  (qspi_read_en)
  );
  assign qspi_addr = ({1'b0,addr_tag, addr_cline} << 5);

  // AXI assignments
  assign arready = !active && !init_mode && qspi_rready;
  assign rvalid = cache_present & active;
  assign rresp = 0;

endmodule
