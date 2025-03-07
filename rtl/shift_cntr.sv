// shift register with a builtin counter to determine when it has shifted out
// all of its contents
module shift_cntr #(
    parameter int SIZE = 8,
    parameter int OUT_SIZE = 1
) (
    input logic clk,
    rst,
    input logic [SIZE-1:0] din,
    input logic we,  // write enable
    input logic se,  // shift enable
    output logic [OUT_SIZE-1:0] dout,
    output logic done
);

  logic [SIZE-1:0] int_reg;
  logic [$clog2(SIZE)-1:0] int_cnt;

  always_ff @(posedge clk) begin
    if (rst) begin
      int_reg <= 0;
      int_cnt <= 0;
    end else if (we) begin
      int_reg <= din;
      int_cnt <= SIZE;
    end else if (se) begin
      int_reg <= {int_reg[SIZE-OUT_SIZE-1:0], {OUT_SIZE{1'b0}}};
      int_cnt <= int_cnt - OUT_SIZE;
    end
  end

  assign dout = int_reg[SIZE:-OUT_SIZE];
  assign done = int_cnt == 0;


endmodule
