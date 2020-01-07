-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:kd_tree:1.0
-- IP Revision: 10

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_kd_tree_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    valid_input : IN STD_LOGIC;
    is_full : IN STD_LOGIC;
    center_addr : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    valid_desc : IN STD_LOGIC;
    desc : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    wr_ack : IN STD_LOGIC;
    get_addr : OUT STD_LOGIC;
    address_to_get : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
    valid_bin : OUT STD_LOGIC;
    address_out : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    kd_ready_o : OUT STD_LOGIC
  );
END design_1_kd_tree_0_0;

ARCHITECTURE design_1_kd_tree_0_0_arch OF design_1_kd_tree_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_kd_tree_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT kd_tree IS
    GENERIC (
      level : INTEGER;
      input_file : STRING
    );
    PORT (
      clk : IN STD_LOGIC;
      ena : IN STD_LOGIC;
      valid_input : IN STD_LOGIC;
      is_full : IN STD_LOGIC;
      center_addr : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
      valid_desc : IN STD_LOGIC;
      desc : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      wr_ack : IN STD_LOGIC;
      get_addr : OUT STD_LOGIC;
      address_to_get : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
      valid_bin : OUT STD_LOGIC;
      address_out : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      kd_ready_o : OUT STD_LOGIC
    );
  END COMPONENT kd_tree;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : kd_tree
    GENERIC MAP (
      level => 11,
      input_file => "kd_tree.mif"
    )
    PORT MAP (
      clk => clk,
      ena => ena,
      valid_input => valid_input,
      is_full => is_full,
      center_addr => center_addr,
      valid_desc => valid_desc,
      desc => desc,
      wr_ack => wr_ack,
      get_addr => get_addr,
      address_to_get => address_to_get,
      valid_bin => valid_bin,
      address_out => address_out,
      kd_ready_o => kd_ready_o
    );
END design_1_kd_tree_0_0_arch;
