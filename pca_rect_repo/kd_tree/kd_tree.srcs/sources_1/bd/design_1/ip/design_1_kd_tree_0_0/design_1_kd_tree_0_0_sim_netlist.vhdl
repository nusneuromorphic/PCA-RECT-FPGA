-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Mon May 28 21:43:25 2018
-- Host        : mmrl01.ee.nus.edu.sg running 64-bit CentOS Linux release 7.4.1708 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /neuromorphic/home_dirs/andres/workspace/RECOG_KEN/kd_tree/kd_tree.srcs/sources_1/bd/design_1/ip/design_1_kd_tree_0_0/design_1_kd_tree_0_0_sim_netlist.vhdl
-- Design      : design_1_kd_tree_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_kd_tree_0_0_kd_tree is
  port (
    get_addr : out STD_LOGIC;
    address_to_get : out STD_LOGIC_VECTOR ( 13 downto 0 );
    valid_bin : out STD_LOGIC;
    address_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    kd_ready_o : out STD_LOGIC;
    wr_ack : in STD_LOGIC;
    valid_desc : in STD_LOGIC;
    is_full : in STD_LOGIC;
    center_addr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    desc : in STD_LOGIC_VECTOR ( 11 downto 0 );
    clk : in STD_LOGIC;
    valid_input : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_kd_tree_0_0_kd_tree : entity is "kd_tree";
end design_1_kd_tree_0_0_kd_tree;

architecture STRUCTURE of design_1_kd_tree_0_0_kd_tree is
  signal R : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal address_to_get0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \address_to_get[10]_i_2_n_0\ : STD_LOGIC;
  signal \address_to_get[10]_i_3_n_0\ : STD_LOGIC;
  signal \address_to_get[10]_i_4_n_0\ : STD_LOGIC;
  signal \address_to_get[10]_i_5_n_0\ : STD_LOGIC;
  signal \address_to_get[10]_i_6_n_0\ : STD_LOGIC;
  signal \address_to_get[13]_i_2_n_0\ : STD_LOGIC;
  signal \address_to_get[13]_i_3_n_0\ : STD_LOGIC;
  signal \address_to_get[13]_i_4_n_0\ : STD_LOGIC;
  signal \address_to_get[3]_i_2_n_0\ : STD_LOGIC;
  signal \address_to_get[3]_i_3_n_0\ : STD_LOGIC;
  signal \address_to_get[3]_i_4_n_0\ : STD_LOGIC;
  signal \address_to_get[3]_i_5_n_0\ : STD_LOGIC;
  signal \address_to_get[3]_i_6_n_0\ : STD_LOGIC;
  signal \address_to_get[6]_i_2_n_0\ : STD_LOGIC;
  signal \address_to_get[6]_i_3_n_0\ : STD_LOGIC;
  signal \address_to_get[6]_i_4_n_0\ : STD_LOGIC;
  signal \address_to_get_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \address_to_get_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \address_to_get_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \address_to_get_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \address_to_get_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \address_to_get_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \address_to_get_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \address_to_get_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \address_to_get_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \address_to_get_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \address_to_get_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \address_to_get_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \address_to_get_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \address_to_get_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \address_to_get_reg[6]_i_1_n_2\ : STD_LOGIC;
  signal \address_to_get_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \address_to_get_reg[6]_i_1_n_5\ : STD_LOGIC;
  signal \address_to_get_reg[6]_i_1_n_6\ : STD_LOGIC;
  signal \address_to_get_reg[6]_i_1_n_7\ : STD_LOGIC;
  signal current_level : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \current_level[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_level[10]_i_1_n_0\ : STD_LOGIC;
  signal \current_level[10]_i_2_n_0\ : STD_LOGIC;
  signal current_level_1 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal data4 : STD_LOGIC;
  signal dina_reg_0_i_10_n_0 : STD_LOGIC;
  signal dina_reg_0_i_11_n_0 : STD_LOGIC;
  signal dina_reg_0_i_12_n_0 : STD_LOGIC;
  signal dina_reg_0_i_14_n_0 : STD_LOGIC;
  signal dina_reg_0_i_15_n_0 : STD_LOGIC;
  signal dina_reg_0_i_1_n_0 : STD_LOGIC;
  signal dina_reg_0_i_3_n_0 : STD_LOGIC;
  signal dina_reg_0_i_4_n_0 : STD_LOGIC;
  signal dina_reg_0_i_5_n_0 : STD_LOGIC;
  signal dina_reg_0_i_6_n_0 : STD_LOGIC;
  signal dina_reg_0_i_7_n_0 : STD_LOGIC;
  signal dina_reg_0_i_8_n_0 : STD_LOGIC;
  signal dina_reg_0_i_9_n_0 : STD_LOGIC;
  signal dina_reg_0_n_37 : STD_LOGIC;
  signal dina_reg_0_n_38 : STD_LOGIC;
  signal dina_reg_0_n_39 : STD_LOGIC;
  signal dina_reg_0_n_40 : STD_LOGIC;
  signal dina_reg_0_n_47 : STD_LOGIC;
  signal dina_reg_0_n_48 : STD_LOGIC;
  signal dina_reg_0_n_49 : STD_LOGIC;
  signal dina_reg_0_n_50 : STD_LOGIC;
  signal dina_reg_0_n_51 : STD_LOGIC;
  signal dina_reg_0_n_52 : STD_LOGIC;
  signal dina_reg_0_n_87 : STD_LOGIC;
  signal dina_reg_0_n_88 : STD_LOGIC;
  signal dina_reg_1_n_37 : STD_LOGIC;
  signal dina_reg_1_n_38 : STD_LOGIC;
  signal dina_reg_1_n_39 : STD_LOGIC;
  signal dina_reg_1_n_40 : STD_LOGIC;
  signal dina_reg_1_n_41 : STD_LOGIC;
  signal dina_reg_1_n_42 : STD_LOGIC;
  signal dina_reg_1_n_43 : STD_LOGIC;
  signal dina_reg_1_n_44 : STD_LOGIC;
  signal dina_reg_1_n_45 : STD_LOGIC;
  signal dina_reg_1_n_46 : STD_LOGIC;
  signal dina_reg_1_n_47 : STD_LOGIC;
  signal dina_reg_1_n_48 : STD_LOGIC;
  signal dina_reg_1_n_49 : STD_LOGIC;
  signal dina_reg_1_n_50 : STD_LOGIC;
  signal dina_reg_1_n_51 : STD_LOGIC;
  signal dina_reg_1_n_52 : STD_LOGIC;
  signal dina_reg_1_n_87 : STD_LOGIC;
  signal dina_reg_1_n_88 : STD_LOGIC;
  signal dina_reg_2_n_37 : STD_LOGIC;
  signal dina_reg_2_n_38 : STD_LOGIC;
  signal dina_reg_2_n_39 : STD_LOGIC;
  signal dina_reg_2_n_41 : STD_LOGIC;
  signal dina_reg_2_n_42 : STD_LOGIC;
  signal dina_reg_2_n_43 : STD_LOGIC;
  signal dina_reg_2_n_44 : STD_LOGIC;
  signal dina_reg_2_n_45 : STD_LOGIC;
  signal dina_reg_2_n_46 : STD_LOGIC;
  signal dina_reg_2_n_47 : STD_LOGIC;
  signal dina_reg_2_n_48 : STD_LOGIC;
  signal dina_reg_2_n_49 : STD_LOGIC;
  signal dina_reg_2_n_50 : STD_LOGIC;
  signal dina_reg_2_n_51 : STD_LOGIC;
  signal dina_reg_2_n_52 : STD_LOGIC;
  signal dina_reg_2_n_87 : STD_LOGIC;
  signal dina_reg_2_n_88 : STD_LOGIC;
  signal down_a_level_i_1_n_0 : STD_LOGIC;
  signal down_a_level_reg_n_0 : STD_LOGIC;
  signal kd_ready_i_1_n_0 : STD_LOGIC;
  signal kd_ready_i_2_n_0 : STD_LOGIC;
  signal kd_ready_i_3_n_0 : STD_LOGIC;
  signal kd_ready_i_4_n_0 : STD_LOGIC;
  signal \^kd_ready_o\ : STD_LOGIC;
  signal \leqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \leqOp_carry__0_n_3\ : STD_LOGIC;
  signal leqOp_carry_i_1_n_0 : STD_LOGIC;
  signal leqOp_carry_i_2_n_0 : STD_LOGIC;
  signal leqOp_carry_i_3_n_0 : STD_LOGIC;
  signal leqOp_carry_i_4_n_0 : STD_LOGIC;
  signal leqOp_carry_i_5_n_0 : STD_LOGIC;
  signal leqOp_carry_i_6_n_0 : STD_LOGIC;
  signal leqOp_carry_i_7_n_0 : STD_LOGIC;
  signal leqOp_carry_n_0 : STD_LOGIC;
  signal leqOp_carry_n_1 : STD_LOGIC;
  signal leqOp_carry_n_2 : STD_LOGIC;
  signal leqOp_carry_n_3 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal sel : STD_LOGIC_VECTOR ( 0 to 0 );
  signal valid : STD_LOGIC;
  signal valid_0 : STD_LOGIC;
  signal valid_bin_i_1_n_0 : STD_LOGIC;
  signal valid_i_1_n_0 : STD_LOGIC;
  signal \NLW_address_to_get_reg[13]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_address_to_get_reg[13]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_address_to_get_reg[6]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_address_to_get_reg[6]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_dina_reg_0_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_0_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_0_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_0_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_0_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_0_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_0_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_dina_reg_0_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_dina_reg_0_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_dina_reg_0_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dina_reg_0_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_dina_reg_0_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_dina_reg_1_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_1_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_1_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_1_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_1_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_1_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_1_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_dina_reg_1_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_dina_reg_1_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_dina_reg_1_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dina_reg_1_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_dina_reg_1_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_dina_reg_2_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_2_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_2_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_2_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_2_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_2_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_dina_reg_2_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal NLW_dina_reg_2_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_dina_reg_2_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_dina_reg_2_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_dina_reg_2_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_dina_reg_2_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_leqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_leqOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_leqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of dina_reg_0 : label is "INDEPENDENT";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of dina_reg_0 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of dina_reg_0 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of dina_reg_0 : label is 131072;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of dina_reg_0 : label is "U0/dina";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of dina_reg_0 : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of dina_reg_0 : label is 2047;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of dina_reg_0 : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of dina_reg_0 : label is 17;
  attribute CLOCK_DOMAINS of dina_reg_1 : label is "INDEPENDENT";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of dina_reg_1 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of dina_reg_1 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of dina_reg_1 : label is 131072;
  attribute RTL_RAM_NAME of dina_reg_1 : label is "U0/dina";
  attribute bram_addr_begin of dina_reg_1 : label is 0;
  attribute bram_addr_end of dina_reg_1 : label is 2047;
  attribute bram_slice_begin of dina_reg_1 : label is 18;
  attribute bram_slice_end of dina_reg_1 : label is 35;
  attribute CLOCK_DOMAINS of dina_reg_2 : label is "INDEPENDENT";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of dina_reg_2 : label is "p2_d16";
  attribute METHODOLOGY_DRC_VIOS of dina_reg_2 : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS of dina_reg_2 : label is 131072;
  attribute RTL_RAM_NAME of dina_reg_2 : label is "U0/dina";
  attribute bram_addr_begin of dina_reg_2 : label is 0;
  attribute bram_addr_end of dina_reg_2 : label is 2047;
  attribute bram_slice_begin of dina_reg_2 : label is 36;
  attribute bram_slice_end of dina_reg_2 : label is 53;
begin
  kd_ready_o <= \^kd_ready_o\;
\address_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_bin_i_1_n_0,
      D => dina_reg_0_n_40,
      Q => address_out(0),
      R => '0'
    );
\address_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_bin_i_1_n_0,
      D => dina_reg_1_n_48,
      Q => address_out(10),
      R => '0'
    );
