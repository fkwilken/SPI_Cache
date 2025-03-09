`include "qspi_interface.svh"

module qspi_fsm (
    input logic clk,
    input logic rst,
    input logic cmd_done,
    input logic cmd_last_cycle,
    input logic cnt_done,
    input logic start_read,
    input logic addr_done,
    output cmd_t cmd_out,
    output logic cmd_we,
    output logic cs,
    output logic rready,
    output logic addr_shift,
    output logic data_shift,
    output logic [7:0] cnt_val,
    output logic cnt_we,
    output logic [1:0] out_mux  // 0: High-Z
                                // 1: Cmd Register
                                // 2: Addr Register
);
  typedef enum {
    Init,
    Reset,
    PowerUp,
    Idle,
    ReadCmd,
    ReadAddr,
    ReadDelay,
    ReadData
  } state_e;

  state_e curr_state;
  state_e next_state;

  always_ff @(posedge clk) begin
    if (rst) begin
      curr_state <= Init;
    end else begin
      curr_state <= next_state;
    end
  end

  always_comb begin
    cmd_out = CmdReset;
    cmd_we = 0;
    cs = 1;
    rready = 0;
    addr_shift = 0;
    data_shift = 0;
    cnt_we = 0;
    cnt_val = 0;
    out_mux = 0;

    case (curr_state)
      Init: begin
        cmd_out = CmdReset;
        cmd_we = 1;
        next_state = Reset;
      end

      Reset: begin
        out_mux = 1;
        cmd_out = CmdPowerUp;
        if (cmd_done) begin
          next_state = PowerUp;
          cs = 1;
          cmd_we = 1;
        end else begin
          next_state = Reset;
          cs = 0;
          cmd_we = 0;
        end
      end

      PowerUp: begin
        out_mux = 1;
        if (cmd_done) begin
          next_state = Idle;
        end else begin
          next_state = PowerUp;
          cs = 0;
        end
      end

      Idle: begin
        cmd_out = CmdRead;
        rready  = 1;
        if (start_read) begin
          cmd_we = 1;
          next_state = ReadCmd;
        end else begin
          next_state = Idle;
        end
      end

      ReadCmd: begin
        out_mux = 1;
        cs = 0;
        if (cmd_last_cycle) begin
          next_state = ReadAddr;
        end else begin
          next_state = ReadCmd;
        end
      end

      ReadAddr: begin
        out_mux = 2;
        addr_shift = 1;
        cs = 0;
        if (addr_done) begin
          next_state = ReadDelay;
          cnt_we = 1;
        end else begin
          next_state = ReadAddr;
        end
      end

      ReadDelay: begin
        cnt_val = 6;
        cs = 0;
        if (cnt_done) begin
          next_state = ReadData;
          cnt_we = 1;
        end else begin
          next_state = ReadDelay;
        end
      end

      ReadData: begin
        cs = 0;
        cnt_val = 32;
        if (cnt_done) begin
          next_state = Idle;
        end else begin
          next_state = ReadData;
          data_shift = 1;
        end
      end

      default: begin

      end
    endcase
  end

endmodule
