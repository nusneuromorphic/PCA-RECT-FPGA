-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
-- Date        : Mon May 28 21:43:25 2018
-- Host        : mmrl01.ee.nus.edu.sg running 64-bit CentOS Linux release 7.4.1708 (Core)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_kd_tree_0_0_stub.vhdl
-- Design      : design_1_kd_tree_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,ena,valid_input,is_full,center_addr[13:0],valid_desc,desc[11:0],wr_ack,get_addr,address_to_get[13:0],valid_bin,address_out[11:0],kd_ready_o";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "kd_tree,Vivado 2016.4";
begin
end;
