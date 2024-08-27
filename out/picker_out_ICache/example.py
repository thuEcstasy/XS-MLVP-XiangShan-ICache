from UT_ICache import *

if __name__ == "__main__":
    dut = DUTICache()
    # dut.InitClock("clk")

    dut.Step(1)

    dut.Finish()