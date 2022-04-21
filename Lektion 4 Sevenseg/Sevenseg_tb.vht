library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Sevenseg_tb is
end entity;

architecture tb of Sevenseg_tb is
component Sevenseg is
	port
	(
		input	: in std_logic_vector(3 downto 0);
		output 	: out std_logic_vector(6 downto 0)
	);
end component;

signal input_s		: std_logic_vector(3 downto 0);
signal output_s 	: std_logic_vector(6 downto 0);

begin
	-- instantiera uut (unit under test - vår sjusegments-avkodare)
	-- constructs -> -> compontent design - 
	uut : Sevenseg
		port map (input_s, output_s);
	stimuli : process
	begin
		for i in 0 to 15 loop
			input_s <= std_logic_vector(to_unsigned(i, 4)); -- dubbel typomvandling, to_unsigned använder bibliotek numeric
			wait for 10 ns;
		end loop;
		wait;
	end process;
end tb;