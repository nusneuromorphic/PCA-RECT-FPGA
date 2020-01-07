----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Andres Ussa
-- 
-- Create Date:    15:57:28 12/15/2010 
-- Design Name: 
-- Module Name:    svm_class - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;

library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_signed.all;
use std.textio.all;
use ieee.std_logic_textio.all;
use IEEE.NUMERIC_STD.ALL;

entity svm_class is
    generic (
        input_file_w    :   string  :=  "svm_w_bits.mif";
        input_file_b    :   string  :=  "svm_b_bits.mif";
        num_class   :   integer :=  4;
        block_size  :   integer :=  150
    );
    Port ( 		    
        clk         :   in  STD_LOGIC;
        rst         :   in  STD_LOGIC;
        en          :   in  STD_LOGIC;
        we          :   in  STD_LOGIC;
        
        add_address     :   in STD_LOGIC_VECTOR(11 downto 0);
        sub_address     :   in STD_LOGIC_VECTOR(11 downto 0);
        valid_addr      :   in STD_LOGIC;
        
        wout            :   out STD_LOGIC;
--        address_out     :   out STD_LOGIC_VECTOR(7 downto 0);
        pred_class      :   out STD_LOGIC_VECTOR(31 downto 0);
        good_pred       :   out STD_LOGIC
    );
end svm_class;

architecture Behavioral of svm_class is

type class_array is array (natural range <>) of std_logic_vector (47 downto 0);
signal  output_reg_add  :   class_array(0 to num_class - 1) :=  (others => (others => '0'));
signal  output_reg  :   class_array(0 to num_class - 1) :=  (others => (others => '0'));
signal  output_reg_bias :   class_array(0 to num_class - 1) :=  (others => (others => '0'));
signal  add_val_reg  :   class_array(0 to num_class - 1)    :=  (others => (others => '0'));
signal  sub_val_reg  :   class_array(0 to num_class - 1)    :=  (others => (others => '0'));
    
signal  res_we  :   STD_LOGIC;
signal  res_wout, res_wout_t    :   STD_LOGIC;
signal  res_sub :   STD_LOGIC;
signal  res_good    :   STD_LOGIC;
signal  get_max :   STD_LOGIC;
signal  max1, max2  :   integer range 0 to 3;
--signal  valid_addr_res  :   STD_LOGIC;
--signal  res_add_address :   STD_LOGIC_VECTOR(7 downto 0);

type rom_svm_w is array (0 to (block_size*num_class)-1) of std_logic_vector (47 downto 0);
impure function InitRomFromFile_w (RomFileName : in string) return rom_svm_w is
    file romfile : text open READ_MODE is RomFileName;
    variable RomFileLine : line;
    variable temp_bv : bit_vector(47 downto 0);
    variable rom : rom_svm_w;
    begin
    for i in rom_svm_w'range loop
        readline(romfile, RomFileLine);
        read(RomFileLine, temp_bv);
        rom(i) := to_stdlogicvector(temp_bv);
    end loop;
    return rom;
end function;
signal SVM_w : rom_svm_w := InitRomFromFile_w(input_file_w);

type rom_svm_b is array (0 to num_class - 1) of std_logic_vector (47 downto 0);
impure function InitRomFromFile_b (RomFileName : in string) return rom_svm_b is
    file romfile : text open READ_MODE is RomFileName;
    variable RomFileLine : line;
    variable temp_bv : bit_vector(47 downto 0);
    variable rom : rom_svm_b;
    begin
    for i in rom_svm_b'range loop
        readline(romfile, RomFileLine);
        read(RomFileLine, temp_bv);
        rom(i) := to_stdlogicvector(temp_bv);
    end loop;
    return rom;
end function;
signal SVM_b : rom_svm_b := InitRomFromFile_b(input_file_b);

begin

wout    <=  res_wout_t;

