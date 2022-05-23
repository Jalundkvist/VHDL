library IEEE;
use IEEE.std_logic_1164.all;

library work;
use work.car_state_pkg.all;

entity car_state_tb is
end entity;

architecture tb of car_state_tb is


component car_state is
    port
    (
        rst           : in std_logic;
        clk           : in std_logic;
        start         : in std_logic;
        foot_break    : in std_logic;
        transm_parked : in std_logic;
        crank         : out std_logic;
        the_state     : out car_state_t
    );
end component;

signal rst_s, clk_s    : std_logic := '0';
signal start_s         : std_logic := '0';
signal foot_break_s    : std_logic := '0';
signal transm_parked_s : std_logic := '0';
signal crank_s         : std_logic := '0';
signal the_state_s     : car_state_t;

constant CLK_PERIOD : time := 20 ns;
constant SIM_TIME   : time := 20 us;

begin

uut : car_state port map
   (
	     rst           => rst_s, 
        clk           => clk_s,
        start         => start_s,
        foot_break    => foot_break_s,
        transm_parked => transm_parked_s,
        crank         => crank_s,
        the_state     => the_state_s
   );
 
 
   clk_process   : process
	begin
	   clk_s <= not clk_s;
		wait for CLK_PERIOD/2;
		if now > SIM_TIME then
		   wait;
		end if;
	end process;
-- process för att snabbt aktivera reset.
   state_machine : process
	begin
		rst_s <= '1';
	   wait for 10 ns;
		rst_s <= '0';
		wait;
	end process;
	
	test_process : process
	begin
	   wait for  2*CLK_PERIOD;
	   foot_break_s    <= '1';
	   wait for  2*CLK_PERIOD;
		foot_break_s    <= '0';
		wait for  2*CLK_PERIOD;
		transm_parked_s <= '1';
		wait for  2*CLK_PERIOD;
		transm_parked_s <= '0';
		
		if now > SIM_TIME then
			wait;
		end if;
	end process;
	
	setup : process
	begin
	   wait for CLK_PERIOD;
	   start_s <= '1';
      wait for CLK_PERIOD;
	   start_s <= '0';
	   if NOW > SIM_TIME then
  	      wait;
      end if; 
   end process;
end architecture;