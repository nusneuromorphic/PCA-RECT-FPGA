----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.02.2018 16:21:50
-- Design Name: 
-- Module Name: simulate_simple_counter - Behavioral
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
use std.textio.all;
use IEEE.STD_LOGIC_textio.ALL;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;
use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity simple_counter_sim is
--  Port ( );
end simple_counter_sim;

architecture Behavioral of simple_counter_sim is

component simple_counter
    port(
        clk :   in  std_logic;
        clr :   in  std_logic;
        count   :   in  std_logic;
        full    :   out std_logic
    );
end component;

signal clk  :   STD_LOGIC   :=  '0';
signal clr  :   STD_LOGIC   :=  '0';
signal count    :   STD_LOGIC   :=  '0';
signal full :   STD_LOGIC;


-- Clock period definitions
constant clk_period : time := 10 ns;
   
begin

uut : simple_counter
port map(
    clk     =>  clk,
    clr     =>  clr,
    count   =>  count,
    full    =>  full
);

 -- Clock process definitions
clk_process: process
begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
end process;
   
   
stim_proc: process
begin
    clr  <=  '0';
    count    <=  '0';
    wait for clk_period*10;    
    clr  <=  '1';
    wait for clk_period*10;
    clr <=  '0';
    wait for clk_period*10;
    for i in 0 to 300 loop
        count   <=  '1';
        wait for clk_period;
        count   <=  '0';
        wait for clk_period;
   end loop;

   wait;
end process;
    
    
end Behavioral;
