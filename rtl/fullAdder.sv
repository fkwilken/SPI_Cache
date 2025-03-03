module fullAdder (
    input wire a_i,
    input wire b_i,
    input wire carry_i,
    output logic sum_o,
    output logic carry_o
);

logic sum_l;

always_comb begin
    sum_l = (a_i ^ b_i);
    sum_o = sum_l ^ carry_i;
    carry_o = (a_i & b_i) | (sum_l & carry_i);
end

endmodule