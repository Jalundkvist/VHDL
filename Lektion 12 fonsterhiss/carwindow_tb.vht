library IEEE;
use IEEE.std_logic_1164.all;

entity carwindow_tb is
end entity;

architecture tb of carwindow_tb is

component carwindow is
   port
	(
	   clk     : in std_logic;
		rst     : in std_logic;
		btn_n   : in std_logic;
		win_dir : out std_logic
	);
end component;

signal clk_s     : std_logic := '0';
signal rst_s     : std_logic := '0';
signal btn_n_s   : std_logic := '0';
signal win_dir_s : std_logic := '0';




constant CLK_PERIOD : time := 20 ns;
constant SIM_TIME   : time := 20 us;

begin
   
	uut : carwindow
	   port map (
		clk     => clk_s,
		rst     => rst_s,
		btn_n   => btn_n_s,
		win_dir => win_dir_s
		);
		
		
   clk_process   : process
	begin
	   clk_s <= not clk_s;
		wait for CLK_PERIOD/2;
		if now > SIM_TIME then
		   wait;
		end if;
	end process;
	
	btn_process   : process
	begin
	   btn_n_s <= '1';
		wait for  6*CLK_PERIOD;
		btn_n_s <= '0';
		wait for 10*CLK_PERIOD;
		btn_n_s <= '1';
		wait for 14*CLK_PERIOD;
		btn_n_s <= '0';
		wait for 25*CLK_PERIOD;
		if now > SIM_TIME then
		   wait;
		end if;
	end process;
	
	state_machine : process
	begin
		rst_s <= '1';
	   wait for 10 ns;
		rst_s <= '0';
		wait;
	end process;
	
end architecture;
