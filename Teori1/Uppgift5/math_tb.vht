library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity math_tb is
end entity;

architecture tb of math_tb is

component math is
   port
   (
      A,B : in  unsigned(1 downto 0);
      X   : out std_logic_vector(3 downto 0)
   );
end component;

signal AB_s   : unsigned(3 downto 0);
signal X_s    : std_logic_vector(3 downto 0);

begin

   uut : math port map 
   (
   A => AB_S(3 downto 2),
   B => AB_S(1 downto 0),
   X    => X_s
   );
   
   process is
   begin
      for i in 0 to 15 loop
         AB_s <= (to_unsigned(i, 4));
         wait for 10 ns;
      end loop;
      wait;
   end process;
end architecture;