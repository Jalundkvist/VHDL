library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity logik1_tb is
end entity;

architecture behaviour of logik1_tb is

signal switch	: std_logic_vector(2 downto 0); -- sim in
signal led	: std_logic_vector(1 downto 0); -- sim ut

component logik1 is
	port
	(
		switch	: in std_logic_vector(2 downto 0); -- in från slide.
		led		: out std_logic_vector(1 downto 0) -- ut till led.
	);
end component;

begin

	uut: logik1 
	port map
	(
		switch => switch,
		led => led
	);
	
	process is
	begin
		for i in 0 to 7 loop
			switch <= std_logic_vector(to_unsigned(i, 3));
			wait for 10 ns;
		end loop;
		wait;
	end process;

end architecture;