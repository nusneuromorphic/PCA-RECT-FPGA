--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
--Date        : Tue Jun 19 18:32:20 2018
--Host        : mmrl01.ee.nus.edu.sg running 64-bit CentOS Linux release 7.4.1708 (Core)
--Command     : generate_target event_recog_ip.bd
--Design      : event_recog_ip
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity event_recog_ip is
  port (
    address_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clear_val : in STD_LOGIC;
    clk : in STD_LOGIC;
    coor_x : in STD_LOGIC_VECTOR ( 7 downto 0 );
    coor_y : in STD_LOGIC_VECTOR ( 7 downto 0 );
    coorx : out STD_LOGIC_VECTOR ( 15 downto 0 );
    coory : out STD_LOGIC_VECTOR ( 15 downto 0 );
    det_valid : out STD_LOGIC_VECTOR ( 0 to 0 );
    en : in STD_LOGIC;
    good_pred : out STD_LOGIC_VECTOR ( 0 to 0 );
    overflow : out STD_LOGIC;
    pred_class : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reset : in STD_LOGIC;
    valid_bin : out STD_LOGIC;
    valid_pred : out STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of event_recog_ip : entity is "event_recog_ip,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=event_recog_ip,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=50,numReposBlks=50,numNonXlnxBlks=11,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=2,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of event_recog_ip : entity is "event_recog_ip.hwdef";
end event_recog_ip;

architecture STRUCTURE of event_recog_ip is
  component event_recog_ip_fifo_generator_0_0 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 13 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 13 downto 0 );
    full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC
  );
  end component event_recog_ip_fifo_generator_0_0;
  component event_recog_ip_fifo_generator_2_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    prog_full : out STD_LOGIC
  );
  end component event_recog_ip_fifo_generator_2_0;
  component event_recog_ip_subsample_TD_0_0 is
  port (
    coor_x : in STD_LOGIC_VECTOR ( 7 downto 0 );
    coor_y : in STD_LOGIC_VECTOR ( 7 downto 0 );
    address : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component event_recog_ip_subsample_TD_0_0;
  component event_recog_ip_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_0_0;
  component event_recog_ip_util_vector_logic_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_1_0;
  component event_recog_ip_util_vector_logic_2_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_2_0;
  component event_recog_ip_util_vector_logic_3_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_3_0;
  component event_recog_ip_util_vector_logic_4_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_4_0;
  component event_recog_ip_util_vector_logic_5_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_5_0;
  component event_recog_ip_util_vector_logic_2_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_2_1;
  component event_recog_ip_kd_tree_0_0 is
  port (
    clk : in STD_LOGIC;
    ena : in STD_LOGIC;
    valid_input : in STD_LOGIC;
    is_full : in STD_LOGIC;
    center_addr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    valid_desc : in STD_LOGIC;
    desc : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_ack : in STD_LOGIC;
    get_addr : out STD_LOGIC;
    address_to_get : out STD_LOGIC_VECTOR ( 13 downto 0 );
    valid_bin : out STD_LOGIC;
    address_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    kd_ready_o : out STD_LOGIC
  );
  end component event_recog_ip_kd_tree_0_0;
  component event_recog_ip_svm_class_1_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    we : in STD_LOGIC;
    add_address : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sub_address : in STD_LOGIC_VECTOR ( 11 downto 0 );
    valid_addr : in STD_LOGIC;
    wout : out STD_LOGIC;
    pred_class : out STD_LOGIC_VECTOR ( 31 downto 0 );
    good_pred : out STD_LOGIC
  );
  end component event_recog_ip_svm_class_1_0;
  component event_recog_ip_simple_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    count : in STD_LOGIC;
    full : out STD_LOGIC
  );
  end component event_recog_ip_simple_counter_0_0;
  component event_recog_ip_fifo_generator_1_0 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC
  );
  end component event_recog_ip_fifo_generator_1_0;
  component event_recog_ip_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component event_recog_ip_xlconcat_0_0;
  component event_recog_ip_fifo_generator_3_0 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component event_recog_ip_fifo_generator_3_0;
  component event_recog_ip_fifo_generator_3_1 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC
  );
  end component event_recog_ip_fifo_generator_3_1;
  component event_recog_ip_div_gen_0_0 is
  port (
    aclk : in STD_LOGIC;
    s_axis_divisor_tvalid : in STD_LOGIC;
    s_axis_divisor_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_dividend_tvalid : in STD_LOGIC;
    s_axis_dividend_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component event_recog_ip_div_gen_0_0;
  component event_recog_ip_div_gen_0_1 is
  port (
    aclk : in STD_LOGIC;
    s_axis_divisor_tvalid : in STD_LOGIC;
    s_axis_divisor_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_dividend_tvalid : in STD_LOGIC;
    s_axis_dividend_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  end component event_recog_ip_div_gen_0_1;
  component event_recog_ip_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component event_recog_ip_xlslice_0_0;
  component event_recog_ip_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component event_recog_ip_xlslice_0_1;
  component event_recog_ip_util_vector_logic_5_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_5_1;
  component event_recog_ip_util_vector_logic_5_2 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_5_2;
  component event_recog_ip_util_vector_logic_10_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_10_0;
  component event_recog_ip_util_vector_logic_8_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_8_0;
  component event_recog_ip_util_vector_logic_4_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_4_1;
  component event_recog_ip_det_words_0_0 is
  port (
    clk : in STD_LOGIC;
    valid : in STD_LOGIC;
    index : in STD_LOGIC_VECTOR ( 11 downto 0 );
    we_o : out STD_LOGIC;
    validate : out STD_LOGIC
  );
  end component event_recog_ip_det_words_0_0;
  component event_recog_ip_util_vector_logic_13_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_13_0;
  component event_recog_ip_util_vector_logic_16_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_16_0;
  component event_recog_ip_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_xlslice_1_0;
  component event_recog_ip_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_xlslice_2_0;
  component event_recog_ip_util_vector_logic_12_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_12_0;
  component event_recog_ip_util_vector_logic_9_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_9_0;
  component event_recog_ip_util_vector_logic_8_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_8_1;
  component event_recog_ip_util_vector_logic_18_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_18_0;
  component event_recog_ip_util_vector_logic_19_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_19_0;
  component event_recog_ip_sim_ff_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component event_recog_ip_sim_ff_0_0;
  component event_recog_ip_hold_output_0_0 is
  port (
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    rst : in STD_LOGIC;
    coorx : in STD_LOGIC_VECTOR ( 15 downto 0 );
    coory : in STD_LOGIC_VECTOR ( 15 downto 0 );
    coorx_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    coory_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid : out STD_LOGIC
  );
  end component event_recog_ip_hold_output_0_0;
  component event_recog_ip_util_vector_logic_27_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_27_1;
  component event_recog_ip_sim_ff_1_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component event_recog_ip_sim_ff_1_0;
  component event_recog_ip_fifo_generator_1_1 is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC
  );
  end component event_recog_ip_fifo_generator_1_1;
  component event_recog_ip_util_vector_logic_12_2 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_12_2;
  component event_recog_ip_util_vector_logic_11_2 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_11_2;
  component event_recog_ip_util_vector_logic_13_2 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_13_2;
  component event_recog_ip_util_vector_logic_23_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component event_recog_ip_util_vector_logic_23_1;
  component event_recog_ip_avg_cal_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    detect : in STD_LOGIC;
    c_valid : in STD_LOGIC;
    coor : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ff_empty : in STD_LOGIC;
    ff_count : in STD_LOGIC_VECTOR ( 13 downto 0 );
    ff_rd : out STD_LOGIC;
    sumx : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sumy : out STD_LOGIC_VECTOR ( 15 downto 0 );
    divisor : out STD_LOGIC_VECTOR ( 7 downto 0 );
    divide : out STD_LOGIC
  );
  end component event_recog_ip_avg_cal_0_0;
  component event_recog_ip_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component event_recog_ip_xlconcat_1_0;
  component event_recog_ip_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component event_recog_ip_xlconstant_0_0;
  component event_recog_ip_c_mat_fast_ip_0_0 is
  port (
    busy : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    current : out STD_LOGIC_VECTOR ( 13 downto 0 );
    din : in STD_LOGIC_VECTOR ( 13 downto 0 );
    full : out STD_LOGIC;
    kd_address : in STD_LOGIC_VECTOR ( 13 downto 0 );
    kd_get : in STD_LOGIC;
    kd_start : out STD_LOGIC_VECTOR ( 0 to 0 );
    kd_valid : out STD_LOGIC;
    kd_value : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rst : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  end component event_recog_ip_c_mat_fast_ip_0_0;
  component event_recog_ip_det_mat_bram_ip_0_0 is
  port (
    address : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    clr_address : in STD_LOGIC_VECTOR ( 15 downto 0 );
    detect : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    en : in STD_LOGIC;
    ff_rst : out STD_LOGIC;
    full10k : in STD_LOGIC;
    save : out STD_LOGIC;
    save_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    we : in STD_LOGIC;
    we_out : out STD_LOGIC
  );
  end component event_recog_ip_det_mat_bram_ip_0_0;
  signal Net : STD_LOGIC;
  signal avg_cal_0_divide : STD_LOGIC;
  signal avg_cal_0_divisor : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal avg_cal_0_ff_rd : STD_LOGIC;
  signal avg_cal_0_sumx : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal avg_cal_0_sumy : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal c_mat_fast_ip_0_busy : STD_LOGIC_VECTOR ( 0 to 0 );
  signal c_mat_fast_ip_0_current : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal c_mat_fast_ip_0_full : STD_LOGIC;
  signal c_mat_fast_ip_0_kd_start : STD_LOGIC_VECTOR ( 0 to 0 );
  signal c_mat_fast_ip_0_kd_valid : STD_LOGIC;
  signal c_mat_fast_ip_0_kd_value : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal coor_x_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal coor_y_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal det_mat_0_detect : STD_LOGIC;
  signal det_mat_bram_ip_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal det_mat_bram_ip_0_ff_rst : STD_LOGIC;
  signal det_mat_bram_ip_0_save : STD_LOGIC;
  signal det_mat_bram_ip_0_save_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal det_mat_bram_ip_0_we_out : STD_LOGIC;
  signal det_words_0_validate : STD_LOGIC;
  signal det_words_0_we_o : STD_LOGIC;
  signal div_gen_0_m_axis_dout_tdata : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal div_gen_0_m_axis_dout_tvalid : STD_LOGIC;
  signal div_gen_1_m_axis_dout_tdata : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal div_gen_1_m_axis_dout_tvalid : STD_LOGIC;
  signal ena_1 : STD_LOGIC;
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal fifo_generator_0_empty : STD_LOGIC;
  signal fifo_generator_0_overflow : STD_LOGIC;
  signal fifo_generator_0_valid : STD_LOGIC;
  signal fifo_generator_0_wr_ack : STD_LOGIC;
  signal fifo_generator_1_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fifo_generator_1_valid : STD_LOGIC;
  signal fifo_generator_2_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal fifo_generator_2_prog_full : STD_LOGIC;
  signal fifo_generator_2_valid : STD_LOGIC;
  signal fifo_generator_3_data_count : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal fifo_generator_3_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fifo_generator_3_empty : STD_LOGIC;
  signal fifo_generator_3_valid : STD_LOGIC;
  signal fifo_generator_4_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fifo_generator_4_empty : STD_LOGIC;
  signal fifo_generator_4_valid : STD_LOGIC;
  signal fifo_generator_5_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal fifo_generator_5_empty : STD_LOGIC;
  signal fifo_generator_5_valid : STD_LOGIC;
  signal hold_output_0_coorx_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal hold_output_0_coory_o : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal hold_output_0_valid : STD_LOGIC;
  signal kd_tree_0_address_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal kd_tree_0_address_to_get : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal kd_tree_0_get_addr : STD_LOGIC;
  signal kd_tree_0_kd_ready_o : STD_LOGIC;
  signal kd_tree_0_valid_bin : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal sim_ff_0_Q : STD_LOGIC;
  signal sim_ff_1_Q : STD_LOGIC;
  signal simple_counter_0_full : STD_LOGIC;
  signal subsample_TD_0_address : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal svm_class_1_good_pred : STD_LOGIC;
  signal svm_class_1_pred_class : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal svm_class_1_wout : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_11_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_12_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_13_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_14_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_15_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_16_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_17_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_18_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_19_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_20_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_21_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_22_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_23_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_24_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_25_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_2_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_33_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_3_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_4_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_5_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_6_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_9_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wr_en_1 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_generator_0_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_1_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_1_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_2_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_2_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_3_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_4_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_5_full_UNCONNECTED : STD_LOGIC;
begin
  Net <= reset;
  address_out(11 downto 0) <= kd_tree_0_address_out(11 downto 0);
  clk_1 <= clk;
  coor_x_1(7 downto 0) <= coor_x(7 downto 0);
  coor_y_1(7 downto 0) <= coor_y(7 downto 0);
  coorx(15 downto 0) <= hold_output_0_coorx_o(15 downto 0);
  coory(15 downto 0) <= hold_output_0_coory_o(15 downto 0);
  det_valid(0) <= hold_output_0_valid;
  ena_1 <= en;
  good_pred(0) <= util_vector_logic_15_Res(0);
  overflow <= fifo_generator_0_overflow;
  pred_class(31 downto 0) <= svm_class_1_pred_class(31 downto 0);
  rst_1 <= clear_val;
  valid_bin <= kd_tree_0_valid_bin;
  valid_pred <= sim_ff_0_Q;
  wr_en_1 <= wr_en;
avg_cal_0: component event_recog_ip_avg_cal_0_0
     port map (
      c_valid => fifo_generator_3_valid,
      clk => clk_1,
      coor(15 downto 0) => fifo_generator_3_dout(15 downto 0),
      detect => util_vector_logic_25_Res(0),
      divide => avg_cal_0_divide,
      divisor(7 downto 0) => avg_cal_0_divisor(7 downto 0),
      en => ena_1,
      ff_count(13 downto 0) => xlconcat_1_dout(13 downto 0),
      ff_empty => fifo_generator_3_empty,
      ff_rd => avg_cal_0_ff_rd,
      sumx(15 downto 0) => avg_cal_0_sumx(15 downto 0),
      sumy(15 downto 0) => avg_cal_0_sumy(15 downto 0)
    );
c_mat_fast_ip_0: component event_recog_ip_c_mat_fast_ip_0_0
     port map (
      busy(0) => c_mat_fast_ip_0_busy(0),
      clk => clk_1,
      current(13 downto 0) => c_mat_fast_ip_0_current(13 downto 0),
      din(13 downto 0) => fifo_generator_0_dout(13 downto 0),
      full => c_mat_fast_ip_0_full,
      kd_address(13 downto 0) => kd_tree_0_address_to_get(13 downto 0),
      kd_get => kd_tree_0_get_addr,
      kd_start(0) => c_mat_fast_ip_0_kd_start(0),
      kd_valid => c_mat_fast_ip_0_kd_valid,
      kd_value(11 downto 0) => c_mat_fast_ip_0_kd_value(11 downto 0),
      rst => Net,
      wr_en => fifo_generator_0_valid
    );
det_mat_bram_ip_0: component event_recog_ip_det_mat_bram_ip_0_0
     port map (
      address(15 downto 0) => fifo_generator_5_dout(15 downto 0),
      clk => clk_1,
      clr => fifo_generator_4_valid,
      clr_address(15 downto 0) => fifo_generator_4_dout(15 downto 0),
      detect => det_mat_0_detect,
      dout(15 downto 0) => det_mat_bram_ip_0_dout(15 downto 0),
      en => ena_1,
      ff_rst => det_mat_bram_ip_0_ff_rst,
      full10k => simple_counter_0_full,
      save => det_mat_bram_ip_0_save,
      save_out(15 downto 0) => det_mat_bram_ip_0_save_out(15 downto 0),
      we => fifo_generator_5_valid,
      we_out => det_mat_bram_ip_0_we_out
    );
det_words_0: component event_recog_ip_det_words_0_0
     port map (
      clk => clk_1,
      index(11 downto 0) => kd_tree_0_address_out(11 downto 0),
      valid => kd_tree_0_valid_bin,
      validate => det_words_0_validate,
      we_o => det_words_0_we_o
    );
div_gen_0: component event_recog_ip_div_gen_0_0
     port map (
      aclk => clk_1,
      m_axis_dout_tdata(23 downto 0) => div_gen_0_m_axis_dout_tdata(23 downto 0),
      m_axis_dout_tvalid => div_gen_0_m_axis_dout_tvalid,
      s_axis_dividend_tdata(15 downto 0) => avg_cal_0_sumy(15 downto 0),
      s_axis_dividend_tvalid => avg_cal_0_divide,
      s_axis_divisor_tdata(7 downto 0) => avg_cal_0_divisor(7 downto 0),
      s_axis_divisor_tvalid => avg_cal_0_divide
    );
div_gen_1: component event_recog_ip_div_gen_0_1
     port map (
      aclk => clk_1,
      m_axis_dout_tdata(23 downto 0) => div_gen_1_m_axis_dout_tdata(23 downto 0),
      m_axis_dout_tvalid => div_gen_1_m_axis_dout_tvalid,
      s_axis_dividend_tdata(15 downto 0) => avg_cal_0_sumx(15 downto 0),
      s_axis_dividend_tvalid => avg_cal_0_divide,
      s_axis_divisor_tdata(7 downto 0) => avg_cal_0_divisor(7 downto 0),
      s_axis_divisor_tvalid => avg_cal_0_divide
    );
fifo_generator_0: component event_recog_ip_fifo_generator_0_0
     port map (
      clk => clk_1,
      din(13 downto 0) => subsample_TD_0_address(13 downto 0),
      dout(13 downto 0) => fifo_generator_0_dout(13 downto 0),
      empty => fifo_generator_0_empty,
      full => NLW_fifo_generator_0_full_UNCONNECTED,
      overflow => fifo_generator_0_overflow,
      rd_en => util_vector_logic_1_Res(0),
      srst => Net,
      valid => fifo_generator_0_valid,
      wr_ack => fifo_generator_0_wr_ack,
      wr_en => wr_en_1
    );
fifo_generator_1: component event_recog_ip_fifo_generator_1_0
     port map (
      clk => clk_1,
      din(15 downto 0) => xlconcat_0_dout(15 downto 0),
      dout(15 downto 0) => fifo_generator_1_dout(15 downto 0),
      empty => NLW_fifo_generator_1_empty_UNCONNECTED,
      full => NLW_fifo_generator_1_full_UNCONNECTED,
      rd_en => det_words_0_we_o,
      srst => Net,
      valid => fifo_generator_1_valid,
      wr_en => util_vector_logic_17_Res(0)
    );
fifo_generator_2: component event_recog_ip_fifo_generator_2_0
     port map (
      clk => clk_1,
      din(11 downto 0) => kd_tree_0_address_out(11 downto 0),
      dout(11 downto 0) => fifo_generator_2_dout(11 downto 0),
      empty => NLW_fifo_generator_2_empty_UNCONNECTED,
      full => NLW_fifo_generator_2_full_UNCONNECTED,
      prog_full => fifo_generator_2_prog_full,
      rd_en => util_vector_logic_5_Res(0),
      rst => Net,
      valid => fifo_generator_2_valid,
      wr_en => svm_class_1_wout
    );
fifo_generator_3: component event_recog_ip_fifo_generator_3_0
     port map (
      clk => clk_1,
      data_count(8 downto 0) => fifo_generator_3_data_count(8 downto 0),
      din(15 downto 0) => det_mat_bram_ip_0_dout(15 downto 0),
      dout(15 downto 0) => fifo_generator_3_dout(15 downto 0),
      empty => fifo_generator_3_empty,
      full => NLW_fifo_generator_3_full_UNCONNECTED,
      rd_en => avg_cal_0_ff_rd,
      srst => util_vector_logic_21_Res(0),
      valid => fifo_generator_3_valid,
      wr_en => det_mat_bram_ip_0_we_out
    );
fifo_generator_4: component event_recog_ip_fifo_generator_3_1
     port map (
      clk => clk_1,
      din(15 downto 0) => det_mat_bram_ip_0_save_out(15 downto 0),
      dout(15 downto 0) => fifo_generator_4_dout(15 downto 0),
      empty => fifo_generator_4_empty,
      full => NLW_fifo_generator_4_full_UNCONNECTED,
      rd_en => util_vector_logic_11_Res(0),
      srst => Net,
      valid => fifo_generator_4_valid,
      wr_en => det_mat_bram_ip_0_save
    );
fifo_generator_5: component event_recog_ip_fifo_generator_1_1
     port map (
      clk => clk_1,
      din(15 downto 0) => fifo_generator_1_dout(15 downto 0),
      dout(15 downto 0) => fifo_generator_5_dout(15 downto 0),
      empty => fifo_generator_5_empty,
      full => NLW_fifo_generator_5_full_UNCONNECTED,
      rd_en => util_vector_logic_20_Res(0),
      srst => Net,
      valid => fifo_generator_5_valid,
      wr_en => util_vector_logic_16_Res(0)
    );
hold_output_0: component event_recog_ip_hold_output_0_0
     port map (
      clk => clk_1,
      coorx(15 downto 0) => xlslice_0_Dout(15 downto 0),
      coorx_o(15 downto 0) => hold_output_0_coorx_o(15 downto 0),
      coory(15 downto 0) => xlslice_1_Dout(15 downto 0),
      coory_o(15 downto 0) => hold_output_0_coory_o(15 downto 0),
      rst => util_vector_logic_23_Res(0),
      valid => hold_output_0_valid,
      we => util_vector_logic_9_Res(0)
    );
kd_tree_0: component event_recog_ip_kd_tree_0_0
     port map (
      address_out(11 downto 0) => kd_tree_0_address_out(11 downto 0),
      address_to_get(13 downto 0) => kd_tree_0_address_to_get(13 downto 0),
      center_addr(13 downto 0) => c_mat_fast_ip_0_current(13 downto 0),
      clk => clk_1,
      desc(11 downto 0) => c_mat_fast_ip_0_kd_value(11 downto 0),
      ena => ena_1,
      get_addr => kd_tree_0_get_addr,
      is_full => c_mat_fast_ip_0_full,
      kd_ready_o => kd_tree_0_kd_ready_o,
      valid_bin => kd_tree_0_valid_bin,
      valid_desc => c_mat_fast_ip_0_kd_valid,
      valid_input => c_mat_fast_ip_0_kd_start(0),
      wr_ack => util_vector_logic_4_Res(0)
    );
sim_ff_0: component event_recog_ip_sim_ff_0_0
     port map (
      D => hold_output_0_valid,
      Q => sim_ff_0_Q,
      clk => clk_1,
      rst => rst_1
    );
sim_ff_1: component event_recog_ip_sim_ff_1_0
     port map (
      D => simple_counter_0_full,
      Q => sim_ff_1_Q,
      clk => clk_1,
      rst => fifo_generator_4_empty
    );
simple_counter_0: component event_recog_ip_simple_counter_0_0
     port map (
      clk => clk_1,
      clr => util_vector_logic_14_Res(0),
      count => util_vector_logic_15_Res(0),
      full => simple_counter_0_full
    );
subsample_TD_0: component event_recog_ip_subsample_TD_0_0
     port map (
      address(13 downto 0) => subsample_TD_0_address(13 downto 0),
      coor_x(7 downto 0) => coor_x_1(7 downto 0),
      coor_y(7 downto 0) => coor_y_1(7 downto 0)
    );
svm_class_1: component event_recog_ip_svm_class_1_0
     port map (
      add_address(11 downto 0) => kd_tree_0_address_out(11 downto 0),
      clk => clk_1,
      en => ena_1,
      good_pred => svm_class_1_good_pred,
      pred_class(31 downto 0) => svm_class_1_pred_class(31 downto 0),
      rst => Net,
      sub_address(11 downto 0) => fifo_generator_2_dout(11 downto 0),
      valid_addr => fifo_generator_2_valid,
      we => kd_tree_0_valid_bin,
      wout => svm_class_1_wout
    );
util_vector_logic_0: component event_recog_ip_util_vector_logic_0_0
     port map (
      Op1(0) => fifo_generator_0_empty,
      Res(0) => util_vector_logic_0_Res(0)
    );
util_vector_logic_1: component event_recog_ip_util_vector_logic_1_0
     port map (
      Op1(0) => kd_tree_0_kd_ready_o,
      Op2(0) => util_vector_logic_0_Res(0),
      Res(0) => util_vector_logic_1_Res(0)
    );
util_vector_logic_11: component event_recog_ip_util_vector_logic_5_2
     port map (
      Op1(0) => sim_ff_1_Q,
      Op2(0) => util_vector_logic_12_Res(0),
      Res(0) => util_vector_logic_11_Res(0)
    );
util_vector_logic_12: component event_recog_ip_util_vector_logic_10_0
     port map (
      Op1(0) => fifo_generator_4_empty,
      Res(0) => util_vector_logic_12_Res(0)
    );
util_vector_logic_13: component event_recog_ip_util_vector_logic_12_2
     port map (
      Op1(0) => fifo_generator_5_empty,
      Res(0) => util_vector_logic_13_Res(0)
    );
util_vector_logic_14: component event_recog_ip_util_vector_logic_8_0
     port map (
      Op1(0) => det_mat_0_detect,
      Op2(0) => Net,
      Res(0) => util_vector_logic_14_Res(0)
    );
util_vector_logic_15: component event_recog_ip_util_vector_logic_4_1
     port map (
      Op1(0) => c_mat_fast_ip_0_full,
      Op2(0) => svm_class_1_good_pred,
      Res(0) => util_vector_logic_15_Res(0)
    );
util_vector_logic_16: component event_recog_ip_util_vector_logic_13_0
     port map (
      Op1(0) => det_words_0_validate,
      Op2(0) => fifo_generator_1_valid,
      Res(0) => util_vector_logic_16_Res(0)
    );
util_vector_logic_17: component event_recog_ip_util_vector_logic_16_0
     port map (
      Op1(0) => c_mat_fast_ip_0_full,
      Op2(0) => wr_en_1,
      Res(0) => util_vector_logic_17_Res(0)
    );
util_vector_logic_18: component event_recog_ip_util_vector_logic_12_0
     port map (
      Op1(0) => xlslice_3_Dout(0),
      Res(0) => util_vector_logic_18_Res(0)
    );
util_vector_logic_19: component event_recog_ip_util_vector_logic_9_0
     port map (
      Op1(0) => xlslice_2_Dout(0),
      Op2(0) => util_vector_logic_18_Res(0),
      Res(0) => util_vector_logic_19_Res(0)
    );
util_vector_logic_2: component event_recog_ip_util_vector_logic_2_0
     port map (
      Op1(0) => c_mat_fast_ip_0_busy(0),
      Op2(0) => util_vector_logic_6_Res(0),
      Res(0) => util_vector_logic_2_Res(0)
    );
util_vector_logic_20: component event_recog_ip_util_vector_logic_11_2
     port map (
      Op1(0) => util_vector_logic_24_Res(0),
      Op2(0) => util_vector_logic_13_Res(0),
      Res(0) => util_vector_logic_20_Res(0)
    );
util_vector_logic_21: component event_recog_ip_util_vector_logic_8_1
     port map (
      Op1(0) => det_mat_bram_ip_0_ff_rst,
      Op2(0) => util_vector_logic_33_Res(0),
      Res(0) => util_vector_logic_21_Res(0)
    );
util_vector_logic_22: component event_recog_ip_util_vector_logic_18_0
     port map (
      Op1(0) => util_vector_logic_19_Res(0),
      Res(0) => util_vector_logic_22_Res(0)
    );
util_vector_logic_23: component event_recog_ip_util_vector_logic_19_0
     port map (
      Op1(0) => det_mat_0_detect,
      Op2(0) => util_vector_logic_22_Res(0),
      Res(0) => util_vector_logic_23_Res(0)
    );
util_vector_logic_24: component event_recog_ip_util_vector_logic_13_2
     port map (
      Op1(0) => fifo_generator_4_valid,
      Res(0) => util_vector_logic_24_Res(0)
    );
util_vector_logic_25: component event_recog_ip_util_vector_logic_23_1
     port map (
      Op1(0) => util_vector_logic_19_Res(0),
      Op2(0) => det_mat_0_detect,
      Res(0) => util_vector_logic_25_Res(0)
    );
util_vector_logic_3: component event_recog_ip_util_vector_logic_3_0
     port map (
      Op1(0) => util_vector_logic_2_Res(0),
      Res(0) => util_vector_logic_3_Res(0)
    );
util_vector_logic_33: component event_recog_ip_util_vector_logic_27_1
     port map (
      Op1(0) => Net,
      Op2(0) => util_vector_logic_23_Res(0),
      Res(0) => util_vector_logic_33_Res(0)
    );
util_vector_logic_4: component event_recog_ip_util_vector_logic_4_0
     port map (
      Op1(0) => fifo_generator_0_wr_ack,
      Op2(0) => util_vector_logic_3_Res(0),
      Res(0) => util_vector_logic_4_Res(0)
    );
util_vector_logic_5: component event_recog_ip_util_vector_logic_5_0
     port map (
      Op1(0) => kd_tree_0_valid_bin,
      Op2(0) => fifo_generator_2_prog_full,
      Res(0) => util_vector_logic_5_Res(0)
    );
util_vector_logic_6: component event_recog_ip_util_vector_logic_2_1
     port map (
      Op1(0) => fifo_generator_0_valid,
      Op2(0) => kd_tree_0_valid_bin,
      Res(0) => util_vector_logic_6_Res(0)
    );
util_vector_logic_9: component event_recog_ip_util_vector_logic_5_1
     port map (
      Op1(0) => div_gen_1_m_axis_dout_tvalid,
      Op2(0) => div_gen_0_m_axis_dout_tvalid,
      Res(0) => util_vector_logic_9_Res(0)
    );
xlconcat_0: component event_recog_ip_xlconcat_0_0
     port map (
      In0(7 downto 0) => coor_x_1(7 downto 0),
      In1(7 downto 0) => coor_y_1(7 downto 0),
      dout(15 downto 0) => xlconcat_0_dout(15 downto 0)
    );
xlconcat_1: component event_recog_ip_xlconcat_1_0
     port map (
      In0(8 downto 0) => fifo_generator_3_data_count(8 downto 0),
      In1(4 downto 0) => xlconstant_0_dout(4 downto 0),
      dout(13 downto 0) => xlconcat_1_dout(13 downto 0)
    );
xlconstant_0: component event_recog_ip_xlconstant_0_0
     port map (
      dout(4 downto 0) => xlconstant_0_dout(4 downto 0)
    );
xlslice_0: component event_recog_ip_xlslice_0_0
     port map (
      Din(23 downto 0) => div_gen_1_m_axis_dout_tdata(23 downto 0),
      Dout(15 downto 0) => xlslice_0_Dout(15 downto 0)
    );
xlslice_1: component event_recog_ip_xlslice_0_1
     port map (
      Din(23 downto 0) => div_gen_0_m_axis_dout_tdata(23 downto 0),
      Dout(15 downto 0) => xlslice_1_Dout(15 downto 0)
    );
xlslice_2: component event_recog_ip_xlslice_1_0
     port map (
      Din(31 downto 0) => svm_class_1_pred_class(31 downto 0),
      Dout(0) => xlslice_2_Dout(0)
    );
xlslice_3: component event_recog_ip_xlslice_2_0
     port map (
      Din(31 downto 0) => svm_class_1_pred_class(31 downto 0),
      Dout(0) => xlslice_3_Dout(0)
    );
end STRUCTURE;
