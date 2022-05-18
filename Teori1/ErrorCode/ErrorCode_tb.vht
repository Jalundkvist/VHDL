library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ErrorCode_tb is
end entity;

architecture tb of ErrorCode_tb is

component ErrorCode is 
   port 
   ( 
      switch : in std_logic_vector(3 downto 0); -- Slide-switchar. 
      key_n  : in std_logic; -- Tryckknapp, låg insignal vid nedtryckning.  
      led    : out std_logic -- removed ; 
   ); 
end component;

signal switch_s : std_logic_vector(3 downto 0);  
signal key_s    : std_logic;
signal led_s    : std_logic; 

begin

--instantiate unit under test
uut : ErrorCode
   port map
	(
	   switch=>switch_s, 
      key_n=>key_s, 
      led=>led_s
	);
				
	test : process
	begin
		key_s <= '0';
		for i in 0 to 15 loop
				switch_s <= std_logic_vector(to_unsigned(i,4));
				wait for 1 ns;
		end loop;
		wait;
	end process;
end architecture;	