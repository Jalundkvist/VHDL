library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.sevenseg_pkg.all;

entity Sevenseg_tb is
end entity;

architecture tb of Sevenseg_tb is


signal switch0_s, switch1_s		: std_logic_vector(3 downto 0);
signal led0_s, led1_s 	: std_logic_vector(6 downto 0);

component top is -- tagen ur topentity, bytt namn till component
	port 
	(
		switch0, switch1	: in std_logic_vector(3  downto 0);
		led0, led1			: out std_logic_vector(6 downto 0)
	);
end component;

begin
	-- instantiera uut (unit under test - vår sjusegments-avkodare)
	-- constructs -> -> compontent design - 
	uut : top
		port map (
		switch0 	=> switch0_s,
		switch1 	=> switch1_s,
		led0		=> led0_s,
		led1		=> led1_s
		);
----------------------------------------------------------------
-- En process brukar till regel inte ha en sensivity-list
-- en process ger en möjligheten att använda waitstatements 
-- som i följd gör att man kan skriva sekventiellt.
----------------------------------------------------------------
	stimuli : process
	begin
		for i in 0 to 15 loop
			switch0_s <= std_logic_vector(to_unsigned(i, 4)); -- dubbel typomvandling, to_unsigned använder bibliotek numeric
			switch1_s <= std_logic_vector(to_unsigned(i, 4));
			wait for 10 ns;
		end loop;
		wait;
	end process;
end tb;