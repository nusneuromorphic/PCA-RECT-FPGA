----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.06.2018 14:40:38
-- Design Name: 
-- Module Name: det_words - Behavioral
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
use std.textio.all;
use ieee.std_logic_textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity det_words is
    Generic (
        input_file  :   string  :=  "det_codewords.mif"
    );
    Port ( 
        clk : in STD_LOGIC;
        valid   :   in  STD_LOGIC;
        index   :   in  STD_LOGIC_VECTOR (11 downto 0);
        
        we_o    :   out STD_LOGIC;
        validate    :   out STD_LOGIC
    );
end det_words;

architecture Behavioral of det_words is

type rom_type is array (0 to 950) of STD_LOGIC_VECTOR (0 downto 0);

impure function InitRomFromFile (RomFileName : in string) return rom_type is
--    FILE romfile : text is in RomFileName;
    file romfile : text open READ_MODE is RomFileName;
    variable RomFileLine : line;
    variable temp_bv : bit_vector(0 downto 0);
    variable rom : rom_type;
    begin
    for i in rom_type'range loop
        readline(romfile, RomFileLine);
        read(RomFileLine, temp_bv);
        rom(i) := to_stdlogicvector(temp_bv);
    end loop;
    return rom;
end function;

signal  ROM : rom_type := InitRomFromFile(input_file);
signal  res_val :   STD_LOGIC;

begin

process(clk)
variable    temp    :   STD_LOGIC_VECTOR (0 downto 0);
begin
    if rising_edge(clk) then
        if valid = '1' then
            temp    :=  ROM(conv_integer(index));
            we_o    <=  '1';
            if temp(0) = '1' then
                res_val <=  '1';
            else
                res_val <=  '0';
            end if;
        else
            we_o    <=  '0';
            res_val <=  '0';
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        validate    <=  res_val;
    end if;
end process;

end Behavioral;
