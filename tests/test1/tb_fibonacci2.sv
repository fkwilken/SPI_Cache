
module tb_fib;

logic clk;
logic rst_n;

logic [7:0] fib_in;
logic vld_in;
wire rdy_in;

wire [31:0] fib_out;
wire vld_out;
logic rdy_out;

`ifdef USE_POWER_PINS
    wire VPWR;
    wire VGND;
    assign VPWR=1;
    assign VGND=0;
`endif

fib Fib (.*);

localparam CLK_PERIOD = 10;
always begin
    #(CLK_PERIOD/2) 
    clk<=~clk;
end

initial begin
    $dumpfile("tb_fib.vcd");
    $dumpvars(0, tb_fib);
end

initial begin
    #1 rst_n=1'b0;clk=1'b0;
    vld_in = 0; rdy_out=0; fib_in = 0;
    #(CLK_PERIOD*3) rst_n=1;
    #(CLK_PERIOD*3) rst_n=0;clk=0;
    #(CLK_PERIOD*3) rst_n=1;
    #(CLK_PERIOD*3);
    

    fib_in = 6;
    vld_in = 1;
    #(CLK_PERIOD);
    vld_in = 0;
    fib_in = 0;

    @(posedge vld_out);
    
    assert(fib_out == 8) else $error("Error FibOut"); 
    #(CLK_PERIOD*2);
    rdy_out = 1;
    #(CLK_PERIOD);
    rdy_out = 0;

    $finish(2);
end

endmodule
