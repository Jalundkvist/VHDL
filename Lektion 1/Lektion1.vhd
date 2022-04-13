library IEEE;
use IEEE.std_logic_1164.all; -- Inkluderar bibliotek för std_logic
------------------------------------------------------------------------
-- first design with entity for or gate
-- Om kompilering gick OK, kolla tools -> netlist viewer - RTL viewer
------------------------------------------------------------------------
entity Lektion1 is
	port
	(
		driver, adas_ok	: in std_logic;
		camera, radar		: in std_logic;
		break					: out std_logic -- Inget semicolon på sista elementet i en lista
	);
end entity; 

architecture gate of Lektion1 is

begin
	 break <= driver or (adas_ok and camera and radar);
end architecture;
