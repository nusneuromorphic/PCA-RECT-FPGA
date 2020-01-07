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

entity simulate_submodule_template is
--  Port ( );
end simulate_submodule_template;

architecture Behavioral of simulate_submodule_template is

component submodule_template
    Port ( 	    clk 			: in  STD_LOGIC;
					reset			: in  STD_LOGIC;
					
					enable			: in  STD_LOGIC;
					output	        : out STD_LOGIC_VECTOR(7 downto 0)
			  );
end component;

signal clk    : STD_LOGIC := '0';
signal reset  : STD_LOGIC := '1';
signal enable : STD_LOGIC := '0';
signal output : STD_LOGIC_VECTOR(7 downto 0);


-- Clock period definitions
constant clk_period : time := 10 ns;
   
begin

uut : submodule_template
port map(
    clk     => clk,
    reset   => reset,
    enable  => enable,
    output  => output
);

 -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
   
   
   stim_proc: process
     
    begin        
       -- hold reset state for 100 ns.
       reset <= '1';
       wait for 100 ns;    
       reset <= '0';
       wait for clk_period*100;
       enable <= '1';
       
       wait for clk_period*10000;
 
       wait;
    end process;
    
    
end Behavioral;
