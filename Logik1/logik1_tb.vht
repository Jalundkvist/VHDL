library IEEE;
use IEEE.std_logic_1164

entity logik1_tb is
end entity;

architecture Behaviour of logik1_tb is

signal switch	: std_logic_vector(2 downto 0);
signal led		: std_logic_vector(1 downto 0);

component logik1 is
	port
	(
		switch_s	: in std_logic_vector(2 downto 0); 
		led_s		: out std_logic_vector(1 downto 0);
	);

end architecture