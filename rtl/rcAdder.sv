module rcAdder #(parameter width = 16) (
`ifdef USE_POWER_PINS
    inout VPWR,
    inout VGND,
`endif
    input clk,
    input [width-1:0] a_i,
    input [width-1:0] b_i,
    output logic [width-1:0] sum_o,
    output logic carry_o
);

logic [width-1:0] sum;

wire [width-1:0] carries;

fullAdder fa0 (.a_i(a_i[0]), .b_i(b_i[0]), .carry_i(1'b0), .sum_o(sum[0]), .carry_o(carries[0]));

genvar i;
generate
    for (i = 1; i < width; i++) begin
        fullAdder fa0 (.a_i(a_i[i]), .b_i(b_i[i]), .carry_i(carries[i-1]), .sum_o(sum[i]), .carry_o(carries[i]));
    end
endgenerate

assign carry_o = carries[width-1];

always_ff @ (posedge clk) begin
    sum_o <= sum;
end

endmodule