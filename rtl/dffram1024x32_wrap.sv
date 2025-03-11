module dffram1024x32_wrap (
    clk_i,
    EN0,
    A0,
    Di0,
    Do0,
    WE0
);
  input clk_i;
  input EN0;
  input [9:0] A0;
  input [31:0] Di0;
  output logic [31:0] Do0;
  input [3:0] WE0;

`ifdef VERILATOR
  logic [31:0] mem[1023:0];

  always_ff @(posedge clk_i) begin
    if (EN0) begin
      Do0 <= mem[A0];
      if (|WE0) begin
        mem[A0] <= Di0;
      end
    end
  end
`else

wire [31:0] Do0_vec [3:0];
logic [1:0] select, select_prev;
assign select = A0[9:8];
assign Do0 = Do0_vec[select_prev];

always_ff @ (posedge clk_i) begin
  select_prev <= select;
end


RAM256 #(1, 4) dffram0  (.CLK(clk_i), .A0(A0[7:0]), .Di0(Di0), .WE0(WE0),
   .EN0(EN0 & (select == 0)), .Do0(Do0_vec[0]));
RAM256 #(1, 4) dffram1  (.CLK(clk_i), .A0(A0[7:0]), .Di0(Di0), .WE0(WE0),
   .EN0(EN0 & (select == 1)), .Do0(Do0_vec[1]));
RAM256 #(1, 4) dffram2  (.CLK(clk_i), .A0(A0[7:0]), .Di0(Di0), .WE0(WE0),
   .EN0(EN0 & (select == 2)), .Do0(Do0_vec[2]));
RAM256 #(1, 4) dffram3  (.CLK(clk_i), .A0(A0[7:0]), .Di0(Di0), .WE0(WE0), 
   .EN0(EN0 & (select == 3)), .Do0(Do0_vec[3]));

`endif

endmodule
