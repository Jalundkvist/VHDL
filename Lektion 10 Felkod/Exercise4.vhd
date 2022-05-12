-------------------------------------------------------------------------------------------------------
-- Modulen Exercise4 används för att blinka en lysdiod med en frekvens som kan väljas mellan 1 Hz,
-- 2 Hz, 4 Hz samt 8Hz. Modulens insignaler utgörs av en 50 MHz klocka, en asynkron inverterande
-- reset-signal samt tre slide-switchar för kontroll av blinkfrekvens och enable-signal för lysdioden.
-- För tillfället används inte slide-switcharna, vilket skall läggas till i ett senare skede.
-- Utsignal led utgörs av lysdioden i fråga.
--
-- För styrsignalerna gäller följande:
--
-- switch[2:0]       Utsignal
--    0xx         led alltid släckt
--    100         led blinkar med en frekvens på 1 Hz
--    101         led blinkar med en frekvens på 2 Hz
--    110         led blinkar med en frekvens på 4 Hz
--    111         led blinkar med en frekvens på 8 Hz
--
-- Notera att switch[2] används som enable-signal för lysdioden. När denna signal är låg så hålls
-- lysdioden alltid släckt. switch[1:0] används enbart för val av klockfrekvens.
-------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

use work.definitions.all;

entity Exercise4 is
   port
	(
	   clock   : in std_logic;                    -- 50 MHz klocka.
		reset_n : in std_logic;                    -- Asynkron inverterande reset-signal.
		switch  : in std_logic_vector(2 downto 0); -- Slide-switchar för val av blinkfrekvens, ej implementerat än.
		led     : out std_logic                    -- Lysdiod som blinkas med vald blinkfrekvens.
	);
end entity;

architecture Behaviour of Exercise4 is
signal counter_s     : counter_t; -- Räknar antalet snabba klockpulser.
signal slow_clock_s  : std_logic;   -- Långsam klocka mellan 1 - 8 Hz.
signal led_enabled_s : std_logic;   -- Indikerar ifall lysdioden är tänd eller inte.

------------------------------------------------------------------------------------------------------------
-- Funktionen counter_elapsed används för att räkna upp antalet snabba klockpulser och därefter undersöka 
-- ifall tillräckligt antal klockpulser har räknats upp för aktuell frekvens, vilket är 50 000 000 vid
-- en klockfrekvens på 50 MHz. Ifall tillräckligt antal snabba klockpulser har räknats upp så returneras
-- true för att indikera detta, annars returneras false.
------------------------------------------------------------------------------------------------------------
impure function counter_elapsed return std_logic is
begin
		counter_s <= counter_s + 1;
	if (counter_s >= COUNTER_MAX) then
	   counter_s <= 0;
		return '1';
	else
	   return '0';
	end if;
end function;

begin 

   ------------------------------------------------------------------------------------------------------------
   -- Vid reset nollställs den långsamma klockan samt räknaren. Annars räknas antalet snabba klockpulser upp.
   -- När tillräckligt antal klockpulser har räknats upp för aktuell frekvens, så ettställs den långsamma
   -- klockan, samtidigt som räknaren nollställs inför nästa uppräkning. När detta sker så tickar den
   -- långsamma klockan. Övrig tid hålls den långsamma klockan låg. Tilldelning av den långsamma klockan
	-- åstadkommes via anrop av funktionen counter_elapsed, som returnerar true när den långsamma klockan
	-- skall slå, annars false.
  ------------------------------------------------------------------------------------------------------------
   SLOW_CLOCK_PROCESS: process (clock, reset_n) is
	begin
	   if reset_n = '0' then
		   slow_clock_s <= '0';
			counter_s <= 0;
		elsif rising_edge(clock) then
			slow_clock_s <= counter_elapsed; 
		end if;
	end process;
	
	------------------------------------------------------------------------------------------------------------
   -- Vid reset sätts signalen led_enabled_s till false för att släcka lysdioden. Annars vid stigande flank 
	-- på den snabba klockan, så togglas led_enabled_s via anrop av proceduren toggle_boolean. Eftersom
	-- utsignal led kontinuerligt tilldelas innehållet från signalen led_enabled_s, tyopomvandlat från 
	-- boolean till std_logic, så togglas därmed också lysdioden.
  ------------------------------------------------------------------------------------------------------------
	LED_ENABLED_PROCESS: process (clock, reset_n) is
	begin
	   if reset_n = '0' then
		   led_enabled_s <= '0';
		elsif rising_edge(clock) then
		   if slow_clock_s = '1' then
			   led_enabled_s <= not led_enabled_s;
			end if;
		end if;
	end process;
	
	led <= led_enabled_s;
	
end architecture;