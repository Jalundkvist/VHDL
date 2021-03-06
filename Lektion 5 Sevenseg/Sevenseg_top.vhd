-- library
library IEEE;
use IEEE.std_logic_1164.all;

library work;
use work.sevenseg_pkg.all;

--entity
entity top is -- top hade kunnat gärna vara döpt till filnamnet.
	port 
	(
		switch0, switch1	: in std_logic_vector(3  downto 0);
		led0, led1			: out std_logic_vector(6 downto 0)
	);
end entity;

--architecture
architecture struct of top is 
begin
	display0 : sevenseg -- från sevenseg_pkg
		port map(input => switch0, output => led0);
	display1 : sevenseg
		port map(input => switch1, output => led1);
end architecture;