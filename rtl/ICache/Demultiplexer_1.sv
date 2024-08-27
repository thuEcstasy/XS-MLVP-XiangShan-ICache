// Generated by CIRCT firtool-1.62.0
// Standard header to adapt well known macros for register randomization.
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_MEM_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_MEM_INIT
`endif // not def RANDOMIZE
`ifndef RANDOMIZE
  `ifdef RANDOMIZE_REG_INIT
    `define RANDOMIZE
  `endif // RANDOMIZE_REG_INIT
`endif // not def RANDOMIZE

// RANDOM may be set to an expression that produces a 32-bit random unsigned value.
`ifndef RANDOM
  `define RANDOM $random
`endif // not def RANDOM

// Users can define INIT_RANDOM as general code that gets injected into the
// initializer block for modules with registers.
`ifndef INIT_RANDOM
  `define INIT_RANDOM
`endif // not def INIT_RANDOM

// If using random initialization, you can also define RANDOMIZE_DELAY to
// customize the delay used, otherwise 0.002 is used.
`ifndef RANDOMIZE_DELAY
  `define RANDOMIZE_DELAY 0.002
`endif // not def RANDOMIZE_DELAY

// Define INIT_RANDOM_PROLOG_ for use in our modules below.
`ifndef INIT_RANDOM_PROLOG_
  `ifdef RANDOMIZE
    `ifdef VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM
    `else  // VERILATOR
      `define INIT_RANDOM_PROLOG_ `INIT_RANDOM #`RANDOMIZE_DELAY begin end
    `endif // VERILATOR
  `else  // RANDOMIZE
    `define INIT_RANDOM_PROLOG_
  `endif // RANDOMIZE
`endif // not def INIT_RANDOM_PROLOG_

// Include register initializers in init blocks unless synthesis is set
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_REG_
    `define ENABLE_INITIAL_REG_
  `endif // not def ENABLE_INITIAL_REG_
`endif // not def SYNTHESIS

// Include rmemory initializers in init blocks unless synthesis is set
`ifndef SYNTHESIS
  `ifndef ENABLE_INITIAL_MEM_
    `define ENABLE_INITIAL_MEM_
  `endif // not def ENABLE_INITIAL_MEM_
