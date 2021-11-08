// File auto-generated by Padrick 0.1.0.post0.dev40+g68903cf
module alsaqr_periph_padframe_periphs
  import pkg_alsaqr_periph_padframe::*;
  import pkg_internal_alsaqr_periph_padframe_periphs::*;
#(
  parameter type              req_t  = logic, // reg_interface request type
  parameter type             resp_t  = logic // reg_interface response type
) (
  input logic clk_i,
  input logic rst_ni,
  output pad_domain_periphs_ports_pad2soc_t port_signals_pad2soc_o,
  input pad_domain_periphs_ports_soc2pad_t port_signals_soc2pad_i,
  inout wire logic pad_pad_gpio_b_00_pad,
  inout wire logic pad_pad_gpio_b_01_pad,
  inout wire logic pad_pad_gpio_b_02_pad,
  inout wire logic pad_pad_gpio_b_03_pad,
  inout wire logic pad_pad_gpio_b_04_pad,
  inout wire logic pad_pad_gpio_b_05_pad,
  inout wire logic pad_pad_gpio_b_06_pad,
  inout wire logic pad_pad_gpio_b_07_pad,
  inout wire logic pad_pad_gpio_b_08_pad,
  inout wire logic pad_pad_gpio_b_09_pad,
  inout wire logic pad_pad_gpio_b_10_pad,
  inout wire logic pad_pad_gpio_b_11_pad,
  inout wire logic pad_pad_gpio_b_12_pad,
  inout wire logic pad_pad_gpio_b_13_pad,
  inout wire logic pad_pad_gpio_b_14_pad,
  inout wire logic pad_pad_gpio_b_15_pad,
  inout wire logic pad_pad_gpio_b_16_pad,
  inout wire logic pad_pad_gpio_b_17_pad,
  inout wire logic pad_pad_gpio_b_18_pad,
  inout wire logic pad_pad_gpio_b_19_pad,
  inout wire logic pad_pad_gpio_b_20_pad,
  inout wire logic pad_pad_gpio_b_21_pad,
  inout wire logic pad_pad_gpio_b_22_pad,
  inout wire logic pad_pad_gpio_b_23_pad,
  inout wire logic pad_pad_gpio_b_24_pad,
  inout wire logic pad_pad_gpio_b_25_pad,
  inout wire logic pad_pad_gpio_b_26_pad,
  inout wire logic pad_pad_gpio_b_27_pad,
  inout wire logic pad_pad_gpio_b_28_pad,
  inout wire logic pad_pad_gpio_b_29_pad,
  inout wire logic pad_pad_gpio_b_30_pad,
  inout wire logic pad_pad_gpio_b_31_pad,
  inout wire logic pad_pad_gpio_b_32_pad,
  inout wire logic pad_pad_gpio_b_33_pad,
  inout wire logic pad_pad_gpio_b_34_pad,
  inout wire logic pad_pad_gpio_b_35_pad,
  inout wire logic pad_pad_gpio_b_36_pad,
  inout wire logic pad_pad_gpio_b_37_pad,
  inout wire logic pad_pad_gpio_b_38_pad,
  inout wire logic pad_pad_gpio_b_39_pad,
  inout wire logic pad_pad_gpio_b_40_pad,
  inout wire logic pad_pad_gpio_b_41_pad,
  inout wire logic pad_pad_gpio_b_42_pad,
  inout wire logic pad_pad_gpio_b_43_pad,
  inout wire logic pad_pad_gpio_b_44_pad,
  inout wire logic pad_pad_gpio_b_45_pad,
  inout wire logic pad_pad_gpio_b_46_pad,
  inout wire logic pad_pad_gpio_b_47_pad,
  inout wire logic pad_pad_gpio_b_48_pad,
  inout wire logic pad_pad_gpio_b_49_pad,
  inout wire logic pad_pad_gpio_b_50_pad,
  inout wire logic pad_pad_gpio_b_51_pad,
  inout wire logic pad_pad_gpio_b_52_pad,
  inout wire logic pad_pad_gpio_b_53_pad,
  inout wire logic pad_pad_gpio_b_54_pad,
  inout wire logic pad_pad_gpio_b_55_pad,
  inout wire logic pad_pad_gpio_b_56_pad,
  inout wire logic pad_pad_gpio_b_57_pad,
  inout wire logic pad_pad_gpio_b_58_pad,
  inout wire logic pad_pad_gpio_b_59_pad,
  inout wire logic pad_pad_gpio_b_60_pad,
  inout wire logic pad_pad_gpio_b_61_pad,
  inout wire logic pad_pad_gpio_c_00_pad,
  inout wire logic pad_pad_gpio_c_01_pad,
  inout wire logic pad_pad_gpio_c_02_pad,
  inout wire logic pad_pad_gpio_c_03_pad,
  inout wire logic pad_pad_gpio_d_00_pad,
  inout wire logic pad_pad_gpio_d_01_pad,
  inout wire logic pad_pad_gpio_d_02_pad,
  inout wire logic pad_pad_gpio_d_03_pad,
  inout wire logic pad_pad_gpio_d_04_pad,
  inout wire logic pad_pad_gpio_d_05_pad,
  inout wire logic pad_pad_gpio_d_06_pad,
  inout wire logic pad_pad_gpio_d_07_pad,
  inout wire logic pad_pad_gpio_d_08_pad,
  inout wire logic pad_pad_gpio_d_09_pad,
  inout wire logic pad_pad_gpio_d_10_pad,
  inout wire logic pad_pad_gpio_e_00_pad,
  inout wire logic pad_pad_gpio_e_01_pad,
  inout wire logic pad_pad_gpio_e_02_pad,
  inout wire logic pad_pad_gpio_e_03_pad,
  inout wire logic pad_pad_gpio_e_04_pad,
  inout wire logic pad_pad_gpio_e_05_pad,
  inout wire logic pad_pad_gpio_e_06_pad,
  inout wire logic pad_pad_gpio_e_07_pad,
  inout wire logic pad_pad_gpio_e_08_pad,
  inout wire logic pad_pad_gpio_e_09_pad,
  inout wire logic pad_pad_gpio_e_10_pad,
  inout wire logic pad_pad_gpio_e_11_pad,
  inout wire logic pad_pad_gpio_e_12_pad,
  inout wire logic pad_pad_gpio_f_00_pad,
  inout wire logic pad_pad_gpio_f_01_pad,
  inout wire logic pad_pad_gpio_f_02_pad,
  inout wire logic pad_pad_gpio_f_03_pad,
  inout wire logic pad_pad_gpio_f_04_pad,
  inout wire logic pad_pad_gpio_f_05_pad,
  inout wire logic pad_pad_gpio_f_06_pad,
  inout wire logic pad_pad_gpio_f_07_pad,
  inout wire logic pad_pad_gpio_f_08_pad,
  inout wire logic pad_pad_gpio_f_09_pad,
  inout wire logic pad_pad_gpio_f_10_pad,
  inout wire logic pad_pad_gpio_f_11_pad,
  inout wire logic pad_pad_gpio_f_12_pad,
  inout wire logic pad_pad_gpio_f_13_pad,
  inout wire logic pad_pad_gpio_f_14_pad,
  inout wire logic pad_pad_gpio_f_15_pad,
  inout wire logic pad_pad_gpio_f_16_pad,
  inout wire logic pad_pad_gpio_f_17_pad,
  inout wire logic pad_pad_gpio_f_18_pad,
  inout wire logic pad_pad_gpio_f_19_pad,
  inout wire logic pad_pad_gpio_f_20_pad,
  inout wire logic pad_pad_gpio_f_21_pad,
  inout wire logic pad_pad_gpio_f_22_pad,
  inout wire logic pad_pad_gpio_f_23_pad,
  inout wire logic pad_pad_gpio_f_24_pad,
  inout wire logic pad_pad_gpio_f_25_pad,
  inout wire logic pad_pad_gpio_pwm0_pad,
  inout wire logic pad_pad_gpio_pwm1_pad,
  inout wire logic pad_pad_gpio_pwm2_pad,
  inout wire logic pad_pad_gpio_pwm3_pad,
  inout wire logic pad_pad_gpio_pwm4_pad,
  inout wire logic pad_pad_gpio_pwm5_pad,
  inout wire logic pad_pad_gpio_pwm6_pad,
  inout wire logic pad_pad_gpio_pwm7_pad,
  input req_t config_req_i,
  output resp_t config_rsp_o
);

   mux_to_pads_t s_mux_to_pads;
   pads_to_mux_t s_pads_to_mux;

   alsaqr_periph_padframe_periphs_pads i_periphs_pads (
     .mux_to_pads_i(s_mux_to_pads),
     .pads_to_mux_o(s_pads_to_mux),
     .pad_pad_gpio_b_00_pad,
     .pad_pad_gpio_b_01_pad,
     .pad_pad_gpio_b_02_pad,
     .pad_pad_gpio_b_03_pad,
     .pad_pad_gpio_b_04_pad,
     .pad_pad_gpio_b_05_pad,
     .pad_pad_gpio_b_06_pad,
     .pad_pad_gpio_b_07_pad,
     .pad_pad_gpio_b_08_pad,
     .pad_pad_gpio_b_09_pad,
     .pad_pad_gpio_b_10_pad,
     .pad_pad_gpio_b_11_pad,
     .pad_pad_gpio_b_12_pad,
     .pad_pad_gpio_b_13_pad,
     .pad_pad_gpio_b_14_pad,
     .pad_pad_gpio_b_15_pad,
     .pad_pad_gpio_b_16_pad,
     .pad_pad_gpio_b_17_pad,
     .pad_pad_gpio_b_18_pad,
     .pad_pad_gpio_b_19_pad,
     .pad_pad_gpio_b_20_pad,
     .pad_pad_gpio_b_21_pad,
     .pad_pad_gpio_b_22_pad,
     .pad_pad_gpio_b_23_pad,
     .pad_pad_gpio_b_24_pad,
     .pad_pad_gpio_b_25_pad,
     .pad_pad_gpio_b_26_pad,
     .pad_pad_gpio_b_27_pad,
     .pad_pad_gpio_b_28_pad,
     .pad_pad_gpio_b_29_pad,
     .pad_pad_gpio_b_30_pad,
     .pad_pad_gpio_b_31_pad,
     .pad_pad_gpio_b_32_pad,
     .pad_pad_gpio_b_33_pad,
     .pad_pad_gpio_b_34_pad,
     .pad_pad_gpio_b_35_pad,
     .pad_pad_gpio_b_36_pad,
     .pad_pad_gpio_b_37_pad,
     .pad_pad_gpio_b_38_pad,
     .pad_pad_gpio_b_39_pad,
     .pad_pad_gpio_b_40_pad,
     .pad_pad_gpio_b_41_pad,
     .pad_pad_gpio_b_42_pad,
     .pad_pad_gpio_b_43_pad,
     .pad_pad_gpio_b_44_pad,
     .pad_pad_gpio_b_45_pad,
     .pad_pad_gpio_b_46_pad,
     .pad_pad_gpio_b_47_pad,
     .pad_pad_gpio_b_48_pad,
     .pad_pad_gpio_b_49_pad,
     .pad_pad_gpio_b_50_pad,
     .pad_pad_gpio_b_51_pad,
     .pad_pad_gpio_b_52_pad,
     .pad_pad_gpio_b_53_pad,
     .pad_pad_gpio_b_54_pad,
     .pad_pad_gpio_b_55_pad,
     .pad_pad_gpio_b_56_pad,
     .pad_pad_gpio_b_57_pad,
     .pad_pad_gpio_b_58_pad,
     .pad_pad_gpio_b_59_pad,
     .pad_pad_gpio_b_60_pad,
     .pad_pad_gpio_b_61_pad,
     .pad_pad_gpio_c_00_pad,
     .pad_pad_gpio_c_01_pad,
     .pad_pad_gpio_c_02_pad,
     .pad_pad_gpio_c_03_pad,
     .pad_pad_gpio_d_00_pad,
     .pad_pad_gpio_d_01_pad,
     .pad_pad_gpio_d_02_pad,
     .pad_pad_gpio_d_03_pad,
     .pad_pad_gpio_d_04_pad,
     .pad_pad_gpio_d_05_pad,
     .pad_pad_gpio_d_06_pad,
     .pad_pad_gpio_d_07_pad,
     .pad_pad_gpio_d_08_pad,
     .pad_pad_gpio_d_09_pad,
     .pad_pad_gpio_d_10_pad,
     .pad_pad_gpio_e_00_pad,
     .pad_pad_gpio_e_01_pad,
     .pad_pad_gpio_e_02_pad,
     .pad_pad_gpio_e_03_pad,
     .pad_pad_gpio_e_04_pad,
     .pad_pad_gpio_e_05_pad,
     .pad_pad_gpio_e_06_pad,
     .pad_pad_gpio_e_07_pad,
     .pad_pad_gpio_e_08_pad,
     .pad_pad_gpio_e_09_pad,
     .pad_pad_gpio_e_10_pad,
     .pad_pad_gpio_e_11_pad,
     .pad_pad_gpio_e_12_pad,
     .pad_pad_gpio_f_00_pad,
     .pad_pad_gpio_f_01_pad,
     .pad_pad_gpio_f_02_pad,
     .pad_pad_gpio_f_03_pad,
     .pad_pad_gpio_f_04_pad,
     .pad_pad_gpio_f_05_pad,
     .pad_pad_gpio_f_06_pad,
     .pad_pad_gpio_f_07_pad,
     .pad_pad_gpio_f_08_pad,
     .pad_pad_gpio_f_09_pad,
     .pad_pad_gpio_f_10_pad,
     .pad_pad_gpio_f_11_pad,
     .pad_pad_gpio_f_12_pad,
     .pad_pad_gpio_f_13_pad,
     .pad_pad_gpio_f_14_pad,
     .pad_pad_gpio_f_15_pad,
     .pad_pad_gpio_f_16_pad,
     .pad_pad_gpio_f_17_pad,
     .pad_pad_gpio_f_18_pad,
     .pad_pad_gpio_f_19_pad,
     .pad_pad_gpio_f_20_pad,
     .pad_pad_gpio_f_21_pad,
     .pad_pad_gpio_f_22_pad,
     .pad_pad_gpio_f_23_pad,
     .pad_pad_gpio_f_24_pad,
     .pad_pad_gpio_f_25_pad,
     .pad_pad_gpio_pwm0_pad,
     .pad_pad_gpio_pwm1_pad,
     .pad_pad_gpio_pwm2_pad,
     .pad_pad_gpio_pwm3_pad,
     .pad_pad_gpio_pwm4_pad,
     .pad_pad_gpio_pwm5_pad,
     .pad_pad_gpio_pwm6_pad,
     .pad_pad_gpio_pwm7_pad

  );

   alsaqr_periph_padframe_periphs_muxer #(
     .req_t(req_t),
     .resp_t(resp_t)
   )i_periphs_muxer (
     .clk_i,
     .rst_ni,
     .port_signals_soc2pad_i,
     .port_signals_pad2soc_o,
     .mux_to_pads_o(s_mux_to_pads),
     .pads_to_mux_i(s_pads_to_mux),
     // Configuration interface using register_interface protocol
     .config_req_i,
     .config_rsp_o
   );

endmodule : alsaqr_periph_padframe_periphs
