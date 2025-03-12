module dffram256x16_wrap (
`ifdef USE_POWER_PINS
    inout VPWR,
    inout VGND,
`endif
  input clk_i,
  input EN0,
  input [7:0] A0,
  input [15:0] Di0,
  output [15:0] Do0,
  input [1:0] WE0
);

`ifdef VERILATOR
RAM256model dffram0 (.CLK(clk_i), .*);
`else
RAM256 
 dffram0 (
  `ifdef USE_POWER_PINS
    .VPWR(VPWR),
    .VGND(VGND),
`endif
  .CLK(clk_i), .*);
`endif

endmodule
