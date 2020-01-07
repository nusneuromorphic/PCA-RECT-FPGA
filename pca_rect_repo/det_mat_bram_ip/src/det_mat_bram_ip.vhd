--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.4 (lin64) Build 1756540 Mon Jan 23 19:11:19 MST 2017
--Date        : Wed Jun 27 12:45:18 2018
--Host        : mmrl01.ee.nus.edu.sg running 64-bit CentOS Linux release 7.4.1708 (Core)
--Command     : generate_target det_mat_bram_ip.bd
--Design      : det_mat_bram_ip
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity det_mat_bram_ip is
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
  attribute core_generation_info : string;
  attribute core_generation_info of det_mat_bram_ip : entity is "det_mat_bram_ip,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=det_mat_bram_ip,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute hw_handoff : string;
  attribute hw_handoff of det_mat_bram_ip : entity is "det_mat_bram_ip.hwdef";
end det_mat_bram_ip;

architecture STRUCTURE of det_mat_bram_ip is
  component det_mat_bram_ip_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component det_mat_bram_ip_blk_mem_gen_0_0;
  component det_mat_bram_ip_c_shift_ram_0_0 is
  port (
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component det_mat_bram_ip_c_shift_ram_0_0;
  component det_mat_bram_ip_c_shift_ram_0_1 is
  port (
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component det_mat_bram_ip_c_shift_ram_0_1;
  component det_mat_bram_ip_det_mat_bram_src_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    we : in STD_LOGIC;
    clr : in STD_LOGIC;
    address : in STD_LOGIC_VECTOR ( 15 downto 0 );
    din_val : in STD_LOGIC_VECTOR ( 7 downto 0 );
    full10k : in STD_LOGIC;
    clr_address : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout_addr : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout_val : out STD_LOGIC_VECTOR ( 7 downto 0 );
    we_val : out STD_LOGIC;
    ff_rst : out STD_LOGIC;
    we_out : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 );
    save : out STD_LOGIC;
    save_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    detect : out STD_LOGIC
  );
  end component det_mat_bram_ip_det_mat_bram_src_0_0;
  signal address_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal blk_mem_gen_0_doutb : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal c_shift_ram_0_Q : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal c_shift_ram_1_Q : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clka_1 : STD_LOGIC;
  signal clr_1 : STD_LOGIC;
  signal clr_address_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal det_mat_bram_src_0_detect : STD_LOGIC;
  signal det_mat_bram_src_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal det_mat_bram_src_0_dout_addr : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal det_mat_bram_src_0_dout_val : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal det_mat_bram_src_0_ff_rst : STD_LOGIC;
  signal det_mat_bram_src_0_save : STD_LOGIC;
  signal det_mat_bram_src_0_save_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal det_mat_bram_src_0_we_out : STD_LOGIC;
  signal det_mat_bram_src_0_we_val : STD_LOGIC;
  signal en_1 : STD_LOGIC;
  signal full10k_1 : STD_LOGIC;
  signal we_1 : STD_LOGIC;
begin
  address_1(15 downto 0) <= address(15 downto 0);
  clka_1 <= clk;
  clr_1 <= clr;
  clr_address_1(15 downto 0) <= clr_address(15 downto 0);
  detect <= det_mat_bram_src_0_detect;
  dout(15 downto 0) <= det_mat_bram_src_0_dout(15 downto 0);
  en_1 <= en;
  ff_rst <= det_mat_bram_src_0_ff_rst;
  full10k_1 <= full10k;
  save <= det_mat_bram_src_0_save;
  save_out(15 downto 0) <= det_mat_bram_src_0_save_out(15 downto 0);
  we_1 <= we;
  we_out <= det_mat_bram_src_0_we_out;
blk_mem_gen_0: component det_mat_bram_ip_blk_mem_gen_0_0
     port map (
      addra(15 downto 0) => det_mat_bram_src_0_dout_addr(15 downto 0),
      addrb(15 downto 0) => address_1(15 downto 0),
      clka => clka_1,
      clkb => clka_1,
      dina(7 downto 0) => det_mat_bram_src_0_dout_val(7 downto 0),
      doutb(7 downto 0) => blk_mem_gen_0_doutb(7 downto 0),
      wea(0) => det_mat_bram_src_0_we_val
    );
c_shift_ram_0: component det_mat_bram_ip_c_shift_ram_0_0
     port map (
      CLK => clka_1,
      D(15 downto 0) => address_1(15 downto 0),
      Q(15 downto 0) => c_shift_ram_0_Q(15 downto 0)
    );
c_shift_ram_1: component det_mat_bram_ip_c_shift_ram_0_1
     port map (
      CLK => clka_1,
      D(15) => we_1,
      D(14) => we_1,
      D(13) => we_1,
      D(12) => we_1,
      D(11) => we_1,
      D(10) => we_1,
      D(9) => we_1,
      D(8) => we_1,
      D(7) => we_1,
      D(6) => we_1,
      D(5) => we_1,
      D(4) => we_1,
      D(3) => we_1,
      D(2) => we_1,
      D(1) => we_1,
      D(0) => we_1,
      Q(15 downto 0) => c_shift_ram_1_Q(15 downto 0)
    );
det_mat_bram_src_0: component det_mat_bram_ip_det_mat_bram_src_0_0
     port map (
      address(15 downto 0) => c_shift_ram_0_Q(15 downto 0),
      clk => clka_1,
      clr => clr_1,
      clr_address(15 downto 0) => clr_address_1(15 downto 0),
      detect => det_mat_bram_src_0_detect,
      din_val(7 downto 0) => blk_mem_gen_0_doutb(7 downto 0),
      dout(15 downto 0) => det_mat_bram_src_0_dout(15 downto 0),
      dout_addr(15 downto 0) => det_mat_bram_src_0_dout_addr(15 downto 0),
      dout_val(7 downto 0) => det_mat_bram_src_0_dout_val(7 downto 0),
      en => en_1,
      ff_rst => det_mat_bram_src_0_ff_rst,
      full10k => full10k_1,
      save => det_mat_bram_src_0_save,
      save_out(15 downto 0) => det_mat_bram_src_0_save_out(15 downto 0),
      we => c_shift_ram_1_Q(0),
      we_out => det_mat_bram_src_0_we_out,
      we_val => det_mat_bram_src_0_we_val
    );
end STRUCTURE;
