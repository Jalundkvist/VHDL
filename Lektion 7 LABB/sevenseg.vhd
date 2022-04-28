library IEEE;
use IEEE.std_logic_1164.all;

library work; -- Ordet work kan ersätta filensnamn.
use work.pkg.all; -- första sevenseg är filnamnet, andra är paketet.

entity Sevenseg is
	port
	(
	input : in std_logic_vector (3 downto 0);
	output : out std_logic_vector ( 6 downto 0)
	);
end Sevenseg;


architecture gate of Sevenseg is
begin
	
	process(input) is
	begin
		case input is
			when X"0" => output <= ZERO; --0
			when X"1" => output <= ONE; --1
			when X"2" => output <= TWO; --2
			when X"3" => output <= THREE; --3
			
			when X"4" => output <= FOUR; --4
			when X"5" => output <= FIVE; --5
			when X"6" => output <= SIX; --6
			when X"7" => output <= SEVEN; --7
			
			when X"8" => output <= EIGHT; --8
			when X"9" => output <= NINE; --9
			when X"a" => output <= A; --a
			when X"b" => output <= B; --b
			
			when X"c" => output <= C; --c
			when X"d" => output <= D; --d
			when X"e" => output <= E; --e
			when X"f" => output <= F; --f
			
			when others => output <= NONE; -- else sats
			
		end case;
	end process;
end architecture;