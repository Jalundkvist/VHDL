------------------------------------------------------------------------------------------------------
-- Modulen AND_gate_TB används som testbänk till toppmodulen AND_gate för att simulera dess
-- funktion via ModelSim.

------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all; -- använder hela paketet std_logic_1164 för datatypen std_logic.

entity AND_gate_TB is
	end entity;
------------------------------------------------------------------------------------------------------
-- Arkitekturen testbench används för att implementera en testbänk av modulen AND_gate. SIgnaler med 
-- samma namn som toppmodulens in- och utportar deklarareras och kopplas till toppmodulen.
--
-- spara filen som TB.vht i output files.
--
-- Deklarativ del av arkitektur, deklarerar signaler, komponenter(moduler som skall sammankopplas med
-- mera).
------------------------------------------------------------------------------------------------------
architecture testbench of AND_gate_TB is
signal A, B, X : std_logic;
------------------------------------------------------------------------------------------------------
-- Komponenten AND_gate deklareras för att kunna skapa en instans / ett objekt av toppmodulen för
-- simulering. Efter denna deklaration kan des in- och utsignaler sammankopplas med signaler med
-- samma namn i denna modul. Notera att komponentsdeklarationen är identisk med entitetsdeklarationen,
-- med skillnaden att nyckelordet entity har ersatts med component.
------------------------------------------------------------------------------------------------------
component AND_gate is
	port
	(
		A, B : in std_logic; -- Skapar insignal för A och B
		X : out std_logic -- Skapar utsignalen X.
	); 
end component;
------------------------------------------------------------------------------------------------------
-- Här sammankopplas in- och utportar från toppmodulen med signaler i denna testbänk med samma namn
-- via så kallad port mapping. vi skapar en instans av toppmodulen AND_gate, som döps till AND_gate1.
-- Som exempel, för att sammankoppla inporten A till signalen A i testbänken skriver man A => A
-- Använd ett kommatecken för att separera rader.
------------------------------------------------------------------------------------------------------
begin
	AND_gate1: AND_gate port map
	(
		A => A,
		B => B,
		X => X
	);

	A_PROCESS: process is -- fritt val med A_PROCESS.
	begin
		A <=  '0'; -- tilldelar låg signal till A (apostrofter runt enskilda std_logic-bitar)
		wait for 20 ns;
		A <= '1';
		wait for 20 ns;
		wait;
	end process;
	
	B_PROCESS: process is
	begin
		for i in 0 to 1 loop
			B <= '0';
			wait for 10 ns;
			B <= '1';
			wait for 10 ns;
		end loop;
		wait;
	end process;
	
end architecture;