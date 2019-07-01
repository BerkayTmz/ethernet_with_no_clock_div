//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
//Date        : Tue Jun 11 18:50:33 2019
//Host        : DESKTOP-8U2AIOP running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (DDR3_A14,
    DDR3_A15,
    DDR3_CKE1,
    DDR3_CLK1_N,
    DDR3_CLK1_P,
    DDR3_ODT1,
    DDR3_S1_B,
    SI5324_IN_clk_n,
    SI5324_IN_clk_p,
    SI5324_OUT_clk_n,
    SI5324_OUT_clk_p,
    SMA_OUT_clk_n,
    SMA_OUT_clk_p,
    SM_FAN_PWM,
    ULPI_clk,
    ULPI_dir,
    ULPI_next,
    ULPI_rst,
    ULPI_stop,
    USER_CLOCK_IN_clk_n,
    USER_CLOCK_IN_clk_p,
    Vaux0_v_n,
    Vaux0_v_p,
    Vaux8_v_n,
    Vaux8_v_p,
    Vp_Vn_v_n,
    Vp_Vn_v_p,
    ddr3_sdram_addr,
    ddr3_sdram_ba,
    ddr3_sdram_cas_n,
    ddr3_sdram_ck_n,
    ddr3_sdram_ck_p,
    ddr3_sdram_cke,
    ddr3_sdram_cs_n,
    ddr3_sdram_dm,
    ddr3_sdram_dq,
    ddr3_sdram_dqs_n,
    ddr3_sdram_dqs_p,
    ddr3_sdram_odt,
    ddr3_sdram_ras_n,
    ddr3_sdram_reset_n,
    ddr3_sdram_we_n,
    dip_switches_8bits_tri_i,
    iic_main_scl_io,
    iic_main_sda_io,
    iic_mux_reset_b,
    lcd_7bits_tri_o,
    led_8bits_tri_o,
    linear_flash_addr,
    linear_flash_adv_ldn,
    linear_flash_ce_n,
    linear_flash_dq_io,
    linear_flash_oen,
    linear_flash_wen,
    mdio_mdc_mdc,
    mdio_mdc_mdio_io,
    phy_reset_out,
    push_buttons_5bits_tri_i,
    reset,
    rotary_switch_tri_i,
    rs232_uart_rxd,
    rs232_uart_txd,
    sgmii_mgt_clk_clk_n,
    sgmii_mgt_clk_clk_p,
    sgmii_rxn,
    sgmii_rxp,
    sgmii_txn,
    sgmii_txp,
    sys_diff_clock_clk_n,
    sys_diff_clock_clk_p,
    ulpi_data_io);
  output [0:0]DDR3_A14;
  output [0:0]DDR3_A15;
  output [0:0]DDR3_CKE1;
  output [0:0]DDR3_CLK1_N;
  output [0:0]DDR3_CLK1_P;
  output [0:0]DDR3_ODT1;
  output [0:0]DDR3_S1_B;
  input SI5324_IN_clk_n;
  input SI5324_IN_clk_p;
  output SI5324_OUT_clk_n;
  output SI5324_OUT_clk_p;
  output SMA_OUT_clk_n;
  output SMA_OUT_clk_p;
  output [0:0]SM_FAN_PWM;
  input ULPI_clk;
  input ULPI_dir;
  input ULPI_next;
  output ULPI_rst;
  output ULPI_stop;
  input USER_CLOCK_IN_clk_n;
  input USER_CLOCK_IN_clk_p;
  input Vaux0_v_n;
  input Vaux0_v_p;
  input Vaux8_v_n;
  input Vaux8_v_p;
  input Vp_Vn_v_n;
  input Vp_Vn_v_p;
  output [13:0]ddr3_sdram_addr;
  output [2:0]ddr3_sdram_ba;
  output ddr3_sdram_cas_n;
  output [0:0]ddr3_sdram_ck_n;
  output [0:0]ddr3_sdram_ck_p;
  output [0:0]ddr3_sdram_cke;
  output [0:0]ddr3_sdram_cs_n;
  output [7:0]ddr3_sdram_dm;
  inout [63:0]ddr3_sdram_dq;
  inout [7:0]ddr3_sdram_dqs_n;
  inout [7:0]ddr3_sdram_dqs_p;
  output [0:0]ddr3_sdram_odt;
  output ddr3_sdram_ras_n;
  output ddr3_sdram_reset_n;
  output ddr3_sdram_we_n;
  input [7:0]dip_switches_8bits_tri_i;
  inout iic_main_scl_io;
  inout iic_main_sda_io;
  output [1:0]iic_mux_reset_b;
  output [6:0]lcd_7bits_tri_o;
  output [7:0]led_8bits_tri_o;
  output [26:1]linear_flash_addr;
  output linear_flash_adv_ldn;
  output linear_flash_ce_n;
  inout [15:0]linear_flash_dq_io;
  output linear_flash_oen;
  output linear_flash_wen;
  output mdio_mdc_mdc;
  inout mdio_mdc_mdio_io;
  output phy_reset_out;
  input [4:0]push_buttons_5bits_tri_i;
  input reset;
  input [2:0]rotary_switch_tri_i;
  input rs232_uart_rxd;
  output rs232_uart_txd;
  input sgmii_mgt_clk_clk_n;
  input sgmii_mgt_clk_clk_p;
  input sgmii_rxn;
  input sgmii_rxp;
  output sgmii_txn;
  output sgmii_txp;
  input sys_diff_clock_clk_n;
  input sys_diff_clock_clk_p;
  inout [7:0]ulpi_data_io;

  wire [0:0]DDR3_A14;
  wire [0:0]DDR3_A15;
  wire [0:0]DDR3_CKE1;
  wire [0:0]DDR3_CLK1_N;
  wire [0:0]DDR3_CLK1_P;
  wire [0:0]DDR3_ODT1;
  wire [0:0]DDR3_S1_B;
  wire SI5324_IN_clk_n;
  wire SI5324_IN_clk_p;
  wire SI5324_OUT_clk_n;
  wire SI5324_OUT_clk_p;
  wire SMA_OUT_clk_n;
  wire SMA_OUT_clk_p;
  wire [0:0]SM_FAN_PWM;
  wire ULPI_clk;
  wire ULPI_dir;
  wire ULPI_next;
  wire ULPI_rst;
  wire ULPI_stop;
  wire USER_CLOCK_IN_clk_n;
  wire USER_CLOCK_IN_clk_p;
  wire Vaux0_v_n;
  wire Vaux0_v_p;
  wire Vaux8_v_n;
  wire Vaux8_v_p;
  wire Vp_Vn_v_n;
  wire Vp_Vn_v_p;
  wire [13:0]ddr3_sdram_addr;
  wire [2:0]ddr3_sdram_ba;
  wire ddr3_sdram_cas_n;
  wire [0:0]ddr3_sdram_ck_n;
  wire [0:0]ddr3_sdram_ck_p;
  wire [0:0]ddr3_sdram_cke;
  wire [0:0]ddr3_sdram_cs_n;
  wire [7:0]ddr3_sdram_dm;
  wire [63:0]ddr3_sdram_dq;
  wire [7:0]ddr3_sdram_dqs_n;
  wire [7:0]ddr3_sdram_dqs_p;
  wire [0:0]ddr3_sdram_odt;
  wire ddr3_sdram_ras_n;
  wire ddr3_sdram_reset_n;
  wire ddr3_sdram_we_n;
  wire [7:0]dip_switches_8bits_tri_i;
  wire iic_main_scl_i;
  wire iic_main_scl_io;
  wire iic_main_scl_o;
  wire iic_main_scl_t;
  wire iic_main_sda_i;
  wire iic_main_sda_io;
  wire iic_main_sda_o;
  wire iic_main_sda_t;
  wire [1:0]iic_mux_reset_b;
  wire [6:0]lcd_7bits_tri_o;
  wire [7:0]led_8bits_tri_o;
  wire [26:1]linear_flash_addr;
  wire linear_flash_adv_ldn;
  wire linear_flash_ce_n;
  wire [0:0]linear_flash_dq_i_0;
  wire [1:1]linear_flash_dq_i_1;
  wire [10:10]linear_flash_dq_i_10;
  wire [11:11]linear_flash_dq_i_11;
  wire [12:12]linear_flash_dq_i_12;
  wire [13:13]linear_flash_dq_i_13;
  wire [14:14]linear_flash_dq_i_14;
  wire [15:15]linear_flash_dq_i_15;
  wire [2:2]linear_flash_dq_i_2;
  wire [3:3]linear_flash_dq_i_3;
  wire [4:4]linear_flash_dq_i_4;
  wire [5:5]linear_flash_dq_i_5;
  wire [6:6]linear_flash_dq_i_6;
  wire [7:7]linear_flash_dq_i_7;
  wire [8:8]linear_flash_dq_i_8;
  wire [9:9]linear_flash_dq_i_9;
  wire [0:0]linear_flash_dq_io_0;
  wire [1:1]linear_flash_dq_io_1;
  wire [10:10]linear_flash_dq_io_10;
  wire [11:11]linear_flash_dq_io_11;
  wire [12:12]linear_flash_dq_io_12;
  wire [13:13]linear_flash_dq_io_13;
  wire [14:14]linear_flash_dq_io_14;
  wire [15:15]linear_flash_dq_io_15;
  wire [2:2]linear_flash_dq_io_2;
  wire [3:3]linear_flash_dq_io_3;
  wire [4:4]linear_flash_dq_io_4;
  wire [5:5]linear_flash_dq_io_5;
  wire [6:6]linear_flash_dq_io_6;
  wire [7:7]linear_flash_dq_io_7;
  wire [8:8]linear_flash_dq_io_8;
  wire [9:9]linear_flash_dq_io_9;
  wire [0:0]linear_flash_dq_o_0;
  wire [1:1]linear_flash_dq_o_1;
  wire [10:10]linear_flash_dq_o_10;
  wire [11:11]linear_flash_dq_o_11;
  wire [12:12]linear_flash_dq_o_12;
  wire [13:13]linear_flash_dq_o_13;
  wire [14:14]linear_flash_dq_o_14;
  wire [15:15]linear_flash_dq_o_15;
  wire [2:2]linear_flash_dq_o_2;
  wire [3:3]linear_flash_dq_o_3;
  wire [4:4]linear_flash_dq_o_4;
  wire [5:5]linear_flash_dq_o_5;
  wire [6:6]linear_flash_dq_o_6;
  wire [7:7]linear_flash_dq_o_7;
  wire [8:8]linear_flash_dq_o_8;
  wire [9:9]linear_flash_dq_o_9;
  wire [0:0]linear_flash_dq_t_0;
  wire [1:1]linear_flash_dq_t_1;
  wire [10:10]linear_flash_dq_t_10;
  wire [11:11]linear_flash_dq_t_11;
  wire [12:12]linear_flash_dq_t_12;
  wire [13:13]linear_flash_dq_t_13;
  wire [14:14]linear_flash_dq_t_14;
  wire [15:15]linear_flash_dq_t_15;
  wire [2:2]linear_flash_dq_t_2;
  wire [3:3]linear_flash_dq_t_3;
  wire [4:4]linear_flash_dq_t_4;
  wire [5:5]linear_flash_dq_t_5;
  wire [6:6]linear_flash_dq_t_6;
  wire [7:7]linear_flash_dq_t_7;
  wire [8:8]linear_flash_dq_t_8;
  wire [9:9]linear_flash_dq_t_9;
  wire linear_flash_oen;
  wire linear_flash_wen;
  wire mdio_mdc_mdc;
  wire mdio_mdc_mdio_i;
  wire mdio_mdc_mdio_io;
  wire mdio_mdc_mdio_o;
  wire mdio_mdc_mdio_t;
  wire phy_reset_out;
  wire [4:0]push_buttons_5bits_tri_i;
  wire reset;
  wire [2:0]rotary_switch_tri_i;
  wire rs232_uart_rxd;
  wire rs232_uart_txd;
  wire sgmii_mgt_clk_clk_n;
  wire sgmii_mgt_clk_clk_p;
  wire sgmii_rxn;
  wire sgmii_rxp;
  wire sgmii_txn;
  wire sgmii_txp;
  wire sys_diff_clock_clk_n;
  wire sys_diff_clock_clk_p;
  wire [0:0]ulpi_data_i_0;
  wire [1:1]ulpi_data_i_1;
  wire [2:2]ulpi_data_i_2;
  wire [3:3]ulpi_data_i_3;
  wire [4:4]ulpi_data_i_4;
  wire [5:5]ulpi_data_i_5;
  wire [6:6]ulpi_data_i_6;
  wire [7:7]ulpi_data_i_7;
  wire [0:0]ulpi_data_io_0;
  wire [1:1]ulpi_data_io_1;
  wire [2:2]ulpi_data_io_2;
  wire [3:3]ulpi_data_io_3;
  wire [4:4]ulpi_data_io_4;
  wire [5:5]ulpi_data_io_5;
  wire [6:6]ulpi_data_io_6;
  wire [7:7]ulpi_data_io_7;
  wire [0:0]ulpi_data_o_0;
  wire [1:1]ulpi_data_o_1;
  wire [2:2]ulpi_data_o_2;
  wire [3:3]ulpi_data_o_3;
  wire [4:4]ulpi_data_o_4;
  wire [5:5]ulpi_data_o_5;
  wire [6:6]ulpi_data_o_6;
  wire [7:7]ulpi_data_o_7;
  wire ulpi_data_t;

  IOBUF iic_main_scl_iobuf
       (.I(iic_main_scl_o),
        .IO(iic_main_scl_io),
        .O(iic_main_scl_i),
        .T(iic_main_scl_t));
  IOBUF iic_main_sda_iobuf
       (.I(iic_main_sda_o),
        .IO(iic_main_sda_io),
        .O(iic_main_sda_i),
        .T(iic_main_sda_t));
  IOBUF linear_flash_dq_iobuf_0
       (.I(linear_flash_dq_o_0),
        .IO(linear_flash_dq_io[0]),
        .O(linear_flash_dq_i_0),
        .T(linear_flash_dq_t_0));
  IOBUF linear_flash_dq_iobuf_1
       (.I(linear_flash_dq_o_1),
        .IO(linear_flash_dq_io[1]),
        .O(linear_flash_dq_i_1),
        .T(linear_flash_dq_t_1));
  IOBUF linear_flash_dq_iobuf_10
       (.I(linear_flash_dq_o_10),
        .IO(linear_flash_dq_io[10]),
        .O(linear_flash_dq_i_10),
        .T(linear_flash_dq_t_10));
  IOBUF linear_flash_dq_iobuf_11
       (.I(linear_flash_dq_o_11),
        .IO(linear_flash_dq_io[11]),
        .O(linear_flash_dq_i_11),
        .T(linear_flash_dq_t_11));
  IOBUF linear_flash_dq_iobuf_12
       (.I(linear_flash_dq_o_12),
        .IO(linear_flash_dq_io[12]),
        .O(linear_flash_dq_i_12),
        .T(linear_flash_dq_t_12));
  IOBUF linear_flash_dq_iobuf_13
       (.I(linear_flash_dq_o_13),
        .IO(linear_flash_dq_io[13]),
        .O(linear_flash_dq_i_13),
        .T(linear_flash_dq_t_13));
  IOBUF linear_flash_dq_iobuf_14
       (.I(linear_flash_dq_o_14),
        .IO(linear_flash_dq_io[14]),
        .O(linear_flash_dq_i_14),
        .T(linear_flash_dq_t_14));
  IOBUF linear_flash_dq_iobuf_15
       (.I(linear_flash_dq_o_15),
        .IO(linear_flash_dq_io[15]),
        .O(linear_flash_dq_i_15),
        .T(linear_flash_dq_t_15));
  IOBUF linear_flash_dq_iobuf_2
       (.I(linear_flash_dq_o_2),
        .IO(linear_flash_dq_io[2]),
        .O(linear_flash_dq_i_2),
        .T(linear_flash_dq_t_2));
  IOBUF linear_flash_dq_iobuf_3
       (.I(linear_flash_dq_o_3),
        .IO(linear_flash_dq_io[3]),
        .O(linear_flash_dq_i_3),
        .T(linear_flash_dq_t_3));
  IOBUF linear_flash_dq_iobuf_4
       (.I(linear_flash_dq_o_4),
        .IO(linear_flash_dq_io[4]),
        .O(linear_flash_dq_i_4),
        .T(linear_flash_dq_t_4));
  IOBUF linear_flash_dq_iobuf_5
       (.I(linear_flash_dq_o_5),
        .IO(linear_flash_dq_io[5]),
        .O(linear_flash_dq_i_5),
        .T(linear_flash_dq_t_5));
  IOBUF linear_flash_dq_iobuf_6
       (.I(linear_flash_dq_o_6),
        .IO(linear_flash_dq_io[6]),
        .O(linear_flash_dq_i_6),
        .T(linear_flash_dq_t_6));
  IOBUF linear_flash_dq_iobuf_7
       (.I(linear_flash_dq_o_7),
        .IO(linear_flash_dq_io[7]),
        .O(linear_flash_dq_i_7),
        .T(linear_flash_dq_t_7));
  IOBUF linear_flash_dq_iobuf_8
       (.I(linear_flash_dq_o_8),
        .IO(linear_flash_dq_io[8]),
        .O(linear_flash_dq_i_8),
        .T(linear_flash_dq_t_8));
  IOBUF linear_flash_dq_iobuf_9
       (.I(linear_flash_dq_o_9),
        .IO(linear_flash_dq_io[9]),
        .O(linear_flash_dq_i_9),
        .T(linear_flash_dq_t_9));
  IOBUF mdio_mdc_mdio_iobuf
       (.I(mdio_mdc_mdio_o),
        .IO(mdio_mdc_mdio_io),
        .O(mdio_mdc_mdio_i),
        .T(mdio_mdc_mdio_t));
  system system_i
       (.DDR3_A14(DDR3_A14),
        .DDR3_A15(DDR3_A15),
        .DDR3_CKE1(DDR3_CKE1),
        .DDR3_CLK1_N(DDR3_CLK1_N),
        .DDR3_CLK1_P(DDR3_CLK1_P),
        .DDR3_ODT1(DDR3_ODT1),
        .DDR3_S1_B(DDR3_S1_B),
        .SI5324_IN_clk_n(SI5324_IN_clk_n),
        .SI5324_IN_clk_p(SI5324_IN_clk_p),
        .SI5324_OUT_clk_n(SI5324_OUT_clk_n),
        .SI5324_OUT_clk_p(SI5324_OUT_clk_p),
        .SMA_OUT_clk_n(SMA_OUT_clk_n),
        .SMA_OUT_clk_p(SMA_OUT_clk_p),
        .SM_FAN_PWM(SM_FAN_PWM),
        .ULPI_clk(ULPI_clk),
        .ULPI_data_i({ulpi_data_i_7,ulpi_data_i_6,ulpi_data_i_5,ulpi_data_i_4,ulpi_data_i_3,ulpi_data_i_2,ulpi_data_i_1,ulpi_data_i_0}),
        .ULPI_data_o({ulpi_data_o_7,ulpi_data_o_6,ulpi_data_o_5,ulpi_data_o_4,ulpi_data_o_3,ulpi_data_o_2,ulpi_data_o_1,ulpi_data_o_0}),
        .ULPI_data_t(ulpi_data_t),
        .ULPI_dir(ULPI_dir),
        .ULPI_next(ULPI_next),
        .ULPI_rst(ULPI_rst),
        .ULPI_stop(ULPI_stop),
        .USER_CLOCK_IN_clk_n(USER_CLOCK_IN_clk_n),
        .USER_CLOCK_IN_clk_p(USER_CLOCK_IN_clk_p),
        .Vaux0_v_n(Vaux0_v_n),
        .Vaux0_v_p(Vaux0_v_p),
        .Vaux8_v_n(Vaux8_v_n),
        .Vaux8_v_p(Vaux8_v_p),
        .Vp_Vn_v_n(Vp_Vn_v_n),
        .Vp_Vn_v_p(Vp_Vn_v_p),
        .ddr3_sdram_addr(ddr3_sdram_addr),
        .ddr3_sdram_ba(ddr3_sdram_ba),
        .ddr3_sdram_cas_n(ddr3_sdram_cas_n),
        .ddr3_sdram_ck_n(ddr3_sdram_ck_n),
        .ddr3_sdram_ck_p(ddr3_sdram_ck_p),
        .ddr3_sdram_cke(ddr3_sdram_cke),
        .ddr3_sdram_cs_n(ddr3_sdram_cs_n),
        .ddr3_sdram_dm(ddr3_sdram_dm),
        .ddr3_sdram_dq(ddr3_sdram_dq),
        .ddr3_sdram_dqs_n(ddr3_sdram_dqs_n),
        .ddr3_sdram_dqs_p(ddr3_sdram_dqs_p),
        .ddr3_sdram_odt(ddr3_sdram_odt),
        .ddr3_sdram_ras_n(ddr3_sdram_ras_n),
        .ddr3_sdram_reset_n(ddr3_sdram_reset_n),
        .ddr3_sdram_we_n(ddr3_sdram_we_n),
        .dip_switches_8bits_tri_i(dip_switches_8bits_tri_i),
        .iic_main_scl_i(iic_main_scl_i),
        .iic_main_scl_o(iic_main_scl_o),
        .iic_main_scl_t(iic_main_scl_t),
        .iic_main_sda_i(iic_main_sda_i),
        .iic_main_sda_o(iic_main_sda_o),
        .iic_main_sda_t(iic_main_sda_t),
        .iic_mux_reset_b(iic_mux_reset_b),
        .lcd_7bits_tri_o(lcd_7bits_tri_o),
        .led_8bits_tri_o(led_8bits_tri_o),
        .linear_flash_addr(linear_flash_addr),
        .linear_flash_adv_ldn(linear_flash_adv_ldn),
        .linear_flash_ce_n(linear_flash_ce_n),
        .linear_flash_dq_i({linear_flash_dq_i_15,linear_flash_dq_i_14,linear_flash_dq_i_13,linear_flash_dq_i_12,linear_flash_dq_i_11,linear_flash_dq_i_10,linear_flash_dq_i_9,linear_flash_dq_i_8,linear_flash_dq_i_7,linear_flash_dq_i_6,linear_flash_dq_i_5,linear_flash_dq_i_4,linear_flash_dq_i_3,linear_flash_dq_i_2,linear_flash_dq_i_1,linear_flash_dq_i_0}),
        .linear_flash_dq_o({linear_flash_dq_o_15,linear_flash_dq_o_14,linear_flash_dq_o_13,linear_flash_dq_o_12,linear_flash_dq_o_11,linear_flash_dq_o_10,linear_flash_dq_o_9,linear_flash_dq_o_8,linear_flash_dq_o_7,linear_flash_dq_o_6,linear_flash_dq_o_5,linear_flash_dq_o_4,linear_flash_dq_o_3,linear_flash_dq_o_2,linear_flash_dq_o_1,linear_flash_dq_o_0}),
        .linear_flash_dq_t({linear_flash_dq_t_15,linear_flash_dq_t_14,linear_flash_dq_t_13,linear_flash_dq_t_12,linear_flash_dq_t_11,linear_flash_dq_t_10,linear_flash_dq_t_9,linear_flash_dq_t_8,linear_flash_dq_t_7,linear_flash_dq_t_6,linear_flash_dq_t_5,linear_flash_dq_t_4,linear_flash_dq_t_3,linear_flash_dq_t_2,linear_flash_dq_t_1,linear_flash_dq_t_0}),
        .linear_flash_oen(linear_flash_oen),
        .linear_flash_wen(linear_flash_wen),
        .mdio_mdc_mdc(mdio_mdc_mdc),
        .mdio_mdc_mdio_i(mdio_mdc_mdio_i),
        .mdio_mdc_mdio_o(mdio_mdc_mdio_o),
        .mdio_mdc_mdio_t(mdio_mdc_mdio_t),
        .phy_reset_out(phy_reset_out),
        .push_buttons_5bits_tri_i(push_buttons_5bits_tri_i),
        .reset(reset),
        .rotary_switch_tri_i(rotary_switch_tri_i),
        .rs232_uart_rxd(rs232_uart_rxd),
        .rs232_uart_txd(rs232_uart_txd),
        .sgmii_mgt_clk_clk_n(sgmii_mgt_clk_clk_n),
        .sgmii_mgt_clk_clk_p(sgmii_mgt_clk_clk_p),
        .sgmii_rxn(sgmii_rxn),
        .sgmii_rxp(sgmii_rxp),
        .sgmii_txn(sgmii_txn),
        .sgmii_txp(sgmii_txp),
        .sys_diff_clock_clk_n(sys_diff_clock_clk_n),
        .sys_diff_clock_clk_p(sys_diff_clock_clk_p));
  IOBUF ulpi_data_iobuf_0
       (.I(ulpi_data_o_0),
        .IO(ulpi_data_io[0]),
        .O(ulpi_data_i_0),
        .T(ulpi_data_t));
  IOBUF ulpi_data_iobuf_1
       (.I(ulpi_data_o_1),
        .IO(ulpi_data_io[1]),
        .O(ulpi_data_i_1),
        .T(ulpi_data_t));
  IOBUF ulpi_data_iobuf_2
       (.I(ulpi_data_o_2),
        .IO(ulpi_data_io[2]),
        .O(ulpi_data_i_2),
        .T(ulpi_data_t));
  IOBUF ulpi_data_iobuf_3
       (.I(ulpi_data_o_3),
        .IO(ulpi_data_io[3]),
        .O(ulpi_data_i_3),
        .T(ulpi_data_t));
  IOBUF ulpi_data_iobuf_4
       (.I(ulpi_data_o_4),
        .IO(ulpi_data_io[4]),
        .O(ulpi_data_i_4),
        .T(ulpi_data_t));
  IOBUF ulpi_data_iobuf_5
       (.I(ulpi_data_o_5),
        .IO(ulpi_data_io[5]),
        .O(ulpi_data_i_5),
        .T(ulpi_data_t));
  IOBUF ulpi_data_iobuf_6
       (.I(ulpi_data_o_6),
        .IO(ulpi_data_io[6]),
        .O(ulpi_data_i_6),
        .T(ulpi_data_t));
  IOBUF ulpi_data_iobuf_7
       (.I(ulpi_data_o_7),
        .IO(ulpi_data_io[7]),
        .O(ulpi_data_i_7),
        .T(ulpi_data_t));
endmodule
