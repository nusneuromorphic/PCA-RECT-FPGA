----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.06.2018 17:25:06
-- Design Name: 
-- Module Name: hold_output - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity hold_output is
    Port ( clk : in STD_LOGIC;
           we   :   in  STD_LOGIC;
           rst  :   in  STD_LOGIC;
           coorx : in STD_LOGIC_VECTOR (15 downto 0);
           coory : in STD_LOGIC_VECTOR (15 downto 0);
           
           coorx_o : out STD_LOGIC_VECTOR (15 downto 0);
           coory_o : out STD_LOGIC_VECTOR (15 downto 0);
           valid    :   out STD_LOGIC);
end hold_output;

architecture Behavioral of hold_output is
signal  cx, cy  :   STD_LOGIC_VECTOR (15 downto 0);
signal  res_we  :   STD_LOGIC;
begin

coorx_o <=  cx;
coory_o <=  cy;
valid   <=  res_we;

process(clk)
begin
    if rising_edge(clk) then
        if rst = '1' then
            cx  <=  x"00F0";
            cy  <=  x"00B4";
            res_we  <=  '1';
        elsif we = '1' then
            cx  <=  coorx;
            cy  <=  coory;
            res_we  <=  '1';
        else
            res_we  <=  '0';
        end if;
    end if;
end process;

end Behavioral;
