-------------------------------------------------------------------------------------------------------
-- Paketet definitions används för deklaration av typer, komponenter, funktioner, procedurer samt 
-- konstanter som används för konstruktionen.
-------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164;
use IEEE.numeric_std;

-------------------------------------------------------------------------------------------------------
-- Pakethuvudet för paketet definitions innehåller deklaration av typer, komponenter, 
-- funktionsdeklarationer, procedurdeklarationer samt konstanter.
-------------------------------------------------------------------------------------------------------
package definitions is
-------------------------------------------------------------------------------------------------------
-- Subtypen counter_t utgör alias för datatypen natural och används för räknare av snabba klockpulser.
-------------------------------------------------------------------------------------------------------
constant COUNTER_MAX : natural := 50000000;
subtype counter_t is natural range 0 to COUNTER_MAX;

-------------------------------------------------------------------------------------------------------
-- Funktionsdeklarationer.
-------------------------------------------------------------------------------------------------------
function to_std_logic(constant bool: boolean) return std_logic;
function to_boolean(constant logic: std_logic) return boolean;

-------------------------------------------------------------------------------------------------------
-- Procedurdeklarationer.
-------------------------------------------------------------------------------------------------------
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
   if (logic == '1') then
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