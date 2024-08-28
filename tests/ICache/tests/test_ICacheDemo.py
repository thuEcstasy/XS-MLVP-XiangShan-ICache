import os
import mlvp.funcov as fc
import pytest
from mlvp.reporter import set_func_coverage, set_line_coverage

from UT_ICache import DUTICache, xspcomm
from icache_env import icache_wrapper
def test_myDemo():
    assert 1+1 == 2

def test_ICacheDemo():
    dut = DUTICache()
    dut.InitClock("clock")
    dut.Step(1)