\address_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_bin_i_1_n_0,
      D => dina_reg_1_n_47,
      Q => address_out(11),
      R => '0'
    );
\address_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_bin_i_1_n_0,
      D => dina_reg_0_n_39,
      Q => address_out(1),
      R => '0'
    );
\address_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_bin_i_1_n_0,
      D => dina_reg_0_n_38,
      Q => address_out(2),
      R => '0'
    );
\address_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_bin_i_1_n_0,
      D => dina_reg_0_n_37,
      Q => address_out(3),
      R => '0'
    );
\address_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_bin_i_1_n_0,
      D => dina_reg_0_n_88,
      Q => address_out(4),
      R => '0'
    );
\address_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_bin_i_1_n_0,
      D => dina_reg_0_n_87,
      Q => address_out(5),
      R => '0'
    );
\address_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_bin_i_1_n_0,
      D => dina_reg_1_n_52,
      Q => address_out(6),
      R => '0'
    );
\address_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_bin_i_1_n_0,
      D => dina_reg_1_n_51,
      Q => address_out(7),
      R => '0'
    );
\address_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_bin_i_1_n_0,
      D => dina_reg_1_n_50,
      Q => address_out(8),
      R => '0'
    );
\address_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => valid_bin_i_1_n_0,
      D => dina_reg_1_n_49,
      Q => address_out(9),
      R => '0'
    );
\address_to_get[10]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dina_reg_0_n_50,
      O => \address_to_get[10]_i_2_n_0\
    );
\address_to_get[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dina_reg_0_n_50,
      I1 => center_addr(10),
      O => \address_to_get[10]_i_3_n_0\
    );
\address_to_get[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dina_reg_0_n_50,
      I1 => center_addr(9),
      O => \address_to_get[10]_i_4_n_0\
    );
\address_to_get[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => center_addr(8),
      I1 => dina_reg_0_n_51,
      O => \address_to_get[10]_i_5_n_0\
    );
\address_to_get[10]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => center_addr(7),
      I1 => dina_reg_0_n_52,
      O => \address_to_get[10]_i_6_n_0\
    );
\address_to_get[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => center_addr(12),
      I1 => center_addr(13),
      O => \address_to_get[13]_i_2_n_0\
    );
\address_to_get[13]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => center_addr(11),
      I1 => center_addr(12),
      O => \address_to_get[13]_i_3_n_0\
    );
\address_to_get[13]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => center_addr(10),
      I1 => center_addr(11),
      O => \address_to_get[13]_i_4_n_0\
    );
\address_to_get[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dina_reg_0_n_47,
      O => \address_to_get[3]_i_2_n_0\
    );
\address_to_get[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dina_reg_0_n_47,
      I1 => center_addr(3),
      O => \address_to_get[3]_i_3_n_0\
    );
\address_to_get[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dina_reg_0_n_47,
      I1 => center_addr(2),
      O => \address_to_get[3]_i_4_n_0\
    );
\address_to_get[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => center_addr(1),
      I1 => dina_reg_0_n_48,
      O => \address_to_get[3]_i_5_n_0\
    );
\address_to_get[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => center_addr(0),
      I1 => dina_reg_0_n_49,
      O => \address_to_get[3]_i_6_n_0\
    );
\address_to_get[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => center_addr(5),
      I1 => center_addr(6),
      O => \address_to_get[6]_i_2_n_0\
    );
\address_to_get[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => center_addr(4),
      I1 => center_addr(5),
      O => \address_to_get[6]_i_3_n_0\
    );
\address_to_get[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => center_addr(3),
      I1 => center_addr(4),
      O => \address_to_get[6]_i_4_n_0\
    );
\address_to_get_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_to_get_reg[3]_i_1_n_7\,
      Q => address_to_get(0),
      R => '0'
    );
\address_to_get_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => address_to_get0(3),
      Q => address_to_get(10),
      R => '0'
    );
\address_to_get_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \address_to_get_reg[10]_i_1_n_0\,
      CO(2) => \address_to_get_reg[10]_i_1_n_1\,
      CO(1) => \address_to_get_reg[10]_i_1_n_2\,
      CO(0) => \address_to_get_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \address_to_get[10]_i_2_n_0\,
      DI(2) => dina_reg_0_n_50,
      DI(1 downto 0) => center_addr(8 downto 7),
      O(3 downto 0) => address_to_get0(3 downto 0),
      S(3) => \address_to_get[10]_i_3_n_0\,
      S(2) => \address_to_get[10]_i_4_n_0\,
      S(1) => \address_to_get[10]_i_5_n_0\,
      S(0) => \address_to_get[10]_i_6_n_0\
    );
\address_to_get_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => address_to_get0(4),
      Q => address_to_get(11),
      R => '0'
    );
\address_to_get_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => address_to_get0(5),
      Q => address_to_get(12),
      R => '0'
    );
\address_to_get_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => address_to_get0(6),
      Q => address_to_get(13),
      R => '0'
    );
\address_to_get_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_to_get_reg[10]_i_1_n_0\,
      CO(3 downto 2) => \NLW_address_to_get_reg[13]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \address_to_get_reg[13]_i_1_n_2\,
      CO(0) => \address_to_get_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => center_addr(11 downto 10),
      O(3) => \NLW_address_to_get_reg[13]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => address_to_get0(6 downto 4),
      S(3) => '0',
      S(2) => \address_to_get[13]_i_2_n_0\,
      S(1) => \address_to_get[13]_i_3_n_0\,
      S(0) => \address_to_get[13]_i_4_n_0\
    );
\address_to_get_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_to_get_reg[3]_i_1_n_6\,
      Q => address_to_get(1),
      R => '0'
    );
\address_to_get_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_to_get_reg[3]_i_1_n_5\,
      Q => address_to_get(2),
      R => '0'
    );
\address_to_get_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_to_get_reg[3]_i_1_n_4\,
      Q => address_to_get(3),
      R => '0'
    );
\address_to_get_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \address_to_get_reg[3]_i_1_n_0\,
      CO(2) => \address_to_get_reg[3]_i_1_n_1\,
      CO(1) => \address_to_get_reg[3]_i_1_n_2\,
      CO(0) => \address_to_get_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \address_to_get[3]_i_2_n_0\,
      DI(2) => dina_reg_0_n_47,
      DI(1 downto 0) => center_addr(1 downto 0),
      O(3) => \address_to_get_reg[3]_i_1_n_4\,
      O(2) => \address_to_get_reg[3]_i_1_n_5\,
      O(1) => \address_to_get_reg[3]_i_1_n_6\,
      O(0) => \address_to_get_reg[3]_i_1_n_7\,
      S(3) => \address_to_get[3]_i_3_n_0\,
      S(2) => \address_to_get[3]_i_4_n_0\,
      S(1) => \address_to_get[3]_i_5_n_0\,
      S(0) => \address_to_get[3]_i_6_n_0\
    );
\address_to_get_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_to_get_reg[6]_i_1_n_7\,
      Q => address_to_get(4),
      R => '0'
    );
\address_to_get_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_to_get_reg[6]_i_1_n_6\,
      Q => address_to_get(5),
      R => '0'
    );
\address_to_get_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \address_to_get_reg[6]_i_1_n_5\,
      Q => address_to_get(6),
      R => '0'
    );
\address_to_get_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_to_get_reg[3]_i_1_n_0\,
      CO(3 downto 2) => \NLW_address_to_get_reg[6]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \address_to_get_reg[6]_i_1_n_2\,
      CO(0) => \address_to_get_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => center_addr(4 downto 3),
      O(3) => \NLW_address_to_get_reg[6]_i_1_O_UNCONNECTED\(3),
      O(2) => \address_to_get_reg[6]_i_1_n_5\,
      O(1) => \address_to_get_reg[6]_i_1_n_6\,
      O(0) => \address_to_get_reg[6]_i_1_n_7\,
      S(3) => '0',
      S(2) => \address_to_get[6]_i_2_n_0\,
      S(1) => \address_to_get[6]_i_3_n_0\,
      S(0) => \address_to_get[6]_i_4_n_0\
    );
\address_to_get_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => address_to_get0(0),
      Q => address_to_get(7),
      R => '0'
    );
\address_to_get_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => address_to_get0(1),
      Q => address_to_get(8),
      R => '0'
    );
\address_to_get_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => address_to_get0(2),
      Q => address_to_get(9),
      R => '0'
    );
