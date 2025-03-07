`include "qspi_interface.svh"

module qspi_fsm (
    input  logic clk,
    input  logic rst,
    input  logic cmd_done,
    input  logic cnt_done,
    output cmd_t cmd_out,
    output logic cmd_we,
    output logic reading,
    output logic cs,
    output logic rready
);
  typedef enum {
    StartReset,
    StartPowerUp,
    Idle,
    StartRead
  } state_t;

  state_t curr_state;
  state_t next_state;

  always_ff @(posedge clk) begin
    if (rst) begin
      curr_state <= StartReset;
    end else begin
      curr_state <= next_state;
    end
  end

  always_comb begin
    we = 0;
    cmd_out = 0;
    reading = 0;
    rready = 0;
    cs = 0;
    case (curr_state)
      StartReset: begin
        cmd_out = Reset;
        we = 1;
        next_state = Reset;
      end

      Reset: begin
        cs = 1;
        if (cmd_done) begin
          next_state = StartPowerUp;
        end else begin
          next_state = Reset;
        end
      end

      StartPowerUp: begin
        cmd_out = PowerUp;
        we = 1;
        next_state = PowerUp;
      end

      PowerUp: begin
        cs = 1;
        if (cmd_done) begin
          next_state = Idle;
        end else begin
          next_state = PowerUp;
        end
      end

      Idle: begin
        rready = 1;
        if (we) begin
          next_state = StartRead;
        end else begin
          next_state = Idle;
        end
      end

      StartRead: begin
        cmd_out = Read;
        we = 1;
        next_state = Read;
        reading = 1;
      end

      Read: begin
        cs = 1;
        reading = 1;
        if (cnt_done) begin
          next_state = Idle;
        end else begin
          next_state = Read;
        end
      end
      default: begin

      end
    endcase
  end

endmodule
