library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity muxencdec is
	port
	(
		sel		: in std_logic_vector(2 downto 0);
		input		: in std_logic;
		output	: out std_logic_vector(7 downto 0)
	);
end entity;


architecture behaviour of muxencdec is
begin
	
	process (sel, input) is
	begin
		output <= (others => '0');
		output(conv_integer(sel)) <= input;
	end process;

end architecture;