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

begin

	process(A, B, sel) is
	variable tmp    : std_logic_vector (4 downto 0);
	begin
	
		if A = B then
			equal <= '1';
		else
			equal <= '0';
		end if;
		
		number1 <= tmp(3 downto 0);
		tmp := ('0' & A) + ('0' & B); -- Osäker vad denna gör
		carry <= tmp(4);
		
		if sel = '1' then
			number0 <= A;
		else
			number0 <= B;
		end if;
	end process;
	--number1 <= A;
	
end architecture;


--		case sel is
--		when '0' => 
--		number0 <= A;
--		prutt <= B;
--		when '1' => 
--		number1 <= B;
--		prutt <= A;
		
--		when others => 
--		number0 <= A; 
--		number1 <= B;