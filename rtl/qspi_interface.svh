`ifndef _QSPI_INTERFACE_VH_
`define _QSPI_INTERFACE_VH_
typedef enum {
  Read = 8'hEB,
  Reset = 8'hFF,
  PowerOn = 8'hAB
} cmd_t;
`endif
