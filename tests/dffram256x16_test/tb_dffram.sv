`timescale 1ns/1ns

module tb_dffram;

`ifdef USE_POWER_PINS
    wire VPWR;
    wire VGND;
    assign VPWR=1;
    assign VGND=0;
`endif

logic clk;
parameter WSIZE = 2;
logic   [WSIZE-1:0]     WE0;     // FO: 2
logic                   EN0;     // FO: 2
logic   [9:0]           A0;      // FO: 5
logic   [(WSIZE*8-1):0] Di0;     // FO: 2
logic  [(WSIZE*8-1):0]  Do0;

dffram256x16_wrap ram16x256 (.clk_i(clk), .*);


localparam CLK_PERIOD = 20;
always begin
    #(CLK_PERIOD/2) 
    clk<=~clk;
end

initial begin
    $dumpfile("tb_dffram.vcd");
    $dumpvars(0, tb_dffram);
end

task writeDFFRAM (bit [7:0] addr, bit [15:0] data);
    EN0 = 1;
    WE0 = 2'b11;
    A0 = addr;
    Di0 = data;
    @(posedge clk);
    WE0 = 0;
endtask

task readDFFRAM (bit [7:0] addr);
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
    for (bit [15:0] i = 0; i < 256; i++) begin
        writeDFFRAM(i[7:0], i);
    end

    @(posedge clk);
    for (bit [15:0] i = 0; i < 256; i++) begin
        readDFFRAM(i[7:0]);
        assert(Do0 == i) else $error("Didnt Match at %d", i);
    end


    $finish(2);
end

endmodule
