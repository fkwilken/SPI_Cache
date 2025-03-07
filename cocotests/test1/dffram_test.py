
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import (
    RisingEdge,
    Timer
)

@cocotb.test()
async def dffram_test(dut):

    clock = Clock(dut.clk_i, 10)  # Create a 10us period clock on port clk_i
    # Start the clock. Start it low to avoid issues on the first RisingEdge
    cocotb.start_soon(clock.start())

    await RisingEdge(dut.clk_i)

    dut.EN0.value = 1
    # Equivalent to @(posedge clk)
    await RisingEdge(dut.clk_i)

    dut.EN0.value = 0

    # Equivalent to #1
    await Timer(1)

    assert (dut.EN0.value == 0)
