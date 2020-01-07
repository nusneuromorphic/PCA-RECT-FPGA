----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Garrick Orchard
-- 
-- Create Date:    15:57:28 12/15/2010 
-- Design Name: 
-- Module Name:    ATIS_dummy - Behavioral 
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

entity avg_cal is
    Port ( 		    
        clk         :   in  STD_LOGIC;
        en          :   in  STD_LOGIC;
        detect      :   in  STD_LOGIC;
        c_valid     :   in  STD_LOGIC;
        coor        :   in  STD_LOGIC_VECTOR(15 downto 0);
        ff_empty    :   in  STD_LOGIC;
        ff_count    :   in  STD_LOGIC_VECTOR(13 DOWNTO 0);
        
        ff_rd       :   out STD_LOGIC;
        sumx        :   out STD_LOGIC_VECTOR(15 downto 0);
        sumy        :   out STD_LOGIC_VECTOR(15 downto 0);
        divisor     :   out STD_LOGIC_VECTOR(7 downto 0);
        divide      :   out STD_LOGIC
    );
end avg_cal;

architecture Behavioral of avg_cal is
--signal  not_empty   :   STD_LOGIC;
signal  avg :   STD_LOGIC;
signal  sumx_res :   STD_LOGIC_VECTOR(15 downto 0);
signal  sumy_res :   STD_LOGIC_VECTOR(15 downto 0);
signal  count_res   :   STD_LOGIC_VECTOR(7 DOWNTO 0);
signal  divide_res  :   STD_LOGIC;
begin

process(clk)
begin
    if rising_edge(clk) then
        if en = '1' then
            if detect = '1' then
                avg <=  '1';
                count_res   <=  ff_count(7 downto 0);
                divide_res  <=  '0';
            elsif ff_empty = '1' and avg = '1' then
                avg <=  '0';
                divide_res  <=  '1';
            elsif avg = '0' then
                divide_res  <=  '0';
            end if;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if avg = '1' then
            ff_rd   <=  '1';
        else
            ff_rd   <=  '0';
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if divide_res = '1' then
            divide   <=  '1';
            sumx    <=  sumx_res;
            sumy    <=  sumy_res;
            divisor <=  count_res;
        else
            divide   <=  '0';
            sumx    <=  (others => '0');
            sumy    <=  (others => '0');
            divisor <=  x"01";
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if detect = '1' then
            sumx_res    <=  (others => '0');
            sumy_res    <=  (others => '0');
        elsif c_valid = '1' then
            sumx_res    <=  sumx_res + coor(7 downto 0);
            sumy_res    <=  sumy_res + coor(15 downto 8);
        end if;
    end if;
end process;

end Behavioral;