----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.02.2018 14:43:12
-- Design Name: 
-- Module Name: kd_tree - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity kd_tree is
    generic (
        level : integer := 2;
        input_file  :   string  :=  "kd_tree.mif"
    );
    Port ( 
            clk : in STD_LOGIC;
            ena : in STD_LOGIC;
            valid_input : in STD_LOGIC;
            is_full : in STD_LOGIC;
            center_addr : in STD_LOGIC_VECTOR (13 downto 0);
            valid_desc : in STD_LOGIC;
            desc : in STD_LOGIC_VECTOR (11 downto 0);
            wr_ack  :   in std_logic;
           
            get_addr    :out STD_LOGIC;
            address_to_get : out STD_LOGIC_VECTOR(13 downto 0);
            valid_bin   :   out std_logic;
            address_out : out STD_LOGIC_VECTOR (11 downto 0);
            kd_ready_o : out STD_LOGIC
    );
end kd_tree;

architecture Behavioral of kd_tree is

type rom_type is array (0 to 2**(level) - 1) of std_logic_vector (63 downto 0);

impure function InitRomFromFile (RomFileName : in string) return rom_type is
--    FILE romfile : text is in RomFileName;
    file romfile : text open READ_MODE is RomFileName;
    variable RomFileLine : line;
    variable temp_bv : bit_vector(63 downto 0);
    variable rom : rom_type;
    begin
    for i in rom_type'range loop
        readline(romfile, RomFileLine);
        read(RomFileLine, temp_bv);
        rom(i) := to_stdlogicvector(temp_bv);
    end loop;
    return rom;
end function;

--signal ROM : rom_type := InitRomFromFile("/home/andres/workspace/recognition_ken/kd_tree_node/" & integer'image(level) & ".dat");
--signal ROM : rom_type := InitRomFromFile("kd_tree.val");
--signal ROM : rom_type := InitRomFromFile("../kd_tree.mif");
signal ROM : rom_type := InitRomFromFile(input_file);
--signal addra : STD_LOGIC_VECTOR (7 downto 0);
signal valid, down_a_level : std_logic;
signal get_addr_res : std_logic;
signal dina : STD_LOGIC_VECTOR (63 downto 0);
signal current_level : integer range 0 to 2**(level) - 1 := 0;
signal kd_ready, kd_ready_tmp : STD_LOGIC;
--shared variable current_level : integer range 0 to 2**(level) - 1 := 0;
--signal thresOfDim : STD_LOGIC_VECTOR (11 downto 0);

begin
    kd_ready_o <= kd_ready; -- or kd_ready_tmp;
--    dina <= ROM(current_level - 1) when (valid = '1' or valid_desc = '1') else (others => 'U');
--    process(clk)
--    begin
--        if rising_edge(clk) then
--            if is_full = '1' and (valid_input = '1' or down_a_level = '1') and current_level /= 0 then
--                dina <= ROM(current_level - 1);
--            end if;
--        end if;
--    end process;
    
    process(clk)
    begin
        if rising_edge(clk) then
            if is_full = '1' then
                if valid_input = '1' then
                    valid <= '1';
                    dina <= ROM(0);
                elsif down_a_level = '1' then
                    valid <= '1';
                    dina <= ROM(current_level - 1);
                else
                    valid <= '0';
                end if;
            end if;
        end if;
    end process;
    
    process(clk)
    variable quot, rema : integer range -4 to 3;
    begin
        if rising_edge(clk) then
            if valid = '1' then
                get_addr <= '1';
--                get_addr_res    <=  '1';
                quot := to_integer(signed(dina(5 downto 3)));
                rema := to_integer(signed(dina(2 downto 0)));
                address_to_get <= std_logic_vector(to_unsigned(to_integer(signed(center_addr(13 downto 7))) + rema, 7)) 
                                & std_logic_vector(to_unsigned(to_integer(signed(center_addr(6 downto 0))) + quot, 7)); -- Calcualte address
            else
                get_addr <= '0';
--                get_addr_res    <=  '0';
                address_to_get <= (others => 'U');
            end if;
        end if;
    end process;
    
    process(clk)
    variable thresa : STD_LOGIC_VECTOR (5 downto 0);
    begin
        if rising_edge(clk) then
            if is_full = '1' then
                if valid_desc = '1' then
                    thresa := dina(11 downto 6);
                    if desc <= thresa then
                        if dina(48) = '1' then
                            address_out <= dina(23 downto 12);
                            valid_bin   <=  '1';
                            kd_ready <= '1';
                            down_a_level <= '0';
                            current_level <= 0;
                        else
                            current_level <= to_integer(unsigned(dina(47 downto 36))); -- LEFT NODE ADDRESS
                            kd_ready <= '0';
                            down_a_level <= '1';
                            valid_bin   <=  '0';
                        end if;
                    else
                        if dina(48) = '1' then
                            address_out <= dina(23 downto 12);
                            valid_bin   <=  '1';
                            kd_ready <= '1';
                            down_a_level <= '0';
                            current_level <= 0;
                        else
                            current_level <= to_integer(unsigned(dina(35 downto 24))); -- RIGHT NODE ADDRESS
                            kd_ready <= '0';
                            down_a_level <= '1';
                            valid_bin   <=  '0';
                        end if;
                    end if;
                elsif current_level /= 0 then
                    kd_ready <= '0';
                    down_a_level <= '0';
                    valid_bin   <=  '0';
                elsif valid_input = '1' then
                    current_level <= 1;
                    valid_bin   <=  '0';
                else
                    kd_ready <= '0' or wr_ack;
                    current_level <= 0;
                    down_a_level <= '0';
                    valid_bin   <=  '0';
                end if;
            else
                kd_ready <= '1';
                down_a_level <= '0';
                current_level <= 0;
                valid_bin   <=  '0';
            end if;
        end if;
    end process;
    
    process(clk)
    begin
        if rising_edge(clk) then
            kd_ready_tmp <= kd_ready;
        end if;
    end process;
                
end Behavioral;
