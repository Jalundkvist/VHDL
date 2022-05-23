library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity math is
   port
   (
      A,B : in  unsigned(1 downto 0);
      X   : out std_logic_vector(3 downto 0)
   );
end entity;

-- Typomvandlar min unsigned vektor till heltal via to_integer
-- multiplicerar insignalerna med varandra, sedan typomvandlas
-- resultatet först till unsigned vektor med längden av vektorn X
-- för att till slut omvandlas till std_logic_vector och tilldelas
-- till variabeln X.
architecture behaviour of math is
begin
   X <= std_logic_vector(to_unsigned(to_integer(A) * to_integer(B),X'length));
end architecture;	