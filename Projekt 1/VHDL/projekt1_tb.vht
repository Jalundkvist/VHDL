-----------------------------------------------------------------------
--  Testbänk för projekt1.
--  Används för att kunna simulera samtliga 16 (2^4) lägen. 
--  
--  Utsignalerna X, Y och Z påverkas under 160 ns och detta sköts via
--  processen döpt ABCD_sim.
--
--  A betraktas som MSB och D som LSB, detta kan representeras som 
--  ett binärt tal som inkrementeras med 1 var 10 ns från
--  0000 till 1111 under dessa 160 ns.
--
--  ~~~~~~~~~~~~~~~~~~~~~~~~
--  | A B C D | X Y Z |läge|
--  |-----------------|----|
--  | 0 0 0 0 | 0 1 0 | 00 |
--  | 0 0 0 1 | 0 0 0 | 01 |
--  | 0 0 1 0 | 0 0 1 | 02 |
--  | 0 0 1 1 | 0 1 1 | 03 |
--  | 0 1 0 0 | 1 0 1 | 04 |
--  | 0 1 0 1 | 1 0 0 | 05 |
--  | 0 1 1 0 | 1 1 0 | 06 |
--  | 0 1 1 1 | 1 1 1 | 07 |
--  | 1 0 0 0 | 1 1 0 | 08 |
--  | 1 0 0 1 | 1 0 0 | 09 |
--  | 1 0 1 0 | 1 0 1 | 10 |
--  | 1 0 1 1 | 1 1 1 | 11 |
--  | 1 1 0 0 | 0 0 1 | 12 |
--  | 1 1 0 1 | 0 0 0 | 13 |
--  | 1 1 1 0 | 0 1 0 | 14 |
--  | 1 1 1 1 | 0 1 1 | 15 |
--  ~~~~~~~~~~~~~~~~~~~~~~~~
--
-----------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity projekt1_tb is
end entity;

architecture behaviour of projekt1_tb is

-----------------------------------------------------------------------
--  Komponent av toppmodulen: projekt1.
--  Används vid:
-- 		portmap	: uut.
-----------------------------------------------------------------------
component projekt1 is
   port
   (
      A, B, C, D  : in 	std_logic;
      X, Y, Z     : out std_logic
   );
end component;

-----------------------------------------------------------------------
--  Signaler för simulering av in- och utportar.
--  Används vid:
--  		portmap	: uut.
--  		process	: ABCD_sim.
-----------------------------------------------------------------------
signal ABCD			: std_logic_vector (3 downto 0);
signal XYZ			: std_logic_vector (2 downto 0);


-----------------------------------------------------------------------
--  instansen uut (Unit under test) kopplar samman komponenten
--  projekt1's ut- och inportar mot de signaler som är i form av
--  vektorer som används för simulering.
--  A kopplas till ABCD's MSB, bit 3, i fallande ordning efter
--  alfabetet. Samma för vektor XYZ, där X blir MSB och Z LSB.
--
--  Definitions: 
--  MSB = Most Significant Bit. 
--  LSB = Least Significant Bit.
-----------------------------------------------------------------------
begin
			uut : projekt1 port map
			(
			    A => ABCD(3),
				 B => ABCD(2),
				 C => ABCD(1),
				 D => ABCD(0),
				 X => XYZ(2),
				 Y => XYZ(1),
				 Z => XYZ(0)		 
			);
			
-----------------------------------------------------------------------
--  Process: ABCD_sim
--
--  En process där signalen ABCD[3:0] alla variationer testas.
--  från 0000 till 1111 (2^4). Processen tar 160 ns att utföra.
-----------------------------------------------------------------------			
	ABCD_sim: process  is
	begin
		for i in 0 to 15 loop
			ABCD <= std_logic_vector(to_unsigned(i,4));
			wait for 10 ns;
		end loop;
		wait;
	end process;
			
end architecture;