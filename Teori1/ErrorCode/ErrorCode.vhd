--------------------------------------------------------------------------------------------
-- Modulen ErrorCode används för att tända lysdioden led vid udda antal höga slide-switchar
-- switch[3:0], förutsatt att tryckknappen key_n är nedtryckt. Annars skall lysdioden vara
-- släckt. Därmed gäller att om en eller tre slide-switchar är höga samtidigt som
-- tryckknappen key_n trycks ned, så tänds lysdioden, annars hålls den släckt.
--------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all; -- lagt till .all

entity ErrorCode is
   port
   (
      switch : in std_logic_vector(3 downto 0);
      key_n  : in std_logic; 
      led    : out std_logic     -- // TAGIT BORT SEMICOLON
   );
end entity;

architecture Behaviour of ErrorCode is
signal led_s        : std_logic;        -- lagt till std_logic signal
signal odd_switches : std_logic; -- Ändrat långt namn och gjort om variabel till signal, bool till std_logic.
begin
------------------------------------------------------------------------------------------
-- Vid udda antal höga slide switchar samtidigt som tryckknappen key_n trycks ned så
-- tänds lysdioden, annars hålls den släckt.
--
-- ändrat sensitivity list så odd_switches ingår istället för input från switch
--
-- tagit bort överflödig begin från process.
-- ändrat från !key_n till key = '0'. Lagt till jämförelse om odd_switches = '1'
-- lagt till ordet "then" efter jämförelsen.
-- lagt till tilldelning av värde "<= och '' "
--
-- Använder mig av led_signal för att kunna tilldela output utanför processen
------------------------------------------------------------------------------------------
process (odd_switches, key_n) is
begin
   if (odd_switches = '1' and key_n = '0') then
      led_s <= '1';  -- LAGT TILL TILLDELNING AV VÄRDE "<= och '' "
   else
      led_s <= '0';  -- LAGT TILL TILLDELNING AV VÄRDE "<= och '' "
   end if;
end process;

   odd_switches <= switch(3) xor switch(2) xor switch(1) xor switch(0);
   led          <= led_s;     -- tilldelning från signal till output.

end architecture;