\current_level[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0F0F0B8B8F0F0"
    )
        port map (
      I0 => current_level(0),
      I1 => kd_ready_i_3_n_0,
      I2 => current_level_1(0),
      I3 => p_1_in,
      I4 => is_full,
      I5 => valid_desc,
      O => \current_level[0]_i_1_n_0\
    );
\current_level[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA222A288800080"
    )
        port map (
      I0 => is_full,
      I1 => valid_desc,
      I2 => dina_reg_1_n_46,
      I3 => data4,
      I4 => dina_reg_2_n_52,
      I5 => valid_input,
      O => current_level_1(0)
    );
\current_level[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F757"
    )
        port map (
      I0 => is_full,
      I1 => kd_ready_i_3_n_0,
      I2 => valid_desc,
      I3 => p_1_in,
      O => \current_level[10]_i_1_n_0\
    );
\current_level[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => valid_desc,
      I1 => kd_ready_i_3_n_0,
      O => \current_level[10]_i_2_n_0\
    );
\current_level[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => valid_desc,
      I1 => dina_reg_1_n_88,
      I2 => data4,
      I3 => dina_reg_2_n_42,
      O => current_level_1(10)
    );
\current_level[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => valid_desc,
      I1 => dina_reg_1_n_45,
      I2 => data4,
      I3 => dina_reg_2_n_51,
      O => current_level_1(1)
    );
\current_level[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => valid_desc,
      I1 => dina_reg_1_n_44,
      I2 => data4,
      I3 => dina_reg_2_n_50,
      O => current_level_1(2)
    );
\current_level[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => valid_desc,
      I1 => dina_reg_1_n_43,
      I2 => data4,
      I3 => dina_reg_2_n_49,
      O => current_level_1(3)
    );
\current_level[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => valid_desc,
      I1 => dina_reg_1_n_42,
      I2 => data4,
      I3 => dina_reg_2_n_48,
      O => current_level_1(4)
    );
\current_level[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => valid_desc,
      I1 => dina_reg_1_n_41,
      I2 => data4,
      I3 => dina_reg_2_n_47,
      O => current_level_1(5)
    );
\current_level[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => valid_desc,
      I1 => dina_reg_1_n_40,
      I2 => data4,
      I3 => dina_reg_2_n_46,
      O => current_level_1(6)
    );
\current_level[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => valid_desc,
      I1 => dina_reg_1_n_39,
      I2 => data4,
      I3 => dina_reg_2_n_45,
      O => current_level_1(7)
    );
\current_level[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => valid_desc,
      I1 => dina_reg_1_n_38,
      I2 => data4,
      I3 => dina_reg_2_n_44,
      O => current_level_1(8)
    );
\current_level[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => valid_desc,
      I1 => dina_reg_1_n_37,
      I2 => data4,
      I3 => dina_reg_2_n_43,
      O => current_level_1(9)
    );
\current_level_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \current_level[0]_i_1_n_0\,
      Q => current_level(0),
      R => '0'
    );
\current_level_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_level[10]_i_2_n_0\,
      D => current_level_1(10),
      Q => current_level(10),
      R => \current_level[10]_i_1_n_0\
    );
\current_level_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_level[10]_i_2_n_0\,
      D => current_level_1(1),
      Q => current_level(1),
      R => \current_level[10]_i_1_n_0\
    );
\current_level_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_level[10]_i_2_n_0\,
      D => current_level_1(2),
      Q => current_level(2),
      R => \current_level[10]_i_1_n_0\
    );
\current_level_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_level[10]_i_2_n_0\,
      D => current_level_1(3),
      Q => current_level(3),
      R => \current_level[10]_i_1_n_0\
    );
\current_level_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_level[10]_i_2_n_0\,
      D => current_level_1(4),
      Q => current_level(4),
      R => \current_level[10]_i_1_n_0\
    );
\current_level_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_level[10]_i_2_n_0\,
      D => current_level_1(5),
      Q => current_level(5),
      R => \current_level[10]_i_1_n_0\
    );
\current_level_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_level[10]_i_2_n_0\,
      D => current_level_1(6),
      Q => current_level(6),
      R => \current_level[10]_i_1_n_0\
    );
\current_level_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_level[10]_i_2_n_0\,
      D => current_level_1(7),
      Q => current_level(7),
      R => \current_level[10]_i_1_n_0\
    );
\current_level_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_level[10]_i_2_n_0\,
      D => current_level_1(8),
      Q => current_level(8),
      R => \current_level[10]_i_1_n_0\
    );
\current_level_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \current_level[10]_i_2_n_0\,
      D => current_level_1(9),
      Q => current_level(9),
      R => \current_level[10]_i_1_n_0\
    );
