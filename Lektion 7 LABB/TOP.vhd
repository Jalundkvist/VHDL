library IEEE;
use IEEE.std_logic_1164.all;
library work;
use work.pkg.all;

entity top is
	port
	(
		switch1, switch0 	 : in std_logic_vector(3 downto 0);
		sel					 : in std_logic;
		display0, display1 : out std_logic_vector(6 downto 0);
		carry, equal		 : out std_logic
	);
end entity;

architecture behaviour of top is

signal number0, number1  : std_logic_vector(3 downto 0);

begin

	alu1	: alu port map
	(
		A       => switch1,
		B       => switch0,
		sel     => sel,
		carry   => carry,
		equal   => equal,
		number0 => number0,
		number1 => number1
		
		
	);
	
	sevenseg : sevenseg_top port map
   (
		switch0 => number0,
		switch1 => number1,
		led0 => display0,
	   led1 => display1
		
   );

end architecture;

--component sevenseg_top is -- top hade kunnat gärna vara döpt till filnamnet.
--	port 
--	(
--		switch0, switch1	: in std_logic_vector(3  downto 0);
--		led0, led1			: out std_logic_vector(6 downto 0)
--	);
--   end component;