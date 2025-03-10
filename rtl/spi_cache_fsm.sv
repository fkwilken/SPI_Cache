module spi_cache_fsm (
    input  logic clk,
    input  logic rst,
    input  logic init_done,
    output logic init_mode
);

  typedef enum {
    Init,
    InitDone
  } state_t;

  state_t curr_state, next_state;

  always_ff @(posedge clk) begin
    if (rst) begin
      curr_state <= Init;
    end else begin
      curr_state <= next_state;
    end
  end

  always_comb begin
    case (curr_state)
      Init: begin
        if (init_done) begin
          next_state = InitDone;
        end else begin
          next_state = Init;
        end
        init_mode = 1'b1;
      end
      InitDone: begin
        next_state = InitDone;
        init_mode  = 1'b0;
      end
      default: begin
        next_state = Init;
      end
    endcase
  end

endmodule
