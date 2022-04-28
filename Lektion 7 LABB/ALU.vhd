library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.ALL;
use IEEE.numeric_std.all;

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

--signal result : std_logic_vector (3 downto 0);
signal tmp    : std_logic_vector (4 downto 0);
signal prutt  : std_logic;
--signal eq  : std_logic;

begin
	process(A, B, sel)
	begin
		case (sel) is
		when '0' => number0 <= A - B;
		when '1' => number0 <= A + B;
		 
		--when others => number0 <= "0000";
		end case;
	end process;
	--number1 <= A;
	--tmp <= ('0' & A) + ('0' & B);
	--carry <= tmp(4);
end architecture;