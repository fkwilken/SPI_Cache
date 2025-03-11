`timescale 1ns/1ns

module tb_dffram2;

localparam WSIZE = 4;
localparam BITWIDTH = WSIZE*8;
localparam RAMSIZE = 1024;
localparam ADDRWIDTH = $clog2(RAMSIZE);


`ifdef USE_POWER_PINS
    wire VPWR;
    wire VGND;
    assign VPWR=1;
    assign VGND=0;
`endif

logic clk;
logic   [WSIZE-1:0]     WE0;     // FO: 2
logic                   EN0;     // FO: 2
logic   [ADDRWIDTH-1:0]           A0;      // FO: 5
logic   [(WSIZE*8-1):0] Di0;     // FO: 2
logic  [(WSIZE*8-1):0]  Do0;

dffram1024x32_wrap ram1024x32 (.clk_i(clk), .*);

localparam CLK_PERIOD = 20;
always begin
    #(CLK_PERIOD/2) 
    clk<=~clk;
end

initial begin
    $dumpfile("tb_dffram.vcd");
    $dumpvars(0, tb_dffram2);
end

task writeDFFRAM (bit [ADDRWIDTH-1:0] addr, bit [BITWIDTH-1:0] data);
    EN0 = 1;
    // WE0 = 4'hF;
    WE0 = {WSIZE{1'b1}};
    A0 = addr;
    Di0 = data;
    @(posedge clk);
    WE0 = 0;
endtask

task readDFFRAM (bit [ADDRWIDTH-1:0] addr);
    A0 = addr;
    EN0 = 1;
    WE0 = 0;
    @(posedge clk);   
    @(negedge clk);  
endtask

initial begin
    #1 clk=1'b0;
    EN0 = 1;
    A0 = 0;

    @(posedge clk);
    for (bit [BITWIDTH-1:0] i = 0; i < RAMSIZE; i++) begin
        writeDFFRAM(i[ADDRWIDTH-1:0], i);
    end

    @(posedge clk);
    for (bit [BITWIDTH-1:0] i = 0; i < RAMSIZE; i++) begin
        readDFFRAM(i[ADDRWIDTH-1:0]);
        assert(Do0 == i) else $error("Didnt Match at %d", i);
    end


    $finish(2);
end

endmodule
