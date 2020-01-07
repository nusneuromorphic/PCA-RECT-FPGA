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
--use IEEE.std_logic_arith.all;
--use IEEE.std_logic_misc.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity simple_counter is
    generic(
        cap :   integer range 0 to 10000    :=  200
    );
    port(
        clk :   in  std_logic;
        clr :   in  std_logic;
        count   :   in  std_logic;
        full    :   out std_logic
    );
end simple_counter;

architecture Behavioral of simple_counter is
signal tmp: std_logic_vector(13 downto 0);
begin

process (clk)
begin
    if (clk'event and clk='1') then
        if (clr='1') then
            tmp <=  (others => '0');
            full    <=  '0';
        elsif tmp = std_logic_vector(to_unsigned(cap, tmp'length)) then
            full    <=  '1';
        elsif count = '1' then
            tmp <=  tmp + 1;
            full    <=  '0';
        end if;
    end if;
end process;

end Behavioral;