process(clk)
begin
    if rising_edge(clk) then
        if en = '1' then       
            if we = '1' then
                add_val_reg <=  (   
                    SVM_w(to_integer(unsigned(add_address))),
                    SVM_w(to_integer(unsigned(add_address)) + (block_size*1)),
                    SVM_w(to_integer(unsigned(add_address)) + (block_size*2)),
                    SVM_w(to_integer(unsigned(add_address)) + (block_size*3))
                );
            else
                add_val_reg <=  (others => (others => '0'));
            end if;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if en = '1' then       
            if valid_addr = '1' then              
                sub_val_reg <=  (   
                    SVM_w(to_integer(unsigned(sub_address))),
                    SVM_w(to_integer(unsigned(sub_address)) + (block_size*1)),
                    SVM_w(to_integer(unsigned(sub_address)) + (block_size*2)),
                    SVM_w(to_integer(unsigned(sub_address)) + (block_size*3))
                );
            else
                sub_val_reg <=  (others => (others => '0'));
            end if;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if en = '1' then       
            if res_sub = '1' then
                res_good    <=  '1';
                output_reg_bias <=  (
                    std_logic_vector(signed(output_reg(0)) + signed(SVM_b(0))),
                    std_logic_vector(signed(output_reg(1)) + signed(SVM_b(1))),
                    std_logic_vector(signed(output_reg(2)) + signed(SVM_b(2))),
                    std_logic_vector(signed(output_reg(3)) + signed(SVM_b(3)))
                );
            else
                res_good    <=  '0';
            end if;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if en = '1' then       
            if res_wout_t = '1' then
                res_sub    <=  '1';
--                if valid_addr_res = '1' then
                    for i in 0 to num_class - 1  loop
                        output_reg(i) <= std_logic_vector(
                                signed(output_reg_add(i))
                                - signed(sub_val_reg(i)));
                    end loop;
--                end if;
            else
                res_sub    <=  '0';
            end if;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if en = '1' then
            if rst = '1' then
                output_reg_add <= (others => (others => '0'));
--                wout    <=  '0';
--                address_out <= (others => 'U');
--                valid_addr_res  <=  '0';
                res_wout_t    <=  '0';
            elsif res_we = '1' then
                for i in 0 to num_class - 1  loop
                    output_reg_add(i) <= std_logic_vector(
                            signed(output_reg(i))
                            + signed(add_val_reg(i)));
                end loop;
--                wout    <=  '1';
                res_wout_t    <=  '1';
--                address_out <=  res_add_address;
--                valid_addr_res  <=  valid_addr;
            else
--                wout    <=  '0';
                res_wout_t    <=  '0';
--                address_out <= (others => 'U');
--                valid_addr_res  <=  '0';
            end if;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if en = '1' then
            res_we  <=  we;
--            res_wout    <=  res_wout_t;
--            res_add_address <=  add_address;
        end if;
    end if;
end process;

--process(clk)
--variable    index   :   integer :=  0;
--variable    maxi    :   signed(47 downto 0) :=  (others => '0');
----variable    temp_o  :   STD_LOGIC_VECTOR(num_class - 1 downto 0);
----variable    temp_o  :   integer :=  0;
--begin
--    if rising_edge(clk) then
--        if en = '1' then
--            maxi    :=  x"800000000000";
--            index   :=  0;
----            temp_o  := 0;
--            for i in 0 to num_class - 1 loop
--                if (signed(output_reg_bias(i)) > maxi) then
--                    maxi    :=  signed(output_reg_bias(i));
--                    index   :=  i;
--                end if;
--            end loop;
----            temp_o  :=  index;
--            pred_class  <=  std_logic_vector(to_unsigned(index, pred_class'length));
--        end if;
--    end if;
--end process;

process(clk)
begin
    if rising_edge(clk) then
        if en = '1' then
            if res_good = '1' then
                if  output_reg_bias(0) > output_reg_bias(1) then
                    max1    <=  0;
                else
                    max1    <=  1;
                end if;
            end if;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if en = '1' then
            if res_good = '1' then
                if  output_reg_bias(2) > output_reg_bias(3) then
                    max2    <=  2;
                else
                    max2    <=  3;
                end if;
            end if;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if en = '1' then
            if get_max = '1' then
                good_pred   <=  '1';
                if output_reg_bias(max1) > output_reg_bias(max2)  then
                    pred_class  <=  std_logic_vector(to_unsigned(max1, pred_class'length));
                else
                    pred_class  <=  std_logic_vector(to_unsigned(max2, pred_class'length));
                end if;
            else
                good_pred   <=  '0';
            end if;
        end if;
    end if;
end process;

process(clk)
begin
    if rising_edge(clk) then
        if en = '1' then
            get_max   <=  res_good;
        end if;
    end if;
end process;

--process(clk)
--begin
--    if rising_edge(clk) then
--        if en = '1' then
--            good_pred   <=  res_good;
--        end if;
--    end if;
--end process;
            
end Behavioral;