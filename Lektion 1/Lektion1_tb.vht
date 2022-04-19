-- inkludera bibliotek
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
 
--Entity (interface till omvärlden)
entity Lektion1_tb is
end entity;

--Architecture (logisk funktion)
architecture tb of Lektion1_tb is

-- Deklarativ del
component Lektion1 is
	port
	(
		driver, adas_ok	: in std_logic;
		camera, radar		: in std_logic;
		break					: out std_logic -- Inget semicolon på sista elementet i en lista
	);
end component; 

signal break_s : std_logic;
signal inputs_s : std_logic_vector(3 downto 0);

begin
--instansiera komponenten CarBreak
uut : Lektion1
	port map(inputs_s(3), inputs_s(2), inputs_s(1), inputs_s(0), break_s);
	
	testbench : process
	variable i : integer;
	begin
	
	i := 0;
	
		while i<16 loop
			inputs_s <= std_logic_vector(to_unsigned(i,4));
			i := i+1;
			wait for 10 ns;
			
		end loop;
		wait;
	end process;	

end architecture;