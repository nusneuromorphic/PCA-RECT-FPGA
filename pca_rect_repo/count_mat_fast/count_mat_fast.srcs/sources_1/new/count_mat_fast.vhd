----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.05.2018 14:32:02
-- Design Name: 
-- Module Name: count_mat_fast - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity count_mat_fast is
    Port ( 
        clk :   in STD_LOGIC;
        we_add  :   in  STD_LOGIC;
        address_add :   in  STD_LOGIC_VECTOR(13 downto 0);
        we_sub  :   in  STD_LOGIC;
        address_sub :   in  STD_LOGIC_VECTOR(13 downto 0);
        kd_get      : in std_logic;
        kd_address  : in std_logic_vector(13 downto 0);
        
        res_add, res_sub    :   out std_logic;
        current :   out std_logic_vector(13 downto 0);
        kd_valid    :   out std_logic;
        kd_value    :   out std_logic_vector(11 downto 0)
    );
end count_mat_fast;

architecture Behavioral of count_mat_fast is

--type ram_type is array (16384 downto 0) of STD_LOGIC_VECTOR (11 downto 0);
type ram_type is array (12414 downto 0) of STD_LOGIC_VECTOR (11 downto 0);
signal RAM : ram_type := (others => (others => '0'));
attribute   ram_style :   string;
attribute   ram_style of RAM   :   signal is "distributed";

signal  res_current : STD_LOGIC_VECTOR (13 downto 0);
signal  val_add :   integer range 0 to 4095;
signal  val_alt :   integer range -1 to 1;
signal  add_or_sub  :   STD_LOGIC;
signal  res_address :   STD_LOGIC_VECTOR(13 downto 0);
begin   

res_current <= address_add;

process(clk)
begin
    if rising_edge(clk) then
        add_or_sub  <=  we_add or we_sub;
        current <= res_current;
        if we_add = '1' then
            val_alt <=  1;
            val_add <=  to_integer(unsigned(RAM(conv_integer(address_add))));
            res_address <=  address_add;
        elsif we_sub = '1' then
            val_alt <=  -1;
            val_add <=  to_integer(unsigned(RAM(conv_integer(address_sub))));
            res_address <=  address_sub;
        else
            val_alt <=  0;
            val_add <=  0;
        end if;
        res_add <=  we_add;
        res_sub <=  we_sub;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if add_or_sub = '1' then
            RAM(conv_integer(res_address))  <=  std_logic_vector(to_unsigned((val_add + val_alt), 12));
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if kd_get = '1' then
            kd_valid <= '1';
            kd_value <= RAM(conv_integer(kd_address));
        else
            kd_valid <= '0';
        end if;
    end if;
end process;
end Behavioral;