dina_reg_0: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"000C0634071C10F00A010C020C0528007C04E0302020C02C0E30090430000000",
      INITP_01 => X"F05000006434B0390318015000807240400011092C0F0014E006C387034A053C",
      INITP_02 => X"040E00046000342C20001053800C0B080A2024C000900340B2830700242CD018",
      INITP_03 => X"0A810000830E100001C09340281C2002424F02410E18004C1CD03C2082C03E0B",
      INITP_04 => X"070000A02000E24009000F408402040C2C00E0E380E1438500280028081438C0",
      INITP_05 => X"7028A0110023083C070420100015072007034900301430308092400D404A008D",
      INITP_06 => X"01C0A38042C0C400E800D01450C18002E0F1C0080C8003C3CC0040000C003024",
      INITP_07 => X"046000A0B200E3C184009818500880D100000EC10C0120100030051C02081C00",
      INITP_08 => X"01CD0A00007C089010C08180090214063C30E000AC30103C80204029001C0234",
      INITP_09 => X"E80C500840D1800B4042030E0B3403C061C05141C60001009040942C0004C182",
      INITP_0A => X"0100360E1C0B3828900080D04051C1870004386030F0B10002D0F04063C18600",
      INITP_0B => X"0D302C9000814601000A3800DC2CF02490A100310A38070820C0000D824600E0",
      INITP_0C => X"E83C90230A30018053803000C500240C1C0E1838000CC1810143083800260F0C",
      INITP_0D => X"CA000941CE0040808020031C0E1000B00330100062814000E000603480E2C000",
      INITP_0E => X"AAAAAAAAAAA3043C0E810E006810C000C0328004438703440D3C02D05140B181",
      INITP_0F => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      INIT_00 => X"000D1038E03800784038903800380077000D003A004B006A0100009700750141",
      INIT_01 => X"000F00FBD01ED01E009E200510050085001E007AD00D000D004DD02880280068",
      INIT_02 => X"F00BC00B008B0052501800180058A012D01200120018004B004EF00F200FA00F",
      INIT_03 => X"F01A101AB01A005A010EB00FA00F00CFB00BA00B00CB0038001AE00B200B010B",
      INIT_04 => X"E0020142D011901100510042303EA03E00FE2029E0290069007E0042001B00FB",
      INIT_05 => X"00D3016AA01B101B001B00DB00DA2029E029012970318031007100E9009B9002",
      INIT_06 => X"0083005AE02BF02B01AB30285028006801B37030E03000B0700A300A00CA0068",
      INIT_07 => X"00F9002F005200B10180603BA03BA03B013B02124033503301B3302980290069",
      INIT_08 => X"002E004A00D2202FB02F012F2005E0050005002F100940090009200E800E004E",
      INIT_09 => X"8032D032007200F100730046A0124012A01200D20252602A402A002A602E002E",
      INIT_0A => X"012A900570050085006A002FF01290120012B015301500550132E029D0290169",
      INIT_0B => X"502F00EFC030003000300077002A010601C0603E003E803E003E002F502AE02A",
      INIT_0C => X"400F800F00CF102B102B002B004A01B8503B803B007B500260020002005B502F",
      INIT_0D => X"003A00B700324032007220066006004601C501300240400D100D700D004D0070",
      INIT_0E => X"D02FB02F102F002F04C0D03270320032B0186018009800320280303AE03A303A",
      INIT_0F => X"701E501E005E0158400D900D004D000670060046005500980117004A0170005B",
      INIT_10 => X"7039B039E039003901C7D03670360076600F300F014F007E0137F029A0290069",
      INIT_11 => X"3005000500055033E033007300505029B0290029801E301E001E010800D500CA",
      INIT_12 => X"002B018E0158C003D003D0030083014E801FC01F00DFC00BF00B008B014B008D",
      INIT_13 => X"002A026F4029E02900A9D00F100F00CF00AB6037303700B73038903801B8007F",
      INIT_14 => X"D017011702180268005EA0377037A0370237027E702A002A002A103FF03F00FF",
      INIT_15 => X"C0292029006901E901DED00FE00F00CF703A003A003A02D87018B01802181017",
      INIT_16 => X"A012101200D2003800CD0188007F011B2037C0372037023702973039603900F9",
      INIT_17 => X"006B200830080188002B0155101890180058400D000D018D0018B038F0380078",
      INIT_18 => X"201DF01D009D0011F01100D1005E00CF00B7C008200820080208005EE02B802B",
      INIT_19 => X"032FB008B0080208B015001501150090009FF039C0390039E00F700F010F0092",
      INIT_1A => X"00C8018B902AD02A006A301730170117006A019000D801D5702FB02FA02F00AF",
      INIT_1B => X"B0180118007B0011401100D1301330130113021B0073B011C01101D1A008A008",
      INIT_1C => X"C0106010E010025004578018E0180098100D000D00CD01D1020A015E40187018",
      INIT_1D => X"008800960135801DE01D901D00DD0351400630060086F015D01502150037020D",
      INIT_1E => X"101E005EC00390030043005E003D703D00BDB03160310071006A001E012E0138",
      INIT_1F => X"006A00FA20338033503300B3022E9033003300737037F037007700EF00EAA01E",
      INIT_20 => X"017201BBA03F803F01BFB03E503E007E00F1B01F101F005F9005500500C5005E",
      INIT_21 => X"000500030033010A00D0C02970297029006902BF103A703A013A102B902B002B",
      INIT_22 => X"700600860105008D4036103600F6E006900600460076900340030043C005C005",
      INIT_23 => X"010AA02EC02E006E000A011A01D060315031903100B1020DB00FC00F00CF1006",
      INIT_24 => X"C03600F65038803800F800B60299901AE01A019A502EA02E006E022E700A200A",
      INIT_25 => X"402B00ABB03D803D00BD010F009D006E00FF0156101A901AD01A011A00F89036",
      INIT_26 => X"F02D102D00ED7012D012005200AD00B8401D201D015DE03DA03D00BD015D902B",
      INIT_27 => X"00980107101A801A009AD03AF03A003A005A0107013EF038C038703800F80248",
      INIT_28 => X"D00D008D0338F028A0280068102E402E00EE009301BD5007A00701C720189018",
      INIT_29 => X"501EB01E021E00DD1007B0070187503740370077014701F6021500D1E00D400D",
      INIT_2A => X"D02E802E302E00EE0278C01720170197201DE01D011D020E00A81028D0280068",
      INIT_2B => X"01D502D3401E401ED01E011E024EF03E903E00FE6019F0190059013F020F0153",
      INIT_2C => X"006A01320088008E01F540174017501702570077201520150255F01210120192",
      INIT_2D => X"001A016DD02A402A00AA20028002004200AA302E302E00AE60068006004600AE",
      INIT_2E => X"702E00AE004500A80111702F502FA02F00EF00ABF01A601A005AC038C0380178",
      INIT_2F => X"D012401200D2016E0191702A002A00AA803B903B007B01AF0006A0060086202E",
      INIT_30 => X"004D902DD02D012D013E005B006A011600119011701101D10311F036703601B6",
      INIT_31 => X"B0090049C028F028006801460132301FA01F009FB01B801B009B0159400D500D",
      INIT_32 => X"01B6D028B02801283015E01501150032014801CE602BE02B402B00AB013A4009",
      INIT_33 => X"301D301D005D024FC036A0360176A03D403D00BD00BF025670173017601700D7",
      INIT_34 => X"00336033017300A8603BB03B007BB036C03600B6007B00B3014501480275901D",
      INIT_35 => X"A02EE02E602E00AE01EED029A0290069C02F902F012F005A00DDA01840180018",
      INIT_36 => X"9005D0050085802E902E006E0230003250320072500A900A000A003200A80119",
      INIT_37 => X"008E005D02F5F015201550150055020DB008100802C8D02E902E00AE0159004D",
      INIT_38 => X"002A011EB005800500C5300DB00D008D00D7F02BA02B006BC02D502D00AD01EE",
      INIT_39 => X"B03E013E0286017003358036F03670360136021E502A602A00AAB01580150055",
      INIT_3A => X"D0160056901530150015009003F570303030C030017001E8900500050105503E",
      INIT_3B => X"701000100143020000D300FA00CE014500F00111B02EF02E802E01AE04F5E016",
      INIT_3C => X"300A200A00CA0113015AF01FB01F009F303DE03D007D0010D008E00800485010",
      INIT_3D => X"901F005F000F000F008F005800BE00735019F01920190099007B0036D03600B6",
      INIT_3E => X"F02A902A00EA4007A0070047002A01B3600370030183800AA00A004A00BDF01F",
      INIT_3F => X"0076D01EA01E005EE03BE03B003B001E008A013A014DF0391039803901390232",
      INIT_40 => X"00B202019033003300B3101D401D005D0083011D103E603E007E600860080108",
      INIT_41 => X"0016101600560155D03D803D003D803870380078008300B30109203240326032",
      INIT_42 => X"603A503A703A007A024DA03250320072A008000801480072020DE00FC00F01CF",
      INIT_43 => X"007D60160016001600F3E03F303F007F403BA03B007B002E01BA01C30246014A",
      INIT_44 => X"008EB003A0033003020300AB801FF01F001FC00D700D004D001F006BF03DB03D",
      INIT_45 => X"010E803BA03B023BF005B005024501FF903EE03E00FE20059005028502C3017A",
      INIT_46 => X"00C8014D018301FF40066006D0060346028EB003400300C38006400602C6006D",
      INIT_47 => X"0078010D02C3600D100D01CD801D001D001D01CF1007A0070107801A701A001A",
      INIT_48 => X"403A403A00FA0187014E02CA300E300E500E014E0305D00D500D020D80387038",
      INIT_49 => X"E038F03803783039303902390306028F2003C003800300830303503AA03A00FA",
      INIT_4A => X"800600069039003901F90058008300EA014F008A017DB00590057005030503BE",
      INIT_4B => X"D029D029012930067006004602B102EAC000200001C0302EF02E002E0143C006",
      INIT_4C => X"0086027FF00620060086D01FE01F005F00BA015601D810325032C03201320372",
      INIT_4D => X"00280068005A202E902E002E202900290229002E001AB00020000200B006C006",
      INIT_4E => X"00138013001301B8B01310130053A028D02800A800AD00C301BF01CAA0280028",
      INIT_4F => X"00383038F03802380437C001E0010141D00860080048023200AF402F602F016F",
      INIT_50 => X"C006B00601064007A00700870046E00140010141C00510050045018B01B900DB",
      INIT_51 => X"00E9022D0186203AD03A103A01BA02CA800AD00A030AF01B901B015B027001F1",
      INIT_52 => X"01CF4000C00002005007F007010701B0D03670360136703FA03F00BF013601C2",
      INIT_53 => X"00BA0169023802421016501650160116001F6038303801F8C03A803A017A01F8",
      INIT_54 => X"F00101C100E903B0203FF03F02FFB02F202F016F032EB037303700F7603A003A",
      INIT_55 => X"803AB03A01BA014A027F03870015503FB03FC03F02BF02C06002500202426001",
      INIT_56 => X"03761032903200B2033603FAD03340330133E0072007020700B2E03AB03A027A",
      INIT_57 => X"402A902A002A202F202F006F007201C301150009B00970090149044580366036",
      INIT_58 => X"001D021D03805038C0380178E00AE00A008A005B00AAC030F030B03001300270",
      INIT_59 => X"0278A009D0090089203E603E007E00CF007000D800FB0169019201C7E01DD01D",
      INIT_5A => X"0250011BF02A602A016A1017F017005700EA009E6009D00902093030203001B0",
      INIT_5B => X"703B203B013B00B8C02E002E002E201E401E015E002E007800EB501050101010",
      INIT_5C => X"9035103560350075009BB02DE02D006D7002F0020182006D01AB300B500B008B",
      INIT_5D => X"B0370037E01EE01E001E0043300FA00F008F2029602901A9000F00030158016A",
      INIT_5E => X"01300229C03120318031023102D8101970190199F01600160016015901B8E037",
      INIT_5F => X"00FA01FA102D102D002D3030203001F0002D4016B0160096303BD03B003B0015",
      INIT_60 => X"00AB008E01FA021901B850177017A01700D701A8001210120052C02AF02A016A",
      INIT_61 => X"0050020A0232302D602D00ED600270020142002D601F801F005F903180310071",
      INIT_62 => X"F00AE00A01CA00F201EB0153300F900FA00F004F022A4013F013011390102010",
      INIT_63 => X"014B6010C01000D001DB02D1E03300330273B03A503A027A0233E010E0100090",
      INIT_64 => X"4017001700138013009300170237025A00BAD01FC01F701F00DF0390C00B100B",
      INIT_65 => X"5037503702F71017C017001702DA0301603020300170D02E102E00AE026F1017",
      INIT_66 => X"01C10479901B801B019BD01F801F005F006E01A8017A6009C009600903890330",
      INIT_67 => X"F00B400BC00B014B01B2601220120212A00970090209004D0199200160016001",
      INIT_68 => X"900AA00A01CA00B0A019C01900D970191019005900980192010301B6014D01D7",
      INIT_69 => X"303950393039013900B1B00F400F014F7039003900B900D300715000100001C0",
      INIT_6A => X"6031F0310131D0033003018302389032C0320072301AE01A009A013501F0022D",
      INIT_6B => X"003000DD027D002D002D102D022D037E101370130153802B502B002B00A80291",
      INIT_6C => X"01D500A9C03B403B007B900F300F01CF00F00000E00002000012001201D20109",
      INIT_6D => X"C038013801D200B60382601E401EA01E00DE01FE200570050045002B302B00AB",
      INIT_6E => X"7007020750088008024800F9038D803BA03BC03B01BB02317032403200322038",
      INIT_6F => X"50000280802B802B002B019201950352013F015F00095009200902C904FD1007",
      INIT_70 => X"8001D00102418005E0050005038D0386B015501502D51019F01900990396D000",
      INIT_71 => X"01510249003B903B013B2013A013011300BB010A01372006D006E00603860401",
      INIT_72 => X"802901E902BF502D402D00AD901A901A009A00BA00E9301B001B011B90116011",
      INIT_73 => X"003B903B007B017D401FF01F025F902830280028021F00AD00EF0288E0296029",
      INIT_74 => X"400A400AA00A008A0168001B201B001B302F002F016F001B006E502DF02D00AD",
      INIT_75 => X"01BF01BA300910096009028901F8C010F0100290B031C03101710191020A024E",
      INIT_76 => X"E03AE03AE03AE03AE03AE03A103A003A037A0152A00560050145501DF01D00DD",
      INIT_77 => X"E03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03A",
      INIT_78 => X"E03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03A",
      INIT_79 => X"E03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03A",
      INIT_7A => X"E03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03A",
      INIT_7B => X"E03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03A",
      INIT_7C => X"E03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03A",
      INIT_7D => X"E03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03A",
      INIT_7E => X"E03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03A",
      INIT_7F => X"E03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03AE03A",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000141",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => dina_reg_0_i_3_n_0,
      ADDRARDADDR(13) => dina_reg_0_i_4_n_0,
      ADDRARDADDR(12) => dina_reg_0_i_5_n_0,
      ADDRARDADDR(11) => dina_reg_0_i_6_n_0,
      ADDRARDADDR(10) => dina_reg_0_i_7_n_0,
      ADDRARDADDR(9) => dina_reg_0_i_8_n_0,
      ADDRARDADDR(8) => dina_reg_0_i_9_n_0,
      ADDRARDADDR(7) => dina_reg_0_i_10_n_0,
      ADDRARDADDR(6) => dina_reg_0_i_11_n_0,
      ADDRARDADDR(5) => dina_reg_0_i_12_n_0,
      ADDRARDADDR(4) => sel(0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_dina_reg_0_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_dina_reg_0_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_dina_reg_0_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000001111111111111111",
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0011",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 16) => NLW_dina_reg_0_DOADO_UNCONNECTED(31 downto 16),
      DOADO(15) => dina_reg_0_n_37,
      DOADO(14) => dina_reg_0_n_38,
      DOADO(13) => dina_reg_0_n_39,
      DOADO(12) => dina_reg_0_n_40,
      DOADO(11 downto 6) => R(5 downto 0),
      DOADO(5) => dina_reg_0_n_47,
      DOADO(4) => dina_reg_0_n_48,
      DOADO(3) => dina_reg_0_n_49,
      DOADO(2) => dina_reg_0_n_50,
      DOADO(1) => dina_reg_0_n_51,
      DOADO(0) => dina_reg_0_n_52,
      DOBDO(31 downto 0) => NLW_dina_reg_0_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 2) => NLW_dina_reg_0_DOPADOP_UNCONNECTED(3 downto 2),
      DOPADOP(1) => dina_reg_0_n_87,
      DOPADOP(0) => dina_reg_0_n_88,
      DOPBDOP(3 downto 0) => NLW_dina_reg_0_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_dina_reg_0_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dina_reg_0_i_1_n_0,
      ENBWREN => '0',
      INJECTDBITERR => NLW_dina_reg_0_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_dina_reg_0_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_dina_reg_0_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => valid_0,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_dina_reg_0_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
