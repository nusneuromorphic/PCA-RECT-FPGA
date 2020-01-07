--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
--Date        : Mon May 28 21:40:34 2018
--Host        : mmrl01.ee.nus.edu.sg running 64-bit CentOS Linux release 7.4.1708 (Core)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
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
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    clk : in STD_LOGIC;
    valid_input : in STD_LOGIC;
    is_full : in STD_LOGIC;
    ena : in STD_LOGIC;
    center_addr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    wr_ack : in STD_LOGIC;
    valid_bin : out STD_LOGIC;
    valid_desc : in STD_LOGIC;
    get_addr : out STD_LOGIC;
    kd_ready_o : out STD_LOGIC;
    address_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      address_out(11 downto 0) => address_out(11 downto 0),
      center_addr(13 downto 0) => center_addr(13 downto 0),
      clk => clk,
      ena => ena,
      get_addr => get_addr,
      is_full => is_full,
      kd_ready_o => kd_ready_o,
      valid_bin => valid_bin,
      valid_desc => valid_desc,
      valid_input => valid_input,
      wr_ack => wr_ack
    );
end STRUCTURE;
