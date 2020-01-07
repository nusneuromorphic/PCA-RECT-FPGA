----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.03.2018 17:11:47
-- Design Name: 
-- Module Name: design_1_wrapper_sim - Behavioral
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

entity design_1_wrapper_sim is
--  Port ( );
end design_1_wrapper_sim;

architecture Behavioral of design_1_wrapper_sim is
    component design_1_wrapper
        port (
            address_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
            center_addr : in STD_LOGIC_VECTOR ( 13 downto 0 );
            clk : in STD_LOGIC;
            ena : in STD_LOGIC;
            get_addr : out STD_LOGIC;
            is_full : in STD_LOGIC;
            kd_ready_o : out STD_LOGIC;
            valid_bin : out STD_LOGIC;
            valid_desc : in STD_LOGIC;
            valid_input : in STD_LOGIC;
            wr_ack : in STD_LOGIC
        );
    end component;
    
    signal clk : STD_LOGIC := '1';
    signal ena, valid_input, is_full, valid_desc, get_addr, wr_ack, kd_ready, valid_bin : STD_LOGIC;
    signal center_addr : STD_LOGIC_VECTOR (13 downto 0);
    signal address_out : STD_LOGIC_VECTOR (11 downto 0);
    
    constant clk_period : time := 10 ns;
begin
    uut : design_1_wrapper
    port map (
        address_out => address_out,
        center_addr => center_addr,
        clk => clk,
        ena => ena,
        get_addr => get_addr,
        is_full => is_full,
        kd_ready_o => kd_ready,
        valid_bin   =>  valid_bin,
        valid_desc => valid_desc,
        valid_input => valid_input,
        wr_ack  =>  wr_ack
    );
        
    clk <= not clk after clk_period / 2;
    
    stim_proc : process
    begin
        ena <= '0';
        is_full <= '0';
        valid_input <= '0';
        center_addr <= (others => 'U'); 
        valid_desc <= '0';
        wr_ack  <=  '0';
        wait until rising_edge(Clk);
        wait until rising_edge(Clk);
        ena <= '1';
        valid_input <= '0';
        is_full <= '0';
        center_addr <= (others => 'U'); 
        wait for clk_period * 10;
        wait until rising_edge(Clk);
        valid_input <= '1';
        is_full <= '1';
        center_addr <= "10" & x"D21";
        wait until rising_edge(Clk);
        valid_input <= '0';
        wait for clk_period * 3;
        valid_desc <= '1';
        wait until rising_edge(Clk);
        valid_desc <= '0';
        wait for clk_period * 4;
        valid_desc <= '1';
        wait until rising_edge(Clk);
        valid_desc <= '0';
        wait for clk_period * 4;
        valid_desc <= '1';
        wait until rising_edge(Clk);
        valid_desc <= '0';
        wait for clk_period * 4;
        valid_desc <= '1';
        wait until rising_edge(Clk);
        valid_desc <= '0';
        wait for clk_period * 4;
        valid_desc <= '1';
        wait until rising_edge(Clk);
        valid_desc <= '0';
        wait for clk_period * 4;
        valid_desc <= '1';
        wait until rising_edge(Clk);
        valid_desc <= '0';
        wait for clk_period * 4;
        valid_desc <= '1';
        wait until rising_edge(Clk);
        valid_desc <= '0';
        wait for clk_period * 4;
        valid_desc <= '1';
        wait until rising_edge(Clk);
        valid_desc <= '0';
        wait;
    end process;

end Behavioral;
