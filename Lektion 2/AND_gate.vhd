------------------------------------------------------------------------------------------------------
-- Modulen AND_gate används för att realisera en AND-grind.
-- Kommentarer skrivs med två bindestreck.
------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all; -- använder hela paketet std_logic_1164 för datatypen std_logic.

------------------------------------------------------------------------------------------------------
-- Entiteten beskriver byggblockets in- och utsignaler (dess utsida).
------------------------------------------------------------------------------------------------------
entity AND_gate is
	port
	(
		A, B : in std_logic; -- Skapar insignal för A och B
		X : out std_logic -- Skapar utsignalen X.
	); 
end entity;
------------------------------------------------------------------------------------------------------
-- Arkitekturen beskriver modellens beteende (dess insida). 
-- architecturen måste döpas och vilken entitet den skall hantera. I detta fall Behaviour och AND_gate
-- Mellan is och begin så deklareras variabler.
-- 
-- Tilldelning i VHDL skrev via operatorn "<=". för variabler skriver man i stället ":=" men det 
-- används bara i funktion, processer med mera.
------------------------------------------------------------------------------------------------------
architecture Behaviour of AND_gate is
begin
		X <= A and B;
end architecture;