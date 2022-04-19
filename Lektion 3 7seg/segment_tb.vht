library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity segment_tb is
end entity;

architecture tb of segment_tb is

component segment is
	port
	(
		input		: in std_logic_vector(3 downto 0);
		output 	: out std_logic_vector(6 downto 0)
	);
end component
