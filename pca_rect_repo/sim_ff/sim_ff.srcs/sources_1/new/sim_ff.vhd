----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.03.2018 16:33:53
-- Design Name: 
-- Module Name: sim_ff - Behavioral
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

entity sim_ff is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           D : in STD_LOGIC;
           Q : out STD_LOGIC);
end sim_ff;

architecture Behavioral of sim_ff is
signal myreg    :   STD_LOGIC   :=  '0';
begin
Q   <=  myreg;
process (clk)
begin
   if clk'event and clk='1' then
      if rst='1' then
         myreg <= '0';
      else
        if D = '1' then
            myreg   <=  '1';
        end if;            
      end if;
   end if;
end process;

end Behavioral;
