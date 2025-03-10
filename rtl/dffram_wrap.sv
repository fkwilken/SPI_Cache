module dffram_wrap (
    clk_i,
    EN0,
    A0,
    Di0,
    Do0,
    WE0
);
  input clk_i;
  input EN0;
  input [7:0] A0;
  input [15:0] Di0;
  output [15:0] Do0;
  input [1:0] WE0;

  RAM256model dffram0 (
      .CLK(clk_i),
      .*
  );

endmodule

