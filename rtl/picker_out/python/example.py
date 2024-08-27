from UT_ICache import *

if __name__ == "__main__":
    dut = DUTICache()
    # dut.init_clock("clk")

    dut.Step(1)

    dut.Finish()