dina_reg_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => valid_input,
      I1 => down_a_level_reg_n_0,
      I2 => is_full,
      O => dina_reg_0_i_1_n_0
    );
dina_reg_0_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => current_level(0),
      I1 => current_level(1),
      I2 => current_level(2),
      I3 => current_level(3),
      O => dina_reg_0_i_10_n_0
    );
dina_reg_0_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => current_level(1),
      I1 => current_level(0),
      I2 => current_level(2),
      O => dina_reg_0_i_11_n_0
    );
dina_reg_0_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => current_level(0),
      I1 => current_level(1),
      O => dina_reg_0_i_12_n_0
    );
dina_reg_0_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => current_level(0),
      O => sel(0)
    );
dina_reg_0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => current_level(4),
      I1 => current_level(0),
      I2 => current_level(1),
      I3 => current_level(2),
      I4 => current_level(3),
      I5 => current_level(5),
      O => dina_reg_0_i_14_n_0
    );
dina_reg_0_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => current_level(2),
      I1 => current_level(1),
      I2 => current_level(0),
      O => dina_reg_0_i_15_n_0
    );
dina_reg_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_full,
      I1 => valid_input,
      O => valid_0
    );
dina_reg_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => current_level(9),
      I1 => current_level(7),
      I2 => dina_reg_0_i_14_n_0,
      I3 => current_level(6),
      I4 => current_level(8),
      I5 => current_level(10),
      O => dina_reg_0_i_3_n_0
    );
dina_reg_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => current_level(8),
      I1 => current_level(6),
      I2 => dina_reg_0_i_14_n_0,
      I3 => current_level(7),
      I4 => current_level(9),
      O => dina_reg_0_i_4_n_0
    );
dina_reg_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => current_level(7),
      I1 => dina_reg_0_i_14_n_0,
      I2 => current_level(6),
      I3 => current_level(8),
      O => dina_reg_0_i_5_n_0
    );
dina_reg_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => current_level(6),
      I1 => current_level(4),
      I2 => dina_reg_0_i_15_n_0,
      I3 => current_level(3),
      I4 => current_level(5),
      I5 => current_level(7),
      O => dina_reg_0_i_6_n_0
    );
dina_reg_0_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => current_level(5),
      I1 => current_level(3),
      I2 => dina_reg_0_i_15_n_0,
      I3 => current_level(4),
      I4 => current_level(6),
      O => dina_reg_0_i_7_n_0
    );
dina_reg_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => current_level(4),
      I1 => current_level(0),
      I2 => current_level(1),
      I3 => current_level(2),
      I4 => current_level(3),
      I5 => current_level(5),
      O => dina_reg_0_i_8_n_0
    );
dina_reg_0_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => current_level(3),
      I1 => current_level(2),
      I2 => current_level(1),
      I3 => current_level(0),
      I4 => current_level(4),
      O => dina_reg_0_i_9_n_0
    );
