module pulse_gen (
    input  logic clk,
    input  logic rst,
    input  logic i,
    output logic o
);

  logic ff;
  always_ff @(posedge clk) begin
    if (rst) begin
      ff <= 0;
    end else begin
      ff <= i;
    end
  end

  assign o = i & ~ff;



endmodule
