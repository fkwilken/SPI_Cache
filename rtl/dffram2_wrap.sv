module dffram2_wrap (
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
  input [31:0] Di0;
  output logic [31:0] Do0;
  input [1:0] WE0;

  logic [31:0] mem[255];

  always_ff @(posedge clk_i) begin
    if (EN0) begin
      Do0 <= mem[A0];
      if (|WE0) begin
        mem[A0] <= Di0;
      end
    end
  end

endmodule
