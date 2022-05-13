-------------------------------------------------------------------------------------------------------
-- Paketet definitions används för deklaration av typer, komponenter, funktioner, procedurer samt 
-- konstanter som används för konstruktionen.
-------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-------------------------------------------------------------------------------------------------------
-- Pakethuvudet för paketet definitions innehåller deklaration av typer, komponenter, 
-- funktionsdeklarationer, procedurdeklarationer samt konstanter.
-------------------------------------------------------------------------------------------------------
package definitions is
-------------------------------------------------------------------------------------------------------
-- Subtypen counter_t utgör alias för datatypen natural och används för räknare av snabba klockpulser.
-------------------------------------------------------------------------------------------------------
constant COUNTER_MAX : natural := 50000000;
subtype counter_t is natural range 0 to COUNTER_MAX; -- skapar alias, motsvarar typedef unsigned char byte.
subtype frequency_t is natural; -- skapar alias, motsvarar typedef unsigned char byte.
-- för enumeration används nyckelordet type.
-- för alias används nyckelordet subtype.
-- för struktar används nyckelorden type + record
-- för tvådimensionella arrayer används nyckelordet type.
 
-- typedef enum { false, true } bool; -> type bool is {false, true}
-- datatypen natural motsvarar datatypen uint32_t / unsigned long.


constant FREQUENCY_1HZ : frequency_t := 50000000; -- #define freq 50mhz
constant FREQUENCY_2HZ : frequency_t := 25000000; -- #define freq 25mhz
constant FREQUENCY_4HZ : frequency_t := 12500000; -- #define freq 12.5mhz
constant FREQUENCY_8HZ : frequency_t := 6250000;  -- #define freq 6.25mhz

-- typedef struct led_t;
type led_t is record
   enabled : std_logic;
	output  : std_logic;
end record;


-------------------------------------------------------------------------------------------------------
-- Funktionsdeklarationer.
-------------------------------------------------------------------------------------------------------
function to_std_logic(constant bool: boolean) return std_logic;
function to_boolean(constant logic: std_logic) return boolean;

-------------------------------------------------------------------------------------------------------
-- Procedurdeklarationer.
-------------------------------------------------------------------------------------------------------
component Exercise4 is
   port
	(
	   clock   : in std_logic;                    -- 50 MHz klocka.
		reset_n : in std_logic;                    -- Asynkron inverterande reset-signal.
		switch  : in std_logic_vector(2 downto 0); -- Slide-switchar för val av blinkfrekvens, ej implementerat än.
		led     : out std_logic                    -- Lysdiod som blinkas med vald blinkfrekvens.
	);
end component;

component SlowClock is
   port
	(
      clock        : in  std_logic;   -- 50 Mhz systemklocka
	   reset_n      : in  std_logic;   -- Asynkron reset signal
	   frequency    : in  frequency_t; -- Current frequency through defined datatype, see package definitions.
	   slow_clock   : out std_logic    -- Slowclock as outsignal
   );
end component;

procedure toggle_boolean(signal bool : inout boolean);
end package;

-------------------------------------------------------------------------------------------------------
-- Paketkroppen för paketet definitions innehåller definitioner av de funktioner samt procedurer
-- som deklareras i den deklarativa delen ovan.
-------------------------------------------------------------------------------------------------------
package body definitions is

-------------------------------------------------------------------------------------------------------
-- Funktionen to_std_logic används för att typomvandla ett värde från boolean till std_logic.
-- Ingående argument bool utgör en lokal variabel innehållande det värde som skall typomvandlas.
-------------------------------------------------------------------------------------------------------
function to_std_logic(constant bool: boolean) return std_logic is
begin
   if (bool) then
	   return '1';
	else
	   return '0';
	end if;
end function;

-------------------------------------------------------------------------------------------------------
-- Funktionen to_boolean används för att typomvandla ett värde från std_logic till boolean.
-- Ingående argument logic utgör en lokal variabel innehållande det värde som skall typomvandlas.
-------------------------------------------------------------------------------------------------------
function to_boolean(constant logic: std_logic) return boolean is
begin
   if (logic = '1') then
	   return true;
	else
	   return false;
	end if;
end function;

-------------------------------------------------------------------------------------------------------
-- Proceduren toggle_boolean används för att toggla en signal av datatypen boolean. Ingående argument 
-- bool utgörs av den signal som skall typomvandlas. Denna signal tilldelas inversen av dess aktuella
-- värde genom att först typomvandlas till std_logic, följt av invertering. Det inverterade värdet
-- typomvandlas sedan tillbaka till boolean.
-------------------------------------------------------------------------------------------------------
procedure toggle_boolean(signal bool : inout boolean) is
begin
   bool <= to_boolean(not to_std_logic(bool));
end procedure;

end package body;