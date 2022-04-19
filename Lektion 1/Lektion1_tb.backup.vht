-- inkludera bibliotek
library IEEE;
use IEEE.std_logic_1164.all;
 
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

signal driver_s, adas_ok_s, camera_s, radar_s, break_s : std_logic;

begin
--instansiera komponenten CarBreak
uut : Lektion1
	port map(driver_s, adas_ok_s, camera_s, radar_s, break_s);
	
	testbench : process
	begin
		driver_s <= '0'; adas_ok_s <= '0'; camera_s <= '0'; radar_s <= '0';
		wait for 10 ns;
		driver_s <= '0'; adas_ok_s <= '0'; camera_s <= '0'; radar_s <= '1';
		wait for 10 ns;
		driver_s <= '0'; adas_ok_s <= '0'; camera_s <= '1'; radar_s <= '1';
		wait for 10 ns;
		driver_s <= '0'; adas_ok_s <= '1'; camera_s <= '0'; radar_s <= '0';
		wait for 10 ns;
		driver_s <= '0'; adas_ok_s <= '1'; camera_s <= '1'; radar_s <= '0';
		wait for 10 ns;
		driver_s <= '0'; adas_ok_s <= '1'; camera_s <= '1'; radar_s <= '1';
		wait for 10 ns;
		wait;
	end process;	

end architecture;