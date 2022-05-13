library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

library work;
use work.definitions.all;

entity SlowClock is
   port
	(
   clock        : in  std_logic;   -- 50 Mhz systemklocka
	reset_n      : in  std_logic;   -- Asynkron reset signal
	frequency    : in  frequency_t; -- Current frequency through defined datatype, see package definitions.
	slow_clock   : out std_logic    -- Slowclock as outsignal
   );
end entity;

architecture Behaviour of SlowClock is
signal counter_s    : frequency_t;
signal countermax_s : frequency_t;
begin

   process(clock, reset_n)
	begin
	   if reset_n = '0' then
		   counter_s <= 0;
		   slow_clock <= '0';
		elsif rising_edge(clock) then
		   counter_s <= counter_s + 1;
		   if counter_s > countermax_s then
			   counter_s <= 0;
		      slow_clock <= '1';
			else 
			   slow_clock <= '0';
			end if;
		end if;
   end process;

   countermax_s <= frequency;	
end architecture;