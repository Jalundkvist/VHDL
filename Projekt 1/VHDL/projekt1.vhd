------------------------------------------------------------------------
--  Ett logiskt grindnät som har fyra insignaler och tre utsignaler.
--
--  Insignaler ABCD kopplas till slideswitches på FPGA-kort.
--  Utsignaler XYZ kopplas till LED på FPGA-kort.
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
----------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

-----------------------------------------------------------------------
--  Entiteten projekt1 deklarerar fyra inportar och tre utportar.
--  Inport av datatypen std_logic : A, B, C, D.
--  Utport av datatypen std_logic : X, Y, Z.
-----------------------------------------------------------------------
entity projekt1 is
   port
   (
      A, B, C, D      : in std_logic;
      X, Y, Z         : out std_logic
   );
end entity;

-----------------------------------------------------------------------
--  architecture beskriver beteendet för in- och utportar.
--  I detta projekt styrs X, Y och Z av logiska begrepp.
--
--  "not" inverterar en signal.
--  "and" utgör logisk multiplikation.
--  "or"  utgör logisk addition.
--
--  Architecturen går att granska i RTL viewer med uppbyggt nät.
-----------------------------------------------------------------------
architecture behaviour of projekt1 is
begin
      X <=  (A xor B);
      Y <=  (B and C)     or (C and D) or (not B and not C and not D);
      Z <=  (not B and C) or (C and D) or (B and not C and not D);

end architecture;
   	