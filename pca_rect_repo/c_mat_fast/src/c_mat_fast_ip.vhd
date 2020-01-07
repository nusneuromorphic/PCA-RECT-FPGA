--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
--Date        : Wed Jun 27 13:03:32 2018
--Host        : mmrl01.ee.nus.edu.sg running 64-bit CentOS Linux release 7.4.1708 (Core)
--Command     : generate_target c_mat_fast_ip.bd
--Design      : c_mat_fast_ip
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity c_mat_fast_ip is
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
  attribute core_generation_info : string;
  attribute core_generation_info of c_mat_fast_ip : entity is "c_mat_fast_ip,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=c_mat_fast_ip,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=16,numReposBlks=16,numNonXlnxBlks=3,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute hw_handoff : string;
  attribute hw_handoff of c_mat_fast_ip : entity is "c_mat_fast_ip.hwdef";
end c_mat_fast_ip;

architecture STRUCTURE of c_mat_fast_ip is
  component c_mat_fast_ip_c_shift_ram_2_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component c_mat_fast_ip_c_shift_ram_2_0;
  component c_mat_fast_ip_c_shift_ram_3_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component c_mat_fast_ip_c_shift_ram_3_0;
  component c_mat_fast_ip_c_shift_ram_4_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component c_mat_fast_ip_c_shift_ram_4_0;
  component c_mat_fast_ip_c_shift_ram_5_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 13 downto 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  end component c_mat_fast_ip_c_shift_ram_5_0;
  component c_mat_fast_ip_c_shift_ram_6_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component c_mat_fast_ip_c_shift_ram_6_0;
  component c_mat_fast_ip_fifo_generator_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 13 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 13 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    prog_full : out STD_LOGIC
  );
  end component c_mat_fast_ip_fifo_generator_0_0;
  component c_mat_fast_ip_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component c_mat_fast_ip_util_vector_logic_0_0;
  component c_mat_fast_ip_util_vector_logic_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component c_mat_fast_ip_util_vector_logic_1_0;
  component c_mat_fast_ip_util_vector_logic_2_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component c_mat_fast_ip_util_vector_logic_2_0;
  component c_mat_fast_ip_util_vector_logic_3_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component c_mat_fast_ip_util_vector_logic_3_0;
  component c_mat_fast_ip_util_vector_logic_4_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component c_mat_fast_ip_util_vector_logic_4_0;
  component c_mat_fast_ip_util_vector_logic_2_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component c_mat_fast_ip_util_vector_logic_2_1;
  component c_mat_fast_ip_sim_ff_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    D : in STD_LOGIC;
    Q : out STD_LOGIC
  );
  end component c_mat_fast_ip_sim_ff_0_0;
  component c_mat_fast_ip_util_vector_logic_3_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component c_mat_fast_ip_util_vector_logic_3_1;
  component c_mat_fast_ip_simple_counter_0_0 is
  port (
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    count : in STD_LOGIC;
    full : out STD_LOGIC
  );
  end component c_mat_fast_ip_simple_counter_0_0;
  component c_mat_fast_ip_count_mat_fast_0_0 is
  port (
    clk : in STD_LOGIC;
    we_add : in STD_LOGIC;
    address_add : in STD_LOGIC_VECTOR ( 13 downto 0 );
    we_sub : in STD_LOGIC;
    address_sub : in STD_LOGIC_VECTOR ( 13 downto 0 );
    kd_get : in STD_LOGIC;
    kd_address : in STD_LOGIC_VECTOR ( 13 downto 0 );
    res_add : out STD_LOGIC;
    res_sub : out STD_LOGIC;
    current : out STD_LOGIC_VECTOR ( 13 downto 0 );
    kd_valid : out STD_LOGIC;
    kd_value : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component c_mat_fast_ip_count_mat_fast_0_0;
  signal c_mat_fast_0_res_add : STD_LOGIC;
  signal c_mat_fast_0_res_sub : STD_LOGIC;
  signal c_shift_ram_2_Q : STD_LOGIC_VECTOR ( 0 to 0 );
  signal c_shift_ram_3_Q : STD_LOGIC_VECTOR ( 0 to 0 );
  signal c_shift_ram_4_Q : STD_LOGIC_VECTOR ( 0 to 0 );
  signal c_shift_ram_5_Q : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal c_shift_ram_6_Q : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_1 : STD_LOGIC;
  signal count_mat_fast_0_current : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal count_mat_fast_0_kd_valid : STD_LOGIC;
  signal count_mat_fast_0_kd_value : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal din_1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal fifo_generator_0_prog_full : STD_LOGIC;
  signal fifo_generator_0_valid : STD_LOGIC;
  signal kd_address_1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal kd_get_1 : STD_LOGIC;
  signal rst_1 : STD_LOGIC;
  signal sim_ff_0_Q : STD_LOGIC;
  signal simple_counter_0_full : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_2_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_3_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_4_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_5_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_6_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal wr_en_1 : STD_LOGIC;
  signal NLW_fifo_generator_0_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_0_full_UNCONNECTED : STD_LOGIC;
begin
  busy(0) <= util_vector_logic_5_Res(0);
  clk_1 <= clk;
  current(13 downto 0) <= count_mat_fast_0_current(13 downto 0);
  din_1(13 downto 0) <= din(13 downto 0);
  full <= simple_counter_0_full;
  kd_address_1(13 downto 0) <= kd_address(13 downto 0);
  kd_get_1 <= kd_get;
  kd_start(0) <= c_shift_ram_6_Q(0);
  kd_valid <= count_mat_fast_0_kd_valid;
  kd_value(11 downto 0) <= count_mat_fast_0_kd_value(11 downto 0);
  rst_1 <= rst;
  wr_en_1 <= wr_en;
c_shift_ram_2: component c_mat_fast_ip_c_shift_ram_2_0
     port map (
      CLK => clk_1,
      D(0) => c_shift_ram_3_Q(0),
      Q(0) => c_shift_ram_2_Q(0)
    );
c_shift_ram_3: component c_mat_fast_ip_c_shift_ram_3_0
     port map (
      CLK => clk_1,
      D(0) => wr_en_1,
      Q(0) => c_shift_ram_3_Q(0)
    );
c_shift_ram_4: component c_mat_fast_ip_c_shift_ram_4_0
     port map (
      CLK => clk_1,
      D(0) => fifo_generator_0_valid,
      Q(0) => c_shift_ram_4_Q(0)
    );
c_shift_ram_5: component c_mat_fast_ip_c_shift_ram_5_0
     port map (
      CLK => clk_1,
      D(13 downto 0) => fifo_generator_0_dout(13 downto 0),
      Q(13 downto 0) => c_shift_ram_5_Q(13 downto 0)
    );
c_shift_ram_6: component c_mat_fast_ip_c_shift_ram_6_0
     port map (
      CLK => clk_1,
      D(0) => util_vector_logic_2_Res(0),
      Q(0) => c_shift_ram_6_Q(0)
    );
count_mat_fast_0: component c_mat_fast_ip_count_mat_fast_0_0
     port map (
      address_add(13 downto 0) => din_1(13 downto 0),
      address_sub(13 downto 0) => c_shift_ram_5_Q(13 downto 0),
      clk => clk_1,
      current(13 downto 0) => count_mat_fast_0_current(13 downto 0),
      kd_address(13 downto 0) => kd_address_1(13 downto 0),
      kd_get => kd_get_1,
      kd_valid => count_mat_fast_0_kd_valid,
      kd_value(11 downto 0) => count_mat_fast_0_kd_value(11 downto 0),
      res_add => c_mat_fast_0_res_add,
      res_sub => c_mat_fast_0_res_sub,
      we_add => c_shift_ram_3_Q(0),
      we_sub => c_shift_ram_4_Q(0)
    );
fifo_generator_0: component c_mat_fast_ip_fifo_generator_0_0
     port map (
      clk => clk_1,
      din(13 downto 0) => din_1(13 downto 0),
      dout(13 downto 0) => fifo_generator_0_dout(13 downto 0),
      empty => NLW_fifo_generator_0_empty_UNCONNECTED,
      full => NLW_fifo_generator_0_full_UNCONNECTED,
      prog_full => fifo_generator_0_prog_full,
      rd_en => util_vector_logic_0_Res(0),
      rst => rst_1,
      valid => fifo_generator_0_valid,
      wr_en => c_shift_ram_3_Q(0)
    );
sim_ff_0: component c_mat_fast_ip_sim_ff_0_0
     port map (
      D => util_vector_logic_6_Res(0),
      Q => sim_ff_0_Q,
      clk => clk_1,
      rst => c_shift_ram_6_Q(0)
    );
simple_counter_0: component c_mat_fast_ip_simple_counter_0_0
     port map (
      clk => clk_1,
      clr => rst_1,
      count => c_shift_ram_3_Q(0),
      full => simple_counter_0_full
    );
util_vector_logic_0: component c_mat_fast_ip_util_vector_logic_0_0
     port map (
      Op1(0) => c_shift_ram_2_Q(0),
      Op2(0) => fifo_generator_0_prog_full,
      Res(0) => util_vector_logic_0_Res(0)
    );
util_vector_logic_1: component c_mat_fast_ip_util_vector_logic_1_0
     port map (
      Op1(0) => c_mat_fast_0_res_add,
      Op2(0) => simple_counter_0_full,
      Res(0) => util_vector_logic_1_Res(0)
    );
util_vector_logic_2: component c_mat_fast_ip_util_vector_logic_2_0
     port map (
      Op1(0) => c_mat_fast_0_res_sub,
      Op2(0) => util_vector_logic_3_Res(0),
      Res(0) => util_vector_logic_2_Res(0)
    );
util_vector_logic_3: component c_mat_fast_ip_util_vector_logic_3_0
     port map (
      Op1(0) => util_vector_logic_1_Res(0),
      Op2(0) => util_vector_logic_4_Res(0),
      Res(0) => util_vector_logic_3_Res(0)
    );
util_vector_logic_4: component c_mat_fast_ip_util_vector_logic_4_0
     port map (
      Op1(0) => fifo_generator_0_prog_full,
      Res(0) => util_vector_logic_4_Res(0)
    );
util_vector_logic_5: component c_mat_fast_ip_util_vector_logic_2_1
     port map (
      Op1(0) => c_shift_ram_3_Q(0),
      Op2(0) => sim_ff_0_Q,
      Res(0) => util_vector_logic_5_Res(0)
    );
util_vector_logic_6: component c_mat_fast_ip_util_vector_logic_3_1
     port map (
      Op1(0) => c_shift_ram_3_Q(0),
      Op2(0) => simple_counter_0_full,
      Res(0) => util_vector_logic_6_Res(0)
    );
end STRUCTURE;
