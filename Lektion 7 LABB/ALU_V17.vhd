library IEEE;
use IEEE.std_logic_1164.all;

entity ALU is
   port
   (
      A, B              : in std_logic_vector (3 downto 0);
      sel               : in std_logic;
      carry, equal      : out std_logic;
      number0, number1  : out std_logic_vector (3 downto 0)
   );
end entity;

architecture behaviour of ALU is
begin
-- A0 == 00
-- A1 == 01
-- A2 == 10
-- A3 == 11
-- B0 == 00
-- B1 == 01
-- B2 == 10
-- B3 == 11
end architecture;