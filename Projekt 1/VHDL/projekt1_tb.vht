-----------------------------------------------------------------------
--  Testbänk för projekt1.
--  Används för att kunna simulera samtliga 16 (2^4) lägen. 
--  
--  Utsignalerna X, Y och Z påverkas under 160 ns och detta sköts via
--  processer döpta A_signal, B_signal, C_signal, D_signal.
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
      A, B, C, D      			: in 	std_logic;
      X, Y, Z         			: out std_logic
   );
end component;

-----------------------------------------------------------------------
--  Signaler för simulering av in- och utportar.
--  Används vid:
--  		portmap	: uut.
--  		process	: A_signal, B_signal, C_signal, D_signal.
-----------------------------------------------------------------------
signal A_s, B_s, C_s, D_s     : std_logic;
signal X_s, Y_s, Z_s        	: std_logic;


-----------------------------------------------------------------------
--  instansen uut (Unit under test) kopplar samman komponenten
--  projekt1's ut- och inportar mot de signaler som används för
--  simulering. Som exempel Signalen A_s tilldelas A.
-----------------------------------------------------------------------
begin
			uut : projekt1 port map
			(
			    A => A_s,
				 B => B_s,
				 C => C_s,
				 D => D_s,
				 X => X_s,
				 Y => Y_s,
				 Z => Z_s		 
			);
-----------------------------------------------------------------------
--  Process: X_signal (A, B, C, D).
--  Processerna används tillsammans med loops för att kunna toggla
--  värden på insignalerna vid korrekt tillfälle.
--
--  Hela simuleringen sker under 160 ns.
--  A_signal togglas var 80 ns. (2 	värden ON/OFF)
--  B_signal togglas var 40 ns. (4 	värden ON/OFF)
--  C_signal togglas var 20 ns. (8 	värden ON/OFF)
--  D_signal togglas var 10 ns. (16 värden ON/OFF)
-----------------------------------------------------------------------			
			A_signal: process is
			begin
			A_s <= '0';
			wait for 80 ns;
			A_s <= '1';
			wait for 80 ns;
			wait;
			end process;
			
			B_signal: process is
			begin
				for i in 0 to 1 loop
					B_s <= '0';
					wait for 40 ns;
					B_s <= '1';
					wait for 40 ns;
				end loop;
				wait;
			end process;
			
			C_signal: process is
			begin
				for i in 0 to 3 loop
					C_s <= '0';
					wait for 20 ns;
					C_s <= '1';
					wait for 20 ns;
				end loop;
				wait;
			end process;
			
			D_signal: process is
			begin
				for i in 0 to 7 loop
					D_s <= '0';
					wait for 10 ns;
					D_s <= '1';
					wait for 10 ns;
				end loop;
				wait;
			end process;
			
end architecture;