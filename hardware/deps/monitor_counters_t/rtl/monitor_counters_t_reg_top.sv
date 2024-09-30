// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Top module auto-generated by `reggen`


//algrin `include "common_cells/assertions.svh"

module monitor_counters_t_reg_top #(
    parameter type reg_req_t = logic,
    parameter type reg_rsp_t = logic,
    parameter int AW = 6
) (
  input clk_i,
  input rst_ni,
  input  reg_req_t reg_req_i,
  output reg_rsp_t reg_rsp_o,
  // To HW
  output monitor_counters_t_reg_pkg::monitor_counters_t_reg2hw_t reg2hw, // Write
  input  monitor_counters_t_reg_pkg::monitor_counters_t_hw2reg_t hw2reg, // Read


  // Config
  input devmode_i // If 1, explicit error return for unmapped register access
);

  import monitor_counters_t_reg_pkg::* ;

  localparam int DW = 32;
  localparam int DBW = DW/8;                    // Byte Width

  // register signals
  logic           reg_we;
  logic           reg_re;
  logic [AW-1:0]  reg_addr;
  logic [DW-1:0]  reg_wdata;
  logic [DBW-1:0] reg_be;
  logic [DW-1:0]  reg_rdata;
  logic           reg_error;

  logic          addrmiss, wr_err;

  logic [DW-1:0] reg_rdata_next;

  // Below register interface can be changed
  reg_req_t  reg_intf_req;
  reg_rsp_t  reg_intf_rsp;


  assign reg_intf_req = reg_req_i;
  assign reg_rsp_o = reg_intf_rsp;


  assign reg_we = reg_intf_req.valid & reg_intf_req.write;
  assign reg_re = reg_intf_req.valid & ~reg_intf_req.write;
  assign reg_addr = reg_intf_req.addr;
  assign reg_wdata = reg_intf_req.wdata;
  assign reg_be = reg_intf_req.wstrb;
  assign reg_intf_rsp.rdata = reg_rdata;
  assign reg_intf_rsp.error = reg_error;
  assign reg_intf_rsp.ready = 1'b1;

  assign reg_rdata = reg_rdata_next ;
  assign reg_error = (devmode_i & addrmiss) | wr_err;


  // Define SW related signals
  // Format: <reg>_<field>_{wd|we|qs}
  //        or <reg>_{wd|we|qs} if field == 1 or 0
  logic event_reg_event_0_qs;
  logic event_reg_event_0_wd;
  logic event_reg_event_0_we;
  logic event_reg_event_1_qs;
  logic event_reg_event_1_wd;
  logic event_reg_event_1_we;
  logic event_reg_event_2_qs;
  logic event_reg_event_2_wd;
  logic event_reg_event_2_we;
  logic event_reg_event_3_qs;
  logic event_reg_event_3_wd;
  logic event_reg_event_3_we;
  logic event_reg_event_4_qs;
  logic event_reg_event_4_wd;
  logic event_reg_event_4_we;
  logic event_reg_event_5_qs;
  logic event_reg_event_5_wd;
  logic event_reg_event_5_we;
  logic event_reg_event_6_qs;
  logic event_reg_event_6_wd;
  logic event_reg_event_6_we;
  logic event_reg_event_7_qs;
  logic event_reg_event_7_wd;
  logic event_reg_event_7_we;
  logic [23:0] event_reg_unused_qs;
  logic [23:0] event_reg_unused_wd;
  logic event_reg_unused_we;
  logic [2:0] events_counters_mux_reg_events_counter0_mux_qs;
  logic [2:0] events_counters_mux_reg_events_counter0_mux_wd;
  logic events_counters_mux_reg_events_counter0_mux_we;
  logic [2:0] events_counters_mux_reg_events_counter1_mux_qs;
  logic [2:0] events_counters_mux_reg_events_counter1_mux_wd;
  logic events_counters_mux_reg_events_counter1_mux_we;
  logic [2:0] events_counters_mux_reg_events_counter2_mux_qs;
  logic [2:0] events_counters_mux_reg_events_counter2_mux_wd;
  logic events_counters_mux_reg_events_counter2_mux_we;
  logic [2:0] events_counters_mux_reg_events_counter3_mux_qs;
  logic [2:0] events_counters_mux_reg_events_counter3_mux_wd;
  logic events_counters_mux_reg_events_counter3_mux_we;
  logic [19:0] events_counters_mux_reg_unused_qs;
  logic [19:0] events_counters_mux_reg_unused_wd;
  logic events_counters_mux_reg_unused_we;
  logic event_counters_rst_reg_event_counter0_rst_qs;
  logic event_counters_rst_reg_event_counter0_rst_wd;
  logic event_counters_rst_reg_event_counter0_rst_we;
  logic event_counters_rst_reg_event_clk_counter0_rst_qs;
  logic event_counters_rst_reg_event_clk_counter0_rst_wd;
  logic event_counters_rst_reg_event_clk_counter0_rst_we;
  logic event_counters_rst_reg_event_counter1_rst_qs;
  logic event_counters_rst_reg_event_counter1_rst_wd;
  logic event_counters_rst_reg_event_counter1_rst_we;
  logic event_counters_rst_reg_event_clk_counter1_rst_qs;
  logic event_counters_rst_reg_event_clk_counter1_rst_wd;
  logic event_counters_rst_reg_event_clk_counter1_rst_we;
  logic event_counters_rst_reg_event_counter2_rst_qs;
  logic event_counters_rst_reg_event_counter2_rst_wd;
  logic event_counters_rst_reg_event_counter2_rst_we;
  logic event_counters_rst_reg_event_clk_counter2_rst_qs;
  logic event_counters_rst_reg_event_clk_counter2_rst_wd;
  logic event_counters_rst_reg_event_clk_counter2_rst_we;
  logic event_counters_rst_reg_event_counter3_rst_qs;
  logic event_counters_rst_reg_event_counter3_rst_wd;
  logic event_counters_rst_reg_event_counter3_rst_we;
  logic event_counters_rst_reg_event_clk_counter3_rst_qs;
  logic event_counters_rst_reg_event_clk_counter3_rst_wd;
  logic event_counters_rst_reg_event_clk_counter3_rst_we;
  logic [23:0] event_counters_rst_reg_unused_qs;
  logic [23:0] event_counters_rst_reg_unused_wd;
  logic event_counters_rst_reg_unused_we;
  logic [31:0] event_counter3_reg_qs;
  logic [31:0] event_counter2_reg_qs;
  logic [31:0] event_counter1_reg_qs;
  logic [31:0] event_counter0_reg_qs;
  logic [31:0] event_clk_counter3_reg_qs;
  logic [31:0] event_clk_counter2_reg_qs;
  logic [31:0] event_clk_counter1_reg_qs;
  logic [31:0] event_clk_counter0_reg_qs;

  // Register instances
  // R[event_reg]: V(False)

  //   F[event_0]: 0:0
  prim_subreg #(
    .DW      (1),
    .SWACCESS("W1S"),
    .RESVAL  (1'h0)
  ) u_event_reg_event_0 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_reg_event_0_we),
    .wd     (event_reg_event_0_wd),

    // from internal hardware
    .de     (hw2reg.event_reg.event_0.de),
    .d      (hw2reg.event_reg.event_0.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_reg.event_0.q ),

    // to register interface (read)
    .qs     (event_reg_event_0_qs)
  );


  //   F[event_1]: 1:1
  prim_subreg #(
    .DW      (1),
    .SWACCESS("W1S"),
    .RESVAL  (1'h0)
  ) u_event_reg_event_1 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_reg_event_1_we),
    .wd     (event_reg_event_1_wd),

    // from internal hardware
    .de     (hw2reg.event_reg.event_1.de),
    .d      (hw2reg.event_reg.event_1.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_reg.event_1.q ),

    // to register interface (read)
    .qs     (event_reg_event_1_qs)
  );


  //   F[event_2]: 2:2
  prim_subreg #(
    .DW      (1),
    .SWACCESS("W1S"),
    .RESVAL  (1'h0)
  ) u_event_reg_event_2 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_reg_event_2_we),
    .wd     (event_reg_event_2_wd),

    // from internal hardware
    .de     (hw2reg.event_reg.event_2.de),
    .d      (hw2reg.event_reg.event_2.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_reg.event_2.q ),

    // to register interface (read)
    .qs     (event_reg_event_2_qs)
  );


  //   F[event_3]: 3:3
  prim_subreg #(
    .DW      (1),
    .SWACCESS("W1S"),
    .RESVAL  (1'h0)
  ) u_event_reg_event_3 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_reg_event_3_we),
    .wd     (event_reg_event_3_wd),

    // from internal hardware
    .de     (hw2reg.event_reg.event_3.de),
    .d      (hw2reg.event_reg.event_3.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_reg.event_3.q ),

    // to register interface (read)
    .qs     (event_reg_event_3_qs)
  );


  //   F[event_4]: 4:4
  prim_subreg #(
    .DW      (1),
    .SWACCESS("W1S"),
    .RESVAL  (1'h0)
  ) u_event_reg_event_4 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_reg_event_4_we),
    .wd     (event_reg_event_4_wd),

    // from internal hardware
    .de     (hw2reg.event_reg.event_4.de),
    .d      (hw2reg.event_reg.event_4.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_reg.event_4.q ),

    // to register interface (read)
    .qs     (event_reg_event_4_qs)
  );


  //   F[event_5]: 5:5
  prim_subreg #(
    .DW      (1),
    .SWACCESS("W1S"),
    .RESVAL  (1'h0)
  ) u_event_reg_event_5 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_reg_event_5_we),
    .wd     (event_reg_event_5_wd),

    // from internal hardware
    .de     (hw2reg.event_reg.event_5.de),
    .d      (hw2reg.event_reg.event_5.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_reg.event_5.q ),

    // to register interface (read)
    .qs     (event_reg_event_5_qs)
  );


  //   F[event_6]: 6:6
  prim_subreg #(
    .DW      (1),
    .SWACCESS("W1S"),
    .RESVAL  (1'h0)
  ) u_event_reg_event_6 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_reg_event_6_we),
    .wd     (event_reg_event_6_wd),

    // from internal hardware
    .de     (hw2reg.event_reg.event_6.de),
    .d      (hw2reg.event_reg.event_6.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_reg.event_6.q ),

    // to register interface (read)
    .qs     (event_reg_event_6_qs)
  );


  //   F[event_7]: 7:7
  prim_subreg #(
    .DW      (1),
    .SWACCESS("W1S"),
    .RESVAL  (1'h0)
  ) u_event_reg_event_7 (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_reg_event_7_we),
    .wd     (event_reg_event_7_wd),

    // from internal hardware
    .de     (hw2reg.event_reg.event_7.de),
    .d      (hw2reg.event_reg.event_7.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_reg.event_7.q ),

    // to register interface (read)
    .qs     (event_reg_event_7_qs)
  );


  //   F[unused]: 31:8
  prim_subreg #(
    .DW      (24),
    .SWACCESS("W1S"),
    .RESVAL  (24'h0)
  ) u_event_reg_unused (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_reg_unused_we),
    .wd     (event_reg_unused_wd),

    // from internal hardware
    .de     (hw2reg.event_reg.unused.de),
    .d      (hw2reg.event_reg.unused.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_reg.unused.q ),

    // to register interface (read)
    .qs     (event_reg_unused_qs)
  );


  // R[events_counters_mux_reg]: V(False)

  //   F[events_counter0_mux]: 2:0
  prim_subreg #(
    .DW      (3),
    .SWACCESS("RW"),
    .RESVAL  (3'h0)
  ) u_events_counters_mux_reg_events_counter0_mux (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (events_counters_mux_reg_events_counter0_mux_we),
    .wd     (events_counters_mux_reg_events_counter0_mux_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.events_counters_mux_reg.events_counter0_mux.q ),

    // to register interface (read)
    .qs     (events_counters_mux_reg_events_counter0_mux_qs)
  );


  //   F[events_counter1_mux]: 5:3
  prim_subreg #(
    .DW      (3),
    .SWACCESS("RW"),
    .RESVAL  (3'h0)
  ) u_events_counters_mux_reg_events_counter1_mux (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (events_counters_mux_reg_events_counter1_mux_we),
    .wd     (events_counters_mux_reg_events_counter1_mux_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.events_counters_mux_reg.events_counter1_mux.q ),

    // to register interface (read)
    .qs     (events_counters_mux_reg_events_counter1_mux_qs)
  );


  //   F[events_counter2_mux]: 8:6
  prim_subreg #(
    .DW      (3),
    .SWACCESS("RW"),
    .RESVAL  (3'h0)
  ) u_events_counters_mux_reg_events_counter2_mux (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (events_counters_mux_reg_events_counter2_mux_we),
    .wd     (events_counters_mux_reg_events_counter2_mux_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.events_counters_mux_reg.events_counter2_mux.q ),

    // to register interface (read)
    .qs     (events_counters_mux_reg_events_counter2_mux_qs)
  );


  //   F[events_counter3_mux]: 11:9
  prim_subreg #(
    .DW      (3),
    .SWACCESS("RW"),
    .RESVAL  (3'h0)
  ) u_events_counters_mux_reg_events_counter3_mux (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (events_counters_mux_reg_events_counter3_mux_we),
    .wd     (events_counters_mux_reg_events_counter3_mux_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.events_counters_mux_reg.events_counter3_mux.q ),

    // to register interface (read)
    .qs     (events_counters_mux_reg_events_counter3_mux_qs)
  );


  //   F[unused]: 31:12
  prim_subreg #(
    .DW      (20),
    .SWACCESS("RW"),
    .RESVAL  (20'h0)
  ) u_events_counters_mux_reg_unused (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (events_counters_mux_reg_unused_we),
    .wd     (events_counters_mux_reg_unused_wd),

    // from internal hardware
    .de     (1'b0),
    .d      ('0  ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.events_counters_mux_reg.unused.q ),

    // to register interface (read)
    .qs     (events_counters_mux_reg_unused_qs)
  );


  // R[event_counters_rst_reg]: V(False)

  //   F[event_counter0_rst]: 0:0
  prim_subreg #(
    .DW      (1),
    .SWACCESS("W1S"),
    .RESVAL  (1'h0)
  ) u_event_counters_rst_reg_event_counter0_rst (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_counters_rst_reg_event_counter0_rst_we),
    .wd     (event_counters_rst_reg_event_counter0_rst_wd),

    // from internal hardware
    .de     (hw2reg.event_counters_rst_reg.event_counter0_rst.de),
    .d      (hw2reg.event_counters_rst_reg.event_counter0_rst.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_counters_rst_reg.event_counter0_rst.q ),

    // to register interface (read)
    .qs     (event_counters_rst_reg_event_counter0_rst_qs)
  );


  //   F[event_clk_counter0_rst]: 1:1
  prim_subreg #(
    .DW      (1),
    .SWACCESS("W1S"),
    .RESVAL  (1'h0)
  ) u_event_counters_rst_reg_event_clk_counter0_rst (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_counters_rst_reg_event_clk_counter0_rst_we),
    .wd     (event_counters_rst_reg_event_clk_counter0_rst_wd),

    // from internal hardware
    .de     (hw2reg.event_counters_rst_reg.event_clk_counter0_rst.de),
    .d      (hw2reg.event_counters_rst_reg.event_clk_counter0_rst.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_counters_rst_reg.event_clk_counter0_rst.q ),

    // to register interface (read)
    .qs     (event_counters_rst_reg_event_clk_counter0_rst_qs)
  );


  //   F[event_counter1_rst]: 2:2
  prim_subreg #(
    .DW      (1),
    .SWACCESS("W1S"),
    .RESVAL  (1'h0)
  ) u_event_counters_rst_reg_event_counter1_rst (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_counters_rst_reg_event_counter1_rst_we),
    .wd     (event_counters_rst_reg_event_counter1_rst_wd),

    // from internal hardware
    .de     (hw2reg.event_counters_rst_reg.event_counter1_rst.de),
    .d      (hw2reg.event_counters_rst_reg.event_counter1_rst.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_counters_rst_reg.event_counter1_rst.q ),

    // to register interface (read)
    .qs     (event_counters_rst_reg_event_counter1_rst_qs)
  );


  //   F[event_clk_counter1_rst]: 3:3
  prim_subreg #(
    .DW      (1),
    .SWACCESS("W1S"),
    .RESVAL  (1'h0)
  ) u_event_counters_rst_reg_event_clk_counter1_rst (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_counters_rst_reg_event_clk_counter1_rst_we),
    .wd     (event_counters_rst_reg_event_clk_counter1_rst_wd),

    // from internal hardware
    .de     (hw2reg.event_counters_rst_reg.event_clk_counter1_rst.de),
    .d      (hw2reg.event_counters_rst_reg.event_clk_counter1_rst.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_counters_rst_reg.event_clk_counter1_rst.q ),

    // to register interface (read)
    .qs     (event_counters_rst_reg_event_clk_counter1_rst_qs)
  );


  //   F[event_counter2_rst]: 4:4
  prim_subreg #(
    .DW      (1),
    .SWACCESS("W1S"),
    .RESVAL  (1'h0)
  ) u_event_counters_rst_reg_event_counter2_rst (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_counters_rst_reg_event_counter2_rst_we),
    .wd     (event_counters_rst_reg_event_counter2_rst_wd),

    // from internal hardware
    .de     (hw2reg.event_counters_rst_reg.event_counter2_rst.de),
    .d      (hw2reg.event_counters_rst_reg.event_counter2_rst.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_counters_rst_reg.event_counter2_rst.q ),

    // to register interface (read)
    .qs     (event_counters_rst_reg_event_counter2_rst_qs)
  );


  //   F[event_clk_counter2_rst]: 5:5
  prim_subreg #(
    .DW      (1),
    .SWACCESS("W1S"),
    .RESVAL  (1'h0)
  ) u_event_counters_rst_reg_event_clk_counter2_rst (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_counters_rst_reg_event_clk_counter2_rst_we),
    .wd     (event_counters_rst_reg_event_clk_counter2_rst_wd),

    // from internal hardware
    .de     (hw2reg.event_counters_rst_reg.event_clk_counter2_rst.de),
    .d      (hw2reg.event_counters_rst_reg.event_clk_counter2_rst.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_counters_rst_reg.event_clk_counter2_rst.q ),

    // to register interface (read)
    .qs     (event_counters_rst_reg_event_clk_counter2_rst_qs)
  );


  //   F[event_counter3_rst]: 6:6
  prim_subreg #(
    .DW      (1),
    .SWACCESS("W1S"),
    .RESVAL  (1'h0)
  ) u_event_counters_rst_reg_event_counter3_rst (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_counters_rst_reg_event_counter3_rst_we),
    .wd     (event_counters_rst_reg_event_counter3_rst_wd),

    // from internal hardware
    .de     (hw2reg.event_counters_rst_reg.event_counter3_rst.de),
    .d      (hw2reg.event_counters_rst_reg.event_counter3_rst.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_counters_rst_reg.event_counter3_rst.q ),

    // to register interface (read)
    .qs     (event_counters_rst_reg_event_counter3_rst_qs)
  );


  //   F[event_clk_counter3_rst]: 7:7
  prim_subreg #(
    .DW      (1),
    .SWACCESS("W1S"),
    .RESVAL  (1'h0)
  ) u_event_counters_rst_reg_event_clk_counter3_rst (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_counters_rst_reg_event_clk_counter3_rst_we),
    .wd     (event_counters_rst_reg_event_clk_counter3_rst_wd),

    // from internal hardware
    .de     (hw2reg.event_counters_rst_reg.event_clk_counter3_rst.de),
    .d      (hw2reg.event_counters_rst_reg.event_clk_counter3_rst.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_counters_rst_reg.event_clk_counter3_rst.q ),

    // to register interface (read)
    .qs     (event_counters_rst_reg_event_clk_counter3_rst_qs)
  );


  //   F[unused]: 31:8
  prim_subreg #(
    .DW      (24),
    .SWACCESS("W1S"),
    .RESVAL  (24'h0)
  ) u_event_counters_rst_reg_unused (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    // from register interface
    .we     (event_counters_rst_reg_unused_we),
    .wd     (event_counters_rst_reg_unused_wd),

    // from internal hardware
    .de     (hw2reg.event_counters_rst_reg.unused.de),
    .d      (hw2reg.event_counters_rst_reg.unused.d ),

    // to internal hardware
    .qe     (),
    .q      (reg2hw.event_counters_rst_reg.unused.q ),

    // to register interface (read)
    .qs     (event_counters_rst_reg_unused_qs)
  );


  // R[event_counter3_reg]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("RO"),
    .RESVAL  (32'h0)
  ) u_event_counter3_reg (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.event_counter3_reg.de),
    .d      (hw2reg.event_counter3_reg.d ),

    // to internal hardware
    .qe     (reg2hw.event_counter3_reg.qe),
    .q      (reg2hw.event_counter3_reg.q ),

    // to register interface (read)
    .qs     (event_counter3_reg_qs)
  );


  // R[event_counter2_reg]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("RO"),
    .RESVAL  (32'h0)
  ) u_event_counter2_reg (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.event_counter2_reg.de),
    .d      (hw2reg.event_counter2_reg.d ),

    // to internal hardware
    .qe     (reg2hw.event_counter2_reg.qe),
    .q      (reg2hw.event_counter2_reg.q ),

    // to register interface (read)
    .qs     (event_counter2_reg_qs)
  );


  // R[event_counter1_reg]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("RO"),
    .RESVAL  (32'h0)
  ) u_event_counter1_reg (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.event_counter1_reg.de),
    .d      (hw2reg.event_counter1_reg.d ),

    // to internal hardware
    .qe     (reg2hw.event_counter1_reg.qe),
    .q      (reg2hw.event_counter1_reg.q ),

    // to register interface (read)
    .qs     (event_counter1_reg_qs)
  );


  // R[event_counter0_reg]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("RO"),
    .RESVAL  (32'h0)
  ) u_event_counter0_reg (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.event_counter0_reg.de),
    .d      (hw2reg.event_counter0_reg.d ),

    // to internal hardware
    .qe     (reg2hw.event_counter0_reg.qe),
    .q      (reg2hw.event_counter0_reg.q ),

    // to register interface (read)
    .qs     (event_counter0_reg_qs)
  );


  // R[event_clk_counter3_reg]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("RO"),
    .RESVAL  (32'h0)
  ) u_event_clk_counter3_reg (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.event_clk_counter3_reg.de),
    .d      (hw2reg.event_clk_counter3_reg.d ),

    // to internal hardware
    .qe     (reg2hw.event_clk_counter3_reg.qe),
    .q      (reg2hw.event_clk_counter3_reg.q ),

    // to register interface (read)
    .qs     (event_clk_counter3_reg_qs)
  );


  // R[event_clk_counter2_reg]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("RO"),
    .RESVAL  (32'h0)
  ) u_event_clk_counter2_reg (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.event_clk_counter2_reg.de),
    .d      (hw2reg.event_clk_counter2_reg.d ),

    // to internal hardware
    .qe     (reg2hw.event_clk_counter2_reg.qe),
    .q      (reg2hw.event_clk_counter2_reg.q ),

    // to register interface (read)
    .qs     (event_clk_counter2_reg_qs)
  );


  // R[event_clk_counter1_reg]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("RO"),
    .RESVAL  (32'h0)
  ) u_event_clk_counter1_reg (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.event_clk_counter1_reg.de),
    .d      (hw2reg.event_clk_counter1_reg.d ),

    // to internal hardware
    .qe     (reg2hw.event_clk_counter1_reg.qe),
    .q      (reg2hw.event_clk_counter1_reg.q ),

    // to register interface (read)
    .qs     (event_clk_counter1_reg_qs)
  );


  // R[event_clk_counter0_reg]: V(False)

  prim_subreg #(
    .DW      (32),
    .SWACCESS("RO"),
    .RESVAL  (32'h0)
  ) u_event_clk_counter0_reg (
    .clk_i   (clk_i    ),
    .rst_ni  (rst_ni  ),

    .we     (1'b0),
    .wd     ('0  ),

    // from internal hardware
    .de     (hw2reg.event_clk_counter0_reg.de),
    .d      (hw2reg.event_clk_counter0_reg.d ),

    // to internal hardware
    .qe     (reg2hw.event_clk_counter0_reg.qe),
    .q      (reg2hw.event_clk_counter0_reg.q ),

    // to register interface (read)
    .qs     (event_clk_counter0_reg_qs)
  );




  logic [10:0] addr_hit;
  always_comb begin
    addr_hit = '0;
    addr_hit[ 0] = (reg_addr == PERFCOUNTERS_T_EVENT_REG_OFFSET);
    addr_hit[ 1] = (reg_addr == PERFCOUNTERS_T_EVENTS_COUNTERS_MUX_REG_OFFSET);
    addr_hit[ 2] = (reg_addr == PERFCOUNTERS_T_EVENT_COUNTERS_RST_REG_OFFSET);
    addr_hit[ 3] = (reg_addr == PERFCOUNTERS_T_EVENT_COUNTER3_REG_OFFSET);
    addr_hit[ 4] = (reg_addr == PERFCOUNTERS_T_EVENT_COUNTER2_REG_OFFSET);
    addr_hit[ 5] = (reg_addr == PERFCOUNTERS_T_EVENT_COUNTER1_REG_OFFSET);
    addr_hit[ 6] = (reg_addr == PERFCOUNTERS_T_EVENT_COUNTER0_REG_OFFSET);
    addr_hit[ 7] = (reg_addr == PERFCOUNTERS_T_EVENT_CLK_COUNTER3_REG_OFFSET);
    addr_hit[ 8] = (reg_addr == PERFCOUNTERS_T_EVENT_CLK_COUNTER2_REG_OFFSET);
    addr_hit[ 9] = (reg_addr == PERFCOUNTERS_T_EVENT_CLK_COUNTER1_REG_OFFSET);
    addr_hit[10] = (reg_addr == PERFCOUNTERS_T_EVENT_CLK_COUNTER0_REG_OFFSET);
  end

  assign addrmiss = (reg_re || reg_we) ? ~|addr_hit : 1'b0 ;

  // Check sub-word write is permitted
  always_comb begin
    wr_err = (reg_we &
              ((addr_hit[ 0] & (|(PERFCOUNTERS_T_PERMIT[ 0] & ~reg_be))) |
               (addr_hit[ 1] & (|(PERFCOUNTERS_T_PERMIT[ 1] & ~reg_be))) |
               (addr_hit[ 2] & (|(PERFCOUNTERS_T_PERMIT[ 2] & ~reg_be))) |
               (addr_hit[ 3] & (|(PERFCOUNTERS_T_PERMIT[ 3] & ~reg_be))) |
               (addr_hit[ 4] & (|(PERFCOUNTERS_T_PERMIT[ 4] & ~reg_be))) |
               (addr_hit[ 5] & (|(PERFCOUNTERS_T_PERMIT[ 5] & ~reg_be))) |
               (addr_hit[ 6] & (|(PERFCOUNTERS_T_PERMIT[ 6] & ~reg_be))) |
               (addr_hit[ 7] & (|(PERFCOUNTERS_T_PERMIT[ 7] & ~reg_be))) |
               (addr_hit[ 8] & (|(PERFCOUNTERS_T_PERMIT[ 8] & ~reg_be))) |
               (addr_hit[ 9] & (|(PERFCOUNTERS_T_PERMIT[ 9] & ~reg_be))) |
               (addr_hit[10] & (|(PERFCOUNTERS_T_PERMIT[10] & ~reg_be)))));
  end

  assign event_reg_event_0_we = addr_hit[0] & reg_we & !reg_error;
  assign event_reg_event_0_wd = reg_wdata[0];

  assign event_reg_event_1_we = addr_hit[0] & reg_we & !reg_error;
  assign event_reg_event_1_wd = reg_wdata[1];

  assign event_reg_event_2_we = addr_hit[0] & reg_we & !reg_error;
  assign event_reg_event_2_wd = reg_wdata[2];

  assign event_reg_event_3_we = addr_hit[0] & reg_we & !reg_error;
  assign event_reg_event_3_wd = reg_wdata[3];

  assign event_reg_event_4_we = addr_hit[0] & reg_we & !reg_error;
  assign event_reg_event_4_wd = reg_wdata[4];

  assign event_reg_event_5_we = addr_hit[0] & reg_we & !reg_error;
  assign event_reg_event_5_wd = reg_wdata[5];

  assign event_reg_event_6_we = addr_hit[0] & reg_we & !reg_error;
  assign event_reg_event_6_wd = reg_wdata[6];

  assign event_reg_event_7_we = addr_hit[0] & reg_we & !reg_error;
  assign event_reg_event_7_wd = reg_wdata[7];

  assign event_reg_unused_we = addr_hit[0] & reg_we & !reg_error;
  assign event_reg_unused_wd = reg_wdata[31:8];

  assign events_counters_mux_reg_events_counter0_mux_we = addr_hit[1] & reg_we & !reg_error;
  assign events_counters_mux_reg_events_counter0_mux_wd = reg_wdata[2:0];

  assign events_counters_mux_reg_events_counter1_mux_we = addr_hit[1] & reg_we & !reg_error;
  assign events_counters_mux_reg_events_counter1_mux_wd = reg_wdata[5:3];

  assign events_counters_mux_reg_events_counter2_mux_we = addr_hit[1] & reg_we & !reg_error;
  assign events_counters_mux_reg_events_counter2_mux_wd = reg_wdata[8:6];

  assign events_counters_mux_reg_events_counter3_mux_we = addr_hit[1] & reg_we & !reg_error;
  assign events_counters_mux_reg_events_counter3_mux_wd = reg_wdata[11:9];

  assign events_counters_mux_reg_unused_we = addr_hit[1] & reg_we & !reg_error;
  assign events_counters_mux_reg_unused_wd = reg_wdata[31:12];

  assign event_counters_rst_reg_event_counter0_rst_we = addr_hit[2] & reg_we & !reg_error;
  assign event_counters_rst_reg_event_counter0_rst_wd = reg_wdata[0];

  assign event_counters_rst_reg_event_clk_counter0_rst_we = addr_hit[2] & reg_we & !reg_error;
  assign event_counters_rst_reg_event_clk_counter0_rst_wd = reg_wdata[1];

  assign event_counters_rst_reg_event_counter1_rst_we = addr_hit[2] & reg_we & !reg_error;
  assign event_counters_rst_reg_event_counter1_rst_wd = reg_wdata[2];

  assign event_counters_rst_reg_event_clk_counter1_rst_we = addr_hit[2] & reg_we & !reg_error;
  assign event_counters_rst_reg_event_clk_counter1_rst_wd = reg_wdata[3];

  assign event_counters_rst_reg_event_counter2_rst_we = addr_hit[2] & reg_we & !reg_error;
  assign event_counters_rst_reg_event_counter2_rst_wd = reg_wdata[4];

  assign event_counters_rst_reg_event_clk_counter2_rst_we = addr_hit[2] & reg_we & !reg_error;
  assign event_counters_rst_reg_event_clk_counter2_rst_wd = reg_wdata[5];

  assign event_counters_rst_reg_event_counter3_rst_we = addr_hit[2] & reg_we & !reg_error;
  assign event_counters_rst_reg_event_counter3_rst_wd = reg_wdata[6];

  assign event_counters_rst_reg_event_clk_counter3_rst_we = addr_hit[2] & reg_we & !reg_error;
  assign event_counters_rst_reg_event_clk_counter3_rst_wd = reg_wdata[7];

  assign event_counters_rst_reg_unused_we = addr_hit[2] & reg_we & !reg_error;
  assign event_counters_rst_reg_unused_wd = reg_wdata[31:8];

  // Read data return
  always_comb begin
    reg_rdata_next = '0;
    unique case (1'b1)
      addr_hit[0]: begin
        reg_rdata_next[0] = event_reg_event_0_qs;
        reg_rdata_next[1] = event_reg_event_1_qs;
        reg_rdata_next[2] = event_reg_event_2_qs;
        reg_rdata_next[3] = event_reg_event_3_qs;
        reg_rdata_next[4] = event_reg_event_4_qs;
        reg_rdata_next[5] = event_reg_event_5_qs;
        reg_rdata_next[6] = event_reg_event_6_qs;
        reg_rdata_next[7] = event_reg_event_7_qs;
        reg_rdata_next[31:8] = event_reg_unused_qs;
      end

      addr_hit[1]: begin
        reg_rdata_next[2:0] = events_counters_mux_reg_events_counter0_mux_qs;
        reg_rdata_next[5:3] = events_counters_mux_reg_events_counter1_mux_qs;
        reg_rdata_next[8:6] = events_counters_mux_reg_events_counter2_mux_qs;
        reg_rdata_next[11:9] = events_counters_mux_reg_events_counter3_mux_qs;
        reg_rdata_next[31:12] = events_counters_mux_reg_unused_qs;
      end

      addr_hit[2]: begin
        reg_rdata_next[0] = event_counters_rst_reg_event_counter0_rst_qs;
        reg_rdata_next[1] = event_counters_rst_reg_event_clk_counter0_rst_qs;
        reg_rdata_next[2] = event_counters_rst_reg_event_counter1_rst_qs;
        reg_rdata_next[3] = event_counters_rst_reg_event_clk_counter1_rst_qs;
        reg_rdata_next[4] = event_counters_rst_reg_event_counter2_rst_qs;
        reg_rdata_next[5] = event_counters_rst_reg_event_clk_counter2_rst_qs;
        reg_rdata_next[6] = event_counters_rst_reg_event_counter3_rst_qs;
        reg_rdata_next[7] = event_counters_rst_reg_event_clk_counter3_rst_qs;
        reg_rdata_next[31:8] = event_counters_rst_reg_unused_qs;
      end

      addr_hit[3]: begin
        reg_rdata_next[31:0] = event_counter3_reg_qs;
      end

      addr_hit[4]: begin
        reg_rdata_next[31:0] = event_counter2_reg_qs;
      end

      addr_hit[5]: begin
        reg_rdata_next[31:0] = event_counter1_reg_qs;
      end

      addr_hit[6]: begin
        reg_rdata_next[31:0] = event_counter0_reg_qs;
      end

      addr_hit[7]: begin
        reg_rdata_next[31:0] = event_clk_counter3_reg_qs;
      end

      addr_hit[8]: begin
        reg_rdata_next[31:0] = event_clk_counter2_reg_qs;
      end

      addr_hit[9]: begin
        reg_rdata_next[31:0] = event_clk_counter1_reg_qs;
      end

      addr_hit[10]: begin
        reg_rdata_next[31:0] = event_clk_counter0_reg_qs;
      end

      default: begin
        reg_rdata_next = '1;
      end
    endcase
  end

  // Unused signal tieoff

  // wdata / byte enable are not always fully used
  // add a blanket unused statement to handle lint waivers
  logic unused_wdata;
  logic unused_be;
  assign unused_wdata = ^reg_wdata;
  assign unused_be = ^reg_be;

  // Assertions for Register Interface
  //algrin `ASSERT(en2addrHit, (reg_we || reg_re) |-> $onehot0(addr_hit))

endmodule