dina_reg_1: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"4000540000000000000000000000000000015000000000000000000000000000",
      INITP_08 => X"5410504155014105410504154050415041410555014105410504154050415041",
      INITP_09 => X"0141054105041550141054105041540504150414105554050415014105501410",
      INITP_0A => X"0415405041504141055405041504141055014105410504155405041504141055",
      INITP_0B => X"5041410550141054105041550141054105041540504150414105555014105405",
      INITP_0C => X"0141054050415405041504141055405041504141055014105410504155405041",
      INITP_0D => X"1055501410540504154050415041410554050415041410550141054105041555",
      INITP_0E => X"0000000000005041501410550141054105041550141054105041540504150414",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"05000008000603C0000E000003000340040005C0090010401F003C407780EDC0",
      INIT_01 => X"088008C0000300080780000E000E06C0070007C00006000805800004000204C0",
      INIT_02 => X"000400090C000C40000C00030B00000D00090A400A800B400D000004000C000C",
      INIT_03 => X"0000000000070FC010000000000B0EC0000400030E000E400F00000C000D0CC0",
      INIT_04 => X"000D144000020005138013C0000600041280000B000411C0120012C0148017C0",
      INIT_05 => X"1A001BC00009000B000C174017800008000C1640000A000E158015C016800004",
      INIT_06 => X"1D001DC0000300061B800005000B1AC01B00000A000E19C00001000819001940",
      INIT_07 => X"210021C0238026C02E000007000A000A1E801EC00009000E1D80000C00011CC0",
      INIT_08 => X"248024C0258000090004234000030002228022C00003000721800005000A20C0",
      INIT_09 => X"000B000E2800284029002AC000020007000126402680000400002540000E0000",
      INIT_0A => X"2C80000500002BC02C002CC0000000002A800002000E29C02A00000A000228C0",
      INIT_0B => X"000230400008000A2F802FC03080324035800001000D00092D802DC000000005",
      INIT_0C => X"000B000D3400000C00033340338034400004000732000003000B314031800004",
      INIT_0D => X"388038C00002000C3780000E000C36C0370037C03900000A000B000335003540",
      INIT_0E => X"000C000200023BC03C00000A00073AC00001000B3A003A403B0000070000000A",
      INIT_0F => X"0003000E400040400004000A3F000000000E3E403E803F40410044404B805A40",
      INIT_10 => X"000C000C000E43C044000005000242C0000800024200424043000007000140C0",
      INIT_11 => X"00000004480000070001474047800005000A4640000D0000458045C046804840",
      INIT_12 => X"4E004FC0530000050009000B4B004B40000000024A00000B000A494049804A40",
      INIT_13 => X"510051C0000800084F80000000024EC04F00000300044DC0000D000D4D004D40",
      INIT_14 => X"0001544054805540570000060007000E528052C0000E000751800003000150C0",
      INIT_15 => X"000B000C580058405900000B000356C00004000A560056400000000255000006",
      INIT_16 => X"000000015C005C405D005EC06200694000010000000159C05A000006000C58C0",
      INIT_17 => X"60800005000D5FC0600060C00005000B5E80000500095DC05E00000B000B5CC0",
      INIT_18 => X"000200006400000E000263406380644066000007000A0001618061C0000C0005",
      INIT_19 => X"69000007000267C000050005670067406800000C000A65C00008000365006540",
      INIT_1A => X"6C806CC0000A00036B80000C000C6AC06B006BC06D8070C00004000C000568C0",
      INIT_1B => X"000C70407080000800056F400001000B6E806EC06F80000300026D4000040003",
      INIT_1C => X"00040009000573C07400000E000972C0000500027200724073007440000A0004",
      INIT_1D => X"870095C0B30000080007000B77007740000B000776000005000E754075807640",
      INIT_1E => X"000D7C40000100057B807BC0000B00057A80000D000379C07A007AC07C807FC0",
      INIT_1F => X"820083C00007000D00047F407F80000C00087E40000200057D807DC07E80000B",
      INIT_20 => X"850085C0000B000983800001000B82C083000008000A81C0000B000381008140",
      INIT_21 => X"888088C089808B408E800003000B0001868086C0000A000085800008000E84C0",
      INIT_22 => X"000D8C408C808D40000D00028B00000600008A408A800009000389400007000D",
      INIT_23 => X"90800004000C8FC0900090C09280000B000400088E008E40000B00028D00000B",
      INIT_24 => X"000B944000090007938093C0948000090004924000030008918091C00006000A",
      INIT_25 => X"000498400004000C978097C098809A409D80A4C0000E00030001954095800002",
      INIT_26 => X"000C00099C00000A000A9B409B809C40000100009A00000D000799409980000E",
      INIT_27 => X"A080A0C0000500039F80000900019EC09F009FC0A1800008000D00019D009D40",
      INIT_28 => X"000DA440A480000D0005A34000070001A280A2C0A3800009000EA1400006000D",
      INIT_29 => X"00020006A800A840000E0009A700000D000DA640A680A740A900AC4000010001",
      INIT_2A => X"000D00060005ABC0AC00000C0007AAC0000B000DAA00AA40AB0000090006A8C0",
      INIT_2B => X"B100B1C0000C0005000EAF40AF8000070009AE4000050009AD80ADC0AE80AFC0",
      INIT_2C => X"B600B7C0BB00C240D0800003000E0005B280B2C000030004B18000030006B0C0",
      INIT_2D => X"B900B9C000070003B780000E0007B6C0B70000050009B5C000000006B500B540",
      INIT_2E => X"0009BC40BC80BD40BF0000070002000DBA80BAC000050002B98000020001B8C0",
      INIT_2F => X"0003000BC000C040C1000000000BBEC00004000DBE00BE4000030006BD00000B",
      INIT_30 => X"C4800008000CC3C0C400C4C0C680C9C0000100010008C1C0C2000000000BC0C0",
      INIT_31 => X"0006C84000040007C780C7C0C8800001000EC64000040004C580C5C00008000D",
      INIT_32 => X"CD00000C000CCBC000020001CB00CB40CC00CD40000400080002C940C9800008",
      INIT_33 => X"00050001D000D04000050004CF00000D000ECE40CE80CF40000D000A0004CCC0",
      INIT_34 => X"000B000DD400D440000A0008D30000080008D240D280D340D500D840DF800001",
      INIT_35 => X"00030007000AD7C0D80000070000D6C000090007D600D640D700000C000BD4C0",
      INIT_36 => X"000E0000DC000007000CDB40DB80000B0009DA4000010006D980D9C0DA80DC40",
      INIT_37 => X"E200E3C0E7000002000B0006DF00DF400009000CDE00000D0006DD40DD80DE40",
      INIT_38 => X"E500E5C000010000E3800000000EE2C0E30000010009E1C0000C0008E100E140",
      INIT_39 => X"0009E840E880E940EA800000000B0007E680E6C000060004E5800000000CE4C0",
      INIT_3A => X"0002EC40000D0004EB80EBC0EC80000200080000EA00EA400001000EE900000B",
      INIT_3B => X"0005F040F080F140F300F640FD800C40298064C0000900070008ED40ED800007",
      INIT_3C => X"00080005F400F440F500000E000DF2C0000B0009F200F24000040000F1000008",
      INIT_3D => X"0002F84000090004F780F7C0F880FA400008000C0005F5C0F6000003000BF4C0",
      INIT_3E => X"00080004FC0000020007FB40FB80FC4000090009FA0000040002F940F980000D",
      INIT_3F => X"010000010009FFC0000B000EFF00FF40000001C00500000600040008FD00FD40",
      INIT_40 => X"048004C0000900060380000E000702C0030003C0000D000B01800002000000C0",
      INIT_41 => X"000D0009080008400005000E07000001000506400680074009000006000A0002",
      INIT_42 => X"000E0006000B0BC00C000006000A0AC0000100070A000A400B000006000D08C0",
      INIT_43 => X"1080000000020FC01000000A000D0EC00000000D0E000E400F0010C014001B40",
      INIT_44 => X"1800000300070001138013C0000A000E1280000B000C11C0120012C000040000",
      INIT_45 => X"1A000004000517C0000D000517001740000A000B16000002000C154015801640",
      INIT_46 => X"1D001DC01F8022C00006000300071AC01B000007000D19C00006000019001940",
      INIT_47 => X"208020C021800006000D1F40000D00061E801EC0000000021D80000C00061CC0",
      INIT_48 => X"000700022400244025002640000300020000224022800009000121400005000C",
      INIT_49 => X"0009000628000007000027402780284000090003000025C02600000A000024C0",
      INIT_4A => X"00022C40000200012B802BC02C802E40318038C047800003000C000329002940",
      INIT_4B => X"000A000D3000000E000C2F402F803040000E00002E00000900032D402D800004",
      INIT_4C => X"348034C00009000833800001000D32C0330033C0358000020002000A31003140",
      INIT_4D => X"0001384038800002000437400004000C368036C037800001000C3540000A000E",
      INIT_4E => X"000400083C003C40000000083B00000800043A403A803B403D00404000080008",
      INIT_4F => X"0003000A000C3FC04000000700033EC0000800083E003E403F00000900003CC0",
      INIT_50 => X"0009000644000009000C434043800008000C4240000A0005418041C042804440",
      INIT_51 => X"4C004F40568000080005000D4700474000010000460000020003454045804640",
      INIT_52 => X"4E00000400004BC00001000B4B004B40000200054A00000E0003494049804A40",
      INIT_53 => X"508050C0518053400000000E000A4EC04F00000100034DC00006000C4D004D40",
      INIT_54 => X"000E544054805540000A000853000006000352405280000500095140000C0001",
      INIT_55 => X"0002000A5800584059005AC05E00000700070006560056400006000C5500000D",
      INIT_56 => X"5C80000900065BC05C005CC0000A000A5A800005000E59C05A00000B000A58C0",
      INIT_57 => X"000600036000000600035F405F80604061800009000B00085D805DC00009000D",
      INIT_58 => X"000564406480000C0005634000090003628062C0638000090004000861006140",
      INIT_59 => X"6900000C000867C00007000167006740680069C06D0074408300A04000020005",
      INIT_5A => X"6C806CC0000200026B800007000A6AC06B006BC0000A000B69800006000A68C0",
      INIT_5B => X"000A000D700070400001000A6F00000900016E406E806F407100000800050006",
      INIT_5C => X"00070007000D73C074000005000072C0000D00087200724073000007000070C0",
      INIT_5D => X"000D78400005000A778077C0000E000676800002000175C0760076C078807BC0",
      INIT_5E => X"7E007FC0000E0009000B7B407B80000A00017A4000050009798079C07A80000C",
      INIT_5F => X"810081C00003000C7F80000900007EC07F000005000D7DC0000400067D007D40",
      INIT_60 => X"850085C087808AC09200000B000D0000828082C0000E000181800003000180C0",
      INIT_61 => X"888088C08980000B0009874000080008868086C00008000685800002000A84C0",
      INIT_62 => X"000A00078C008C408D008EC0000E000A00088A408A800008000D894000070004",
      INIT_63 => X"9080000300038FC0900090C0000400008E80000E00058DC08E00000B00068CC0",
      INIT_64 => X"0006944000000003938093C094809640998000070001000B918091C00008000B",
      INIT_65 => X"000E000D9800000C000497409780984000090001960000030007954095800008",
      INIT_66 => X"9C809CC0000000059B800006000B9AC09B009BC09D0000070007000699009940",
      INIT_67 => X"000A000900059FC0A000000500009EC0000A00099E009E409F00000D000A0007",
      INIT_68 => X"00070002A400A440000B000AA3000002000AA240A280A340A500A840AF80BDC0",
      INIT_69 => X"000300090003A7C0A800000E0000A6C000080007A600A640A700000D0001A4C0",
      INIT_6A => X"0005000BAC00000C000DAB40AB8000050000AA40000B0002A980A9C0AA80AC40",
      INIT_6B => X"B200B3C0B7000006000E0004AF00AF4000010006AE0000030000AD40AD80AE40",
      INIT_6C => X"B500B5C00006000EB3800008000CB2C0B30000050000B1C00004000AB100B140",
      INIT_6D => X"0006B840B880B940BA800006000D0009B680B6C000060009B58000020004B4C0",
      INIT_6E => X"0004BC40000A0009BB80BBC0BC8000020001000DBA00BA4000060003B9000008",
      INIT_6F => X"0006C04000010003BF80BFC0C080C240C580CCC000060007000CBD40BD800000",
      INIT_70 => X"00050000C400000B0001C340C380C440000B0007C20000040006C140C1800004",
      INIT_71 => X"C880C8C0000D000BC780000D0007C6C0C700C7C0C980000400080002C500C540",
      INIT_72 => X"000ACC40CC8000030006CB4000060008CA80CAC0CB80000A000CC9400001000C",
      INIT_73 => X"00050004D000D040000C0009CF0000030008CE40CE80CF40D100D4400004000E",
      INIT_74 => X"000200040005D3C0D400000D0007D2C000020007D200D240D30000010003D0C0",
      INIT_75 => X"D900D9C0000600060007D740D78000080009D6400003000CD580D5C0D680D7C0",
      INIT_76 => X"000A000A000A000A000A000A0004000CDA80DAC0000A0005D980000C0003D8C0",
      INIT_77 => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_78 => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_79 => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_7A => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_7B => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_7C => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_7D => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_7E => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_7F => X"000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A000A",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000EDC0",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => dina_reg_0_i_3_n_0,
      ADDRARDADDR(13) => dina_reg_0_i_4_n_0,
      ADDRARDADDR(12) => dina_reg_0_i_5_n_0,
      ADDRARDADDR(11) => dina_reg_0_i_6_n_0,
      ADDRARDADDR(10) => dina_reg_0_i_7_n_0,
      ADDRARDADDR(9) => dina_reg_0_i_8_n_0,
      ADDRARDADDR(8) => dina_reg_0_i_9_n_0,
      ADDRARDADDR(7) => dina_reg_0_i_10_n_0,
      ADDRARDADDR(6) => dina_reg_0_i_11_n_0,
      ADDRARDADDR(5) => dina_reg_0_i_12_n_0,
      ADDRARDADDR(4) => sel(0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_dina_reg_1_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_dina_reg_1_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_dina_reg_1_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000001111111111111111",
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0011",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 16) => NLW_dina_reg_1_DOADO_UNCONNECTED(31 downto 16),
      DOADO(15) => dina_reg_1_n_37,
      DOADO(14) => dina_reg_1_n_38,
      DOADO(13) => dina_reg_1_n_39,
      DOADO(12) => dina_reg_1_n_40,
      DOADO(11) => dina_reg_1_n_41,
      DOADO(10) => dina_reg_1_n_42,
      DOADO(9) => dina_reg_1_n_43,
      DOADO(8) => dina_reg_1_n_44,
      DOADO(7) => dina_reg_1_n_45,
      DOADO(6) => dina_reg_1_n_46,
      DOADO(5) => dina_reg_1_n_47,
      DOADO(4) => dina_reg_1_n_48,
      DOADO(3) => dina_reg_1_n_49,
      DOADO(2) => dina_reg_1_n_50,
      DOADO(1) => dina_reg_1_n_51,
      DOADO(0) => dina_reg_1_n_52,
      DOBDO(31 downto 0) => NLW_dina_reg_1_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 2) => NLW_dina_reg_1_DOPADOP_UNCONNECTED(3 downto 2),
      DOPADOP(1) => dina_reg_1_n_87,
      DOPADOP(0) => dina_reg_1_n_88,
      DOPBDOP(3 downto 0) => NLW_dina_reg_1_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_dina_reg_1_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dina_reg_0_i_1_n_0,
      ENBWREN => '0',
      INJECTDBITERR => NLW_dina_reg_1_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_dina_reg_1_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_dina_reg_1_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => valid_0,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_dina_reg_1_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
