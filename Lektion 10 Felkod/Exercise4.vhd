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
signal slow_clock_s : std_logic;   -- Långsam klocka mellan 1 - 8 Hz.
signal led_s        : led_t;       -- Record-signal för lysdioden
signal frequency_s  : frequency_t; -- Aktuell frekvens som ett osignerat heltal vi skall räkna upp till.
begin
   SlowClock1 : SlowClock port map
   (
-- SlowClock |=>|Modulen, 
   clock         => clock,
   reset_n       => reset_n,
   frequency   => frequency_s,
   slow_clock  => slow_clock_s
   
   );
   
   led           <= led_s.output;
   led_s.enabled <= switch(2);

   process (clock, reset_n)
   begin
      if reset_n = '0' then
         frequency_s  <= FREQUENCY_1HZ;
      elsif rising_edge(clock) then
         case (switch(1 downto 0)) is
            when "00"   => frequency_s <= FREQUENCY_1HZ;
            when "01"   => frequency_s <= FREQUENCY_2HZ;
            when "10"   => frequency_s <= FREQUENCY_4HZ;
            when "11"   => frequency_s <= FREQUENCY_8HZ;
            when others => frequency_s <= FREQUENCY_1HZ;
         end case;
      end if;
   end process;
   
   process (clock, reset_n) is
   begin
      if reset_n = '0' then
         led_s.output <= '0';
      elsif (rising_edge(clock)) then
		   if led_s.enabled = '1' then
            if slow_clock_s = '1' then
               led_s.output <= not led_s.output;
				end if;
			else
            led_s.output <= '0';
			end if;
      end if;
   end process;   
end architecture;