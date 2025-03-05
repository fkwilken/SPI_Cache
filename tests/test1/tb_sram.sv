
module tb_fib;

`ifdef USE_POWER_PINS
    wire VPWR;
    wire VGND;
    assign VPWR=1;
    assign VGND=0;
`endif

logic   clk_i;

logic        sram_d_req_i;
logic        sram_d_gnt_o;
logic [31:0] sram_d_addr_i;
logic        sram_d_we_i;
logic [3:0]  sram_d_be_i;
logic [31:0] sram_d_wdata_i;
logic        sram_d_rvalid_o;
logic [31:0] sram_d_rdata_o;


logic        sram_i_req_i;
logic        sram_i_gnt_o;
logic [31:0] sram_i_addr_i;
logic        sram_i_we_i;
logic [3:0]  sram_i_be_i;
logic [31:0] sram_i_wdata_i;
logic        sram_i_rvalid_o;
logic [31:0] sram_i_rdata_o;

//illegal out
logic        illegal_memory_o;

sram_wrap sram_wrap (
`ifdef USE_POWER_PINS
    .vccd1(VPWR),	// 1.8V supply
    .vssd1(VGND),	// 1 digital ground
`endif 
    .*                  
);

localparam CLK_PERIOD = 10;
always begin
    #(CLK_PERIOD/2) 
    clk_i<=~clk_i;
end

initial begin
    $dumpfile("tb_sram.vcd");
    $dumpvars(0, tb_fib);
end

initial begin
    #1 clk_i=1'b0;
    sram_d_req_i = 0;

    @(posedge clk_i);

    sram_d_addr_i = 32'hC;
    sram_d_wdata_i = 69;
    sram_d_we_i = 1;
    sram_d_be_i = 4'hF;
    sram_d_req_i = 1;

    repeat(2) @(posedge clk_i);
    
    sram_d_we_i = 0;
    sram_d_req_i = 1;

    @(posedge clk_i);

    assert(sram_d_rdata_o == 69);    
    
    $finish(2);
end

endmodule