`endif // not def SYNTHESIS

module Demultiplexer_1(
  output        io_in_ready,
  input         io_in_valid,
  input  [41:0] io_in_bits_blkPaddr,
  input  [7:0]  io_in_bits_vSetIdx,
  input         io_out_0_ready,
  output        io_out_0_valid,
  output [41:0] io_out_0_bits_blkPaddr,
  output [7:0]  io_out_0_bits_vSetIdx,
  input         io_out_1_ready,
  output        io_out_1_valid,
  output [41:0] io_out_1_bits_blkPaddr,
  output [7:0]  io_out_1_bits_vSetIdx,
  input         io_out_2_ready,
  output        io_out_2_valid,
  output [41:0] io_out_2_bits_blkPaddr,
  output [7:0]  io_out_2_bits_vSetIdx,
  input         io_out_3_ready,
  output        io_out_3_valid,
  output [41:0] io_out_3_bits_blkPaddr,
  output [7:0]  io_out_3_bits_vSetIdx,
  input         io_out_4_ready,
  output        io_out_4_valid,
  output [41:0] io_out_4_bits_blkPaddr,
  output [7:0]  io_out_4_bits_vSetIdx,
  input         io_out_5_ready,
  output        io_out_5_valid,
  output [41:0] io_out_5_bits_blkPaddr,
  output [7:0]  io_out_5_bits_vSetIdx,
  input         io_out_6_ready,
  output        io_out_6_valid,
  output [41:0] io_out_6_bits_blkPaddr,
  output [7:0]  io_out_6_bits_vSetIdx,
  input         io_out_7_ready,
  output        io_out_7_valid,
  output [41:0] io_out_7_bits_blkPaddr,
  output [7:0]  io_out_7_bits_vSetIdx,
  input         io_out_8_ready,
  output        io_out_8_valid,
  output [41:0] io_out_8_bits_blkPaddr,
  output [7:0]  io_out_8_bits_vSetIdx,
  input         io_out_9_ready,
  output        io_out_9_valid,
  output [41:0] io_out_9_bits_blkPaddr,
  output [7:0]  io_out_9_bits_vSetIdx,
  output [3:0]  io_chosen
);

  wire grant_2 = io_out_0_ready | io_out_1_ready;
  wire grant_9 =
    grant_2 | io_out_2_ready | io_out_3_ready | io_out_4_ready | io_out_5_ready
    | io_out_6_ready | io_out_7_ready | io_out_8_ready;
  assign io_in_ready = grant_9 | io_out_9_ready;
  assign io_out_0_valid = io_in_valid;
  assign io_out_0_bits_blkPaddr = io_in_bits_blkPaddr;
  assign io_out_0_bits_vSetIdx = io_in_bits_vSetIdx;
  assign io_out_1_valid = ~io_out_0_ready & io_in_valid;
  assign io_out_1_bits_blkPaddr = io_in_bits_blkPaddr;
  assign io_out_1_bits_vSetIdx = io_in_bits_vSetIdx;
  assign io_out_2_valid = ~grant_2 & io_in_valid;
  assign io_out_2_bits_blkPaddr = io_in_bits_blkPaddr;
  assign io_out_2_bits_vSetIdx = io_in_bits_vSetIdx;
  assign io_out_3_valid = ~(grant_2 | io_out_2_ready) & io_in_valid;
  assign io_out_3_bits_blkPaddr = io_in_bits_blkPaddr;
  assign io_out_3_bits_vSetIdx = io_in_bits_vSetIdx;
  assign io_out_4_valid = ~(grant_2 | io_out_2_ready | io_out_3_ready) & io_in_valid;
  assign io_out_4_bits_blkPaddr = io_in_bits_blkPaddr;
  assign io_out_4_bits_vSetIdx = io_in_bits_vSetIdx;
  assign io_out_5_valid =
    ~(grant_2 | io_out_2_ready | io_out_3_ready | io_out_4_ready) & io_in_valid;
  assign io_out_5_bits_blkPaddr = io_in_bits_blkPaddr;
  assign io_out_5_bits_vSetIdx = io_in_bits_vSetIdx;
  assign io_out_6_valid =
    ~(grant_2 | io_out_2_ready | io_out_3_ready | io_out_4_ready | io_out_5_ready)
    & io_in_valid;
  assign io_out_6_bits_blkPaddr = io_in_bits_blkPaddr;
  assign io_out_6_bits_vSetIdx = io_in_bits_vSetIdx;
  assign io_out_7_valid =
    ~(grant_2 | io_out_2_ready | io_out_3_ready | io_out_4_ready | io_out_5_ready
      | io_out_6_ready) & io_in_valid;
  assign io_out_7_bits_blkPaddr = io_in_bits_blkPaddr;
  assign io_out_7_bits_vSetIdx = io_in_bits_vSetIdx;
  assign io_out_8_valid =
    ~(grant_2 | io_out_2_ready | io_out_3_ready | io_out_4_ready | io_out_5_ready
      | io_out_6_ready | io_out_7_ready) & io_in_valid;
  assign io_out_8_bits_blkPaddr = io_in_bits_blkPaddr;
  assign io_out_8_bits_vSetIdx = io_in_bits_vSetIdx;
  assign io_out_9_valid = ~grant_9 & io_in_valid;
  assign io_out_9_bits_blkPaddr = io_in_bits_blkPaddr;
  assign io_out_9_bits_vSetIdx = io_in_bits_vSetIdx;
  assign io_chosen =
    io_out_0_ready
      ? 4'h0
      : io_out_1_ready
          ? 4'h1
          : io_out_2_ready
              ? 4'h2
              : io_out_3_ready
                  ? 4'h3
                  : io_out_4_ready
                      ? 4'h4
                      : io_out_5_ready
                          ? 4'h5
                          : io_out_6_ready
                              ? 4'h6
                              : io_out_7_ready ? 4'h7 : {3'h4, ~io_out_8_ready};
endmodule

