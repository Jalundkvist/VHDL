library IEEE;
use IEEE.std_logic_1164.all;

entity logik1 is
	port
	(
		switch 	: in std_logic_vector(2 downto 0);
		led		: out std_logic_vector (1 downto 0)
	);
end entity;


architecture behaviour of logik1 is

begin

	process (switch) is
	begin
		case (switch) is
			when "000" => led <= "00";
			when "001" => led <= "01";
			when "010" => led <= "00";
			when "011" => led <= "11";
			when "100" => led <= "00";
			when "101" => led <= "11";
			when "110" => led <= "10";
			when "111" => led <= "11";
			when others => led <= "00";
		end case;
	end process;
		
		
end architecture;
