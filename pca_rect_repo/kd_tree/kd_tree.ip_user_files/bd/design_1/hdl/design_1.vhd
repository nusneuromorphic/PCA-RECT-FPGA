--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
--Date        : Mon May 28 21:40:34 2018
--Host        : mmrl01.ee.nus.edu.sg running 64-bit CentOS Linux release 7.4.1708 (Core)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    address_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    center_addr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    clk : in STD_LOGIC;
    ena : in STD_LOGIC;
    get_addr : out STD_LOGIC;
    is_full : in STD_LOGIC;
    kd_ready_o : out STD_LOGIC;
    valid_bin : out STD_LOGIC;
    valid_desc : in STD_LOGIC;
    valid_input : in STD_LOGIC;
    wr_ack : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component design_1_blk_mem_gen_0_0;
  component design_1_kd_tree_0_0 is
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
  end component design_1_kd_tree_0_0;
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal center_addr_1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal ena_1 : STD_LOGIC;
  signal is_full_1 : STD_LOGIC;
  signal kd_tree_0_address_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal kd_tree_0_address_to_get : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal kd_tree_0_get_addr : STD_LOGIC;
  signal kd_tree_0_kd_ready_o : STD_LOGIC;
  signal kd_tree_0_valid_bin : STD_LOGIC;
  signal valid_desc_1 : STD_LOGIC;
  signal valid_input_1 : STD_LOGIC;
  signal wr_ack_1 : STD_LOGIC;
begin
  address_out(11 downto 0) <= kd_tree_0_address_out(11 downto 0);
  center_addr_1(13 downto 0) <= center_addr(13 downto 0);
  clk_1 <= clk;
  ena_1 <= ena;
  get_addr <= kd_tree_0_get_addr;
  is_full_1 <= is_full;
  kd_ready_o <= kd_tree_0_kd_ready_o;
  valid_bin <= kd_tree_0_valid_bin;
  valid_desc_1 <= valid_desc;
  valid_input_1 <= valid_input;
  wr_ack_1 <= wr_ack;
blk_mem_gen_0: component design_1_blk_mem_gen_0_0
     port map (
      addra(13 downto 0) => kd_tree_0_address_to_get(13 downto 0),
      clka => clk_1,
      douta(11 downto 0) => blk_mem_gen_0_douta(11 downto 0),
      ena => ena_1
    );
kd_tree_0: component design_1_kd_tree_0_0
     port map (
      address_out(11 downto 0) => kd_tree_0_address_out(11 downto 0),
      address_to_get(13 downto 0) => kd_tree_0_address_to_get(13 downto 0),
      center_addr(13 downto 0) => center_addr_1(13 downto 0),
      clk => clk_1,
      desc(11 downto 0) => blk_mem_gen_0_douta(11 downto 0),
      ena => ena_1,
      get_addr => kd_tree_0_get_addr,
      is_full => is_full_1,
      kd_ready_o => kd_tree_0_kd_ready_o,
      valid_bin => kd_tree_0_valid_bin,
      valid_desc => valid_desc_1,
      valid_input => valid_input_1,
      wr_ack => wr_ack_1
    );
end STRUCTURE;
