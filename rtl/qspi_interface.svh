`ifndef _QSPI_INTERFACE_VH_
`define _QSPI_INTERFACE_VH_
typedef enum bit [7:0] {
  CmdRead = 8'hEB,
  CmdReset = 8'hFF,
  CmdPowerUp = 8'hAB
} cmd_t;
`endif
