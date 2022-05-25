library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.bikelight_pkg.all;

entity bikelight_tb is
end entity;

architecture stimuli of bikelight_tb is

component bikelight is
   port
   (
      clk         : in std_logic;
      input       : in std_logic;
      output      : out std_logic_vector (1 downto 0);
      light_state : out bikelight_state_t
   );
end component;

signal clk_s    : std_logic := '0';
signal input_s  : std_logic := '0';
signal output_s : std_logic_vector (1 downto 0);
signal light_state_s : bikelight_state_t;

constant CLK_PERIOD : time := 20 ns;
constant SIM_TIME   : time := 5 sec;


begin

uut : bikelight port map
   (
	   clk         => clk_s,
		input       => input_s,
		output      => output_s,
		light_state => light_state_s
	);
	
   clk_process   : process
	begin
	   clk_s <= not clk_s;
		wait for CLK_PERIOD/2;
		if now > SIM_TIME then
		   wait;
		end if;
	end process;

	test_process : process
	begin
	   wait for  25*CLK_PERIOD;
	   input_s    <= '1';
	   wait for  400 ms;
		input_s    <= '0';		
		if now > SIM_TIME then
			wait;
		end if;
	end process;
	
end architecture;