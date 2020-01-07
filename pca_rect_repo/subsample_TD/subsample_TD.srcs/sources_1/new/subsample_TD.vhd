----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2018 16:22:49
-- Design Name: 
-- Module Name: subsample_TD - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity subsample_TD is
    generic (
        WIDTH   :   integer :=  7
    );
    Port (
        coor_x  :   in  STD_LOGIC_VECTOR (WIDTH downto 0);
        coor_y  :   in  STD_LOGIC_VECTOR (WIDTH downto 0);
        address :   out STD_LOGIC_VECTOR (13 downto 0)
    );
end subsample_TD;

architecture Behavioral of subsample_TD is

begin

address <= std_logic_vector(unsigned(coor_y(7 downto 1)) + 3) & std_logic_vector(unsigned(coor_x(7 downto 1)) + 3);

end Behavioral;