dina_reg_2: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"001110001000000E10001000000B000A00090008000700060005000400030002",
      INIT_01 => X"0021002010001000001D10001000001A00190018100010000015100010000012",
      INIT_02 => X"10001000002F002E10001000002B100010000028002700260025100010001000",
      INIT_03 => X"100010001000003E003D10001000003A10001000003700360035100010000032",
      INIT_04 => X"1000005010001000004D004C1000100000491000100000460045004400430042",
      INIT_05 => X"00610060100010001000005C005B100010000058100010000055005400531000",
      INIT_06 => X"0071007010001000006D10001000006A00691000100000661000100000630062",
      INIT_07 => X"00810080007F007E007D10001000100000790078100010000075100010000072",
      INIT_08 => X"00910090008F10001000008C1000100000890088100010000085100010000082",
      INIT_09 => X"10001000009F009E009D009C1000100010000098009710001000009410001000",
      INIT_0A => X"00B11000100000AE00AD00AC1000100000A91000100000A600A51000100000A2",
      INIT_0B => X"100000C01000100000BD00BC00BB00BA00B910001000100000B500B410001000",
      INIT_0C => X"1000100000CF1000100000CC00CB00CA1000100000C71000100000C400C31000",
      INIT_0D => X"00E100E01000100000DD1000100000DA00D900D800D710001000100000D300D2",
      INIT_0E => X"10001000100000EE00ED1000100000EA1000100000E700E600E5100010001000",
      INIT_0F => X"1000100000FF00FE1000100000FB1000100000F800F700F600F500F400F300F2",
      INIT_10 => X"100010001000010E010D10001000010A10001000010701060105100010000102",
      INIT_11 => X"10001000011F10001000011C011B100010000118100010000115011401130112",
      INIT_12 => X"01310130012F100010001000012B012A10001000012710001000012401230122",
      INIT_13 => X"0141014010001000013D10001000013A01391000100001361000100001330132",
      INIT_14 => X"10000150014F014E014D10001000100001490148100010000145100010000142",
      INIT_15 => X"10001000015F015E015D10001000015A10001000015701561000100001531000",
      INIT_16 => X"10001000016F016E016D016C016B016A10001000100001660165100010000162",
      INIT_17 => X"018110001000017E017D017C1000100001791000100001760175100010000172",
      INIT_18 => X"10001000018F10001000018C018B018A01891000100010000185018410001000",
      INIT_19 => X"01A110001000019E10001000019B019A01991000100001961000100001930192",
      INIT_1A => X"01B101B01000100001AD1000100001AA01A901A801A701A610001000100001A2",
      INIT_1B => X"100001C001BF1000100001BC1000100001B901B801B71000100001B410001000",
      INIT_1C => X"10001000100001CE01CD1000100001CA1000100001C701C601C501C410001000",
      INIT_1D => X"01E101E001DF10001000100001DB01DA1000100001D71000100001D401D301D2",
      INIT_1E => X"100001F01000100001ED01EC1000100001E91000100001E601E501E401E301E2",
      INIT_1F => X"0201020010001000100001FC01FB1000100001F81000100001F501F401F31000",
      INIT_20 => X"0211021010001000020D10001000020A02091000100002061000100002030202",
      INIT_21 => X"02210220021F021E021D10001000100002190218100010000215100010000212",
      INIT_22 => X"10000230022F022E10001000022B100010000228022710001000022410001000",
      INIT_23 => X"024110001000023E023D023C023B100010001000023702361000100002331000",
      INIT_24 => X"1000025010001000024D024C024B100010000248100010000245024410001000",
      INIT_25 => X"1000026010001000025D025C025B025A02590258100010001000025402531000",
      INIT_26 => X"10001000026F10001000026C026B026A10001000026710001000026402631000",
      INIT_27 => X"0281028010001000027D10001000027A02790278027710001000100002730272",
      INIT_28 => X"10000290028F10001000028C1000100002890288028710001000028410001000",
      INIT_29 => X"10001000029F029E10001000029B100010000298029702960295029410001000",
      INIT_2A => X"10001000100002AE02AD1000100002AA1000100002A702A602A51000100002A2",
      INIT_2B => X"02C102C010001000100002BC02BB1000100002B81000100002B502B402B302B2",
      INIT_2C => X"02D102D002CF02CE02CD10001000100002C902C81000100002C51000100002C2",
      INIT_2D => X"02E102E01000100002DD1000100002DA02D91000100002D61000100002D302D2",
      INIT_2E => X"100002F002EF02EE02ED10001000100002E902E81000100002E51000100002E2",
      INIT_2F => X"1000100002FF02FE02FD1000100002FA1000100002F702F61000100002F31000",
      INIT_30 => X"031110001000030E030D030C030B030A10001000100003060305100010000302",
      INIT_31 => X"1000032010001000031D031C031B100010000318100010000315031410001000",
      INIT_32 => X"033110001000032E10001000032B032A03290328100010001000032403231000",
      INIT_33 => X"10001000033F033E10001000033B100010000338033703361000100010000332",
      INIT_34 => X"10001000034F034E10001000034B100010000348034703460345034403431000",
      INIT_35 => X"100010001000035E035D10001000035A10001000035703560355100010000352",
      INIT_36 => X"10001000036F10001000036C036B100010000368100010000365036403630362",
      INIT_37 => X"03810380037F100010001000037B037A10001000037710001000037403730372",
      INIT_38 => X"0391039010001000038D10001000038A03891000100003861000100003830382",
      INIT_39 => X"100003A0039F039E039D10001000100003990398100010000395100010000392",
      INIT_3A => X"100003B01000100003AD03AC03AB10001000100003A703A61000100003A31000",
      INIT_3B => X"100003C003BF03BE03BD03BC03BB03BA03B903B810001000100003B403B31000",
      INIT_3C => X"1000100003CF03CE03CD1000100003CA1000100003C703C61000100003C31000",
      INIT_3D => X"100003E01000100003DD03DC03DB03DA10001000100003D603D51000100003D2",
      INIT_3E => X"1000100003EF1000100003EC03EB03EA1000100003E71000100003E403E31000",
      INIT_3F => X"04011000100003FE1000100003FB03FA03F903F803F710001000100003F303F2",
      INIT_40 => X"0411041010001000040D10001000040A04090408100010000405100010000402",
      INIT_41 => X"10001000041F041E10001000041B100010000418041704160415100010001000",
      INIT_42 => X"100010001000042E042D10001000042A10001000042704260425100010000422",
      INIT_43 => X"044110001000043E043D10001000043A10001000043704360435043404330432",
      INIT_44 => X"0451100010001000044D044C1000100004491000100004460445044410001000",
      INIT_45 => X"046110001000045E10001000045B045A10001000045710001000045404530452",
      INIT_46 => X"04710470046F046E100010001000046A04691000100004661000100004630462",
      INIT_47 => X"04810480047F10001000047C1000100004790478100010000475100010000472",
      INIT_48 => X"10001000048F048E048D048C1000100010000488048710001000048410001000",
      INIT_49 => X"10001000049F10001000049C049B049A10001000100004960495100010000492",
      INIT_4A => X"100004B01000100004AD04AC04AB04AA04A904A804A710001000100004A304A2",
      INIT_4B => X"1000100004BF1000100004BC04BB04BA1000100004B71000100004B404B31000",
      INIT_4C => X"04D104D01000100004CD1000100004CA04C904C804C710001000100004C304C2",
      INIT_4D => X"100004E004DF1000100004DC1000100004D904D804D71000100004D410001000",
      INIT_4E => X"1000100004EF04EE1000100004EB1000100004E804E704E604E504E410001000",
      INIT_4F => X"10001000100004FE04FD1000100004FA1000100004F704F604F51000100004F2",
      INIT_50 => X"10001000050F10001000050C050B100010000508100010000505050405030502",
      INIT_51 => X"05210520051F100010001000051B051A10001000051710001000051405130512",
      INIT_52 => X"053110001000052E10001000052B052A10001000052710001000052405230522",
      INIT_53 => X"05410540053F053E100010001000053A05391000100005361000100005330532",
      INIT_54 => X"10000550054F054E10001000054B100010000548054710001000054410001000",
      INIT_55 => X"10001000055F055E055D055C055B100010001000055705561000100005531000",
      INIT_56 => X"057110001000056E056D056C1000100005691000100005660565100010000562",
      INIT_57 => X"10001000057F10001000057C057B057A05791000100010000575057410001000",
      INIT_58 => X"10000590058F10001000058C1000100005890588058710001000100005830582",
      INIT_59 => X"05A110001000059E10001000059B059A05990598059705960595059410001000",
      INIT_5A => X"05B105B01000100005AD1000100005AA05A905A81000100005A51000100005A2",
      INIT_5B => X"1000100005BF05BE1000100005BB1000100005B805B705B605B5100010001000",
      INIT_5C => X"10001000100005CE05CD1000100005CA1000100005C705C605C51000100005C2",
      INIT_5D => X"100005E01000100005DD05DC1000100005D91000100005D605D505D405D305D2",
      INIT_5E => X"05F105F010001000100005EC05EB1000100005E81000100005E505E405E31000",
      INIT_5F => X"060106001000100005FD1000100005FA05F91000100005F61000100005F305F2",
      INIT_60 => X"06110610060F060E060D10001000100006090608100010000605100010000602",
      INIT_61 => X"06210620061F10001000061C1000100006190618100010000615100010000612",
      INIT_62 => X"10001000062F062E062D062C1000100010000628062710001000062410001000",
      INIT_63 => X"064110001000063E063D063C1000100006391000100006360635100010000632",
      INIT_64 => X"1000065010001000064D064C064B064A06491000100010000645064410001000",
      INIT_65 => X"10001000065F10001000065C065B065A10001000065710001000065406531000",
      INIT_66 => X"0671067010001000066D10001000066A06690668066710001000100006630662",
      INIT_67 => X"100010001000067E067D10001000067A10001000067706760675100010001000",
      INIT_68 => X"10001000068F068E10001000068B100010000688068706860685068406830682",
      INIT_69 => X"100010001000069E069D10001000069A10001000069706960695100010000692",
      INIT_6A => X"1000100006AF1000100006AC06AB1000100006A81000100006A506A406A306A2",
      INIT_6B => X"06C106C006BF10001000100006BB06BA1000100006B71000100006B406B306B2",
      INIT_6C => X"06D106D01000100006CD1000100006CA06C91000100006C61000100006C306C2",
      INIT_6D => X"100006E006DF06DE06DD10001000100006D906D81000100006D51000100006D2",
      INIT_6E => X"100006F01000100006ED06EC06EB10001000100006E706E61000100006E31000",
      INIT_6F => X"100007001000100006FD06FC06FB06FA06F906F810001000100006F406F31000",
      INIT_70 => X"10001000070F10001000070C070B070A10001000070710001000070407031000",
      INIT_71 => X"0721072010001000071D10001000071A07190718071710001000100007130712",
      INIT_72 => X"10000730072F10001000072C1000100007290728072710001000072410001000",
      INIT_73 => X"10001000073F073E10001000073B100010000738073707360735073410001000",
      INIT_74 => X"100010001000074E074D10001000074A10001000074707460745100010000742",
      INIT_75 => X"07610760100010001000075C075B100010000758100010000755075407530752",
      INIT_76 => X"1000100010001000100010001000100007690768100010000765100010000762",
      INIT_77 => X"1000100010001000100010001000100010001000100010001000100010001000",
      INIT_78 => X"1000100010001000100010001000100010001000100010001000100010001000",
      INIT_79 => X"1000100010001000100010001000100010001000100010001000100010001000",
      INIT_7A => X"1000100010001000100010001000100010001000100010001000100010001000",
      INIT_7B => X"1000100010001000100010001000100010001000100010001000100010001000",
      INIT_7C => X"1000100010001000100010001000100010001000100010001000100010001000",
      INIT_7D => X"1000100010001000100010001000100010001000100010001000100010001000",
      INIT_7E => X"1000100010001000100010001000100010001000100010001000100010001000",
      INIT_7F => X"1000100010001000100010001000100010001000100010001000100010001000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000002",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14) => dina_reg_0_i_3_n_0,
      ADDRARDADDR(13) => dina_reg_0_i_4_n_0,
      ADDRARDADDR(12) => dina_reg_0_i_5_n_0,
      ADDRARDADDR(11) => dina_reg_0_i_6_n_0,
      ADDRARDADDR(10) => dina_reg_0_i_7_n_0,
      ADDRARDADDR(9) => dina_reg_0_i_8_n_0,
      ADDRARDADDR(8) => dina_reg_0_i_9_n_0,
      ADDRARDADDR(7) => dina_reg_0_i_10_n_0,
      ADDRARDADDR(6) => dina_reg_0_i_11_n_0,
      ADDRARDADDR(5) => dina_reg_0_i_12_n_0,
      ADDRARDADDR(4) => sel(0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(15 downto 0) => B"1111111111111111",
      CASCADEINA => '1',
      CASCADEINB => '0',
      CASCADEOUTA => NLW_dina_reg_2_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_dina_reg_2_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => clk,
      CLKBWRCLK => '0',
      DBITERR => NLW_dina_reg_2_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => B"00000000000000001111111111111111",
      DIBDI(31 downto 0) => B"11111111111111111111111111111111",
      DIPADIP(3 downto 0) => B"0011",
      DIPBDIP(3 downto 0) => B"1111",
      DOADO(31 downto 16) => NLW_dina_reg_2_DOADO_UNCONNECTED(31 downto 16),
      DOADO(15) => dina_reg_2_n_37,
      DOADO(14) => dina_reg_2_n_38,
      DOADO(13) => dina_reg_2_n_39,
      DOADO(12) => p_1_in,
      DOADO(11) => dina_reg_2_n_41,
      DOADO(10) => dina_reg_2_n_42,
      DOADO(9) => dina_reg_2_n_43,
      DOADO(8) => dina_reg_2_n_44,
      DOADO(7) => dina_reg_2_n_45,
      DOADO(6) => dina_reg_2_n_46,
      DOADO(5) => dina_reg_2_n_47,
      DOADO(4) => dina_reg_2_n_48,
      DOADO(3) => dina_reg_2_n_49,
      DOADO(2) => dina_reg_2_n_50,
      DOADO(1) => dina_reg_2_n_51,
      DOADO(0) => dina_reg_2_n_52,
      DOBDO(31 downto 0) => NLW_dina_reg_2_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 2) => NLW_dina_reg_2_DOPADOP_UNCONNECTED(3 downto 2),
      DOPADOP(1) => dina_reg_2_n_87,
      DOPADOP(0) => dina_reg_2_n_88,
      DOPBDOP(3 downto 0) => NLW_dina_reg_2_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_dina_reg_2_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => dina_reg_0_i_1_n_0,
      ENBWREN => '0',
      INJECTDBITERR => NLW_dina_reg_2_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_dina_reg_2_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_dina_reg_2_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => valid_0,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_dina_reg_2_SBITERR_UNCONNECTED,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
