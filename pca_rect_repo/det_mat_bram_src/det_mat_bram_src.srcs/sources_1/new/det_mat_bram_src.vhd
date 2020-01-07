----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Garrick Orchard
-- 
-- Create Date:    15:57:28 12/15/2010 
-- Design Name: 
-- Module Name:    det_mat_bram_src - Behavioral 
-- Project Name: 
-- Target Devices: Xilinx Spartan 6 lx150
-- Tool versions: 
-- Description: This module recreates an ATIS event stream as if it had come from the ATIS sensor itself.
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_misc.all;
use IEEE.std_logic_unsigned.all;

entity det_mat_bram_src is
    Port (  
        clk             :   in  STD_LOGIC;
        en              :   in  STD_LOGIC;
        we              :   in  STD_LOGIC;
        clr             :   in  STD_LOGIC;
        address         :   in  STD_LOGIC_VECTOR(15 downto 0);
        din_val         :   in  STD_LOGIC_VECTOR(7 downto 0);
        full10k         :   in  STD_LOGIC;
        clr_address     :   in  STD_LOGIC_VECTOR(15 downto 0);
        
        dout_addr       :   out STD_LOGIC_VECTOR(15 downto 0);
        dout_val        :   out STD_LOGIC_VECTOR(7 downto 0);
        we_val          :   out STD_LOGIC;
        ff_rst          :   out STD_LOGIC;
        we_out          :   out STD_LOGIC;
        dout            :   out STD_LOGIC_VECTOR(15 downto 0);
        save            :   out STD_LOGIC;
        save_out        :   out STD_LOGIC_VECTOR(15 downto 0);
        detect          :   out STD_LOGIC
    );
end det_mat_bram_src;

architecture Behavioral of det_mat_bram_src is

--type    ram_type    is array    (0 to 46320)    of  STD_LOGIC_VECTOR (7 downto 0);
--signal  RAM :   ram_type    :=  (others => (others => '0'));
signal  res_dout, res_add, res_dout_t   :   STD_LOGIC_VECTOR(15 downto 0);
signal  maxnum  :   STD_LOGIC_VECTOR(7 downto 0)   :=  (others => '0');
signal  tmpnum  :   STD_LOGIC_VECTOR(7 downto 0);
signal  res_we_out  :   STD_LOGIC;
signal  getmax, is_full :   STD_LOGIC   :=  '0';
signal  res_clr, res_we :   STD_LOGIC   :=  '0';
signal  res_val : STD_LOGIC_VECTOR (7 downto 0);
signal  clr_val :   STD_LOGIC;
begin

we_val  <=  getmax or clr_val;
dout_val    <=  tmpnum;
dout_addr   <=  res_dout;

process(clk)
begin
    if clk'event and clk = '1' then
        if clr = '1' then
            res_dout    <=  clr_address;
            clr_val <=  '1';
            tmpnum  <=  (others => '0');
        elsif en = '1' then
            if res_we = '1' then
                tmpnum  <=  res_val + 1;
                getmax  <=  '1';
                res_dout    <=  res_add;
                save_out    <=  res_add;
                if res_val = x"00" then
                    save    <=   '1';
                else
                    save    <=  '0';
                end if;
            else
                getmax  <=  '0';
                save    <=  '0';
            end if;
        else
            clr_val <=  '0';
            getmax  <=  '0';
            save    <=  '0';
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if clr = '1' then
            maxnum  <=  (others => '0');
        elsif en = '1' then
            if getmax = '1' then
                if tmpnum > maxnum then
                    maxnum  <=  tmpnum;
                    ff_rst  <=  '1';
                    res_we_out  <=  '1';
                elsif tmpnum = maxnum then
                    ff_rst  <=  '0';
                    res_we_out  <=  '1';
                else
                    ff_rst  <=  '0';
                    res_we_out  <=  '0';
                end if;
            else
                ff_rst  <=  '0';
                res_we_out  <=  '0';
            end if;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if en = '1' then
            res_we  <=  we;
            res_val <=  din_val;
            res_add <=  address;
            res_dout_t    <=  res_dout;
            we_out  <=  res_we_out;
            dout    <=  res_dout_t;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if clr = '1' then
            is_full <=  '0';
        elsif full10k = '1' and is_full = '0' then
            detect  <=  '1';
            is_full <=  '1';
        else
            detect  <=  '0';
        end if;
    end if;
end process;

end Behavioral;