down_a_level_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44440C0044440000"
    )
        port map (
      I0 => p_1_in,
      I1 => is_full,
      I2 => kd_ready_i_3_n_0,
      I3 => valid_input,
      I4 => valid_desc,
      I5 => down_a_level_reg_n_0,
      O => down_a_level_i_1_n_0
    );
down_a_level_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => down_a_level_i_1_n_0,
      Q => down_a_level_reg_n_0,
      R => '0'
    );
get_addr_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => valid,
      Q => get_addr,
      R => '0'
    );
kd_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEAAAAAAA2AA"
    )
        port map (
      I0 => kd_ready_i_2_n_0,
      I1 => is_full,
      I2 => kd_ready_i_3_n_0,
      I3 => valid_input,
      I4 => valid_desc,
      I5 => \^kd_ready_o\,
      O => kd_ready_i_1_n_0
    );
kd_ready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F404FFFF"
    )
        port map (
      I0 => kd_ready_i_3_n_0,
      I1 => wr_ack,
      I2 => valid_desc,
      I3 => p_1_in,
      I4 => is_full,
      O => kd_ready_i_2_n_0
    );
kd_ready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => kd_ready_i_4_n_0,
      I1 => current_level(8),
      I2 => current_level(7),
      I3 => current_level(6),
      I4 => current_level(10),
      I5 => current_level(9),
      O => kd_ready_i_3_n_0
    );
kd_ready_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => current_level(5),
      I1 => current_level(3),
      I2 => current_level(4),
      I3 => current_level(0),
      I4 => current_level(1),
      I5 => current_level(2),
      O => kd_ready_i_4_n_0
    );
kd_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => kd_ready_i_1_n_0,
      Q => \^kd_ready_o\,
      R => '0'
    );
leqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => leqOp_carry_n_0,
      CO(2) => leqOp_carry_n_1,
      CO(1) => leqOp_carry_n_2,
      CO(0) => leqOp_carry_n_3,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => leqOp_carry_i_1_n_0,
      DI(1) => leqOp_carry_i_2_n_0,
      DI(0) => leqOp_carry_i_3_n_0,
      O(3 downto 0) => NLW_leqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => leqOp_carry_i_4_n_0,
      S(2) => leqOp_carry_i_5_n_0,
      S(1) => leqOp_carry_i_6_n_0,
      S(0) => leqOp_carry_i_7_n_0
    );
\leqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => leqOp_carry_n_0,
      CO(3 downto 2) => \NLW_leqOp_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => data4,
      CO(0) => \leqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_leqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \leqOp_carry__0_i_1_n_0\,
      S(0) => \leqOp_carry__0_i_2_n_0\
    );
\leqOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => desc(10),
      I1 => desc(11),
      O => \leqOp_carry__0_i_1_n_0\
    );
\leqOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => desc(8),
      I1 => desc(9),
      O => \leqOp_carry__0_i_2_n_0\
    );
leqOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => R(4),
      I1 => desc(4),
      I2 => desc(5),
      I3 => R(5),
      O => leqOp_carry_i_1_n_0
    );
leqOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => R(2),
      I1 => desc(2),
      I2 => desc(3),
      I3 => R(3),
      O => leqOp_carry_i_2_n_0
    );
leqOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => R(0),
      I1 => desc(0),
      I2 => desc(1),
      I3 => R(1),
      O => leqOp_carry_i_3_n_0
    );
leqOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => desc(6),
      I1 => desc(7),
      O => leqOp_carry_i_4_n_0
    );
leqOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(4),
      I1 => desc(4),
      I2 => R(5),
      I3 => desc(5),
      O => leqOp_carry_i_5_n_0
    );
leqOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(2),
      I1 => desc(2),
      I2 => R(3),
      I3 => desc(3),
      O => leqOp_carry_i_6_n_0
    );
leqOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => R(0),
      I1 => desc(0),
      I2 => R(1),
      I3 => desc(1),
      O => leqOp_carry_i_7_n_0
    );
valid_bin_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => valid_desc,
      I1 => is_full,
      I2 => p_1_in,
      O => valid_bin_i_1_n_0
    );
valid_bin_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => valid_bin_i_1_n_0,
      Q => valid_bin,
      R => '0'
    );
valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAA"
    )
        port map (
      I0 => valid,
      I1 => down_a_level_reg_n_0,
      I2 => valid_input,
      I3 => is_full,
      O => valid_i_1_n_0
    );
valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => valid_i_1_n_0,
      Q => valid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_kd_tree_0_0 is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_kd_tree_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_kd_tree_0_0 : entity is "design_1_kd_tree_0_0,kd_tree,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_kd_tree_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_kd_tree_0_0 : entity is "kd_tree,Vivado 2016.4";
end design_1_kd_tree_0_0;

architecture STRUCTURE of design_1_kd_tree_0_0 is
begin
U0: entity work.design_1_kd_tree_0_0_kd_tree
     port map (
      address_out(11 downto 0) => address_out(11 downto 0),
      address_to_get(13 downto 0) => address_to_get(13 downto 0),
      center_addr(13 downto 0) => center_addr(13 downto 0),
      clk => clk,
      desc(11 downto 0) => desc(11 downto 0),
      get_addr => get_addr,
      is_full => is_full,
      kd_ready_o => kd_ready_o,
      valid_bin => valid_bin,
      valid_desc => valid_desc,
      valid_input => valid_input,
      wr_ack => wr_ack
    );
end STRUCTURE;
